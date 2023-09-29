`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: count_2_bit
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


module counter_circuit
#(parameter CNT_WIDTH = 15)
  (
input i_clk , 
output [CNT_WIDTH-1:0] count_out 
    );
    
    
    reg [CNT_WIDTH-1:0] cnt ;
    
    
    always @(posedge i_clk) 
         cnt <= cnt + 1'b1 ;
         
         
         assign count_out = cnt ;
endmodule
