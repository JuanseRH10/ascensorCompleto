library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity proyectoAscensor is
	port
	(
		PS, PB, PD	: in  std_logic_vector(4 downto 0);
		clk  : in std_logic;
		anomalia  : in std_logic;
		perEn, perSal : in std_logic;
		botonNotificacion : in std_logic;
		
		estadoPuerta  : out std_logic;
		subiendo , bajando : out std_logic;
		
		--Alarmas:
		notificacion : out std_logic;
		anomaliaEn : out std_logic;
		luz : out std_logic;
		alarmaSonora : out std_logic;
		
		a1, b1, c1, d1, e1, f1, g1	: out  std_logic; --Deco piso actual
		a2, b2, c2, d2, e2, f2, g2	: out  std_logic;--Deco decenas personas
		a3, b3, c3, d3, e3, f3, g3	: out  std_logic --Deco unidades personas
	);
end proyectoAscensor;



architecture arch_proyectoAscensor of proyectoAscensor is

	signal scuenta1, scuenta2 : std_logic_vector(5 downto 0);
	signal clkDiv, sin : std_logic;
	signal spet1, spet2 : std_logic_vector(2 downto 0);
	signal sreset1, sreset2 : std_logic;
	signal ssubir, sbajar, squieto : std_logic;
	signal scambiandoEstado, sestadoPuerta : std_logic;
	signal ssobrecarga : std_logic;
	signal sllego : std_logic;
	signal spisoActual : std_logic_vector(2 downto 0);
	signal scantPer, decPer, unPer : std_logic_vector(3 downto 0);
	signal smasde10, sanomaliaEnSon, sabrirCerrarSon : std_logic;
	
	component registrosBotones is
		port
		(
			
			clk  :  in std_logic;
			reset1  :  in std_logic;
			reset2  :  in std_logic;
			PS	 :  in  std_logic_vector(4 downto 0);
			PB  :  in  std_logic_vector(4 downto 0);
			PD	 :  in  std_logic_vector(4 downto 0);
			
			pet1  :  out std_logic_vector(2 downto 0);
			pet2  :  out std_logic_vector(2 downto 0)
			
		);
	end component;
	
	component controlAscensor is
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
	end component;
	
	component detectorPiso is
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
	end component;
	
	component controlPuerta is
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
		
	component cantpersonas is
		port
		(
			clk	: in  std_logic;
			perEn : in std_logic;
			perSal : in std_logic;
			estadoPuerta : in std_logic;
			
			sobreCarga : out std_logic;
			cantPer : out std_logic_vector(3 downto 0)
			
		);
	end component;
	
	component decun is
		port
		(
			sum	: in  std_logic_vector(4 downto 0);
			dec   : out std_logic_vector(3 downto 0);
			un    : out std_logic_vector(3 downto 0)
		);
	end component;
	
	component div_frec is
		port
		(

			clk	: in  std_logic;
			out1, out2 : buffer std_logic
			
		);
	end component;
	
	component alarmas is
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
end component;

	
begin

	U1 : registrosBotones port map(clkDiv,sreset1,sreset2,PS,PB,PD,spet1,spet2);
	U2 : controlAscensor port map(spisoActual,spet1,spet2,ssobrecarga,sestadoPuerta,anomalia,scambiandoEstado,ssubir,sbajar,squieto);
	U3 : detectorPiso port map (clk,ssubir,sbajar,squieto,spet1,spet2,spisoActual,sreset1,sreset2);
	sllego <= sreset1 or sreset2;
	U4 : controlPuerta port map(clk,sllego,anomalia,ssobrecarga,scuenta1,scuenta2,scambiandoEstado,sestadoPuerta);
	U5 : cantpersonas port map (clkDiv,perEn,perSal,sestadoPuerta,ssobrecarga,scantPer);
	U6 : div_frec port map (clk,sin,clkDiv);
	U7 : alarmas port map (ssobrecarga,sestadoPuerta,scantPer,scuenta1,scuenta2,anomalia,smasde10,sabrirCerrarSon,anomaliaEn,sanomaliaEnSon,luz);
	
	--Decodificacion y salidas
	H1 : deco7seg port map ('0',spisoActual(2),spisoActual(1),spisoActual(0),a1, b1, c1, d1, e1, f1, g1);
	H2 : decun port map ('0'&scantPer,decPer,unPer);
	H3 : deco7seg port map (decPer(3),decPer(2),decPer(1),decPer(0),a2, b2, c2, d2, e2, f2, g2);
	H4 : deco7seg port map (unPer(3),unPer(2),unPer(1),unPer(0),a3, b3, c3, d3, e3, f3, g3);
	estadoPuerta <= sestadoPuerta;
	subiendo <= ssubir;
	bajando <= sbajar;
	notificacion <= not botonNotificacion;
	alarmaSonora <=  (smasde10 or sabrirCerrarSon or sanomaliaEnSon);

end arch_proyectoAscensor;
