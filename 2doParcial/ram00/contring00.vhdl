library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity contring00 is
	port(
		clkr: in std_logic;
		rer: in std_logic;
		outr: inout std_logic_vector(3 downto 0)
	);
end contring00;

architecture contring0 of contring00 is
signal sshift: std_logic_vector(3 downto 0);
begin
	pshift: process(clkr)
	begin
		if (clkr'event and clkr = '1') then
			case rer is
				when '0' =>
					outr <= "0000";
					sshift <= "1000";
				when '1' =>
					sshift(3) <= sshift(0);
					sshift(2 downto 0) <= sshift(3 downto 1);
					outr <= sshift;
				when others => null;
			end case;
		end if;
	end process pshift;
end contring0;