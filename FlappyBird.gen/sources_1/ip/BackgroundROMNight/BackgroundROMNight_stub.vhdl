-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Jun 29 00:47:25 2021
-- Host        : Xiaoxin-Air14-IKBR running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/alexanderlake/Desktop/FlappyBird/FlappyBird.gen/sources_1/ip/BackgroundROMNight/BackgroundROMNight_stub.vhdl
-- Design      : BackgroundROMNight
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BackgroundROMNight is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end BackgroundROMNight;

architecture stub of BackgroundROMNight is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[15:0],spo[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2020.2";
begin
end;
