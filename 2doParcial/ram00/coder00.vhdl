library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageosc00.all;

entity coder00 is
	port(
		clkc: in std_logic;
		resetc: in std_logic;
		rwc: in std_logic;
		outwordc: in std_logic_vector(6 downto 0);
		outcontwritec: inout std_logic_vector(5 downto 0);
		outFlagc: inout std_logic);
end coder00;

architecture coder0 of coder00 is
signal scontrolc: std_logic_vector(1 downto 0);
begin
scontrol <= (resetc)&(rwc);
	pcoder: proces
end coder0;
