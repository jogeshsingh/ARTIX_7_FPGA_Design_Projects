module uart_receiver (
    input i_clk,             // FPGA clock
    input i_rst_n,           // Active low reset
    input i_rx_serial,       // UART RX serial line input
    output o_rx_data_valid, // Signal indicating valid received data
    output [7:0] o_rx_data   // Received data (8 bits)
   );

    // Parameters for baud_rate and clk_rate
    parameter BAUD_RATE = 115200;
    parameter CLK_RATE = 50_000_000;
    parameter DATA_LEN = 8;

    // reg (signal) indicating valid data is received form uart rx 
    reg o_rx_valid   = 0;

    (* KEEP = "TRUE" *)
    // Reg to hold received data bit by bit
    reg [10:0] rx_shift_reg = 0;

    // CLK_COUNT === BAUD_RATE_COUNTER
    parameter CLK_CNT = CLK_RATE / BAUD_RATE;
    parameter CLK_CNT_REG = 9; // CLK_RATE=100MHZ/115200 = 434 = 2^9 = 512

    // Baud rate counter or clock cycles counter
    reg [9:0] clk_cycle_cnt = 0;

    // Baud rate done
    // It gets asserted every time clk_cycle_cnt reaches CLK_CNT = (CLK_RATE/BAUD_RATE)
    wire baud_rate_done;
    
    
    // reg/wire signals for checking the parity bit received from serial console
     reg  intermed_expected_parity = 0 ;
     reg  received_parity  = 0;

    // FSM STATES
    parameter IDLE                       = 0,
              START_BIT                  = 1,
              RECEIVE_DATA               = 2,
              PARITY_CHECK               = 3,
              STOP_BIT                   = 4, 
              COMPARE_STOP_PARITY_BIT    = 5;

    // Present state and next state reg
     (* KEEP = "TRUE" *)
    reg [2:0] p_state = 0;
    reg [2:0] n_state = 0;

    reg   start_cnt_data = 0;                 // start counting data elements when start bit is detected 

     /*************************************
      Positive edge detect logic 
      <----------------------->
      -- it is used for making the clk_cycle_cnt to 0 ,
         when the start bit is detected  
      -- because start bit is detected at (CLK_CNT/2) so , 
          the next clk_cnt should start afresh
     ***************************************/
      wire edge_detect ;
     
      Edge_detect_logic
      UO_POSEDGE_LOGIC(
                 .i_clk (i_clk), 
                 .i_din (start_cnt_data), 
                 .o_edge(edge_detect) 
       );     
    
    /******************************************
        Baud rate counter operation
    *******************************************/
    always @(posedge i_clk) begin
        if (~i_rst_n) clk_cycle_cnt <= 0;
        else if (baud_rate_done | edge_detect) clk_cycle_cnt <= 0;
        else clk_cycle_cnt <= clk_cycle_cnt + 1'b1;
    end

    // Baud_rate_done gets asserted
    assign baud_rate_done = (clk_cycle_cnt == CLK_CNT - 1);


    // expected parity reg for xoring the data bits in packet format..
        reg  expected_par = 0 ;

     
     /*********************************************************************
       START               DATA-BITS   PARITY      STOP 
       <---->              <-------->  <---->      <--->
        1 bit               8 bits      1 bit       1 bit
        <------------------------------------------------>
        10                                             
        <--->             <-----------> <-->        <--->
         [0]                 [8:1]      [9]          [10]
     *********************************************************************/
      
 
  /***********************************************
      count how many data elements have been latched 
      *******************************************/
      reg [2:0] count_data_elements = 0;        // counter for keeping count of how many bits have been latched(received) 
      wire  data_latched  ;                    // data is latched (8 bits) have been latched from uart rx 
     
     
     always @(posedge i_clk) begin
       if (~i_rst_n)  count_data_elements <=  0;
        else if (start_cnt_data) begin
           if (baud_rate_done)begin
               if (p_state!=n_state)
              count_data_elements <= 0;
           else
              count_data_elements <= count_data_elements + 1'b1 ;
         end          // (baud_rate_done)
      else
             count_data_elements <= count_data_elements  ;
     end   
   end     
      
     assign data_latched = (count_data_elements == DATA_LEN-1);

    /***************************
        FSM == NEXT_STATE LOGIC
    ***************************/
    always @(*) begin
        case (p_state)
            IDLE : begin
                if (i_rx_serial == 1'b0) n_state = START_BIT;
                else n_state = p_state;
                
            end

            START_BIT : begin
             if (clk_cycle_cnt == CLK_CNT/2-1) n_state = RECEIVE_DATA;
             else  n_state = p_state;
            end

            RECEIVE_DATA : begin
                if (baud_rate_done & data_latched) n_state = PARITY_CHECK;
                else n_state = p_state;
            end

            PARITY_CHECK : begin
                if (baud_rate_done) n_state = STOP_BIT;
                else n_state = p_state;
            end

            STOP_BIT : begin
                if (baud_rate_done ) n_state = COMPARE_STOP_PARITY_BIT;
                else n_state = p_state;
            end
            
            COMPARE_STOP_PARITY_BIT : begin
                                if (baud_rate_done) n_state = IDLE ;
                                else                n_state = COMPARE_STOP_PARITY_BIT ;
                   end 

            default : n_state = p_state;
        endcase
    end

    /********************
        STATE COUNTER REG
    ********************/
    always @(posedge i_clk) begin
        if (~i_rst_n) p_state <= 0;
        else p_state <= n_state;
    end

    // OUTPUT FSM --LOGIC
    always @(posedge i_clk) begin
        case (p_state)
            IDLE : begin
              if (i_rx_serial == 1'b0)begin
                rx_shift_reg    <= 10'b0; // Reset shift register
                o_rx_valid      <= 0; // No valid data in idle state
                received_parity <= 1'b0 ;
                expected_par    <= 0;
                start_cnt_data  <= 0;
                end  
            else
                    begin
                rx_shift_reg    <= rx_shift_reg; // Reset shift register
                o_rx_valid      <= 0; // No valid data in idle state
                received_parity <= 1'b0 ;
                expected_par    <= 0;
                start_cnt_data  <= 0;     
              end     
            end

            START_BIT : begin
              //  rx_shift_reg <= {rx_shift_reg[9:0], i_rx_serial};
                rx_shift_reg <= {i_rx_serial , rx_shift_reg[10:1]} ;         //right shift --- data comes from lsb --and enters the msb of register
            end

            RECEIVE_DATA : begin
                     start_cnt_data <= 1'b1 ;

                    if (baud_rate_done) begin
                   //  rx_shift_reg    <= {rx_shift_reg[9:0], i_rx_serial};        // left shift operation 
                     rx_shift_reg <= {i_rx_serial , rx_shift_reg[10:1]} ;         //right shift operation
                     start_cnt_data  <= start_cnt_data ;
                  end 
                   else
                  rx_shift_reg    <= rx_shift_reg ;
               end

            PARITY_CHECK : begin
              if (baud_rate_done) begin
              //  rx_shift_reg    <= {rx_shift_reg[9:0], i_rx_serial};
                rx_shift_reg <= {i_rx_serial , rx_shift_reg[10:1]} ;         //right shift operation
                received_parity <= i_rx_serial ;
              end 
            else
                begin
                  rx_shift_reg <= rx_shift_reg ;
                  received_parity <= received_parity ;
                  end   
            end

            STOP_BIT : begin
                      // Shift in received bit into shift register
                        received_parity <= received_parity ;
                     //   expected_par    <= ^rx_shift_reg[8:1];
                        expected_par    <= ^rx_shift_reg[9:1];
                     if (baud_rate_done)begin
                          // rx_shift_reg    <= {rx_shift_reg[9:0], i_rx_serial};          // latch the stop bit
                           rx_shift_reg <= {i_rx_serial , rx_shift_reg[10:1]} ;         //right shift operation
                           received_parity <= received_parity ;
                           expected_par    <= expected_par    ;
                      end 
                   else
                         begin 
                         rx_shift_reg    <= rx_shift_reg ;
                      end 
               end 
           
           COMPARE_STOP_PARITY_BIT : begin
                 // hold the previous reg value
                  rx_shift_reg    <= rx_shift_reg ;                   
                  // Check for valid stop bit an parity bit received 
                if (rx_shift_reg[10] == 1'b1 && (received_parity == expected_par))
                                 o_rx_valid <= 1'b1;
                else
                                 o_rx_valid <= 1'b0;
            end
        endcase
    end


       
                         
     // Assign received data from shift register
      assign o_rx_data = rx_shift_reg[8:1];

    // Assign the rx data valid signal
      assign o_rx_data_valid  = o_rx_valid  ;
 
endmodule