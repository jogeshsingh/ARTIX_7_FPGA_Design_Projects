`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 12:20:36 PM
// Design Name: 
// Module Name: mux_frequency_selector
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


module mux_frequency_selector
#(parameter WIDTH = 8, 
  parameter SEL_W = 3 )
(
 input  [WIDTH-1:0] i_in , 
 input  [SEL_W-1:0] i_sel , 
 output  o_mux
  );
  
  reg mux_o ;
  
  assign o_mux = mux_o ;
  
  //
  //
  always @(*) begin
        case(i_sel) 

      3'b000 : mux_o = i_in[0] ;
      3'b001 : mux_o = i_in[1] ;
      3'b010 : mux_o = i_in[2] ;
      3'b011 : mux_o = i_in[3] ;
      3'b100 : mux_o = i_in[4] ;
      3'b101 : mux_o = i_in[5] ;
      3'b110 : mux_o = i_in[6] ;
      3'b111 : mux_o = i_in[7] ;
      default : mux_o = 0;
     endcase
    end 
   
   //
   // 
        
  endmodule
