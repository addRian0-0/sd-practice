library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RestadorLED is

   Port (
			A,B: in STD_LOGIC_VECTOR (2 downto 0);
			DISPLAY: out STD_LOGIC_VECTOR (15 downto 0);
			RESULTADO : buffer  STD_LOGIC_VECTOR (3 downto 0);
			BCD : inout STD_LOGIC_VECTOR (3 downto 0);
			SIGNO : inout STD_LOGIC
	);
			
end RestadorLED;

architecture Behavioral of RestadorLED is 
 
begin


process (A, B)
 
	  variable diff : STD_LOGIC_VECTOR(3 downto 0);
begin
     
	  diff := ("0" & A) - ("0" & B);
	  RESULTADO <= diff;
	  
	end process;

process(RESULTADO)
    begin
        if RESULTADO(3) = '1' then  -- Si el bit más significativo es 1, es un número negativo
            SIGNO <= '1';
            case RESULTADO is
                when "1001" => BCD <= "0111";  -- -7
                when "1010" => BCD <= "0110";  -- -6
                when "1011" => BCD <= "0101";  -- -5
                when "1100" => BCD <= "0100";  -- -4
                when "1101" => BCD <= "0011";  -- -3
                when "1110" => BCD <= "0010";  -- -2
                when "1111" => BCD <= "0001";  -- -1
                when others => BCD <= "0000";  -- 0 (en caso de error)
            end case;
        else
            SIGNO <= '0';
            case RESULTADO is
                when "0000" => BCD <= "0000";  -- 0
                when "0001" => BCD <= "0001";  -- 1
                when "0010" => BCD <= "0010";  -- 2
                when "0011" => BCD <= "0011";  -- 3
                when "0100" => BCD <= "0100";  -- 4
                when "0101" => BCD <= "0101";  -- 5
                when "0110" => BCD <= "0110";  -- 6
                when "0111" => BCD <= "0111";  -- 7
                when others => BCD <= "0000";  -- 0 (en caso de error)
            end case;
        end if;
    end process;
	 
process(SIGNO, BCD)
    begin
        case BCD is
            when "0000"=> DISPLAY <="0111100001000010";--0
				when "0001"=> DISPLAY <="0011000000100000";--1
	         when "0010"=> DISPLAY <="0110100000001010";--2
	         when "0011"=> DISPLAY <="0111100000001000";--3
	         when "0100"=> DISPLAY <="0011000001001000";--4
	         when "0101"=> DISPLAY <="0101100001001000";--5
	         when "0110"=> DISPLAY <="0101100001001010";--6
	         when "0111"=> DISPLAY <="0111000000001000";--7
            when others => DISPLAY <= "0000000000000000";  -- Apagar
        end case;

        -- Mostrar el SIGNO negativo si SIGNO es 1
        if SIGNO = '1' then
            DISPLAY(4) <= '1';  -- Activar el segmento superior izquierdo del display como SIGNO "-"
        else
            DISPLAY(4) <= '0';  -- Apagar el segmento de SIGNO si el número es positivo
        end if;
    end process;
	
end Behavioral;