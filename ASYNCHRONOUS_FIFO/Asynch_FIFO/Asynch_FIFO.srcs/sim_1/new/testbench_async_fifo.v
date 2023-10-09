`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 02:18:42 PM
// Design Name: 
// Module Name: testbench_async_fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_async_fifo();
  
  parameter DATA_W = 8 ;         // 8 bit data width 
  parameter ADDR_W = 5 ;        //32 memory locations


  reg i_clk   = 0 ;
  reg i_rdclk = 0 ;
  reg i_rst_n = 0 ;
  reg i_read  = 0 ;
  reg i_write = 0 ;
  reg [DATA_W-1:0] i_data_in = 0 ;
  wire [DATA_W-1:0] o_data_out ;
  wire fifo_full  ;
  wire fifo_empty ;
  wire [ADDR_W-1:0] wr_count ;
  wire [ADDR_W-1:0] rd_count ;
  

 // Design Under TEST
 Top_async_fifo
   #(  .WIDTH_DATA    (DATA_W) , 
       .ADDR_WIDTH    (ADDR_W)
     )
    DUT_RTL_ASYNC_FIFO(
       .i_wr_clk  (i_clk), 
       .i_rst_n   (i_rst_n), 
       .i_wr_en   (i_write),
       .i_data    (i_data_in),
       .i_rd_clk  (i_rdclk) ,
       .i_read_en (i_read),  
       .o_data    (o_data_out),
       .o_wr_count(wr_count),
       .o_rd_count(rd_count),
       .fifo_full (fifo_full), 
       .fifo_empty(fifo_empty)
    );
    

   // generate fpga clock 
   
   always #5 i_clk   = ~i_clk   ;   // 100 MHZ 
   always #20 i_rdclk = ~i_rdclk ;    // 25 mhz
   
   initial
       begin
        @(posedge i_clk) ;
         #5 i_rst_n = 1'b1 ;
      end 
        
        integer i  ;
        parameter NUM = 34 ;
        
       //write enable assertion-deassetion logic 
        initial
             begin
                    for (i=0; i<=NUM ; i = i+1) begin
                      @(posedge i_clk) ;
                     #10  {i_data_in , i_write} = {i_data_in + 1'b1 , 1'b1} ;
                         // i_write   = 1'b1 ;
                   end 
                   i_write =  1'b0;
          end            
      
    integer j ;  
       
      // read enable assertion-deassertion logic 
           
       initial 
            begin
              @(posedge i_rdclk) ;
                #100  i_read = 1'b1 ;
        end             
       

endmodule
