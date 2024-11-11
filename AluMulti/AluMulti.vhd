library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AluMulti is
	Port (A,B: IN STD_LOGIC_VECTOR (1 downto 0);
			S: in STD_LOGIC_VECTOR (2 downto 0);
			Za, Zb, Zc, Zd, Ze: out STD_LOGIC);
end AluMulti;

architecture Behavioral of AluMulti is 
SIGNAL Cs, S1, S0, C0, Ps, D1, D0, P0, I, Ma, me, Fa1, Fb1, Fc1, Fd1, Fa0, Fb0, Fc0, Fd0:STD_LOGIC;

begin 
	
	process (A, B, S)
	begin
	
	case (S) is
		when "000"=>S0<=A(0) XOR B(0);
						C0<=A(0) AND B(0);
						S1<=C0 XOR (A(1) XOR B(1));
						Cs<=(C0 AND (A(1) XOR B(1))) OR (A(1) AND B(1));
						
		when "001"=>D0<=A(0) XOR B(0);
						P0<=NOT A(0) AND B(0);
						D1<=P0 XOR (A(1) XOR B(1));
						Ps<=(P0 AND NOT (A(1) XOR B(1))) OR (NOT A(1) AND B(1));

		when "010"=>D0<=A(0) XOR B(0);
						P0<=NOT A(0) AND B(0);
						D1<=P0 XOR (A(1) XOR B(1));
						Ps<=(P0 AND NOT (A(1) XOR B(1))) OR (NOT A(1) AND B(1));
						me<=(PS);
						I<=NOT PS AND (NOT D0) AND (NOT D1);
						Ma<=NOT PS AND (D0 OR D1);
		
		when "100"=>Fa1<=A(1) AND B(1);
						Fa0<=A(0) AND B(0);
		
		when "101"=>Fb1<=A (1) OR B(1);
						Fb0<=A (0) OR B(0);
						
		when "110"=>Fc1<=A (1) XOR B(1);
						Fc0<=A (0) XOR B(0);
						
		when "111"=>Fd1<=NOT A(1);
						Fd0<=NOT A(0);
		when others=> S0 <= '0';
				S1 <= '0';
				C0 <= '0';
				Cs <= '0';
				D0 <= '0';
				D1 <= '0';
				P0 <= '0';
				Ps <= '0';
				me <= '0';
				I <= '0';
				Ma <= '0';
				Fa1 <= '0';
				Fa0 <= '0';
				Fb1 <= '0';
				Fb0 <= '0';
				Fc1 <= '0';
				Fc0 <= '0';
				Fd1 <= '0';
				Fd0 <= '0';
	end case;
	end process;
	
Za<=(NOT S(2) AND NOT S(1) AND NOT S(0) AND Cs) OR (NOT S(2) AND NOT S(1) AND S(0) AND Ps) OR (NOT S(2) AND S(1) AND NOT S(0) AND me);
Zb<=(NOT S(2) AND NOT S(1) AND NOT S(0) AND S1) OR (NOT S(2) AND NOT S(1) AND S(0) AND D1) OR (NOT S(2) AND S(1) AND NOT S(0) AND I);
Zc<=(NOT S(2) AND NOT S(1) AND NOT S(0) AND S0) OR (NOT S(2) AND NOT S(1) AND S(0) AND D0) OR (NOT S(2) AND S(1) AND NOT S(0) AND Ma);
Zd<=(S(2) AND NOT S(1) AND NOT S(0) AND Fa1) OR (S(2) AND NOT S(1) AND S(0) AND Fb1) OR (S(2) AND S(1) AND NOT S(0) AND Fc1) OR (S(2) AND S(1) AND S(0) AND Fd1);
Ze<=(S(2) AND NOT S(1) AND NOT S(0) AND Fa0) OR (S(2) AND NOT S(1) AND S(0) AND Fb0) OR (S(2) AND S(1) AND NOT S(0) AND Fc0) OR (S(2) AND S(1) AND S(0) AND Fd0);
end Behavioral;