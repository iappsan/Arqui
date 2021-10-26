--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu Sep 30 12:49:25 2021
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packageadder4bit00.all;

entity wrapper_for_adder4bit00 is
   port (
      prueba : out std_logic_vector(3 downto 0);
      pruebaB : out std_logic_vector(3 downto 0);
      Ai : in std_logic_vector(3 downto 0);
      Bi : in std_logic_vector(3 downto 0);
      SL : in std_logic;
      So : out std_logic_vector(3 downto 0);
      LED : out std_logic
   );
end wrapper_for_adder4bit00;

architecture adder4bit0 of wrapper_for_adder4bit00 is

component adder4bit00
 port (
   prueba : out std_logic_vector (3 downto 0);
   pruebaB : out std_logic_vector (3 downto 0);
   Ai : in std_logic_vector (3 downto 0);
   Bi : in std_logic_vector (3 downto 0);
   SL : in std_logic;
   So : out std_logic_vector (3 downto 0);
   LED : out std_logic
 );
end component;

signal tmp_prueba : std_logic_vector (3 downto 0);
signal tmp_pruebaB : std_logic_vector (3 downto 0);
signal tmp_Ai : std_logic_vector (3 downto 0);
signal tmp_Bi : std_logic_vector (3 downto 0);
signal tmp_SL : std_logic;
signal tmp_So : std_logic_vector (3 downto 0);
signal tmp_LED : std_logic;

begin

prueba <= tmp_prueba;

pruebaB <= tmp_pruebaB;

tmp_Ai <= Ai;

tmp_Bi <= Bi;

tmp_SL <= SL;

So <= tmp_So;

LED <= tmp_LED;



u1:   adder4bit00 port map (
		prueba => tmp_prueba,
		pruebaB => tmp_pruebaB,
		Ai => tmp_Ai,
		Bi => tmp_Bi,
		SL => tmp_SL,
		So => tmp_So,
		LED => tmp_LED
       );
end adder4bit0;
