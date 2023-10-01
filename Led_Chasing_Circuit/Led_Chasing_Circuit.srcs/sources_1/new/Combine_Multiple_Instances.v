`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 04:50:19 PM
// Design Name: 
// Module Name: Combine_Multiple_Instances
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


module Combine_Multiple_Instances(
input i_clk_20_HZ , 
input i_clk_1_HZ , 
input i_clk_2_HZ ,
input i_clk_5_HZ ,  
input i_clk_25_HZ ,
input i_clk_30_HZ , 
input i_clk_10_HZ ,
input i_clk_sel ,
input [2:0] i_sel ,
input i_sel_order , 
output [15:0] led_out  
    );
    
    wire [3:0] pattern_1  ;
    wire [3:0] pattern_2  ;
    wire [3:0] pattern_3  ;
    wire [3:0] pattern_4  ;
    
    assign pattern_1 = {i_clk_25_HZ , i_clk_2_HZ , i_clk_25_HZ , i_clk_1_HZ} ;
    assign pattern_2 = {i_clk_2_HZ , i_clk_1_HZ , i_clk_2_HZ , i_clk_1_HZ} ;  
    assign pattern_3 = {i_clk_20_HZ , i_clk_2_HZ , i_clk_5_HZ , i_clk_2_HZ} ;  
    assign pattern_4 = {i_clk_5_HZ , i_clk_1_HZ , i_clk_2_HZ , i_clk_1_HZ} ;  

    
    wire [3:0] freq_out ;
    
    // Mux for selecting multiple clk freq rate 
     Multiple_Freq_sel
     UO_MULTIPLE_FREQ(
              .i_in_1    (pattern_1),
              .i_in_2    (pattern_2), 
              .i_in_3    (pattern_3),
              .i_in_4    (pattern_4),
              .i_sel     (i_sel[1:0]),  
              .o_led_freq(freq_out)
            );
    
    /************************************/
    reg[2:0] cnt = 0 ;
    /************************************/
    always @(posedge i_clk_sel) begin
        cnt <= cnt + 1'b1 ; 
     end 
    
     wire [15:0] led_1 ;
     wire [15:0] led_2 ;
     wire [15:0] led_3 ;
     wire [15:0] led_4 ;    
    
    
    one_led_high_reverse_order UO_1(.i_clk(i_clk_sel) , .count(cnt) , .o_led(led_3));
    
    Two_led_high_reverse_order U0_2(.i_clk(i_clk_sel) , .count(cnt),  .led_reverse_two(led_2) );
    
     Led_miss_one_msb          UO_3(.i_clk(i_clk_sel)  , .i_sel(i_sel_order)  , .count(cnt) , .led(led_1));
    
     LED_Multiple_Frequencies  UO_4(.i_in(freq_out) ,  .o_led(led_4) );
    
    // MUX FOR SELECTING DIFFERENT PATTERN OF LEDs blinking 
    
      mux_pattern_selector
    UO_MUX_PATTERN_SEL(
                         .i_in_1    (led_1), 
                         .i_in_2    (led_2),
                         .i_in_3    (led_3), 
                         .i_in_4    (), 
                         .i_in_5    (led_4), 
                         .i_in_6    (), 
                         .i_in_7    (),
                         .i_in_8    (),
                         .i_sel_mux (i_sel),
                         .o_mux_out (led_out)
                     );    
    
    
    
    
endmodule
