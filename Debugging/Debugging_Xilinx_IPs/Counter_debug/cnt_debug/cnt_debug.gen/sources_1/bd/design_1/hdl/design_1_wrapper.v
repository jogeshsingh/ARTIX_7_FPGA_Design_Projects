//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Nov 13 15:16:01 2023
//Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CE,
    i_clk,
    out_count);
  input CE;
  input i_clk;
  output [15:0]out_count;

  wire CE;
  wire i_clk;
  wire [15:0]out_count;

  design_1 design_1_i
       (.CE(CE),
        .i_clk(i_clk),
        .out_count(out_count));
endmodule
