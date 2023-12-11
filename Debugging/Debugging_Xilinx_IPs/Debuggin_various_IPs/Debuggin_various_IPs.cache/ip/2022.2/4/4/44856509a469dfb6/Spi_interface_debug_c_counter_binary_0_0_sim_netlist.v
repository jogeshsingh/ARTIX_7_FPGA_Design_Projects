// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 13 10:17:28 2023
// Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Spi_interface_debug_c_counter_binary_0_0_sim_netlist.v
// Design      : Spi_interface_debug_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Spi_interface_debug_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
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
pee7ZkR1bS00WHRBqgFTTLwGcqJH0ztDhMqf21pCh3kLKblCAOO+4pGcFyn7zOyqFk3sKeg6ZKiT
3s90H/pwPZk71XU0dxzVeMlpXHKIpiQRa4J9Qk8BPAc3hmKASz0tSsOAgXh5WrJioiEBUQdLdjT/
wW0EGIjRBj+n3r5K6FleAbYm54wv4T49UhAGUoJBzOrkwpwcHixGTzK16IiDoz9j/m9SYRTEPm0v
cC1iNfGLWXQdeY5yhXXNpDRoE7pdfl4aD7g3e4/YtwovNAd/CMVZ1dvlVX1l60j35cqyJ0LUGQfC
jmQ7oUuFP9P2cvc4cF3ItWlQaIX2qfG+iNBzcQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bRpK3lufT2OAq/FO47nlOqaUopTpi+9LBXuAyfWM15Ru20r6LIVkH+XjnH28nTQ7CAqSR2yT9VFI
/yp01h/iQAOhEFaYDSLn47fkVswWYovUkPZGGw0B0iFR4x5/ImZR14GOwb9CXoh6EFF54tpMT3M+
6DNugyWYUMd0KFgY+zfeuhsp0Miv6DWNo4afwLDv32YANql26u9aEmIjBwE2NhYTd/mk/9BdSAiH
aoyMtC+WJwMxi8WiQjI29pXa+voC3Om2oJMbwQAxNitlOQoCBbCfVW/MRgTtuimZhY8QAqoh5aPJ
z7Cx+tCFhH8RNlCDN2nGvk0hm6gWF2O/8X1RiQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9456)
`pragma protect data_block
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
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
