// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 13 14:53:02 2023
// Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/VIVADO_2022/ARTIX_A7_FPGA/Debugging/Debugging_Xilinx_IPs/Counter_debug/cnt_debug/cnt_debug.gen/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_in1_0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]Q;

  wire CE;
  wire CLK;
  wire [15:0]Q;
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
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_15 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
GmlWAb+rkjyW5Y3EqKYlL+/Amjxywz5uYdy9T+Pi5wxelBiZDFgI2RY6l0I74f6lKgDBpUteuqya
SFqMDA+AF34SJdLflgVcrY/rpEoxRU059fIjsMPdK9o1aH7DI0jwXFYm5Il0P22YZEUH79Mz2yke
vGhX4Qjc4YEpLbDLuhyp7EodeklRnMMx1VyIFf4TzK0X1m46FgSWAPAahOKVMiuADi6WFPHzZme7
bxyh8UYFHZdnp/+fYPiDfv6x3fRBCXbpDBSenGv6m+F6JaWRqT1rlHtfx2cLgfvDF6utS7AoGwFV
re/xY7pcnxI3drWgiRIyPEXtqIm1skVHTnPspw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U8HPdSCOJriZTts/5SDZQfMdKL9GolqQr77sugEAdlAZ7XMeKoFoyxx/t+R9/UWG28UzKB5+UGu8
Drw5N6GjccYHyvuNuhT7xAfrSDgtycKrwneUfSgnOedIPFyRGxMqxJNvWgX+NeKPV4k+st2sNGiW
YBBgE3cFYd2PWu6IX/2cDD0myJdYdZy/PUETKDaWFBJgnDb6Uc8z6LSjMnSlJIG4ikNGgE5IhEVa
oXWcEOtXxCsubODINeOwIIGesfCoGdaZ5CXWU3m5rGGP/Jo9eyHn5bhDdSrx3m/UuhM+yMFeFlSH
bzOb2SAm7NEATsJ0OkTsUwUB1n6Vq2dSL4aqbw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13056)
`pragma protect data_block
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
vRiG
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
