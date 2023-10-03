`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 11:05:42 AM
// Design Name: 
// Module Name: Edge_detect_logic
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
// posedge detect circuit logic 

module Edge_detect_logic(
input i_clk , 
input i_din , 
output o_edge 
    );
    
    
    reg d_out = 0; 
    
    always @(posedge i_clk) begin
      d_out <= i_din ;
     end 
     
     // inverter
     wire neg_out ;
     assign neg_out = ~d_out ;
     
     assign o_edge = neg_out && i_din ;
    
endmodule