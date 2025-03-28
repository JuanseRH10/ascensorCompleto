library ieee;
use ieee.std_logic_1164.all;

entity deco7seg is
	
	port
	(
		-- Input ports
		A, B, C, D	 : in  std_logic;
	
		-- Output ports
		a1, b1, c1, d1, e1, f1, g1	: out  std_logic
	
	);
end deco7seg;




architecture arch_deco7seg of deco7seg is

	signal SABCD : std_logic_vector (3 downto 0);
	
begin

	SABCD <= A&B&C&D;
	
	with SABCD select
		a1 <= '0' when "0000" | "0010" | "0011" | "0101" | "0111" | "1000" | "1001",
				'1' when others;
				
	with SABCD select
		b1 <= '0' when "0000" | "0001" | "0010" | "0011" | "0100" | "0111" | "1000" | "1001",
				'1' when others;
				
	with SABCD select
		c1 <= '0' when "0000" | "0001" | "0011" | "0100" | "0101" | "0110" | "0111" | "1000" | "1001",
				'1' when others;
				
	with SABCD select
		d1 <= '0' when "0000" | "0010" | "0011" | "0101" | "0110" | "1000",
				'1' when others;
				
	with SABCD select
		e1 <= '0' when "0000" | "0010" | "0110" | "1000",
				'1' when others;
				
	with SABCD select
		f1 <= '0' when "0000" | "0100" | "0101" | "0110" | "1000" | "1001",
				'1' when others;
	
	with SABCD select
		g1 <= '0' when "0010" | "0011" | "0100" | "0101" | "0110" | "1000" | "1001",
				'1' when others;
 	

end arch_deco7seg;

