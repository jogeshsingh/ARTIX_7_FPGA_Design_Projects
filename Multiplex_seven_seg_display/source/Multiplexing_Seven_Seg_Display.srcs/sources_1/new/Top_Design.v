`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Top_Design
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

`define WIDTH_DATA 16
`define WIDTH_SEG_EN 4
`define WIDTH_Seg 4
`define WIDTH_SEG_OUT 7
module Top_Design(
input i_clk  , 
input [`WIDTH_DATA-1:0] data_in , 
output [`WIDTH_SEG_EN-1:0] an_seg , 
output [`WIDTH_SEG_OUT-1:0] Sseg_out
    );

wire [`WIDTH_Seg-1:0] S_out ; 
    
    
Seven_seg  SEVEN_SEG1(.i_data(S_out) , .seg_out(Sseg_out));
    
Mux_seven_seg MUX(.i_clk(i_clk) ,
     .o_seg1(data_in[3:0]) ,
     .o_seg2(data_in[7:4])  , 
     .o_seg3(data_in[11:8]) ,
     .o_seg4(data_in[15:12]) ,
     .o_en(an_seg) ,  
     .o_seg(S_out));

    
    
endmodule
