library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity Or02x01 is port 
	(Or_A : in  std_logic;
	 Or_B : in  std_logic;
	 Or_S : out std_logic);
end Or02x01;

Architecture Modulo of Or02x01 is

begin
	Or_S<= Or_A or Or_B;

end Modulo;

