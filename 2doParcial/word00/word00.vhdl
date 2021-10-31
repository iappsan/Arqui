library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageword00.all;

entity word00 is
    port(
        clk0: inout std_logic;
        cdiv0: in std_logic_vector(4 downto 0);
        en0: in std_logic;
        outcoder0: out std_logic_vector(6 downto 0);
        outtransist0: inout std_logic_vector(5 downto 0)    
    );
end word00;

architecture word0 of word00 is
begin

	W00: osc00 port map(
        oscout0 => clk0,
        cdiv => cdiv0
    );

    W01: contring00 port map(
        clkc => clk0,
        enc => en0,
        outc => outtransist0
    );

    W02: coder00 port map(
        incontc => outtransist0,
        outcoderc => outcoder0
    );

end word0;