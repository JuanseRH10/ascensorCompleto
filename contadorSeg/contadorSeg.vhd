library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contadorSeg is
	port
	(
	
		clk	: in  std_logic;
		reset : in  std_logic;
		enable : in std_logic;
		cuenta : out std_logic_vector(5 downto 0);
		abrir_puerta  : out std_logic;
      cerrar_puerta : out std_logic
				
	);
end contadorSeg;




architecture arch_contadorSeg of contadorSeg is

	signal contador : unsigned(5 downto 0);
	
begin

	process (clk, reset) is
	begin
		
		if reset = '1' then
			contador <= (others => '0');
			abrir_puerta <= '0';
			cerrar_puerta <= '0';
			
		elsif rising_edge(clk) then
			if enable = '1' then
				if contador = "001010" then
				abrir_puerta <= '1';
				elsif contador = "101101" then
				cerrar_puerta <= '1';
				elsif contador = "101110" then
					contador <= (others => '0');
					abrir_puerta <= '0';
					cerrar_puerta <= '0';
				else 
					contador <= contador + 1;
				end if;
			end if;
		end if;
		
	end process;

	cuenta <= std_logic_vector(contador); 

end arch_contadorSeg;

