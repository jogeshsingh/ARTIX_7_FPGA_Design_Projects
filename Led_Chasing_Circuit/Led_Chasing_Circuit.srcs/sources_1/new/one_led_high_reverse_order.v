`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 04:07:32 PM
// Design Name: 
// Module Name: one_led_high_reverse_order
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


module one_led_high_reverse_order(
input i_clk ,
input [2:0] count ,
output [15:0] o_led
    );
    
    
    reg [15:0] led_o = 0;
    
    assign o_led = led_o ;
    
    // led assigning  
       always @ (posedge i_clk) begin
             case(count)
             3'h0: led_o <= 16'b1000_0000_0000_0001;
             3'h1: led_o <= 16'b0010_0000_0000_0100;
             3'h2: led_o <= 16'b0000_1000_0001_0000;
             3'h3: led_o <= 16'b0001_0010_0100_1000;
             default : led_o <= 16'b0;
           endcase
          end 
       
       
       
       
       
       
       
       
       
    
    
    
    
    
    
    
endmodule
