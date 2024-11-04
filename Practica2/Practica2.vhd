------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity practica2 is
	Port ( A, B, C, D, E : in STD_LOGIC;
			 LNP, INT, L1, L2, Ma, Me, EQ : out STD_LOGIC);
end practica2;

architecture Behavioral of practica2 is

begin
LNP<= (A AND E AND (NOT (B XOR C))) OR (NOT A AND E AND (C XOR D)) OR ( NOT A AND NOT B AND NOT C AND D) OR (NOT B AND C AND D AND E);
INT<= (B OR C) AND (A OR C OR D) AND (A OR B OR D);
L1<= (A XOR B) XOR (C XOR D);
L2<= (((NOT A) AND (NOT B)) AND (C XOR D)) OR (((NOT C) AND (NOT D)) AND (A XOR B)) OR (A AND B AND C AND D);
Ma<= A AND ((B AND NOT D) OR (B AND C AND D AND NOT E) OR (C AND NOT D AND NOT E));
Me<= A AND ((NOT B AND D) OR (NOT C AND D AND E) OR (NOT B AND NOT C AND E));
EQ<= A AND ((NOT (B XOR D)) AND (NOT (C XOR E)));

end Behavioral;