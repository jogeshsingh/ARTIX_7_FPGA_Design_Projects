`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 04:18:23 PM
// Design Name: 
// Module Name: Led_miss_one_msb
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


module Led_miss_one_msb(
input i_clk  , 
input i_sel  , 
input [2:0] count , 
output [15:0] led
    );
    
    
    reg [15:0] o_led   = 0;
    
    assign led = o_led ;
    // led assigning  
       always @ (posedge i_clk) begin
         if (i_sel) begin
             case(count)
             3'h0: o_led <= 16'b1000_0000_0000_0000;
             3'h1: o_led <= 16'b0010_0000_0000_0000;
             3'h2: o_led <= 16'b0000_1000_0000_0000;
             3'h3: o_led <= 16'b0000_0010_0000_0000;
             3'h4: o_led <= 16'b0000_0000_1000_0000;
             3'h5: o_led <= 16'b0000_0000_0010_0000;
             3'h6: o_led <= 16'b0000_0000_0000_1000;
             3'h7: o_led <= 16'b0000_0000_0000_0010;
             default : o_led <= 16'b0;
           endcase
         end 
        else
           begin
               case (count) 
             3'h0: o_led <= 16'b0000_0000_0000_0001;
             3'h1: o_led <= 16'b0000_0000_0000_0100;
             3'h2: o_led <= 16'b0000_0000_0001_0000;
             3'h3: o_led <= 16'b0000_0000_0100_0000;
             3'h4: o_led <= 16'b0000_0001_0000_0000;
             3'h5: o_led <= 16'b0000_0100_0000_0000;
             3'h6: o_led <= 16'b0001_0000_0000_0000;
             3'h7: o_led <= 16'b0100_0000_0000_0000;
             default : o_led <= 16'b0;   
            endcase
           end 
        end 
    
  
endmodule
