//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Nov 13 15:16:01 2023
//Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CE,
    i_clk,
    out_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.CE CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.CE, POLARITY ACTIVE_HIGH" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OUT_COUNT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OUT_COUNT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]out_count;

  wire CE_0_1;
  wire [15:0]c_counter_binary_0_Q;
  wire clk_wiz_0_clk_out1;

  assign CE_0_1 = CE;
  assign clk_wiz_0_clk_out1 = i_clk;
  assign out_count[15:0] = c_counter_binary_0_Q;
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CE(CE_0_1),
        .CLK(clk_wiz_0_clk_out1),
        .Q(c_counter_binary_0_Q));
  design_1_ila_0_0 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(c_counter_binary_0_Q),
        .probe1(CE_0_1));
endmodule
