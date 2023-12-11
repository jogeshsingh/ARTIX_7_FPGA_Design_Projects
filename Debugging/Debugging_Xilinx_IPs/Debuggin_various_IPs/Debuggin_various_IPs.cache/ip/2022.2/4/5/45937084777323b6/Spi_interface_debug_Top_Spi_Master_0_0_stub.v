// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 13 12:03:42 2023
// Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Spi_interface_debug_Top_Spi_Master_0_0_stub.v
// Design      : Spi_interface_debug_Top_Spi_Master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Top_Spi_Master,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, i_rstn, i_data, i_data_valid, i_sel_mode, 
  o_SSCLK, slave_data_out, byte_cnt, chip_sel, mosi_out, debug_p_state)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_rstn,i_data[7:0],i_data_valid,i_sel_mode,o_SSCLK,slave_data_out[7:0],byte_cnt[2:0],chip_sel,mosi_out,debug_p_state[2:0]" */;
  input i_clk;
  input i_rstn;
  input [7:0]i_data;
  input i_data_valid;
  input i_sel_mode;
  output o_SSCLK;
  output [7:0]slave_data_out;
  output [2:0]byte_cnt;
  output chip_sel;
  output mosi_out;
  output [2:0]debug_p_state;
endmodule
