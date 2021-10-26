--
-- Synopsys
-- Vhdl wrapper for top level design, written on Fri Oct  1 12:44:20 2021
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_oscint00 is
   port (
      osc_int : out std_logic
   );
end wrapper_for_oscint00;

architecture oscint0 of wrapper_for_oscint00 is

component oscint00
 port (
   osc_int : out std_logic
 );
end component;

signal tmp_osc_int : std_logic;

begin

osc_int <= tmp_osc_int;



u1:   oscint00 port map (
		osc_int => tmp_osc_int
       );
end oscint0;
