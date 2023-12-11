// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 13 13:43:31 2023
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
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
ktGxcbeTPHv2Hy0e1sKcz9GwecL/lIa5Zn9ZLXjabYG+V9T63yDwxYc/nEWmLGHka2mQULK2cUI9
967/MQx2FuD6V1BcD9ZNcZ4/kWmRyRH1nbGHJnJi7vTTWYIKql9+TJG5k99vB8FYf1NNRMAZc61I
IsNEB291+B/VUtLWA80F/YZ0/FeABB9P7FtjNB12EtbH85Jn3OowUWUapoOqcDM2Ek68ndjcJye2
gn/gC6KiLUgz10/020MfdaLOVTJNKOLvYXWFjq+1c2azfJYYkkghacfZzyXPxgDavwmJd5/QhuHJ
1Yafkqh9gJd5sj5uohBhSBKqIX29CYNpVZZ6Kw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zuZILNdRLSBYWsEjq3pB2RZMlVF/fZRFWectofNgcCBBMcTmOMuunFnuUO4msPxLWbyhkFwlkIL+
yiDmUIxqC8AEsHbvJ0caJNHxxv9ZH5UGX8f86ClAmdMDm3t9e+uQ9FcASS2dz3lr3RdF5qDw/IaG
2jM7LEHG5Hyq1VGg1c5pOMAOWtrfvpw3J2mrbkNnTH74O9Robfh9ZVlPfLMkwzRI+fdiehZNBPcg
N0mKb5F5Qkr5oEsQEt8Bs3yidIgCUz2eEH+sm9tg1cxgTFzOvfpQ7RJhjdocGcVlDTKlqR4ZN8Fj
J1WLa5u5o9iATi+cYIdm9QMcZy4Kn6xmAgg0uA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12832)
`pragma protect data_block
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
aZpfqUe7cA==
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
