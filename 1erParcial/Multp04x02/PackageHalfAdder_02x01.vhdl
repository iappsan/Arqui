library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
 
Package PackageHalfAdder_02x01 is
--Componentes del paquete
	component And02x01 is port 
	(And_A : in  std_logic;
	 And_B : in  std_logic;
	 And_S : out std_logic);	
	end Component;
	
	component Xor02x01 is port 
	(Xor_A : in  std_logic;
	 Xor_B : in  std_logic;
	 Xor_S : out std_logic);	 
	end Component;
 
end PackageHalfAdder_02x01;
