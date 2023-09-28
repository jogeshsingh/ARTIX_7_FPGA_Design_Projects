

set_property -dict {PACKAGE_PIN N11 IOSTANDARD LVCMOS33} [get_ports i_clk]
create_clock -period 20.000 -name sys_clk [get_ports i_clk]

# Switches
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS33} [get_ports {d_in[0]}]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS33} [get_ports {d_in[1]}]
set_property -dict {PACKAGE_PIN M4 IOSTANDARD LVCMOS33} [get_ports {d_in[2]}]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports {d_in[3]}]




#7 segment display
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg_an[0]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg_an[1]}]
set_property -dict {PACKAGE_PIN G5 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg_an[2]}]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg_an[3]}]

set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg[0]}]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg[1]}]
set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg[2]}]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg[3]}]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg[4]}]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg[5]}]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports {o_seven_seg[6]}]
##set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports {Seven_Seg[7]}];#DP

set_input_delay -max 4.000 [get_ports {{d_in[0]} {d_in[1]} {d_in[2]} {d_in[3]}}]
