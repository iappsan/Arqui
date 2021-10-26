library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use Package_FullAdder_03x01.all;
use Package_Multiplicador_02x04.all;

 
--Esta entidaad es un multiplicador positivo de dos nibbles en la entrada 
--y un byte de salida

entity Multp04x02 is port 
	(Mu_A,Mu_B : in  std_logic_vector(3 downto 0);
	 Mu_S      : out std_logic_vector(7 downto 0));
end Multp04x02;

--La arquitectura top del multiplicador 
Architecture Top_Multp of Multp04x02 is 
--Se?ales
	signal	And0 : std_logic_vector(3 downto 1); 
	signal	And1 : std_logic_vector(3 downto 0);
	signal	And2 : std_logic_vector(3 downto 0);
	signal	And3 : std_logic_vector(3 downto 0);
	signal   FAS0 : std_logic_vector(3 downto 1);
	signal   FAS1 : std_logic_vector(3 downto 1);
	signal   FACo0: std_logic_vector(3 downto 0);
	signal   FACo1: std_logic_vector(3 downto 0);
	signal   FACo2: std_logic_vector(2 downto 0);
begin
	--	Se declaran y conectan los mapeos de puertos de todas los componentes denotados
	--de la siguiente forma:
	-- [Nombre del componente][numero de fila][numero de columna] :
	-- [nombre de la entidad] "port map" ... ;
	And00: And02x01 port map (And_A=>Mu_A(0),And_B=>Mu_B(0),And_S=>Mu_S(0));
	And01: And02x01 port map (And_A=>Mu_A(1),And_B=>Mu_B(0),And_S=>And0(1));
	And02: And02x01 port map (And_A=>Mu_A(2),And_B=>Mu_B(0),And_S=>And0(2));
	And03: And02x01 port map (And_A=>Mu_A(3),And_B=>Mu_B(0),And_S=>And0(3));
	
	And10: And02x01 port map (And_A=>Mu_A(0),And_B=>Mu_B(1),And_S=>And1(0));
	And11: And02x01 port map (And_A=>Mu_A(1),And_B=>Mu_B(1),And_S=>And1(1));
	And12: And02x01 port map (And_A=>Mu_A(2),And_B=>Mu_B(1),And_S=>And1(2));
	And13: And02x01 port map (And_A=>Mu_A(3),And_B=>Mu_B(1),And_S=>And1(3));
	
	And20: And02x01 port map (And_A=>Mu_A(0),And_B=>Mu_B(2),And_S=>And2(0));
	And21: And02x01 port map (And_A=>Mu_A(1),And_B=>Mu_B(2),And_S=>And2(1));
	And22: And02x01 port map (And_A=>Mu_A(2),And_B=>Mu_B(2),And_S=>And2(2));
	And23: And02x01 port map (And_A=>Mu_A(3),And_B=>Mu_B(2),And_S=>And2(3));
	
	And30: And02x01 port map (And_A=>Mu_A(0),And_B=>Mu_B(3),And_S=>And3(0));
	And31: And02x01 port map (And_A=>Mu_A(1),And_B=>Mu_B(3),And_S=>And3(1));
	And32: And02x01 port map (And_A=>Mu_A(2),And_B=>Mu_B(3),And_S=>And3(2));
	And33: And02x01 port map (And_A=>Mu_A(3),And_B=>Mu_B(3),And_S=>And3(3));
	
--Fila 0 de FullAdders	
	FA00: FullAdder03x01 port map (FA_A => And0(1) , FA_B => And1(0) ,
											 FA_Ci=> '0'     , FA_Co=> FACo0(0),
											 FA_S => Mu_S(1)                  );			
											  
	FA01: FullAdder03x01 port map (FA_A => And0(2) , FA_B => And1(1) ,
											 FA_Ci=> FACo0(0), FA_Co=> FACo0(1),
											 FA_S => FAS0(1)                  );
											  
	FA02: FullAdder03x01 port map (FA_A => And0(3) , FA_B => And1(2) ,
											 FA_Ci=> FACo0(1), FA_Co=> FACo0(2),
											 FA_S => FAS0(2)                  );
											  
	FA03: FullAdder03x01 port map (FA_A => '0'     , FA_B => And1(3) ,
											 FA_Ci=> FACo0(2), FA_Co=> FACo0(3),
											 FA_S => FAS0(3)                  );

--Fila 1 de FullAdders
	FA10: FullAdder03x01 port map (FA_A => And2(0) , FA_B => FAS0(1) ,
											 FA_Ci=> '0'     , FA_Co=> FACo1(0),
											 FA_S => Mu_S(2)                  );			
											  
	FA11: FullAdder03x01 port map (FA_A => And2(1) , FA_B => FAS0(2) ,
											 FA_Ci=> FACo1(0), FA_Co=> FACo1(1),
											 FA_S => FAS1(1)                  );
											  
	FA12: FullAdder03x01 port map (FA_A => And2(2) , FA_B => FAS0(3) ,
											 FA_Ci=> FACo1(1), FA_Co=> FACo1(2),
											 FA_S => FAS1(2)                  );
											  
	FA13: FullAdder03x01 port map (FA_A => And2(3) , FA_B => FACo0(3),
											 FA_Ci=> FACo1(2), FA_Co=> FACo1(3),
											 FA_S => FAS1(3)                  );
--Fila 2 de FullAdders
	FA20: FullAdder03x01 port map (FA_A => And3(0) , FA_B => FAS1(1) ,
											 FA_Ci=> '0'     , FA_Co=> FACo2(0),
											 FA_S => Mu_S(3)                  );			
											  
	FA21: FullAdder03x01 port map (FA_A => And3(1) , FA_B => FAS1(2) ,
											 FA_Ci=> FACo2(0), FA_Co=> FACo2(1),
											 FA_S => Mu_S(4)                  );
											  
	FA22: FullAdder03x01 port map (FA_A => And3(2) , FA_B => FAS1(3) ,
											 FA_Ci=> FACo2(1), FA_Co=> FACo2(2),
											 FA_S => Mu_S(5)                  );
											  
	FA23: FullAdder03x01 port map (FA_A => And3(3) , FA_B => FACo1(3),
											 FA_Ci=> FACo2(2), FA_Co=> Mu_S(7) ,
											 FA_S => Mu_S(6)                  );
 

end Top_Multp;