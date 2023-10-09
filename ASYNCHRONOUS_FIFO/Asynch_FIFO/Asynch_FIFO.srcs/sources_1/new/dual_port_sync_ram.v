`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module single_port_sync_ram
#(parameter DATA_WIDTH    = 4,
            ADDRESS_WIDTH = 2
  )
  (
   input i_wr_clk                      ,
   input i_wr_en                       ,
   input i_rd_clk                      , 
   input [ADDRESS_WIDTH-1:0] i_wr_addr , 
   input [ADDRESS_WIDTH-1:0] i_rd_addr ,  
   input [DATA_WIDTH-1:0] i_data_in    , 
   output [DATA_WIDTH-1:0] o_data  
   );
   
   // memory declaration
   (* ram_style="block" *)
   reg [DATA_WIDTH-1:0] mem_reg [0:2**ADDRESS_WIDTH-1];
   
   reg [ADDRESS_WIDTH-1:0] o_latch_rd_addr = 0;
      
   // write into memory
   always @(posedge i_wr_clk)begin 
         if (i_wr_en) mem_reg[i_wr_addr] <= i_data_in ;
     end        
           
    // register the rd_address in the temporary register 
    always @(posedge i_rd_clk) begin
          o_latch_rd_addr <= i_rd_addr ;
       end 
         
    // read asynchronously from memory location  
     assign o_data = mem_reg[o_latch_rd_addr];
               

endmodule
