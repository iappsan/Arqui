--
-- Synopsys
-- Vhdl wrapper for top level design, written on Fri Oct  1 11:51:24 2021
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity wrapper_for_adderlib8bit00B is
   port (
      Ai : in std_logic_vector(7 downto 0);
      Bi : in std_logic_vector(7 downto 0);
      SL : in std_logic;
      So : out std_logic_vector(7 downto 0)
   );
end wrapper_for_adderlib8bit00B;

architecture adderlib8bit0b of wrapper_for_adderlib8bit00B is

component adderlib8bit00B
 port (
   Ai : in std_logic_vector (7 downto 0);
   Bi : in std_logic_vector (7 downto 0);
   SL : in std_logic;
   So : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_Ai : std_logic_vector (7 downto 0);
signal tmp_Bi : std_logic_vector (7 downto 0);
signal tmp_SL : std_logic;
signal tmp_So : std_logic_vector (7 downto 0);

begin

tmp_Ai <= Ai;

tmp_Bi <= Bi;

tmp_SL <= SL;

So <= tmp_So;



u1:   adderlib8bit00B port map (
		Ai => tmp_Ai,
		Bi => tmp_Bi,
		SL => tmp_SL,
		So => tmp_So
       );
end adderlib8bit0b;
