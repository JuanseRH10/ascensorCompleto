library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contadorGenerico is
    generic (
        N : integer := 6 
    );
    port(
        clk        : in  std_logic;
        reset      : in  std_logic;
        enable     : in  std_logic;
        valorRes   : in  std_logic_vector(N-1 downto 0);
        cuenta     : out std_logic_vector(N-1 downto 0)
    );
end contadorGenerico;

architecture arch_contadorGenerico of contadorGenerico is
    signal contador : unsigned(N-1 downto 0);
begin

    process(clk, reset)
    begin
        if reset = '1' then
				contador <= (others => '0');
		  elsif rising_edge(clk) then
				if enable = '1' then
					if contador = unsigned(valorRes) then
						contador <= (others => '0');
					else 
						contador <= contador + 1;
					end if;
				end if;
		   end if;
    end process;

    cuenta <= std_logic_vector(contador);

end arch_contadorGenerico;
