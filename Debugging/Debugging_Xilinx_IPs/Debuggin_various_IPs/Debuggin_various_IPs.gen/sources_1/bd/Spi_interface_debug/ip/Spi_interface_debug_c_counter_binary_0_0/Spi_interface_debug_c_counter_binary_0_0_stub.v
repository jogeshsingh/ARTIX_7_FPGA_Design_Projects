// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 13 10:17:31 2023
// Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/VIVADO_2022/ARTIX_A7_FPGA/Debugging/Debugging_Xilinx_IPs/Debuggin_various_IPs/Debuggin_various_IPs.gen/sources_1/bd/Spi_interface_debug/ip/Spi_interface_debug_c_counter_binary_0_0/Spi_interface_debug_c_counter_binary_0_0_stub.v
// Design      : Spi_interface_debug_c_counter_binary_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *)
module Spi_interface_debug_c_counter_binary_0_0(CLK, CE, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,Q[7:0]" */;
  input CLK;
  input CE;
  output [7:0]Q;
endmodule
