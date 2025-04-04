library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparadorNbits is
	generic
	(
		n	: integer  :=	6
		
	);

	port
	(
		-- Input ports
		A	: in  std_logic_vector(n-1 downto 0);
		B	: in  std_logic_vector(n-1 downto 0);
		
		AiguB  : out std_logic;
		AmayB  : out std_logic;
		AmenB  : out std_logic
		
	);
end comparadorNbits;



architecture arch_comparadorNbits of comparadorNbits is
begin

	process(A,B)
		
		variable valA : unsigned(n-1 downto 0);
		variable valB : unsigned(n-1 downto 0);
		
	begin
	
		valA := unsigned(A);
		valB := unsigned(B);
		
		if valA = valB then
			AiguB <= '1';
			AmayB <= '0';
			AmenB <= '0';
		elsif valA > valB then
			AiguB <= '0';
			AmayB <= '1';
			AmenB <= '0';
		else
			AiguB <= '0';
			AmayB <= '0';
			AmenB <= '1';
		end if;
	
	end process;


end arch_comparadorNbits;

