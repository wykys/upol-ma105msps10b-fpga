# XDC config for Spartn 7 (XC7S15 FTBGA196)
# Multichannel analysis
# wykys 2020

###############################################################################
# BRIDGE SPI - FPGA - slave mode
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {spi_nss_i}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_sck_i}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_mosi_i}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_miso_o}]

set_property PACKAGE_PIN A12 [get_ports {spi_nss_i}]
set_property PACKAGE_PIN A13 [get_ports {spi_sck_i}]
set_property PACKAGE_PIN A10 [get_ports {spi_mosi_i}]
set_property PACKAGE_PIN B13 [get_ports {spi_miso_o}]

###############################################################################
# BRIDGE Not use (reserved pins)
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {nu_io[*]}]

set_property PACKAGE_PIN B14 [get_ports {nu_io[0]}]
set_property PACKAGE_PIN C14 [get_ports {nu_io[1]}]
set_property PACKAGE_PIN D13 [get_ports {nu_io[2]}]
set_property PACKAGE_PIN D14 [get_ports {nu_io[3]}]