`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 08:39:11 AM
// Design Name: 
// Module Name: Seven_seg_mod
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
//
// NOTE-::::::::::::::;;
//Each segment and  all 4 digits can be enabled by writing logic '0'

module Seven_seg_mod
 #(parameter DATA_WIDTH_1 = 4 , 
  parameter DATA_WIDTH_2 = 7 
   )
(
    input i_clk , 
    input [DATA_WIDTH_1-1:0] d_in,
    output reg [DATA_WIDTH_2-1:0] o_seven_seg ,
    output [DATA_WIDTH_1-1:0] o_seven_seg_an
    );
	
	
	assign o_seven_seg_an = 4'b1111;
	
	always @(posedge i_clk)
	begin
	case(d_in)                              //g f e d b c b a //
	4'h0:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b1000_000; ///digit 0
	4'h1:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b111_1001; //digit 1
	4'h2:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0100_100;  ///digit 2 
	4'h3:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0110_000; //digit 3
	4'h4:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0011_001; //digit 4 
	4'h5:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0010_010; //digit 5 
	4'h6:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0000_010; //digit 6
	4'h7:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b1111_000; //digit 7 
	4'h8:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0000_000;  ///digit 8
	4'h9:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0011_000;  //digit 9
	4'ha:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0001_000;  ///digit 10 = a
	4'hb:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0000_011; //digit 11 = b
	4'hc:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b1000_110; //digit 12 = c
	4'hd:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0100_001;  //digit 13 = d
	4'he:   o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0000_110;  //digit 14 = e //
	4'hf:    o_seven_seg[DATA_WIDTH_2-1:0] = 7'b0001_110;  // digit 15 = f //  
	default:o_seven_seg[DATA_WIDTH_2-1:0]  = 7'b0000_001; /// 0 
endcase
 end

endmodule



