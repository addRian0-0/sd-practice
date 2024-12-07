-- CONTADOR SINCRONO MOD 4 ASCENDENTE FF TIPO D
-- DECODIFICADO A EXHIBIDOR DE 7 SEG CC
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FlipFlopsD is
    port (
        clkin            : in  STD_LOGIC;  -- Este es el reloj interno de la tarjeta MAX II disponible en pin 12
        countBinario     : out STD_LOGIC_VECTOR(1 downto 0); -- Salida para ver el conteo en binario
        countDecodificado: out STD_LOGIC_VECTOR(6 downto 0) -- Salida para el decodificador a 7 segmentos (ABCDEFG)
    );
end FlipFlopsD;

architecture funcionamiento of FlipFlopsD is
    signal counTime : STD_LOGIC_VECTOR(24 downto 0); -- Contador de flancos de la señal interna de reloj
    signal clkint   : STD_LOGIC; -- Señal creada para manipular el reloj deseado internamente
    signal q        : STD_LOGIC_VECTOR(1 downto 0); -- Contador como señal para retroalimentación
begin
    -- Generación de un reloj interno a partir de clkin
    RELOJ: process(clkin)
    begin
        if clkin'event and clkin = '1' then -- Detecta un flanco de subida
            if counTime = "1011111010111100001000000" then -- Verifica si se alcanzó el conteo deseado
                counTime <= (others => '0'); -- Reinicia el contador
                clkint  <= not clkint; -- Invierte el estado del reloj interno
            else
                counTime <= counTime + '1'; -- Incrementa el contador
            end if;
        end if;
    end process;

    -- Contador MOD-4
    CONTADOR: process(clkint, q)
    begin
        if clkint'event and clkint = '1' then
            q(1) <= q(1) xor q(0);
            q(0) <= not q(0);
        end if;
    end process;

    -- Decodificador a 7 segmentos
    DECODIFICADOR: process(q)
    begin
        case q is
            when "00" => countDecodificado <= "1111110"; -- Representación del número 0
            when "01" => countDecodificado <= "0110000"; -- Representación del número 1
            when "10" => countDecodificado <= "1101101"; -- Representación del número 2
            when others => countDecodificado <= "1111001"; -- Representación del número 3
        end case;
    end process;

    -- Asignación del conteo binario a la salida
    countBinario <= q;

end funcionamiento;
