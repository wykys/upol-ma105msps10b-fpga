# XDC config for Spartn 7 (XC7S15 FTBGA196)
# Multichannel analysis
# wykys 2020

###############################################################################
# GPIO
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io[*]}]
set_property PACKAGE_PIN P13 [get_ports {gpio_io[0]}]
set_property PACKAGE_PIN P12 [get_ports {gpio_io[1]}]
set_property PACKAGE_PIN P11 [get_ports {gpio_io[2]}]
set_property PACKAGE_PIN P10 [get_ports {gpio_io[3]}]