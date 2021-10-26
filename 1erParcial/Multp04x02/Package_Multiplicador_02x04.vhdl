library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

Package Package_Multiplicador_02x04 is 

	component And02x01 is port 
	(And_A : in  std_logic;
	 And_B : in  std_logic;	 
	 And_S : out std_logic); 
	end component;
	
	component FullAdder03x01 is port
	(
		FA_A : in  std_logic; 
		FA_B : in  std_logic;
		FA_Ci: in  std_logic; 
		FA_S : out std_logic; 
		FA_Co: out std_logic);
		
	end component; 

end Package_Multiplicador_02x04;