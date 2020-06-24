# XDC config for Spartn 7 (XC7S15 FTBGA196)
# Multichannel analysis
# wykys 2020

###############################################################################
# RESET active in Low
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {rst_i}]
set_property PACKAGE_PIN M11 [get_ports {rst_i}]