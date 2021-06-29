-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Jun 28 22:37:55 2021
-- Host        : DESKTOP-MK4CLK1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/yhszj/Desktop/FlappyBird/FlappyBird.gen/sources_1/ip/ScoreboardROM/ScoreboardROM_stub.vhdl
-- Design      : ScoreboardROM
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ScoreboardROM is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 14 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end ScoreboardROM;

architecture stub of ScoreboardROM is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[14:0],spo[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2020.2";
begin
end;
