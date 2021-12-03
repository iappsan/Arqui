library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageram00.all;

entity ram00 is
  port (
    clk0: inout std_logic;
    cdiv0: in std_logic_vector(4 downto 0);
    re0: in std_logic;
    rw0: in std_logic;
    inkey0: in std_logic_vector(3 downto 0);
    outr0: inout std_logic_vector(3 downto 0);
    outcontW0: inout std_logic_vector(5 downto 0);
    outcontR0: inout std_logic_vector(5 downto 0);
    outword0: out std_logic_vector(6 downto 0);
    outtransist0: out std_logic_vector(5 downto 0);
    outFlag0: inout std_logic
  );
end ram00;

architecture ram0 of ram00 is
signal swordcoder: std_logic_vector(6 downto 0);
signal swordram: std_logic_vector(6 downto 0);
begin
    outtransist0 <= "111110";

    RA00: osc00 port map(
        oscout0 => clk0,
        cdiv => cdiv0
    );

    RA01: contring00 port map(
        clkr => clk0,
        reset => re0,
        rwr => rw0,
        outr => outr0
    );

    RA02: coder00 port map(
        clkc => clk0,
        resetc => re0,
        rwc => rw0,
        inkeyc => inkey0,
        incontc => outr0,
        outwordc => swordcoder,
        outcontwritec => outcontW0,
        outFlagc => outFlag0
    );

    RA03: memram00 port map(
        clkra => clk0,
        resetra => re0,
        rwra => rw0,
        inFlagra => outFlag0,
        inwordra => swordcoder,
        incontwritera => outcontW0,
        incontreadra => outcontR0,
        outwordra => swordram
    );

    RA04: contRead00 port map(
        clkcr => clk0,
        resetcr => re0,
        rwcr => rw0,
        incontWcr => outcontW0,
        outcr => outcontR0
    );

    RA05: muxram00 port map(
        resetmu => re0,
        rwmu => rw0,
        inwordcodermu => swordcoder,
        inwordrammu => swordram,
        outwordmu => outword0
    );

end ram0 ; -- ram0