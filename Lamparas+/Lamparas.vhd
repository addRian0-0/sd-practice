--Circuitos combinatorios / Lampara 1 y Lampara 2
library IEEE;

use ieee.std_logic_1164.all;

entity Lamparas is --Nombre del proyecto
	

	port
	(
		-- Input ports / entradas
		A,B,C,D,E : in STD_LOGIC;
	
	
		-- Output ports / salidas. (El ultimo renglon no lleva punto y coma)
		L1,L2,L3,Imp, May, Men, Igual : out STD_LOGIC
	
	);
	
end Lamparas;

architecture Ecuaciones of Lamparas is --Forma en la que se definira el comportamiento del proyecto

begin
L1 <= B XOR C XOR D XOR E;
L2 <= (NOT B AND NOT C AND(D XOR E)) OR (NOT D AND NOT E AND(B XOR C)) OR (B AND C AND D AND E);
L3 <= (A AND E AND NOT(B XOR C)) OR (NOT A AND E AND (C XOR D)) OR (NOT B AND D AND((NOT A AND NOT C) OR E));
Imp <= (B OR D OR E) AND (B OR C OR E) AND (C OR D);
May <= A AND ((NOT C AND E) OR (NOT B AND D)) AND (NOT B OR D);
Men <= (A AND B AND(NOT D OR(C AND NOT E))) OR (A AND C AND NOT D AND NOT E);
Igual <= A AND NOT(C XOR E) AND NOT(B XOR D);
end Ecuaciones;