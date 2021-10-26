--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon Oct  4 11:12:03 2021
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.package_multiplicador_02x04.all;
use work.package_fulladder_03x01.all;

entity wrapper_for_Multp04x02 is
   port (
      Mu_A : in std_logic_vector(3 downto 0);
      Mu_B : in std_logic_vector(3 downto 0);
      Mu_S : out std_logic_vector(7 downto 0)
   );
end wrapper_for_Multp04x02;

architecture top_multp of wrapper_for_Multp04x02 is

component Multp04x02
 port (
   Mu_A : in std_logic_vector (3 downto 0);
   Mu_B : in std_logic_vector (3 downto 0);
   Mu_S : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_Mu_A : std_logic_vector (3 downto 0);
signal tmp_Mu_B : std_logic_vector (3 downto 0);
signal tmp_Mu_S : std_logic_vector (7 downto 0);

begin

tmp_Mu_A <= Mu_A;

tmp_Mu_B <= Mu_B;

Mu_S <= tmp_Mu_S;



u1:   Multp04x02 port map (
		Mu_A => tmp_Mu_A,
		Mu_B => tmp_Mu_B,
		Mu_S => tmp_Mu_S
       );
end top_multp;
