library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlPuerta is
	port
	(
		
		reset1	: in  std_logic;
		reset2	: in  std_logic;
		clk	: in  std_logic;
		
		abrir : out std_logic;
		cerrar : out std_logic

		
	);
end controlPuerta;




architecture arch_controlPuerta of controlPuerta is

	signal enable, divCLK, reset : std_logic;
	signal comp : std_logic_vector(5 downto 0);
	signal SIN, SIN2, SIN3, SIN4, SIN5, SIN6 : std_logic;
	
	
	component detectorCambio is
		 Port (
			  clk       : in  std_logic;  
			  reset1    : in  std_logic;  
			  reset2    : in  std_logic;  
			  clear     : in  std_logic;  
			  salida : out std_logic   
		 );
	end component;

	component div_frec is
		port
		(

			clk	: in  std_logic;
			out1, out2 : buffer std_logic
			
		);
	end component;
	
	component contadorSeg is
		port
		(
		
			clk	: in  std_logic;
			reset : in  std_logic;
			enable : in std_logic;
			min  : out std_logic;
			cuenta : out std_logic_vector(5 downto 0)
					
		);
	end component;

	component comparadorNbits is
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
	end component;
	
	
begin

	U1: detectorCambio port map (clk,reset1,reset2,reset,enable);
	U2: div_frec port map(clk,SIN,divCLK);
	U3: contadorSeg port map (divCLK,reset,enable,SIN2,comp);
	U4: comparadorNbits port map(comp,"001010",abrir,SIN3,SIN4);
	U5: comparadorNbits port map(comp,"110111",reset,SIN5,SIN6);
	cerrar <= reset;

end arch_controlPuerta;

