library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder4bit00.all;

entity adder4bit00 is
	port(
			prueba: out std_logic_vector(3 downto 0);
			pruebaB: out std_logic_vector(3 downto 0);
			Ai: in std_logic_vector(3 downto 0);
			Bi: in std_logic_vector(3 downto 0);
			SL: in std_logic;
			So: out std_logic_vector(3 downto 0);
			LED: out std_logic);
end adder4bit00;

architecture adder4bit0 of adder4bit00 is
signal SB, SC, SA: std_logic_vector(3 downto 0);
signal Sx: std_logic;
begin
	A00: xora00 port map(
							Axa => SL,
							Bxa => Bi(0),
							Yxa => SB(0));
	A01: xora00 port map(
							Axa => SL,
							Bxa => Bi(1),
							Yxa => SB(1));
	A02: xora00 port map(
							Axa => SL,
							Bxa => Bi(2),
							Yxa => SB(2));
	A03: xora00 port map(
							Axa => SL,
							Bxa => Bi(3),
							Yxa => SB(3));
	
	A04: fa00 port map(
						C00 => SL,
						A00 => Ai(0),
						B00 => SB(0),
						C01 => SC(0),
						S00 => SA(0));
	A05: fa00 port map(
						C00 => SC(0),
						A00 => Ai(1),
						B00 => SB(1),
						C01 => SC(1),
						S00 => SA(1));
	A06: fa00 port map(
						C00 => SC(1),
						A00 => Ai(2),
						B00 => SB(2),
						C01 => SC(2),
						S00 => SA(2));
	A07: fa00 port map(
						C00 => SC(2),
						A00 => Ai(3),
						B00 => SB(3),
						C01 => SC(3),
						S00 => SA(3));

	A08: anda00 port map(
							Aaa => Sx,
							Baa => SA(0),
							Yaa => So(0));
	A09: anda00 port map(
							Aaa => Sx,
							Baa => SA(1),
							Yaa => So(1));
	A10: anda00 port map(
							Aaa => Sx,
							Baa => SA(2),
							Yaa => So(2));
	A11: anda00 port map(
							Aaa => Sx,
							Baa => SA(3),
							Yaa => So(3));
	
	A12: xnora00 port map(
							Axn => SC(2),
							Bxn => SC(3),
							Yxn => Sx);
	A13: xora00 port map(
							Axa => SC(2),
							Bxa => SC(3),
							Yxa => LED);
	
	prueba <= Ai; 
	pruebaB <= Bi;
	
end adder4bit0;