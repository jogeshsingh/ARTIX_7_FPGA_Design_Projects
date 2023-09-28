`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: Jogesh Singh
// Create Date: 09/27/2023 11:33:14 AM
// Design Name: Led_Blink_test
// Module Name: Led_Blink_test
// Project Name: Blinking_LEDs
// Target Devices: EDGE ARTIX-A7
// Tool Versions: VIVADO 2022.2
// Description: This project demonstrates blinking leds at Different frequencies on ARTIX-A7 , same can be done on any other board , provided , user has to change 
//              the constraints file.


module Led_Blink_test(
                      input i_clk , 
                      output o_led_1HZ , 
                      output o_led_2HZ , 
                      output o_led_5HZ ,
                      output o_led_10HZ 
                   );
                   
   // FPGA i_clk = 50 MHZ 
   // for 1 HZ = 50/2 = 25MHZ = 25_000_000 clk cycles led goes low(0) and for next 25_000_000 led goes high(1)
   // for 2 HZ  = 50/4 = 12.5 MHZ = 12_50_000_0 clk cycles led goes low(0) and for next 12_50_000_0 , led goes high(1) and so on..
                   // the above means there two clk cycles of led (led is high for 2 sec)
   // similarly
   // for 5 HZ = 50/5 = 10 MHZ = 10_000_000 clk cycles led goes low(0) and for next 10_00_000 clk cycles led goes high(1), and so on...
   // for 10 HZ = 50/10 = 5 MHZ = 5_000_000 clk cycles led goes low(0) and for next 5_000_000 clk cycles led goes high(1) and so on....
                    
   
   parameter CLK_CNT_CYCLES_1_HZ  = 25_000_000;
   parameter CLK_CNT_CYCLES_2_HZ  = 12_50_000_0;
   parameter CLK_CNT_CYCLES_5_HZ  = 10_000_000 ;
   parameter CLK_CNT_CYCLES_10_HZ = 5_000_000 ;
   
   

 // counter for keeping track of clk ticks
   reg [24:0] cnt_1_HZ = 0;                    // 2^25 = 33_554_432 clk ticks  ( >= 25_000_000)
   reg [23:0] cnt_2_HZ = 0;                    // 2^24 = 16_777_216 clk ticks  ( >= 12_50_000_0)
   reg [23:0] cnt_5_HZ = 0;                    // 2^24 =  16_777_216 clk ticks ( >= 10_000_000)
   reg [22:0] cnt_10_HZ = 0;                   // 2^23 =  8_388_600  clk ticks ( >= 5_000_000)
   
   // toggle (led) reg 
   reg toggle_led_1HZ  = 0;
   reg toggle_led_2HZ  = 0;
   reg toggle_led_5HZ  = 0;
   reg toggle_led_10HZ = 0;
   
   
   
      assign  o_led_1HZ     = toggle_led_1HZ  ;
      assign  o_led_2HZ     = toggle_led_2HZ  ;
      assign  o_led_5HZ     = toggle_led_5HZ  ;
      assign  o_led_10HZ    = toggle_led_10HZ ;
   
   // toggling led at 1 HZ logic
   //
   //
   always @(posedge i_clk) begin
         if (cnt_1_HZ == CLK_CNT_CYCLES_1_HZ-1) begin
             cnt_1_HZ <=  0;
             toggle_led_1HZ = ~toggle_led_1HZ ;
          end 
       else
             cnt_1_HZ <= cnt_1_HZ + 1'b1 ;
   end 
   //
   //
   
   // toggling led at 2 HZ logic
   //
   //
   always @(posedge i_clk) begin
         if (cnt_2_HZ == CLK_CNT_CYCLES_2_HZ-1) begin
             cnt_2_HZ <=  0;
             toggle_led_2HZ = ~toggle_led_2HZ ;
          end 
       else
             cnt_2_HZ <= cnt_2_HZ + 1'b1 ;
   end 
   //
   //
   
   // toggling led at 5 HZ logic
   //
   //
   always @(posedge i_clk) begin
         if (cnt_5_HZ == CLK_CNT_CYCLES_5_HZ-1) begin
             cnt_5_HZ <=  0;
             toggle_led_5HZ = ~toggle_led_5HZ ;
          end 
       else
             cnt_5_HZ <= cnt_5_HZ + 1'b1 ;
   end 
   //
   //
   
   // toggling led at 10 HZ logic
   //
   //
   always @(posedge i_clk) begin
         if (cnt_10_HZ == CLK_CNT_CYCLES_10_HZ-1) begin
             cnt_10_HZ <=  0;
             toggle_led_10HZ = ~toggle_led_10HZ ;
          end 
       else
             cnt_10_HZ <= cnt_10_HZ + 1'b1 ;
   end 
   //
   //
   
   
                  
endmodule
