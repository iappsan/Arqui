library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageram00 is
    
    component osc00
    port(
		cdiv: in std_logic_vector (4 downto 0);
		oscout0: inout std_logic
    );
    end component;

    component contring00
    port(
		clkr: in std_logic;
		reset: in std_logic;
		rwr: in std_logic;
		outr: inout std_logic_vector(3 downto 0)
	);
    end component;

    component coder00
    port(
		clkc: in std_logic;
		resetc: in std_logic;
		rwc: in std_logic;
		inkeyc: in std_logic_vector(3 downto 0);
		incontc: in std_logic_vector(3 downto 0);
		outwordc: out std_logic_vector(6 downto 0);
		outcontwritec: inout std_logic_vector(5 downto 0);
		outFlagc: inout std_logic
	);
    end component;

    component memram00
    port (
        clkra: in std_logic;
        resetra: in std_logic;
        rwra: in std_logic;
        inFlagra: in std_logic;
        inwordra: in std_logic_vector(6 downto 0);
        incontwritera: in std_logic_vector(5 downto 0);
        incontreadra: in std_logic_vector(5 downto 0);
        outwordra: out std_logic_vector(6 downto 0)
    );
    end component;

    component contRead00
    port (
        clkcr: in std_logic;
        resetcr: in std_logic;
        rwcr: in std_logic;
        incontWcr: in std_logic_vector(5 downto 0);
        outcr: inout std_logic_vector(5 downto 0)
    ) ;
    end component;

    component muxram00
    port (
        resetmu: in std_logic;
        rwmu: in std_logic;
        inwordcodermu: in std_logic_vector(6 downto 0);
        inwordrammu: in std_logic_vector(6 downto 0);
        outwordmu: out std_logic_vector(6 downto 0)
    );
    end component;

end packageram00;