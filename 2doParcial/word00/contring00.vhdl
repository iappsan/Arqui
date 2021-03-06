library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity contring00 is
    port(
        clkc: inout std_logic;
        enc: in std_logic;
        outc: out std_logic_vector(5 downto 0)
    );
end contring00;

architecture contring0 of contring00 is
    signal sshift: std_logic_vector(5 downto 0);
begin
    pcont: process(clkc)
    begin
        if(clkc'event and clkc = '1') then
            case enc is
                when '0' =>
                    outc <= (others => '0');
                    sshift <= "011111";
                when '1' =>
                    sshift(5) <= sshift(0);
                    sshift(4 downto 0) <= sshift(5 downto 1);
                    outc <= sshift;
                when others => null;
            end case;
        end if;
    end process pcont;
end contring0;