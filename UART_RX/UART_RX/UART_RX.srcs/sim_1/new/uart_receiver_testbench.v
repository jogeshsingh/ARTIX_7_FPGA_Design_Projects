`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

    module uart_receiver_testbench();

    // Parameters
    reg clk;
    reg rst_n;
    reg rx_serial;
    wire o_rx_data_valid;
    wire [7:0] o_rx_data;

    // Instantiate the UART receiver module
    uart_receiver uut (
        .i_clk(clk),
        .i_rst_n(rst_n),
        .i_rx_serial(rx_serial),
        .o_rx_data_valid(o_rx_data_valid),
        .o_rx_data(o_rx_data) 
          );

    //declare all input signal to 0
      initial
         begin
          // temp_xor = 0;
           clk = 1'b0;
           rst_n = 1'b0;
           rx_serial = 1'b1 ;    // no communication is taking place , serial line is tied to 1 by default
         end 
           

    // Clock generation
    always begin
        #10 clk = ~clk; // 20 ns timeperiod == 50 MHZ
    end

       // deasseert  the reset signal
         initial
             begin
               @(posedge clk) ;
                 #15 rst_n = 1'b1 ;
                  //   temp_xor = 8'b0111_0000;
             end
            
       initial
              begin
                 @(posedge clk) ;
                 #20 rx_serial = 1'b0 ;
         end 

     integer i  ;
    
        // task for RECEIVING THE DATA FROM UART RECEIVER 
    task UART_WRITE_BYTE ;
      input [7:0] data ;
      
      begin
          
          rx_serial <= 1'b0 ;
           #8600 ;
         //  #1000 ;
          
          
          for (i=0; i<8 ; i=i+1) begin
            rx_serial <= data[i];
            #8600  ;
           end 
           
           // provide the parity bit 
           rx_serial <= 1'b1 ;             // this has to be changed depending upon the bits to send , if even number of ones , then 0 , if odd number of ones then 1 
           #8600 ;
           
           //provide the stop bit
           rx_serial <= 1'b1 ;
           #8600 ;
         
         end   
      endtask
    
    
 /////////// UART SENDING DATA ///

   initial
    begin
      // Send a command (exercise Rx)
      @(posedge clk);
      UART_WRITE_BYTE(8'b0010_0011);
      @(posedge clk);
      #86000;
      
      
      @(posedge clk);
      UART_WRITE_BYTE(8'b0000_0111);
      @(posedge clk);
      #86000;
      
      @(posedge clk);
      UART_WRITE_BYTE(8'b0111_0011);
      @(posedge clk);
      #86000;
      
      @(posedge clk);
      UART_WRITE_BYTE(8'b1110_0011);
      @(posedge clk);
      #86000;
      
       @(posedge clk);
      UART_WRITE_BYTE(8'b0000_0111);
      @(posedge clk);
      #86000;
      
      
      
     end  
    // Monitor signals
    
    initial
     begin
        $monitor("Time = %0t | Data Valid = %b | Received Data = %h", $time, o_rx_data_valid, o_rx_data);
    end
endmodule