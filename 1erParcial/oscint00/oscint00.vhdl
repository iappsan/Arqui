library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity oscint00 is
	port(osc_int: out std_logic);
end oscint00;

architecture oscint0 of oscint00 is
	component OSCH
		generic (nom_freq: string:= "2.08");
		port (	stdby: in std_logic;
				osc: out std_logic);
	end component;
attribute nom_freq: string;
attribute nom_freq of oscint0: label is "2.08";

begin 
	oscint0: OSCH
	generic map (nom_freq => "2.56")
		port map (stdby => '0',
					osc => osc_int);
end oscint0;