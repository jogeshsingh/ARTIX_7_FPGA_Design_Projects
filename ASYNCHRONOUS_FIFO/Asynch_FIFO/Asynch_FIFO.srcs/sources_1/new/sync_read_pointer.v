`timescale 1ns / 1ps

module sync_read_pointer
 #(parameter N_WIDTH = 4)
  (
   input i_clk ,
   input [N_WIDTH:0] i_wr_sync_gray, 
   output [N_WIDTH:0] o_wr_sync_gray
    );
    
    //register-2-FF SYNCHRONIZERS
    reg [N_WIDTH:0] w_grey_sync_out  = 0;
    reg [N_WIDTH:0] w_grey_sync_nxt  = 0;
    
    
    always @(posedge i_clk) begin
     w_grey_sync_nxt <= i_wr_sync_gray  ;
     w_grey_sync_out <= w_grey_sync_nxt ;
    end 
    
    assign o_wr_sync_gray = w_grey_sync_out ;
    
 
endmodule
