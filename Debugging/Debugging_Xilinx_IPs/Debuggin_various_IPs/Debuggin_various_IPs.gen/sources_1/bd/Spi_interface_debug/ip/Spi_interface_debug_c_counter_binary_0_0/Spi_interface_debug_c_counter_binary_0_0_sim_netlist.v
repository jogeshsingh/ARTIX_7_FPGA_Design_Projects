// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 13 10:17:31 2023
// Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/VIVADO_2022/ARTIX_A7_FPGA/Debugging/Debugging_Xilinx_IPs/Debuggin_various_IPs/Debuggin_various_IPs.gen/sources_1/bd/Spi_interface_debug/ip/Spi_interface_debug_c_counter_binary_0_0/Spi_interface_debug_c_counter_binary_0_0_sim_netlist.v
// Design      : Spi_interface_debug_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Spi_interface_debug_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module Spi_interface_debug_c_counter_binary_0_0
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 8}" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1000" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Spi_interface_debug_c_counter_binary_0_0_c_counter_binary_v12_0_15 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KdkdvVsuosc8qR9X5PxQ/ghTeTrEz4qKVuenhDR9wRSL/BO/mhSwQtiFj74UO0sGv0zvjAntaq/3
l2/v8gOiVKmM666gbk/2UCISA4OFA3FDR9jYmiXdNXb2qHeS1ywQz5n/sTR5iu4KFEfwrl3IXtQw
aEiGegL+CQMaovJsto4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pZCj3qT3VD1SCS5RiZExsqqu16KpMtHXilQL9p5/eBl7qrfQjT1VhFtVbYUusepbChjsCCmCn7hr
72SuHmOmDWG78UARN7MLdO/+sePuyS06ak4nAw5xwjT0g+9970uMWYKvTeeYqoz2i+k+zX60Cuvu
iwBfxWM22DqukHlYzbEFWhNyXIkgJe71p67vGdXBmqu4/2wmlwGApqBxlwR+alwZ9UGHlxNQS4N5
z1wHu3Cp8LwGRjlaXjElcY8RDpvyz5l59ey8ar5HXR9Zqf6e1unE2NdhzHhEGRerRFXoKZppk1HB
6kIEY4EHAWz+HvPcqoP9eoYKDazoAGkJRVP6YA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gLgm7VvY3cNcNvdXvikCQd2nRniE4ae4hePOcAUlPDMoHDzQAD7Ngo12MGFns9JNPcCaUXfAmxL2
JNGojjrDRUWrv8FPV6FOEbDHs96fef8+gqLF4OqLck4kWpKhnJwaJjjzQirvXEzZxP+GsBKnkSp8
ceVlZJwP0F6XRv+RpQA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GeZP242oKQSNuofqDs4oIIXZEufPhRVrlFFeRSLY4VCxhMEMwfPrNXe33xO0zIEBoPW2X9mvUoTY
izdWQEtWImFzjzPCjkSLhEdIMmUBH02Y+Tw3eW5x23T0cK96pmoV2MH8kl99I27MN6stVd977fuB
Mjao5MnSXIGZ/uXGtgfUO9Zjs4/2wGmsI2/lANN2WOL9Sz4xeA8k40c2dNYgxgHoCwx8Ya/RYIZS
Cpuvzq4ZyFSNT/kMXnUmqj75/flpXT3mmyW+frexux3j9PxpKHmxAE9crvDx85rMamGiA4ftl+ac
H0FtL2cBqdlP60x+FjqleWCJoN6AYdxA0YZaeg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URmEGftuxvv0+tViRUdsFNnPXucZlVDfUQpjjXkpOA38QUzsIL9j1pGGp9doC4jcg/9MD149BTSw
vAG8684a3k+Tx/8sFGl/viK1q8ty9nktEABSahv8Etm5ZJVAzQJT7EaOzrYqyywSwabogvGUmN/7
DE3eOn6+sMCiMl6BLUhYyK39ntTWNFYVPiheclbBb36V1vzMOQl0mvPuS4hDXqba/+qBZXhqeYWK
ceNfwci6SsRRef6hLF/1S+20r2uBxJeYJjyfWGGFEGfxlAOz1MiYUUR/bEHWnbjwIcJTBHQNRdq4
4Ryb+iPuKcsXU/8ApD14i6ScW+VBPWSqnH9w+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NtQgA3rUKfJt+21sTot44yr4gmte57FoFl8Q/327tsRJeEyNAiwWZaZN2mbo2NFcvyN2GhDw6avJ
NsF1Oxs36P8shoqOOiloWWrdTcyAdMhdk+UjeZgKcNSqd4Js87w/5LVQTwjB2mcBDfe1jrivv+IW
ZRBC8NvlW5z/1wF7+vzXRMziLQYeOkLB0OkpIY+eT5cZXDKuZ+4l0FMPjd+El96JGAEHG7Q0qS3F
OEApYEp8+nSZnragoytq4pkhVJEC22ye0hBhoBClJpszCcg0u+Ugf+mYZsj8BC2uqSY6Hh/gpjjw
enQ7aEYBaUR7GCwQN7fZmNhZYtBkyvNqydRQcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CpIFM8Y8dBmpjtOVnOKcfppEFV+c1cRgsQtewNUe+5apiLDoRCdMyTqoCay7nz+Xagc0OvfZDg/Y
jSTsDjKVcEIyxOfix7iwjKW8Rz+a5wBIatI8wfCo7uLtuucz9otOWWI7BFQ2gn4VdQ73HJJlZMMY
OyEOd33tGjNSjxz3W07knDr1FwTE3BOfhq+Qj2ErnuV1dQbrTb3MiQMTnHaTCwtz6ip0pD6b5G4K
kBRUYe+UNXCMvSfNIN9MPSmolO4MjNwM5gnZZqLcR1hGuzH/Yeb/jPnhsZ7jFvlTT3nsM9JzMRAE
QwlzVuulHKQDS2I96arFosYPYMsalmn6CQW0gg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qinIxHFISC9r9LS7OKOuYVGM5EBkuuQNV1nDRui+QVNLn2QFCrWPeEClQIlNViKOt8MX9urHvu4e
l2L+eZKw6+St9cW9yUsYu36yoB4LqwG+vKvfR9CW82LGPyMAxdgk/p3n+F0Xp9Y2HaERwWDL99tW
V7cDvLLhyIwz7w4rI0BWWV+KMjXP2F5MNgykzZn7tzV8oY6MxOykFqRdI8DLAdlYGAs90wjJ3x84
S3fHciSox97FYpDi64v31Vb4RmRrwueXcvCc3w8gzjuwg7qraWLMYyPB+mERB2v1htX80PsWWVHE
QXkWiHWYvvrXEykUS04MmLNHpV8ZgBXO/NBEGn7mrITDEswk3u1Yviqy7CW2wLPQBoo5xW+uiu2e
8YZV/E+bAt+P/EH5RsC9alBgtuVKU1s9DaiEH8eUPEgJQ/TXwQW01pg8ECTYgiBS+IQSbld23aq3
goVo0ZMzRu/SA00Jmwt7upvsMkh9Q+2732ahu1FmlSNmyNGB1+bYf782

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1jqx5hmzZZMhPApzUC1oZLMAkHma8Ki4b2CvLNqxSn+MNWoTPomvQ775DMBEDai/gahYALsohdX
0f/e6LuPqt4zYtyAzmH+nRgOG/tilS1J674KsaHxudAfo4sM3awB/C4Q3VdYsO9FgvPQylnYKSGE
gJ46W+1Y789VQqPbt4dpnprhix6sLlwfww7We6cq2wu4PilFzovejouUBZqNMZHYi4suKcMcenp3
C7QRKloo8IF9yKrhGPcRJLQt2nus3bI0Q3ICxRk13Nrfhh/z4cdm0OGXz42q44snFEVy1lLxPOs7
W9tSe5ag3923oCT4NGGgK/gMTx5qXxFhV2MJUw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B2WR2uGJsM+hVgEPPONHTjRjmoK86xu94FyorwzilbczJLVp1/jRg6Av/1WpX5I2u6cuTrOUXKv+
bpcb1sJaX4VuVpgQNYmrGVj73nMHxZ+kDAQ48H0LVr8l3gxvqp4htHFKncqyuUpg+fV29mEj2dBT
oQuAojVhf+E+w+zxzreh51yU6Yx5a9Gygt62oMv5L3cCm9sU0NxerdhE7FY9C55h23wkX8xbNc7I
RlhsX5zSggPTs2NbVuhO3nLX4+aSziQ/mURTUew9wkA2hxn+g0Eb8V33SNkLpKh0yXM0YSahYBdJ
hQBxMXz8cIFZU++LN7HUUF6j2uvku3gCx9iwJQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JN7ylFfAwsmsAjlkv1u+pdolXFYfhFgcsXnJC4PfJs8pRALWf+pCDFohP8pDHEvc1plSUYXcJlq+
PoVwkovz45p5tNwWRTaDhMVcbXhZywcMXKFI+vg2xdgdn/MM6HghDwGugB3QOPMn37dTGxXv1BDJ
IqJBC67ZJlqmyZhvDIOgBSnFz8OJL+xl5k2Oi879ldV22HKpBt+kUf5phKepCKLXe2wMFHAeUzvu
RutVcHOZckxnQBb3wf5XXfBw6pdIhKrr80W8YASRv6UUpljvzvlYzzec8gJWcYEmKZagXGPJhE8T
W24wKjbqS1fTkjggukJzjMD0Q2HKHXJ4FXxHXA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9808)
`pragma protect data_block
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
dZcV4Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
