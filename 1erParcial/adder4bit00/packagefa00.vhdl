library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagefa00 is

	component ha00
		port(
			A0: in std_logic;
			B0: in std_logic;
			S0: out std_logic;
			C0: out std_logic);
	end component;
	
	component orao00
		port(
			Aao: in std_logic;
			Bao: in std_logic;
			Yao: out std_logic);
	end component;

end packagefa00;