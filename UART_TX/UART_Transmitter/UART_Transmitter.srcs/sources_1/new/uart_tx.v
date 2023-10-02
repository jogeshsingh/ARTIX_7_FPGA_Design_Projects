`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 // UART --TX 
 // UNIVERSAL ASYNCHRONOUS RECEIVER TRANSMITTER


module uart_tx
 ( 
    input i_clk ,              // fpga clock 
    input i_rst_n ,           // active low reset
    input i_tx_data_valid ,  // indicating when the data is valid from APB, or other peripheral, or rtl kernels 
    output tx_data_ready ,  //  indicating uart tx is ready to sample the data 
    input [7:0] i_tx_data ,  // data latched from external peripheral  , APB BUS 
    output o_tx_serial           // uart tx serial line , containing data in serial form 
    );
    
    
    // parameters for baud_rate , clk_rate 
    
    parameter  BAUD_RATE = 115200 ; 
    parameter  CLK_RATE  = 50_000_000 ;
    parameter  DATA_LEN  = 8  ;
   
    
    //reg tx data 
    reg [DATA_LEN-1:0] tx_data_reg  =  0 ;
    
    //  tx ready
    wire  tx_rdy       ;
    
    // reg uart tx serial line
    reg tx_serial_o  = 0;
    
    assign o_tx_serial = tx_serial_o ;
    assign tx_data_ready = tx_rdy ;
    
    /**************************************
       latch the data register from APB BUS 
    ***************************************/
    always @(posedge i_clk) begin
       if (~i_rst_n)                           tx_data_reg <=  0;
       else if (tx_rdy  && i_tx_data_valid)    tx_data_reg <= i_tx_data  ;
       else                                    tx_data_reg <= tx_data_reg ;
    end

    
    // FSM STATES 
     parameter   IDLE = 0 , 
                 START_BIT = 1 , 
                 LATCH_DATA = 2 , 
                 PARITY_APPEND = 3 , 
                 STOP_BIT =  4  ;                
     // present state and next state reg
      reg [2:0] p_state = 0;
      reg [2:0] n_state = 0;
      
      
      // CLK_COUNT===BAUD_RATE_COUNTER 
      parameter CLK_CNT     = CLK_RATE/BAUD_RATE ;
      parameter CLK_CNT_REG = 10;                   // CLK_RATE=50MHZ/115200 = 434 = 2^9 = 512>434 
       
       
      // number of data bits to count 
      reg[2:0] data_count  = 0 ;
      
      // baud rate counter or clock cycles counter
      reg[9:0] clk_cycle_cnt = 0;
      
      // baud rate done
      // it gets asserted every times  clk_cycle_cnt reaches CLK_CNT = (CLK_RATE/BAUD_RATE)
      wire  baud_rate_done ;
      
      // reg for holding the data coming from APB
      // also shifts tj 
      reg [7:0] latch_shift_uart_data  ;
      
      //  this signal gets asserted when all the bits are transmitted from UART
      wire uart_tx_done ; 
                 
       
     /******************************************
          baud rate counter operation
     *******************************************/ 
      always @(posedge i_clk) begin
         if (~i_rst_n)            clk_cycle_cnt <= 0 ;
         else if (baud_rate_done) clk_cycle_cnt <= 0;
         else                     clk_cycle_cnt <= clk_cycle_cnt + 1'b1 ;
      end 
      
      
     // baud_rate_done gets asserted   
    assign baud_rate_done = (clk_cycle_cnt == CLK_CNT-1);
    
    // uart tx done
    assign uart_tx_done = (data_count == DATA_LEN -1) ;
    
    /**********************************************************
     count data elements 
     and shift the data received from APB bit by bit every
     time baud_rate_done goes high 
    ***********************************************************/ 
     always @(posedge i_clk) begin
        if (~i_rst_n)begin
          data_count            <=  0;
          latch_shift_uart_data <= 0;
        end 
         else
           if (baud_rate_done) begin
                       if (p_state != n_state) begin
                         data_count            <= 0;
                         latch_shift_uart_data <= tx_data_reg;
                  end 
              else
                  begin
                         data_count <= data_count + 1'b1 ;
                         latch_shift_uart_data <= latch_shift_uart_data >> 1;
                     end 
            end // (baud_rate_done)       
          else
                 begin
                       data_count <= data_count ;
                       latch_shift_uart_data <= latch_shift_uart_data ;
                      end 
        end               
            
            
    /***************************
      FSM == NEXT_STATE LOGIC 
    ***************************/        
         
    always @(*)
       begin
              case (p_state)  
            IDLE : begin
                         if (i_tx_data_valid) n_state = START_BIT ; 
                         else                 n_state = p_state ;
                   end 
            
        START_BIT :  begin
                       if (baud_rate_done) n_state = LATCH_DATA ;
                       else                n_state =  p_state ;
                     end 
        
       LATCH_DATA : begin
                       if (baud_rate_done && uart_tx_done) n_state = PARITY_APPEND ;
                       else                                n_state = p_state ;
                     end
              
     PARITY_APPEND : begin
                         if (baud_rate_done) n_state = STOP_BIT ;
                         else                n_state = p_state ;
                     end 
     
     STOP_BIT     : begin
                           if (baud_rate_done) n_state = IDLE ;
                           else                n_state = p_state ;
                   end 
   
    
     default      : n_state = p_state ;
        endcase 
   end                   
       
    /***************************************************************/                                                                               
      
    /********************
     STATE COUNTER REG   
    *******************/
    
    always @(posedge i_clk) begin
        if (~i_rst_n) p_state <=  0;
        else          p_state <= n_state ;
     end 
     
     // OUTPUT FSM --LOGIC 
     
     
     always @(posedge i_clk) begin 
                  case (p_state)
                IDLE        :  begin
                                 tx_serial_o <=  1'b1 ;             // keep the serial bit to logic high in idle state 
                               end 
                
                START_BIT    :  begin
                                 tx_serial_o <= 1'b0 ;              // drive the serial bit to logic low
                               end 
                 
                LATCH_DATA   : begin
                                 tx_serial_o <=  latch_shift_uart_data[0];        // start latching the data from least significant bit and transmitting the same 
                               end 
                                           
                PARITY_APPEND : begin
                                  tx_serial_o <= ^tx_data_reg ;
                                end                 
                 
                 STOP_BIT     : begin
                                  tx_serial_o <= 1'b1 ;            // stop bit is appended 
                                end
                 
             endcase 
         end                                                 
                                      
    
        assign tx_rdy    = (p_state == IDLE) ? 1'b1 : 1'b0 ;
 
    
    
endmodule