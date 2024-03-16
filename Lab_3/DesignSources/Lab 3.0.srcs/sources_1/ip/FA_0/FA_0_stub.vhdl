-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Tue Feb 13 14:54:53 2024
-- Host        : CSE-ADVLABPC-61 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/workShop/Desktop/Lab 3.0/Lab
--               3.0.srcs/sources_1/ip/FA_0/FA_0_stub.vhdl}
-- Design      : FA_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_0 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C_in : in STD_LOGIC;
    S : out STD_LOGIC;
    C_out : out STD_LOGIC
  );

end FA_0;

architecture stub of FA_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,C_in,S,C_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "FA,Vivado 2019.2";
begin
end;
