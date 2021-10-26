library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity Xor02x01 is port 
	(Xor_A : in  std_logic;
	 Xor_B : in  std_logic;
	 Xor_S : out std_logic);
end Xor02x01;

Architecture Modulo of Xor02x01 is

begin
	Xor_S<= Xor_A xor Xor_B;

end Modulo;