-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri May 16 14:16:40 2025
-- Host        : Bimsara running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/ASUS
--               TUF/Documents/Vivado/Nano_Alts/Lower2/Lab10.srcs/sources_1/ip/c_counter_binary_2/c_counter_binary_2_stub.vhdl}
-- Design      : c_counter_binary_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity c_counter_binary_2 is
  Port ( 
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end c_counter_binary_2;

architecture stub of c_counter_binary_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,SCLR,LOAD,L[2:0],Q[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_12,Vivado 2018.2";
begin
end;
