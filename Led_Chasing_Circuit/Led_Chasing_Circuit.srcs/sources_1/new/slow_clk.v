`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module slow_clk
#(    parameter CLK_CNT = 5_000_000 )
  (
  input i_clk ,
  output o_slow_clk
   );
    
    
    reg [26:0] cnt_clk_cycle = 0;
    
    reg toggle_HZ = 0;
    
    assign o_slow_clk = toggle_HZ ;
    
    always @(posedge i_clk)  begin 
             if (cnt_clk_cycle == CLK_CNT-1) begin
                    cnt_clk_cycle <=  0;
                    toggle_HZ   <= ~toggle_HZ ;
                 end 
            else
                 begin
                    cnt_clk_cycle <= cnt_clk_cycle + 1'b1 ;
                 end 
     end 
     
endmodule
