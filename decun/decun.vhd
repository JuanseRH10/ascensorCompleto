library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;

entity decun is
	port
	(
		
		sum	: in  bit_vector(4 downto 0);
		dec   : out bit_vector(3 downto 0);
		un    : out bit_vector(3 downto 0)
		
	);
end decun;



architecture arch_decun of decun is

	signal decimal : integer;
	signal decena  : integer;
	signal unidad  : integer;
	
begin
	
	process(sum)
	begin
		
		decimal <=  to_integer(unsigned(sum));
		decena  <=  decimal / 10;
		unidad  <=  decimal mod 10;
		
		dec  <=  bit_vector(to_unsigned(decena, 4));
		un   <=  bit_vector(to_unsigned(unidad, 4));
	end process;

end arch_decun;



