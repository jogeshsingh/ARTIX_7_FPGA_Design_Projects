`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Led_chase(
input i_clk , 
input [2:0] freq_sel_in , 
input [2:0] pattern_sel , 
input i_order_sel ,
output [15:0] led_o 
    );
    
   
  
  
    wire slow_clk_c_10_HZ ;
    wire slow_clk_c_5_HZ  ;
    wire slow_clk_c_1_HZ  ;
    wire slow_clk_c_2_HZ  ;
    wire slow_clk_c_20_HZ ;
    wire slow_clk_c_25_HZ ;
    wire slow_clk_c_30_HZ ;


   
    
    //slow clk --10 HZ
    slow_clk #(.CLK_CNT(5_000_000))
    ONE_HZ_CLK_10_HZ(.i_clk(i_clk) , .o_slow_clk(slow_clk_c_10_HZ));
    
    //slwo clk 2 HZ 
    slow_clk #(.CLK_CNT(12_500_000))
    ONE_HZ_CLK_2_HZ(.i_clk(i_clk) , .o_slow_clk(slow_clk_c_2_HZ));
    
    
      //slwo clk 1 HZ 
    slow_clk #(.CLK_CNT(25_000_000))
    ONE_HZ_CLK_1_HZ(.i_clk(i_clk) , .o_slow_clk(slow_clk_c_1_HZ));
    
    //slow clk 5 HZ 
    slow_clk #(.CLK_CNT(10_000_000))
    ONE_HZ_CLK_5_HZ(.i_clk(i_clk) , .o_slow_clk(slow_clk_c_5_HZ));
    
     //slow clk 25 HZ 
    slow_clk #(.CLK_CNT(2_000_000))
    ONE_HZ_CLK_25_HZ(.i_clk(i_clk) , .o_slow_clk(slow_clk_c_25_HZ));
    
     //slow clk 20 HZ 
    slow_clk #(.CLK_CNT(2_500_000))
    ONE_HZ_CLK_20_HZ(.i_clk(i_clk) , .o_slow_clk(slow_clk_c_20_HZ));
    
     //slow clk 30 HZ --approx
    slow_clk #(.CLK_CNT(1_600_000))
    ONE_HZ_CLK_30_HZ(.i_clk(i_clk) , .o_slow_clk(slow_clk_c_30_HZ));
    
    
    wire [6:0] o_freq;
    assign o_freq = {slow_clk_c_30_HZ , slow_clk_c_25_HZ ,slow_clk_c_20_HZ ,slow_clk_c_5_HZ ,
                     slow_clk_c_10_HZ , slow_clk_c_2_HZ , slow_clk_c_1_HZ } ;
    
    wire clk_freq ;
    
    ///MUX for selecting the particular frequency
     mux_frequency_selector
#(.WIDTH (7), 
  .SEL_W (3))
MUX_UO_1(
      .i_in  (o_freq), 
      .i_sel (freq_sel_in), 
      .o_mux (clk_freq)
   );
    
    
    
   Combine_Multiple_Instances
   UO_DIFFERENT_PATTERNS_LED(
              .i_clk_20_HZ (slow_clk_c_20_HZ), 
              .i_clk_1_HZ  (slow_clk_c_1_HZ), 
              .i_clk_2_HZ  (slow_clk_c_2_HZ),
              .i_clk_5_HZ  (slow_clk_c_5_HZ),  
              .i_clk_25_HZ (slow_clk_c_25_HZ),
              .i_clk_30_HZ (slow_clk_c_30_HZ), 
              .i_clk_10_HZ (slow_clk_c_10_HZ),
              .i_clk_sel   (clk_freq),
              .i_sel       (pattern_sel),
              .i_sel_order (i_order_sel), 
              .led_out     (led_o)
    );
    
    /*
    reg [3:0] counter = 0;
    
    always @(posedge clk_freq) begin
          counter <= counter + 1'b1 ;
       end 
           
      // led assigning  
       always @ (posedge clk_freq) begin
             case(counter)
             4'h0: o_led <= 16'b0000_0000_0000_0001;
             4'h1: o_led <= 16'b0000_0000_0000_0010;
             4'h2: o_led <= 16'b0000_0000_0000_0100;
             4'h3: o_led <= 16'b0000_0000_0000_1000;
             4'h4: o_led <= 16'b0000_0000_0001_0000;
             4'h5: o_led <= 16'b0000_0000_0010_0000;
             4'h6: o_led <= 16'b0000_0000_0100_0000;
             4'h7: o_led <= 16'b0000_0000_1000_0000;
             4'h8: o_led <= 16'b0000_0001_0000_0000;
             4'h9: o_led <= 16'b0000_0010_0000_0000;
             4'hA: o_led <= 16'b0000_0100_0000_0000;
             4'hB: o_led <= 16'b0000_1000_0000_0000;
             4'hC: o_led <= 16'b0001_0000_0000_0000;
             4'hD: o_led <= 16'b0010_0000_0000_0000;
             4'hE: o_led <= 16'b0100_0000_0000_0000;
             4'hF: o_led <= 16'b1000_0000_0000_0000;
           endcase
          end 
            */
    
endmodule
