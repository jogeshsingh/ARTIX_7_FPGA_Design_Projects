`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 04:41:24 PM
// Design Name: 
// Module Name: LED_Multiple_Frequencies
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

// each bit in input is the output frequency rate

module LED_Multiple_Frequencies(
input [3:0] i_in ,       // different freq pattern
output [15:0] o_led 
    );
    
    
    assign o_led[15] = i_in[3] ;  
    assign o_led[13] = i_in[3] ;
    assign o_led[11] = i_in[3] ;
    assign o_led[9]  = i_in[3] ;
    
    assign o_led[14] = i_in[2] ;
    assign o_led[12] = i_in[2] ;
    assign o_led[10] = i_in[2] ;
    assign o_led[8]  = i_in[2] ;
    
    assign o_led[7] = i_in[1] ;  
    assign o_led[5] = i_in[1] ;
    assign o_led[3] = i_in[1] ;
    assign o_led[1] = i_in[1] ;
    
    assign o_led[6] = i_in[0] ;  
    assign o_led[4] = i_in[0] ;
    assign o_led[2] = i_in[0] ;
    assign o_led[0] = i_in[0] ;
    
    
    
    
endmodule
