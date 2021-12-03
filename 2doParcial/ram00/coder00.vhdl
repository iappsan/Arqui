library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packageosc00.all;

entity coder00 is
	port(
		clkc: in std_logic;
		resetc: in std_logic;
		rwc: in std_logic;
		inkeyc: in std_logic_vector(3 downto 0);
		incontc: in std_logic_vector(3 downto 0);
		outwordc: out std_logic_vector(6 downto 0);
		outcontwritec: inout std_logic_vector(5 downto 0);
		outFlagc: inout std_logic
	);
end coder00;

architecture coder0 of coder00 is
signal scontrolc: std_logic_vector(1 downto 0);
begin
scontrolc <= (resetc)&(rwc);
	pcoder: process(clkc)
	variable aux0: bit:='0';
	begin
		if (clkc'event and clkc = '1') then
			case scontrolc is
				when "00" => 
					outwordc <= "1111111";
					outcontwritec <= "000000";
					outFlagc <= '0';
					aux0:='0';

				when "10" => 
					case incontc is
						when "1000" =>
							case inkeyc is
								when "0000" =>
									aux0:='0';	
								when "0001" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "1001111"; --1
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "0010" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0010010"; --2
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "0100" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0000110"; --3
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "1000" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0001000"; --A
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when others => null;
							end case ;

						when "0100" =>
							case inkeyc is
								when "0000" =>
									aux0:='0';	
								when "0001" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "1001100"; --4
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "0010" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0100100"; --5
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "0100" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0100000"; --6
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "1000" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "1100000"; --b
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when others => null;
							end case ;

						when "0010" =>
							case inkeyc is
								when "0000" =>
									aux0:='0';	
								when "0001" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0001111"; --7
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "0010" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0000000"; --8
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "0100" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0000100"; --9
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "1000" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0110001"; --C
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when others => null;
							end case ;
						
						when "0001" =>
							case inkeyc is
								when "0000" =>
									aux0:='0';	
								when "0001" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0000001"; -- 0
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "0010" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0011100"; -- *
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "0100" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "0011000"; -- P
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when "1000" =>
									if (aux0 = '0') then
										aux0:='1';
										outwordc <= "1111110"; -- -
										outcontwritec <= outcontwritec + '1';
										outFlagc <= '1';
									else
										outcontwritec <= outcontwritec;
										outFlagc <= '0';
									end if ;
								when others => null;
							end case ;

						when others => null;
					end case;
					
				when others => null; 
			end case;
		end if;
	end process pcoder;
end coder0;
