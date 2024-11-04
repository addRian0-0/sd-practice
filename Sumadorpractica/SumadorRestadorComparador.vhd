-- SUMADOR, RESTADOR Y COMPARADOR POR METODO DE INSTANCIACION
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumadorRestadorComparador is 

	port(
		A, B: in STD_LOGIC_VECTOR(3 downto 0);
		S: out STD_LOGIC_VECTOR(4 downto 0) 
	);

end SumadorRestadorComparador;

architecture Ecuaciones of SumadorRestadorComparador is

	-- carrys de entradas y salidas
	signal C0, C1, C2, C3: STD_LOGIC;

	COMPONENT Semisumador
		PORT
		(
			A		:	 IN STD_LOGIC;
			B		:	 IN STD_LOGIC;
			S		:	 OUT STD_LOGIC;
			CS		:	 OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT SumadorCompleto
		PORT
		(
			A		:	 IN STD_LOGIC;
			B		:	 IN STD_LOGIC;
			CE		:	 IN STD_LOGIC;
			S		:	 OUT STD_LOGIC;
			CS		:	 OUT STD_LOGIC
		);
	END COMPONENT;

	begin
	-- A0, B0 
	INST_Semisumador: Semisumador PORT MAP(
		A => A(0),
		B => B(0),
		CS => C0,
		S => S(0)
	);
	-- A1, B1
	INST_SumadorCompleto: SumadorCompleto PORT MAP(
		A => A(1),
		B => B(1),
		CS => C1,
		CE => C0,
		S => S(1)
	);
	-- A2, B2
	INST_SumadorCompleto2: SumadorCompleto PORT MAP(
		A => A(2),
		B => B(2),
		CS => C2,
		CE => C1,
		S => S(2)
	);
	-- A3, B3
	INST_SumadorCompleto3: SumadorCompleto PORT MAP(
		A => A(3),
		B => B(3),
		CS => S(4),
		CE => C2,
		S => S(3)
	);

end Ecuaciones;