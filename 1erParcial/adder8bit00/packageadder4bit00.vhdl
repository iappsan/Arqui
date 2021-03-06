library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageadder8bit00 is

	component xora00
		port(
			Axa: in std_logic;
			Bxa: in std_logic;
			Yxa: out std_logic);
	end component;
	
	component fa00
		port(
			A00: in std_logic;
			B00: in std_logic;
			C00: in std_logic;
			S00: out std_logic;
			C01: out std_logic);
	end component;
	
	component anda00
		port(
			Aaa: in std_logic;
			Baa: in std_logic;
			Yaa: out std_logic);
	end component;
	
	component xnora00
		port(
			Axn: in std_logic;
			Bxn: in std_logic;
			Yxn: out std_logic);
	end component;

end packageadder8bit00;