library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagerom01.all;

entity rom00 is
  port (
    clk0: inout std_logic;
    cdiv0: in std_logic_vector(4 downto 0);
    en0: in std_logic;
    outc0: inout std_logic_vector(5 downto 0);
    outro0: out std_logic_vector(31 downto 0)
  );
end rom00;

architecture rom0 of rom00 is
begin

  R00: osc00 port map (
    oscout0 => clk0,
    cdiv => cdiv0
  );

  R01: contRead00 port map (
    clkc => clk0,
    enc => en0,
    outc => outc0
  );

  R02: memrom00 port map(
    incontro => outc0,
    outro => outro0
  );
  
end rom0 ; -- rom0