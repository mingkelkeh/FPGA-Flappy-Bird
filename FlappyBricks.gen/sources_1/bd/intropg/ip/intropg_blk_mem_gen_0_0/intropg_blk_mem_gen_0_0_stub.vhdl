-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sat Dec 11 22:18:25 2021
-- Host        : ShanesBOX running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/michelshane/Desktop/Year4/ECE260/ECE260/Mini_proj/FlappyBird/FlappyBricks/FlappyBricks.gen/sources_1/bd/intropg/ip/intropg_blk_mem_gen_0_0/intropg_blk_mem_gen_0_0_stub.vhdl
-- Design      : intropg_blk_mem_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity intropg_blk_mem_gen_0_0 is
  Port ( 
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rsta_busy : out STD_LOGIC
  );

end intropg_blk_mem_gen_0_0;

architecture stub of intropg_blk_mem_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,rsta,ena,wea[0:0],addra[16:0],dina[15:0],douta[15:0],rsta_busy";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2021.1";
begin
end;
