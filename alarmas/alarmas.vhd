library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alarmas is
	port
	(
		
		sobreCarga	: in  std_logic;
		estadoPuerta : in std_logic;
		cantPer  : in std_logic_vector(3 downto 0);
		cuentaAscensor1 : in std_logic_vector(5 downto 0);
		cuentaAscensor2 : in std_logic_vector(5 downto 0);
		sensorEnergia : in std_logic;
		
		masde10 : out std_logic;
		abrirCerrarSon : out std_logic;
		anomaliaEn : out std_logic;
		anomaliaEnSon : out std_logic;
		luz : out std_logic
		
	);
end alarmas;




architecture arch_alarmas of alarmas is

	signal sin, sin2, sin3, sin4, sin5, sin6, sin7 : std_logic;
	signal may10, may0, puertaLuz, abre, cierra : std_logic;

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

	
	
	U1 : comparadorNbits port map ("00"&cantPer,"000000",sin,may0,sin2);
	U2 : comparadorNbits port map (cuentaAscensor1,"010100",abre,sin3,sin4);
	U3 : comparadorNbits port map (cuentaAscensor2,"001010",cierra,sin5,sin6);
	
	
	luz <= estadoPuerta or may0;
	abrirCerrarSon <= abre or cierra;
	anomaliaEn <= sensorEnergia;
	anomaliaEnSon <= sensorEnergia;
	masde10 <= sobreCarga;
	
end arch_alarmas;


