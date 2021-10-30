library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity shiftRL00 is
    port(
        clks: in std_logic;
        ens: in std_logic;
        sels: in std_logic_vector(3 downto 0);
        controls: in std_logic_vector(3 downto 0);
        ins: in std_logic_vector(7 downto 0);
        outs: out std_logic_vector(7 downto 0)
    );
end shiftRL00;

architecture shiftRL0 of shiftRL00 is
signal sshift: std_logic_vector(7 downto 0);
signal scontrol: std_logic_vector(3 downto 0);
begin
    pshift: process(clks)
    begin
        if (clks'event and clks = '1') then
            case ens is
                when '0' =>
                    outs <= (others => '0');
                    sshift <= ins;
                    scontrol <= (others => '0');

                when '1' =>
                    case sels is
                        when "0001" =>
                            sshift(0) <= '0';
                            sshift(7 downto 1) <= sshift(6 downto 0);
                            outs <= sshift;
                        when "0011" =>
                            sshift(7) <= '0';
                            sshift(6 downto 0) <= sshift(7 downto 1);
                            outs <= sshift;
                        when "0111" =>
                            sshift(0) <= sshift(7);
                            sshift(7 downto 1) <= sshift(6 downto 0);
                            outs <= sshift;
                        when "1111" =>
                            sshift(7) <= sshift(0);
                            sshift(6 downto 0) <= sshift(7 downto 1);
                            outs <= sshift;
                        when "1110" =>
                            if (scontrol < controls) then
                                scontrol <= scontrol + '1';
                                sshift(0) <= '0';
                                sshift(7 downto 1) <= sshift(6 downto 0);
                                outs <= sshift;
                            end if;
                        when "1100" =>
                            if (scontrol < controls) then
                                scontrol <= scontrol + '1';
                                sshift(7) <= '0';
                                sshift(6 downto 0) <= sshift(7 downto 1);
                                outs <= sshift;
                            end if;
                        when "1000" =>
                            if (scontrol < controls) then
                                scontrol <= scontrol + '1';
                                sshift(0) <= sshift(7);
                                sshift(7 downto 1) <= sshift(6 downto 0);
                                outs <= sshift;
                            end if;
                        when "1001" =>
                            if (scontrol < controls) then
                                scontrol <= scontrol + '1';
                                sshift(7) <= sshift(0);
                                sshift(6 downto 0) <= sshift(7 downto 1);
                                outs <= sshift;
                            end if;
                        
                        when others => null;
                    end case;
                when others => null;
            end case;
        end if;
    end process pshift;
end shiftRL0;
