library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagerom00 is
    
    component contRead00
    port (
        clkc: in std_logic;
        enc: in std_logic;
        outc: inout std_logic_vector(4 downto 0)
    );
    end component;

    component memrom00
    port (
        incontro: in std_logic_vector(4 downto 0);
        outro: out std_logic_vector(6 downto 0)
    );
    end component;

    component osc00
    port(
		cdiv: in std_logic_vector (4 downto 0);
		oscout0: inout std_logic
    );
    end component;

end package packagerom00;