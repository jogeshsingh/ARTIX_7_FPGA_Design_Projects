//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Nov 13 16:13:17 2023
//Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
//Command     : generate_target Spi_interface_debug_wrapper.bd
//Design      : Spi_interface_debug_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Spi_interface_debug_wrapper
   (byte_count,
    chip_sel,
    data_valid,
    i_clk,
    mosi_out,
    o_sclk,
    p_state_n,
    rst,
    slave_data);
  output [2:0]byte_count;
  output chip_sel;
  input data_valid;
  input i_clk;
  output mosi_out;
  output o_sclk;
  output [2:0]p_state_n;
  input rst;
  output [7:0]slave_data;

  wire [2:0]byte_count;
  wire chip_sel;
  wire data_valid;
  wire i_clk;
  wire mosi_out;
  wire o_sclk;
  wire [2:0]p_state_n;
  wire rst;
  wire [7:0]slave_data;

  Spi_interface_debug Spi_interface_debug_i
       (.byte_count(byte_count),
        .chip_sel(chip_sel),
        .data_valid(data_valid),
        .i_clk(i_clk),
        .mosi_out(mosi_out),
        .o_sclk(o_sclk),
        .p_state_n(p_state_n),
        .rst(rst),
        .slave_data(slave_data));
endmodule
