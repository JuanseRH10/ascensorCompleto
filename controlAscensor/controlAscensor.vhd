library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity controlAscensor is
	port
	(
		
		pisoActual	     : in  std_logic_vector(2 downto 0);
		pet1	           : in  std_logic_vector(2 downto 0);
		pet2	           : in  std_logic_vector(2 downto 0);
		sobreCarga       : in  std_logic;
		estadoPuerta     : in  std_logic;
		anomalia         : in  std_logic;
		cambiandoEstado  : in  std_logic;
		
		subir   : out std_logic;
		bajar   : out std_logic;
		quieto  : out std_logic
		
	);
end controlAscensor;




architecture arch_controlAscensor of controlAscensor is

	signal senable : std_logic;

	component enableAscensor is
		 Port (
			  sobreCarga      : in  std_logic;
			  estadoPuerta    : in  std_logic;
			  anomalia        : in  std_logic;
			  cambiandoEstado : in  std_logic;
			  enable  : out std_logic
		 );
	end component;
	
	component movimientoAscensor is
		 Port(
			  enable     : in  std_logic;
			  pet1       : in  std_logic_vector(2 downto 0);
			  pet2       : in  std_logic_vector(2 downto 0);
			  pisoActual : in  std_logic_vector(2 downto 0);
			  subir      : out std_logic;
			  bajar      : out std_logic;
			  quieto     : out std_logic
		 );
	end component;

begin
	
	U1 : movimientoAscensor port map (senable,pet1,pet2,pisoActual,subir,bajar,quieto);
	U2 : enableAscensor port map (sobreCarga,estadoPuerta,anomalia,cambiandoEstado,senable);
	


end arch_controlAscensor;

