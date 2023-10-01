`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 05:42:00 PM
// Design Name: 
// Module Name: mux_pattern_selector
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


module mux_pattern_selector(
input [15:0] i_in_1 , 
input [15:0] i_in_2 ,
input [15:0] i_in_3 , 
input [15:0] i_in_4 , 
input [15:0] i_in_5 , 
input [15:0] i_in_6, 
input [15:0] i_in_7 ,
input [15:0] i_in_8 ,
input [2:0]  i_sel_mux ,
output [15:0] o_mux_out
    );
    
    
    reg [15:0] mux_out = 0;
    
    
    
    always @(*) begin
            if (~i_sel_mux[2])begin
                 case(i_sel_mux[1:0]) 
               2'b00 : mux_out =  i_in_1  ;
               2'b01 : mux_out =  i_in_2  ;
               2'b10 : mux_out =  i_in_3  ;
               2'b11 : mux_out =  i_in_4  ;
               endcase
             end 
          else
                begin
                  case (i_sel_mux[1:0]) 
               2'b00 : mux_out =  i_in_5  ;
               2'b01 : mux_out =  i_in_5  ;
               2'b10 : mux_out =  i_in_5  ;
               2'b11 : mux_out =  i_in_5  ;
               endcase
        end 
      end       

    assign o_mux_out = mux_out ;
    
endmodule
