`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Mux_seven_seg
// Multiplexer used to select one of the four seven seg display //
// Multiplex logic is updating at refresh rate in the circuit , so 
// the the seven seg are getting selected at that user written refresh rate 

`define WIDTH_SEL 2
`define WIDTH_SEG 4
`define WIDTH_EN 4
module Mux_seven_seg(
input i_clk ,  
//input i_rst_n ,
input [`WIDTH_SEG-1:0]o_seg1 ,
input [`WIDTH_SEG-1:0]o_seg2 ,
input [`WIDTH_SEG-1:0] o_seg3 ,
input [`WIDTH_SEG-1:0] o_seg4 , 
output reg [`WIDTH_EN-1:0] o_en  , 
output reg [`WIDTH_SEG-1:0] o_seg
 );
 
 /*******************************************
 // fpga clk = 50 MHZ 
 // refresh counter -- 16 bit
 // seven seg display running frequency 
 // refresh rate = fpga_clk / Refresh_counter
 //              = 50_000_000/ 2^16 
 //              = 762 Hz (approx..) 
 **********************************************/
 
 parameter DATA_WIDTH = 16 ;
 wire[DATA_WIDTH-1:0] o_cnt;
 
 counter_circuit #(.CNT_WIDTH(DATA_WIDTH))
 COUNTER(.i_clk(i_clk), .count_out(o_cnt));
    
 always @(*)
    begin
          case (o_cnt[DATA_WIDTH-1:DATA_WIDTH-2])
          2'b00: begin
                    o_seg = o_seg1 ;
                    o_en = 4'b0001;
                     end 
         2'b01: begin
                    o_seg = o_seg2 ;
                    o_en = 4'b0010;
                     end  
         2'b10: begin
                    o_seg = o_seg3 ;
                    o_en = 4'b0100;
                     end                 
         default : begin 
                        o_seg = o_seg4;
                        o_en  = 4'b1000;
                        end
              endcase
          end               
endmodule
