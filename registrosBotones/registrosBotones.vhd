library ieee;
use ieee.std_logic_1164.all;

entity registrosBotones is
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
end registrosBotones;



architecture arch_registrosBotones of registrosBotones is

	signal sin, sin2, sin3 : std_logic;
	signal clkDiv : std_logic;
	signal spet1, spet2 : std_logic_vector(4 downto 0);
	
	component codificador is
		 Port (
			  I0, I1, I2, I3, I4, I5, I6, I7    : in  std_logic;
			  
			  code  : out std_logic_vector(2 downto 0);    
			  valido : out std_logic                      
		 );
	end component;
	
	component detectorBoton is
		 Port (
			  clk      : in  std_logic;
			  reset1   : in  std_logic; 
			  reset2   : in  std_logic; 
			  PS       : in  std_logic_vector(4 downto 0);
			  PB       : in  std_logic_vector(4 downto 0);
			  PD       : in  std_logic_vector(4 downto 0);
			  pet1     : out std_logic_vector(4 downto 0);
			  pet2     : out std_logic_vector(4 downto 0)
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

	U1 : detectorBoton port map(clk,reset1,reset2,PS,PB,PD,spet1,spet2);
	U2 : codificador port map ('0',spet1(0),spet1(1),spet1(2),spet1(3),spet1(4),'0','0',pet1,sin);
	U3 : codificador port map ('0',spet2(0),spet2(1),spet2(2),spet2(3),spet2(4),'0','0',pet2,sin2);
	--U4 : div_frec port map (clk,sin3,clkDiv);
	

end arch_registrosBotones;

