set_property SRC_FILE_INFO {cfile:E:/VIVADO_2022/SERIAL_PROTOCOLS/UART_RX_Seven_Seg_Display/Uart_receiver_seven_seg_dispaly/Uart_receiver_seven_seg_dispaly.srcs/constrs_1/new/uart_rx_xdc.xdc rfile:../../../Uart_receiver_seven_seg_dispaly.srcs/constrs_1/new/uart_rx_xdc.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports { i_clk }];
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L5    IOSTANDARD LVCMOS33 } [get_ports { i_rst_n }];
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { o_rx_data_valid }];#LSB
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F2    IOSTANDARD LVCMOS33 } [get_ports {o_seg_an[0]}]; #LSB
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports {o_seg_an[1]}];
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G5    IOSTANDARD LVCMOS33 } [get_ports {o_seg_an[2]}];
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports {o_seg_an[3]}]; #MSB
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports {o_seven_seg[0]}];#A
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports {o_seven_seg[1]}];#B
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports {o_seven_seg[2]}];#C
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports {o_seven_seg[3]}];#D
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports {o_seven_seg[4]}];#E
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports {o_seven_seg[5]}];#F
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports {o_seven_seg[6]}];#G
set_property src_info {type:XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D4 IOSTANDARD LVCMOS33 } [get_ports {i_rx_serial}];
