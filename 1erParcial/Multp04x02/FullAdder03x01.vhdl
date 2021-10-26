library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use Package_FullAdder_03x01.all;

entity FullAdder03x01 is port 
	(
		FA_A : in  std_logic;
		FA_B : in  std_logic;
		FA_Ci: in  std_logic; 
		FA_S : out std_logic; 
		FA_Co: out std_logic);
		
end FullAdder03x01; 

Architecture Modulo of FullAdder03x01 is
--Se?ales
	signal	HA01_Co : std_logic;
	signal	HA01_S  : std_logic;
	signal	HA02_Co : std_logic;
 
begin
	FA_Or01 : Or02x01 port map (Or_A=>HA01_Co,
										 Or_B=>HA02_Co,
										 Or_S=>FA_Co);
										 
	FA_HA01 : HalfAdder02x01 port map (HA_A  => FA_A,
												  HA_B  => FA_B,
												  HA_S  => HA01_S,
												  HA_Co => HA01_Co);
												  
	FA_HA02 : HalfAdder02x01 port map (HA_A  => FA_Ci,
												  HA_B  => HA01_S,
												  HA_S  => FA_S,
												  HA_Co => HA02_Co);
end Modulo;