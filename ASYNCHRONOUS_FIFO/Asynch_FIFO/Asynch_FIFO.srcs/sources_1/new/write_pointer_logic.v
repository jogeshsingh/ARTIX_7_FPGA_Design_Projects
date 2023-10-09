`timescale 1ns / 1ps

module write_pointer_logic
 #(parameter N_WIDTH = 4)
   (
  input  i_clk                      ,  
  input  i_rst_n                    , 
  input  i_write_en                 ,
  input  [N_WIDTH:0] r_grey_sync_in , 
  output [N_WIDTH:0] w_grey_out     ,
  output [N_WIDTH-1:0] w_write_cnt    , 
  output [N_WIDTH-1:0] w_address    ,
  output  o_full
    );
    
   
   // binary pointer-reg for write pointer logic
   reg [N_WIDTH:0] w_cnt_bin  = 0 ;
   
   //full flag
   reg  full  = 0;
   //write enable flag
   wire write_en ;
   
   //gray code converted from binary pointer-reg (wr_cnt_bin) 
   wire [N_WIDTH:0] w_gray;
   // next gray code converted from binary pointer-reg (wr_cnt_bin)
   wire [N_WIDTH:0] w_gray_nxt;
   
   // assign the memory write address  
   assign w_address = w_cnt_bin[N_WIDTH-1:0] ;
   
   // binary to gray conversion
   assign w_gray = ((w_cnt_bin)^(w_cnt_bin>>1'b1)) ;
   //binary to (next) gray conversion
   assign w_gray_nxt = ((w_cnt_bin + 1'b1)^((w_cnt_bin + 1'b1) >> 1'b1)) ;
   // full flag
   assign o_full = full ;
   // write enable flag
   assign write_en = i_write_en && ~full ;
   // assign write pointer gray code
   assign w_grey_out  = w_gray ;
    
   /********************************************
       LOGIC FOR BINRARY WRITE POINTER 
       and FULL FLAG Logic 
   ********************************************/  
    always @ (posedge i_clk ) begin
           if (~i_rst_n) begin
                w_cnt_bin <= 0;
                full      <= 0;
            end 
       else begin
         if (i_write_en && ~full)begin
                 w_cnt_bin  <= w_cnt_bin + 1'b1 ;
                full       <= (w_gray_nxt == {~r_grey_sync_in[N_WIDTH:N_WIDTH-1] , r_grey_sync_in[N_WIDTH-2:0]}) ;
               end 
          else
                begin
                 full       <= (w_gray == {~r_grey_sync_in[N_WIDTH:N_WIDTH-1] , r_grey_sync_in[N_WIDTH-2:0]}) ;
           end
      end
    end   
 
 
    //reg for counting number of words written into the memory
       reg [N_WIDTH:0] n_word_cnt = 0 ;
       
     /******************************************************************  
       // this block converts the synchronized read gray pointer into 
       // binary pointer for comapring the number of data words written 
       // into the memory
     *****************************************************************/  
       
       reg [3:0] i = 0 ;
       // binary read pointer converted from synchronized read gray pointer 
       reg [N_WIDTH:0] bin_rd_ptr_conv = 0 ; 
    
       always @(posedge i_clk ) begin
          if (~i_rst_n)begin
                n_word_cnt      <= 0;
                bin_rd_ptr_conv <= 0; 
            end 
             else 
               begin
                   for (i=0; i<=N_WIDTH; i=i+1) begin
                     // grey to binay code conversion
                     bin_rd_ptr_conv[i] <= ^(bin_rd_ptr_conv>>i);
                     //count number of data words written
                     n_word_cnt      <= (w_cnt_bin>=bin_rd_ptr_conv)? (w_cnt_bin-bin_rd_ptr_conv):(N_WIDTH-(bin_rd_ptr_conv+w_cnt_bin)) ;
                  end  // (!for)
           end  
      end               
        
    // assign number of words written into the memory    
     assign w_write_cnt = n_word_cnt ;            
  
endmodule

