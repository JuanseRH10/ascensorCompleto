library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity actualizarPiso is
    Port(
        clk        : in  std_logic;
        subir      : in  std_logic;
        bajar      : in  std_logic;
        quieto     : in  std_logic; 
        pisoActual : out std_logic_vector(2 downto 0)
    );
end actualizarPiso;

architecture arch_actualizarPiso of actualizarPiso is
    
    signal piso : unsigned(2 downto 0) := "001";
	 
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if quieto = '1' then
                piso <= piso;
            elsif subir = '1' then
                piso <= piso + 1;
            elsif bajar = '1' then
                piso <= piso - 1;
            else
                piso <= piso;
            end if;
        end if;
    end process;

    pisoActual <= std_logic_vector(piso);

end arch_actualizarPiso;
