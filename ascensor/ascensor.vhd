library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ascensor is
	port
	(
		
		clk	: in  std_logic;
		sen1, sen2 : in std_logic;
		PS, PB, PD	: in  std_logic_vector(4 downto 0);
		
		a1, b1, c1, d1, e1, f1, g1 : out std_logic;
		mayor : out std_logic;
		abrir, cerrar : out std_logic
		
	);
end ascensor;




architecture arch_ascensor of ascensor is

	signal sreset1, sreset2 : std_logic;
	signal spet1, spet2, spisoActual : std_logic_vector(2 downto 0);
	signal ssubir, sbajar : std_logic;
	signal SIN, clkDIV : std_logic;
	
	component registros is
		port
		(
			clk  : in std_logic;
			PS, PB, PD	: in  std_logic_vector(4 downto 0);
			reset1  :  in std_logic;
			reset2  : in std_logic;
			
			
			pet1, pet2  :  out  std_logic_vector(2 downto 0)
			
		);
	end component;
	
	component detectorPiso is
		 Port (
				clk   : in std_logic;
			  subir      : in  std_logic;              
			  bajar      : in  std_logic;              
			  peticion1  : in  std_logic_vector(2 downto 0);  
			  peticion2  : in  std_logic_vector(2 downto 0);  
			  pisoActual : out std_logic_vector(2 downto 0);  
			  reset1     : out std_logic;              
			  reset2     : out std_logic               
		 );
	end component;
	
	component controlPuerta is
		port
		(
			
			reset1	: in  std_logic;
			reset2	: in  std_logic;
			clk	: in  std_logic;
			
			abrir : out std_logic;
			cerrar : out std_logic

			
		);
	end component;

	component control is
		port
		(
			
			clk : in std_logic;
			pisoActual, pet1, pet2	: in  std_logic_vector(2 downto 0);
			sensor1, sensor2 : std_logic;
			subir, bajar, mayor  : out std_logic		
			
		);
	end component;
	
	component deco7seg is
		port
		(
			-- Input ports
			A, B, C, D	 : in  std_logic;
		
			-- Output ports
			a1, b1, c1, d1, e1, f1, g1	: out  std_logic
		
		);
	end component;
	
	component div_frec is
		port
		(

			clk	: in  std_logic;
			out1, out2 : buffer std_logic
			
		);
	end component;
	
	

begin
	
	U1 : registros port map (clk,PS,PB,PD,sreset1,sreset2,spet1,spet2);
	U2 : detectorPiso port map (clkDIV,ssubir,sbajar,spet1,spet2,spisoActual,sreset1,sreset2);
	U6 : div_frec port map (clk,SIN,clkDIV);
	
	U3 : control port map (clk,spisoActual,spet1,spet2,sen1,sen2,ssubir,sbajar,mayor);
	U4 : controlPuerta port map (sreset1,sreset2,clk,abrir,cerrar);
	U5 : deco7seg port map ('0',spisoActual(2),spisoActual(1),spisoActual(0),a1, b1, c1, d1, e1, f1, g1);
	

end arch_ascensor;
