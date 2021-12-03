--
-- Synopsys
-- Vhdl wrapper for top level design, written on Fri Dec  3 14:35:39 2021
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packageram00.all;

entity wrapper_for_ram00 is
   port (
      clk0 : in std_logic;
      cdiv0 : in std_logic_vector(4 downto 0);
      re0 : in std_logic;
      rw0 : in std_logic;
      inkey0 : in std_logic_vector(3 downto 0);
      outr0 : in std_logic_vector(3 downto 0);
      outcontW0 : in std_logic_vector(5 downto 0);
      outcontR0 : in std_logic_vector(5 downto 0);
      outword0 : out std_logic_vector(6 downto 0);
      outtransist0 : out std_logic_vector(5 downto 0);
      outFlag0 : in std_logic
   );
end wrapper_for_ram00;

architecture ram0 of wrapper_for_ram00 is

component ram00
 port (
   clk0 : inout std_logic;
   cdiv0 : in std_logic_vector (4 downto 0);
   re0 : in std_logic;
   rw0 : in std_logic;
   inkey0 : in std_logic_vector (3 downto 0);
   outr0 : inout std_logic_vector (3 downto 0);
   outcontW0 : inout std_logic_vector (5 downto 0);
   outcontR0 : inout std_logic_vector (5 downto 0);
   outword0 : out std_logic_vector (6 downto 0);
   outtransist0 : out std_logic_vector (5 downto 0);
   outFlag0 : inout std_logic
 );
end component;

signal tmp_clk0 : std_logic;
signal tmp_cdiv0 : std_logic_vector (4 downto 0);
signal tmp_re0 : std_logic;
signal tmp_rw0 : std_logic;
signal tmp_inkey0 : std_logic_vector (3 downto 0);
signal tmp_outr0 : std_logic_vector (3 downto 0);
signal tmp_outcontW0 : std_logic_vector (5 downto 0);
signal tmp_outcontR0 : std_logic_vector (5 downto 0);
signal tmp_outword0 : std_logic_vector (6 downto 0);
signal tmp_outtransist0 : std_logic_vector (5 downto 0);
signal tmp_outFlag0 : std_logic;

begin

tmp_clk0 <= clk0;

tmp_cdiv0 <= cdiv0;

tmp_re0 <= re0;

tmp_rw0 <= rw0;

tmp_inkey0 <= inkey0;

tmp_outr0 <= outr0;

tmp_outcontW0 <= outcontW0;

tmp_outcontR0 <= outcontR0;

outword0 <= tmp_outword0;

outtransist0 <= tmp_outtransist0;

tmp_outFlag0 <= outFlag0;



u1:   ram00 port map (
		clk0 => tmp_clk0,
		cdiv0 => tmp_cdiv0,
		re0 => tmp_re0,
		rw0 => tmp_rw0,
		inkey0 => tmp_inkey0,
		outr0 => tmp_outr0,
		outcontW0 => tmp_outcontW0,
		outcontR0 => tmp_outcontR0,
		outword0 => tmp_outword0,
		outtransist0 => tmp_outtransist0,
		outFlag0 => tmp_outFlag0
       );
end ram0;
