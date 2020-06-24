# XDC config for Spartn 7 (XC7S15 FTBGA196)
# Multichannel analysis
# wykys 2020

###############################################################################
# LED active in Hight
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {led_o[*]}]
set_property PACKAGE_PIN B5 [get_ports {led_o[1]}]
set_property PACKAGE_PIN B6 [get_ports {led_o[2]}]
set_property PACKAGE_PIN C5 [get_ports {led_o[3]}]
set_property PACKAGE_PIN F4 [get_ports {led_o[4]}]