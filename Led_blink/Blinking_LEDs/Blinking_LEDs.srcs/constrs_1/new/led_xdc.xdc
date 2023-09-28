
#### CLK 
# Clock signal
set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports { i_clk }];
create_clock -name sysclk -period 20 [get_ports { i_clk }];

#### LED
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { o_led_1HZ  }];#LSB
set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { o_led_2HZ  }];
set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { o_led_5HZ  }];
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { o_led_10HZ }];