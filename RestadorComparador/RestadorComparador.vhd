library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RestadorComparador is
	
	port(
		A, B: in STD_LOGIC_VECTOR (3 downto 0);
		D: out STD_LOGIC_VECTOR (4 downto 0);
		COMPARADOR: out STD_LOGIC_VECTOR(2 downto 0)
	);
	
end RestadorComparador; 

architecture Ecuaciones of RestadorComparador is

	signal P0, P1, P2, P3: STD_LOGIC;
	
	COMPONENT SemiRestador
		PORT
		(
			A		:	 IN STD_LOGIC;
			B		:	 IN STD_LOGIC;
			PS		:	 OUT STD_LOGIC;
			D		:	 OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT RestadorCompleto
		PORT
		(
			A		:	 IN STD_LOGIC;
			B		:	 IN STD_LOGIC;
			PE		:	 IN STD_LOGIC;
			PS		:	 OUT STD_LOGIC;
			D		:	 OUT STD_LOGIC
		);
	END COMPONENT;
	
	begin
	
		-- A0, B0, D0
		INST_SemiRestador: SemiRestador PORT MAP(
			A => A(0),
			B => B(0),
			PS => P0,
			D => D(0)
		);
		
		-- A1, B1, D1
		INST_RestadorCompleto1: RestadorCompleto PORT MAP(
			A => A(1),
			B => B(1),
			PE => P0,
			PS => P1,
			D => D(1)
		);
		
		-- A2, B2, D2
		INST_RestadorCompleto2: RestadorCompleto PORT MAP(
			A => A(2),
			B => B(2),
			PE => P1,
			PS => P2,
			D => D(2)
		);
		
		-- A3, B3, D3
		INST_RestadorCompleto3: RestadorCompleto PORT MAP(
			A => A(3),
			B => B(3),
			PE => P2,
			PS => D(4),
			D => D(3)
		);
		
		process(A, B)
			begin
			
			--COMPARADOR RESPECTO A contra B, ej: A < B
			-- Realiza comparaciones respecto hacia A
			If (A=B)   then   COMPARADOR  <=   "001"; 
               elsif (A>B)        then         COMPARADOR  <=   "010"; 
               else          COMPARADOR <= "100"; 
               end if; 
			
		end process;
			

end Ecuaciones;