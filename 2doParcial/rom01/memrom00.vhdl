library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity memrom00 is
    port (
        incontro: in std_logic_vector(5 downto 0);
        outro: out std_logic_vector(31 downto 0)
    );
end memrom00;

architecture memrom0 of memrom00 is
    type arrayrom is array (0 to 63) of std_logic_vector(7 downto 0);
    constant wordrom: arrayrom:= (
       "00000001",
       "00000001",
       "00000001",
       "00000001",
       "00000010",
       "00000010",
       "00000010",
       "00000010",
       "00000011",
       "00000011",
       "00000011",
       "00000011",
       "00000100",
       "00000100",
       "00000100",
       "00000100",
       "00000101",
       "00000101",
       "00000101",
       "00000101",
       "00000110",
       "00000110",
       "00000110",
       "00000110",
       "00001111",
       "00001111",
       "00001111",
       "00001111",
       "11110000",
       "11110000",
       "11110000",
       "11110000",
       others => "00000000"
    );
begin
    prom: process(incontro)
    begin
        outro <= (wordrom(conv_integer(incontro))) & (wordrom(conv_integer(incontro+1))) & (wordrom(conv_integer(incontro+2))) & (wordrom(conv_integer(incontro+3)));
    end process prom;    
end memrom0 ; -- memrom0