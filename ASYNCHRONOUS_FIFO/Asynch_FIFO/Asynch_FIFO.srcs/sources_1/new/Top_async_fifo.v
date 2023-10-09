`timescale 1ns / 1ps

module Top_async_fifo
 #(parameter WIDTH_DATA = 8,
   parameter ADDR_WIDTH = 6  )
(
   input  i_wr_clk                     ,    // write clock 
   input  i_rst_n                      ,   // active -low reset
   input  i_wr_en                      ,   // write enable pin
   input  [WIDTH_DATA-1:0] i_data      ,   // data to be written         
   input  i_rd_clk                     ,   // read clock
   input  i_read_en                    ,   // read enable pin    
   output [WIDTH_DATA-1:0] o_data      ,   // data read from memory
   output [ADDR_WIDTH-1:0] o_wr_count  ,   // keeps track of how many data words are written into the memory
   output [ADDR_WIDTH-1:0] o_rd_count  ,   // keeps track of how many data words are read from the memory   
   output fifo_full                    ,  // fifo full flag
   output fifo_empty                     // fifo empty flag   
       );
   
    // write sync gray pointer
    wire[ADDR_WIDTH:0] wr_sync_gray_in  ;
    wire[ADDR_WIDTH:0] wr_sync_gray_out ;
    
    // read sync gray pointer
    wire[ADDR_WIDTH:0] rd_sync_gray_in  ;
    wire[ADDR_WIDTH:0] rd_sync_gray_out ;
    
    // write address
    wire [ADDR_WIDTH-1:0] wr_addr;
    // read address
    wire [ADDR_WIDTH-1:0] rd_addr ;
        
    // sync read pointer
      sync_read_pointer
 #(.N_WIDTH(ADDR_WIDTH))
    SYNC_RD_PTR(
          .i_clk          (i_rd_clk),
          .i_wr_sync_gray (wr_sync_gray_in), 
          .o_wr_sync_gray (wr_sync_gray_out)
    );
    
    // sync write pointer
     sync_write_pointer
 #(.N_WIDTH (ADDR_WIDTH))
     SYNC_WR_PTR(
          .i_clk          (i_wr_clk),
          .i_rd_sync_gray (rd_sync_gray_in), 
          .o_rd_sync_gray (rd_sync_gray_out)
     );
     
    // write pointer logic 
     write_pointer_logic
 #(.N_WIDTH (ADDR_WIDTH))
     WRITE_PTR_LOGIC(
         .i_clk             (i_wr_clk) ,  
         .i_rst_n           (i_rst_n), 
         .i_write_en        (i_wr_en) ,
         .r_grey_sync_in    (rd_sync_gray_out) , 
         .w_grey_out        (wr_sync_gray_in) ,
         .w_write_cnt       (o_wr_count) , 
         .w_address         (wr_addr) ,
         .o_full            (fifo_full)
      );
    
    // read pointer logic
     read_pointer_logic
 #(.WIDTH_N(ADDR_WIDTH))
    READ_PTR_LOGIC(    
         .i_clk             (i_rd_clk) , 
         .i_rst_n           (i_rst_n) ,
         .i_rd_en           (i_read_en) ,
         .wr_grey_sync_in   (wr_sync_gray_out) , 
         .r_grey_out        (rd_sync_gray_in) , 
         .r_read_cnt        (o_rd_count) ,
         .rd_address        (rd_addr) , 
         .o_empty           (fifo_empty)
     );
     
    // BRAM INTANTIATION
     single_port_sync_ram
 #(.DATA_WIDTH   (WIDTH_DATA),
  .ADDRESS_WIDTH (ADDR_WIDTH)
   )
  BRAM_UO_1(
      .i_wr_clk (i_wr_clk) ,
      .i_wr_en  (i_wr_en ) ,
      .i_rd_clk (i_rd_clk) , 
      .i_wr_addr(wr_addr)  , 
      .i_rd_addr(rd_addr)  ,  
      .i_data_in(i_data)   ,  
      .o_data   (o_data)
   );
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
