-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat Jul  4 15:30:53 2020
-- Host        : wpc running 64-bit Linux Mint 19.3 Tricia
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wykys/projects/upol-ma105msps10b-fpga/multichannel-analysis/multichannel-analysis.srcs/sources_1/ip/ila_0/ila_0_stub.vhdl
-- Design      : ila_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s15ftgb196-1IL
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );

end ila_0;

architecture stub of ila_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[9:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ila,Vivado 2020.1";
begin
end;
