library ieee;
use ieee.std_logic_1164.all;

entity sensorPersonas is
	port
	(
		
		clk	: in  std_logic; -- Reloj de la FPGA
		sensorA : in std_logic;
		sensorB : in std_logic;
		
		personaEntra : out std_logic;
		personaSale  : out std_logic
		
	);
end sensorPersonas;



architecture arch_sensorPersonas of sensorPersonas is

	signal primeroA : std_logic := '0';
	signal primeroB : std_logic := '0';
	
	signal sensorAprev : std_logic := '0';
	signal sensorBprev : std_logic := '0';

begin

	process(clk)
	begin
	
		if rising_edge(clk) then
		
			personaEntra <= '0';
			personaSale <= '0';
		
			if (sensorAprev <= '0') and (sensorA = '1') then
				if (primeroA = '0') and (primeroB = '0') then
					primeroA <= '1';
				end if;
			end if;
			
			if (sensorBprev <= '0') and (sensorB = '1') then
				if (primeroA = '0') and (primeroB = '0') then
					primeroB <= '1';
				end if;
			end if;
			
			if (primeroA = '1') and (sensorBprev = '0') and (sensorB = '1') then
			
				personaEntra <= '1';
				primeroA <= '0';
				primeroB <= '0';
				
			elsif (primeroB = '1') and (sensorAprev = '0') and (sensorA = '1') then
				
				personaSale <= '1';
				primeroA <= '0';
				primeroB <= '0';
				
			end if;
			
			sensorAprev <= sensorA;
			sensorBprev <= sensorB;
			
			if (sensorA = '0') and (sensorB = '0') then
				primeroA <= '0';
				primeroB <= '0';
			end if;
			
		end if;
	
	end process;
end arch_sensorPersonas;

