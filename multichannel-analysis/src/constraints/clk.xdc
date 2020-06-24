# XDC config for Spartn 7 (XC7S15 FTBGA196)
# Multichannel analysis
# wykys 2020

###############################################################################
# Clock 100 MHz
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports clk_i]
set_property PACKAGE_PIN G11 [get_ports clk_i]
create_clock -period 10 -name clk_i [get_ports clk_i]