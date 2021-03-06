// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Jul  6 21:13:20 2020
// Host        : wpc running 64-bit Linux Mint 19.3 Tricia
// Command     : write_verilog -force -mode synth_stub
//               /home/wykys/projects/upol-ma105msps10b-fpga/multichannel-analysis/multichannel-analysis.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15ftgb196-1IL
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_o, clk_i)
/* synthesis syn_black_box black_box_pad_pin="clk_o,clk_i" */;
  output clk_o;
  input clk_i;
endmodule
