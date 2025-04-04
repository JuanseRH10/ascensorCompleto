library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlPuerta is
	port
	(
		-- Input ports
		clk	: in  std_logic;
      llego       : in  std_logic;
      anomalia    : in  std_logic;
      sobreCarga  : in  std_logic;
		
		cuenta1  : out std_logic_vector(5 downto 0);
		cuenta2  : out std_logic_vector(5 downto 0);
		cambiandoEstado  : out std_logic;
		estadoPuerta  : out std_logic
		
	);
end controlPuerta;



architecture arch_controlPuerta of controlPuerta is

	signal sin, sin2, sin3, sin4, sin5, sin6 : std_logic;
	signal clkDiv : std_logic;
	signal sllego : std_logic;
	signal sreset1, sreset2, sclear : std_logic;
	signal scomp10, scomp45 : std_logic;
	signal sllego10, sllego45 : std_logic;
	signal spuerta1, spuerta2, spuerta3 : std_logic;
	signal scont10, scont45 : std_logic_vector(5 downto 0);
	

	component controlContadores is
		 port (
			  clk        : in  std_logic;
			  llego      : in  std_logic;
			  anomalia   : in  std_logic;
			  sobreCarga : in  std_logic;
			  llegoa10   : in  std_logic;
			  llegoa45   : in  std_logic;
			  reset1     : out std_logic;
			  reset2     : out std_logic;
			  clear      : out std_logic
		 );
	end component;
	
	component capturarLlego is
		 Port (
			  clk             : in  std_logic;
			  clear           : in  std_logic;
			  llego           : in  std_logic;
			  llego_capturado : out std_logic
		 );
	end component;
	
	component contadorGenerico is
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
	end component;

	component comparadorNbits is
		generic
		(
			n	: integer  :=	6
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
	
	component div_frec is
		port
		(

			clk	: in  std_logic;
			out1, out2 : buffer std_logic
			
		);
	end component;

begin

	U1 : controlContadores port map (clk,sllego,anomalia,sobreCarga,sllego10,sllego45,sreset1,sreset2,sclear);
	U2 : capturarLlego port map (clk,sclear,llego,sllego);
	U3 : contadorGenerico port map (clkDiv,sreset1,'1',"010100",scont10);
   U4 : contadorGenerico port map (clkDiv,sreset2,'1',"001010",scont45);
   U5 : comparadorNbits port map (scont10,"010100",scomp10,sin,sin2);
   U6 : comparadorNbits port map (scont45,"001010",scomp45,sin3,sin4);
   U7 : capturarLlego port map (clk,sclear,scomp10,sllego10);	
	U8 : capturarLlego port map (clk,sclear,scomp45,sllego45);
	U9 : div_frec port map (clk,sin5,clkDiv);
	cambiandoEstado <= sllego;
	
	spuerta1 <= (not anomalia) and sobreCarga;
	spuerta2 <= (not anomalia) and sllego10 and (not sllego45);
	estadoPuerta <= spuerta1 or spuerta2;
	
	cuenta1 <= scont10;
	cuenta2 <= scont45;
	

end arch_controlPuerta;
