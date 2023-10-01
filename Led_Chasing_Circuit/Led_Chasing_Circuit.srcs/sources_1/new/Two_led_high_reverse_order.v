`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 04:04:05 PM
// Design Name: 
// Module Name: Two_led_high_reverse_order
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

// both directions , lsb , msb order 
// THE LEDs are high 
 // MSB LSB
//  15 , 0 
//  14 , 1 
//  13 , 2 
// and so on......


module Two_led_high_reverse_order(
input i_clk ,
input [2:0] count, 
output [15:0] led_reverse_two     
    );
    
    
    reg [15:0] o_led  = 0 ;
    
    assign led_reverse_two = o_led ;
    
    // led assigning  
       always @ (posedge i_clk) begin
             case(count)
             3'h0: o_led <= 16'b1000_0000_0000_0001;
             3'h1: o_led <= 16'b0100_0000_0000_0010;
             3'h2: o_led <= 16'b0010_0000_0000_0100;
             3'h3: o_led <= 16'b0001_0000_0000_1000;
             3'h4: o_led <= 16'b0000_1000_0001_0000;
             3'h5: o_led <= 16'b0000_0100_0010_0000;
             3'h6: o_led <= 16'b0000_0010_0100_0000;
             3'h7: o_led <= 16'b0000_0001_1000_0000;
             default : o_led <= 16'b0;
           endcase
          end 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
