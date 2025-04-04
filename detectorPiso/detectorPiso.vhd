library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity detectorPiso is
	port
	(
		clk     : in std_logic;
		subir   : in std_logic;
		bajar   : in std_logic;
		quieto  : in std_logic;
		pet1	  : in  std_logic_vector(2 downto 0);
		pet2	  : in  std_logic_vector(2 downto 0);
		
		pisoActual  :  out std_logic_vector(2 downto 0);
		reset1  : out std_logic;
		reset2  : out std_logic
		
	);
end detectorPiso;


architecture arch_detectorPiso of detectorPiso is

	signal sin, sin2, sin3, sin4, sin5, sin6 : std_logic;
	signal clkDiv, clkPiso : std_logic;
	signal scuenta : std_logic_vector(1 downto 0);
	signal spisoActual : std_logic_vector(2 downto 0);
	
	
	component div_frec is
		port
		(
			clk	: in  std_logic;
			out1, out2 : buffer std_logic
		);
	end component;
	
	component contadorGenerico is
		 generic (
			  N : integer := 2 
		 );
		 port(
			  clk        : in  std_logic;
			  reset      : in  std_logic;
			  enable     : in  std_logic;
			  valorRes   : in  std_logic_vector(N-1 downto 0);
			  cuenta     : out std_logic_vector(N-1 downto 0)
		 );
	end component;
	
	component comparadorNbits is
		generic
		(
			n	: integer  :=	3
		);
		port
		(
			A	: in  std_logic_vector(n-1 downto 0);
			B	: in  std_logic_vector(n-1 downto 0);
			AiguB  : out std_logic;
			AmayB  : out std_logic;
			AmenB  : out std_logic
		);
	end component;

	component actualizarPiso is
		 Port(
			  clk        : in  std_logic;
			  subir      : in  std_logic;
			  bajar      : in  std_logic;
			  quieto     : in  std_logic; 
			  pisoActual : out std_logic_vector(2 downto 0)
		 );
	end component;

begin

	U1 : div_frec port map (clk,sin,clkDiv);
	U2 : contadorGenerico port map (clkDiv,'0','1',"01",scuenta);
	U3 : comparadorNbits port map ('0'&scuenta,"001",clkPiso,sin,sin2);
	U4 : actualizarPiso port map (clkPiso,subir,bajar,quieto,spisoActual);
	U5 : comparadorNbits port map (spisoActual,pet1,reset1,sin3,sin4);
	U6 : comparadorNbits port map (spisoActual,pet2,reset2,sin5,sin6);
	pisoActual <= spisoActual;

end arch_detectorPiso;
