`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module read_pointer_logic
 #(parameter WIDTH_N = 4)
   ( input i_clk                       , 
     input i_rst_n                     ,
     input i_rd_en                     ,
     input [WIDTH_N:0] wr_grey_sync_in , 
     output[WIDTH_N:0] r_grey_out      , 
     output[WIDTH_N-1:0] r_read_cnt      ,
     output[WIDTH_N-1:0] rd_address    , 
     output o_empty
     );
     
     
     // binary rd pointer 
     wire [WIDTH_N:0] r_cnt_bin     ;
     //empty flag
     reg   empty_o  = 0;
     // read enable
     wire  read_en      ;
     
     // gray code converted from binary read pointer
     wire [WIDTH_N:0] r_gray       ;
     // next gray code converted from binary read pointer
     wire [WIDTH_N:0] r_gray_nxt   ;
     
     // reg for counting number of words read from the memory 
     reg [WIDTH_N:0] rd_word_cnt = 0;
     
     // reg binary read pointer   
     reg [WIDTH_N:0] rd_bin_reg  = 0;  
     
     
     //assign binary to gray code 
     assign r_gray = (rd_bin_reg)^(rd_bin_reg >> 1) ;
     // assign next binary to gray code 
     assign r_gray_nxt = ((rd_bin_reg + 1'b1)^ ((rd_bin_reg + 1'b1) >> 1));
     
     
     // assign r_grey_out
     assign r_grey_out = r_gray ;
     
     // assign read enable 
     assign read_en = (i_rd_en && (~empty_o)) ;
     
     //assign the memory read address
     assign rd_address = r_cnt_bin[WIDTH_N-1:0] ; 
     //assign empty flag
     assign o_empty    = empty_o     ;
     //assign number of words read from the memory
     assign r_read_cnt = rd_word_cnt ;
     // bin next read pointer logic 
     assign r_cnt_bin = (i_rd_en && (~empty_o)) ? rd_bin_reg + 1'b1 : rd_bin_reg ;
     
     /*************************************
      READ POINTER LOGIC
            AND 
       EMPTY FLAG LOGIC
     *************************************/
     always @(posedge i_clk) begin
          if (~i_rst_n)  rd_bin_reg <= 0;
             else begin
                                 rd_bin_reg <= r_cnt_bin ;
                   if (read_en)  empty_o <= (r_gray_nxt == wr_grey_sync_in) ;
                   else          empty_o <= (r_gray == wr_grey_sync_in);  
            end 
      end 
    /************************************
      Logic for converting the write 
      synchronized gray code pointer
      into binary pointer 
              and 
      Logic for  Generating how many
      words are read from the memory
    ************************************/                
     reg [3:0] i = 0;
     
     // reg for binary pointer converted from 
     // synchronized write gray pointer
     reg [WIDTH_N:0] bin_wr_ptr_conv = 0;
     
     
     always @(posedge i_clk) begin
          if (~i_rst_n)  begin
               rd_word_cnt     <= 0;
               bin_wr_ptr_conv <= 0;
             end   
          else if (~read_en)begin
            for (i=0; i<=WIDTH_N; i=i+1)begin
               // gray to binary code conversion
               bin_wr_ptr_conv[i] <= ^(wr_grey_sync_in>>i);
               // count number of data words read 
               rd_word_cnt     <= (rd_bin_reg >= bin_wr_ptr_conv)? (rd_bin_reg-bin_wr_ptr_conv):(WIDTH_N-(rd_bin_reg+bin_wr_ptr_conv));
               end 
        end 
   end              
                    
endmodule
