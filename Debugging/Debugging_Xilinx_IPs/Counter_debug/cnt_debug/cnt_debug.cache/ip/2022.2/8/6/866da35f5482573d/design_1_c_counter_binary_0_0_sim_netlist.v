// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 13 14:53:00 2023
// Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
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
gxBxFwltL30DQ2KbKKjYxBp2iel92svrOjQwvgHEAzz/zUI68RGwZfjQ27s82TJDXGl3XaFeYw7U
CBHea84y1VztTrNgWKi9iWH8Y9Zb8PBmeqApktqM+V9R7aC7wlfIc/tN+GOGcrUPeuT2Scu0QY/f
Nd+qVYh3D0VGq6v8uszGCmPsyJ9wnGSzXJMmLtZQkO0BZ9VACgNGy7vcxvj4XuLrQ7ClbbK99AuR
vEgXDyNgoi5EfHsg4jWMBt2lsUsFrDkT1IKC1N4vynNI+wmOrmdwEQlWWRhZ96ueRZDSS4jSeFH3
xjyKti7y9cBZz+xlBnU/EOzyo7O1N2pwxbctrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bloOWu9TT01x+vi3kPuQaVmiNFwpvk5J7fDWXwqjNhqieUqBLouc6J9f9k/7iEPt2EIrRwaeh8vh
d2PwQok6Qja7INIlwgdqpyXaf7mWh/gaJYXpAA+oWHmU1rW3ny+MHOP9w7D70piOB/4xtYgJzYEE
SEOUxZsOZKKD6v5EUQ+2ouOSDC9PwsdZFpFLgvO+DgXfCuyvgoZaGRgqpLwOC85UX24ZyBOjUxic
Oyju4nWTX42AtRiqFGglKR+G1Ce+K4H1qDf9tS/kPsvMaXzWQbNMK6hMYKm45O+/6e5i1KRHuZ1D
YGlp5+Woa2grI2sRoUpk3bkjgGb4L53X/5p0Sw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12832)
`pragma protect data_block
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
fbl7TB35NA==
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
