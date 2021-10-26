library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

Package Package_FullAdder_03x01 is

	Component Or02x01 is port 
		(Or_A : in  std_logic;
		Or_B  : in  std_logic;
		Or_S  : out std_logic);
	end component;
	
	Component HalfAdder02x01 is port 
		(HA_A : in  std_logic;
		HA_B  : in  std_logic;
		Ha_Co : out std_logic;
		HA_S  : out std_logic);
	end component;
	
	
end Package_FullAdder_03x01;	 