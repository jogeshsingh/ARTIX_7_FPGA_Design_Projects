 
# Clock signal
 set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports { i_clk }];
 create_clock -name sys_clk -period 20 [get_ports i_clk] ;


  # FREQ SEL == [15:13]
 set_property -dict { PACKAGE_PIN T7    IOSTANDARD LVCMOS33 } [get_ports { freq_sel_in[0] }];
 set_property -dict { PACKAGE_PIN P8    IOSTANDARD LVCMOS33 } [get_ports { freq_sel_in[1] }];
 set_property -dict { PACKAGE_PIN M6    IOSTANDARD LVCMOS33 } [get_ports { freq_sel_in[2] }];#MSB
 
 # PATTERN_SEL [2:0]
 set_property -dict { PACKAGE_PIN L5    IOSTANDARD LVCMOS33 } [get_ports {pattern_sel[0] }];#LSB
 set_property -dict { PACKAGE_PIN L4    IOSTANDARD LVCMOS33 } [get_ports {pattern_sel[1] }];
 set_property -dict { PACKAGE_PIN M4    IOSTANDARD LVCMOS33 } [get_ports {pattern_sel[2] }];
 
 # ORDER SEL [3]
 set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports {i_order_sel }];
 
 
 # LEDs
 set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { led_o[0] }];#LSB
 set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { led_o[1] }];
 set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { led_o[2] }];
 set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { led_o[3] }];
 set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { led_o[4] }];
 set_property -dict { PACKAGE_PIN L2    IOSTANDARD LVCMOS33 } [get_ports { led_o[5] }];
 set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { led_o[6] }];
 set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { led_o[7] }];
 set_property -dict { PACKAGE_PIN K5    IOSTANDARD LVCMOS33 } [get_ports { led_o[8] }];
 set_property -dict { PACKAGE_PIN P6    IOSTANDARD LVCMOS33 } [get_ports { led_o[9] }];
 set_property -dict { PACKAGE_PIN R7    IOSTANDARD LVCMOS33 } [get_ports { led_o[10] }];
 set_property -dict { PACKAGE_PIN R6    IOSTANDARD LVCMOS33 } [get_ports { led_o[11] }];
 set_property -dict { PACKAGE_PIN T5    IOSTANDARD LVCMOS33 } [get_ports { led_o[12] }];
 set_property -dict { PACKAGE_PIN R5    IOSTANDARD LVCMOS33 } [get_ports { led_o[13] }];
 set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { led_o[14] }];
 set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { led_o[15] }];