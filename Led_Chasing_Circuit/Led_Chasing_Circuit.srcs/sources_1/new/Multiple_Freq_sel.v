`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 04:36:20 PM
// Design Name: 
// Module Name: Multiple_Freq_sel
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


module Multiple_Freq_sel(
input [3:0] i_in_1  ,
input [3:0] i_in_2 , 
input [3:0] i_in_3 ,
input [3:0] i_in_4 ,
input [1:0] i_sel , 
output [3:0] o_led_freq
    );
    
    reg [3:0] led_o =  0 ;
    
    assign o_led_freq = led_o ; 
    
    always @(*) begin
        case (i_sel) 
        2'b00 : led_o = i_in_1 ;
        2'b01 : led_o = i_in_2 ;
        2'b10 : led_o = i_in_3 ;
        2'b11 : led_o = i_in_4 ;
       default : led_o =  0;
      endcase
     end 
        
    
    
    
endmodule
