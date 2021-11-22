library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagerom00.all;

entity rom00 is
  port (
    clk0: inout std_logic;
    cdiv0: in std_logic_vector(4 downto 0);
    en0: in std_logic
  );
end rom00;

architecture rom0 of rom00 is
begin

end rom0 ; -- rom0