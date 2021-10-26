library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use PackageHalfAdder_02x01.all;

entity HalfAdder02x01 is port 
	(HA_A : in  std_logic;
	 HA_B : in  std_logic;
	 Ha_Co: out std_logic;
	 HA_S : out std_logic);
end HalfAdder02x01;

Architecture Modulo of HalfAdder02x01 is

begin
HA_And01 : And02x01 port map (And_A => HA_A,										
										And_B => HA_B,
										And_S => HA_Co);
									
HA_Xor01 : Xor02x01 port map (Xor_A => HA_A,
										Xor_B => HA_B,
										Xor_S => HA_S);		 							
 
end Modulo;
