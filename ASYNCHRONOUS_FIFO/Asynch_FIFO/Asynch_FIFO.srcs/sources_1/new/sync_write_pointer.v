`timescale 1ns / 1ps

module sync_write_pointer
 #(parameter N_WIDTH = 4)
  (
   input  i_clk ,
   input  [N_WIDTH:0] i_rd_sync_gray, 
   output [N_WIDTH:0] o_rd_sync_gray
    );
    
    //register-2-FF SYNCHRONIZERS
    reg [N_WIDTH:0] r_grey_sync_out  = 0;
    reg [N_WIDTH:0] r_grey_sync_nxt  = 0;
    
    
    always @(posedge i_clk) begin
     r_grey_sync_nxt <= i_rd_sync_gray  ;
     r_grey_sync_out <= r_grey_sync_nxt ;
    end 
    
    assign o_rd_sync_gray = r_grey_sync_out ;
    
endmodule
