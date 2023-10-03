# Clock signal
set_property -dict {PACKAGE_PIN N11 IOSTANDARD LVCMOS33} [get_ports i_clk]

# Reset  -- active low
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS33} [get_ports i_rst_n]

# LED --OUT
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports {o_rx_data[0]}]
set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS33} [get_ports {o_rx_data[1]}]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports {o_rx_data[2]}]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports {o_rx_data[3]}]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports {o_rx_data[4]}]
set_property -dict {PACKAGE_PIN L2 IOSTANDARD LVCMOS33} [get_ports {o_rx_data[5]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports {o_rx_data[6]}]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports {o_rx_data[7]}]



set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports o_rx_data_valid]

# USB-UART
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports i_rx_serial]


