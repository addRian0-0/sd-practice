library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ComparadorBasicoS is
    Port (
        A : in std_logic;   -- Bit A de entrada
        B : in std_logic;   -- Bit B de entrada
        C : in std_logic;   -- Bit C de entrada
        D : in std_logic;   -- Bit D de entrada
        E : in std_logic;   -- Bit E de entrada (podría usarse como habilitación o control)

        Ma : out std_logic; -- Salida Ma (N > S)
        Me : out std_logic; -- Salida Me (N < S)
        Ig : out std_logic  -- Salida Ig (N = S)
    );
end ComparadorBasicoS;

architecture Behavioral of ComparadorBasicoS is
begin
    
	 Ma <= (not A and not B and D and E) or ( not A and C and not D and E) or (not A and C and D and E) or (not B and C and D and E);
	 Me <= (B and not C and not D and E) or (A and B and not D and E) or (A and not C and E);
	 Ig <= (not A and not B and not C and not D and E) or (not A and B and not C and D and E) or (A and B and C and D and E) or (A and not B and C and not D and E);
	 
end Behavioral;
