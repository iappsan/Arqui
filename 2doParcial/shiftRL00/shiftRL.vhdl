library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageshiftRL00.all;

entity shiftRL is
    port(
        clk0: inout std_logic;
        cdiv0: in std_logic_vector(4 downto 0);
        en0: in std_logic;
        sel0: in std_logic_vector(3 downto 0);
        control0: in std_logic_vector(3 downto 0);
        in0: in std_logic_vector(7 downto 0);
        out0: out std_logic_vector(7 downto 0)
    );
end shiftRL;

architecture shiftRL0 of shiftRL is
begin
    SRL00: osc00 port map(
        oscout0 => clk0,
        cdiv => cdiv0
    );

    SRL01: shiftRL00 port map(
        clks => clk0,
        ens => en0,
        sels => sel0,
        controls => control0,
        ins => in0,
        outs => out0
    );
end shiftRL0;
