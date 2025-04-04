library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cantpersonas is
	port
	(
		clk	: in  std_logic;
		perEn : in std_logic;
		perSal : in std_logic;
		estadoPuerta : in std_logic;
		
		sobreCarga : out std_logic;
		cantPer : out std_logic_vector(3 downto 0)
		
	);
end cantpersonas;




architecture arch_cantpersonas of cantpersonas is

	signal scuenta : std_logic_vector(3 downto 0);
	signal sin, sin2 : std_logic;
	
	
	component decun is
		port
		(
			
			sum	: in  std_logic_vector(4 downto 0);
			dec   : out std_logic_vector(3 downto 0);
			un    : out std_logic_vector(3 downto 0)
			
		);
	end component;
	
	component contadorPersonas is
		 Port (
			  clk        : in  std_logic;
			  estadoPuerta : in std_logic;
			  reset      : in  std_logic;                 
			  personaEntra  : in  std_logic;                 
			  personaSale : in  std_logic; 
			  
			  cuenta      : out std_logic_vector(3 downto 0) 
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
	
	component comparadorNbits is
		generic
		(
			n	: integer  :=	4
			
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

		U1 : contadorPersonas port map (clk,estadoPuerta,'0',perEn,perSal,scuenta);
		U2 : comparadorNbits port map (scuenta,"1010",sin,sobreCarga,sin2);
		cantPer <= scuenta;

end arch_cantpersonas;

