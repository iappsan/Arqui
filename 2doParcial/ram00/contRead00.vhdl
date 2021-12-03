library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contRead00 is
  port (
    clkcr: in std_logic;
    resetcr: in std_logic;
    rwcr: in std_logic;
    incontWcr: in std_logic_vector(5 downto 0);
    outcr: inout std_logic_vector(5 downto 0)
  ) ;
end contRead00;

architecture contRead0 of contRead00 is
signal scontrolcr: std_logic_vector(1 downto 0);
begin

    pcontcr: process (clkcr)
    begin
        if (clkcr'event and clkcr = '1') then
            case scontrolcr is
                when "00" =>
                    outcr <= "000000";
                
                when "11" =>
                    if (outcr < incontWcr) then
                        outcr <= outcr + '1';
                    else
                        outcr <= outcr;
                    end if ;
                when others => null;
            end case;
        end if;
    end process pcontcr;
end contRead0 ; -- contRead0