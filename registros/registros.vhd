library ieee;
use ieee.std_logic_1164.all;

entity registros is

	port
	(
		clk  : in std_logic;
		PS, PB, PD	: in  std_logic_vector(4 downto 0);
		reset1  :  in std_logic;
		reset2  : in std_logic;
		
		
		pet1, pet2  :  out  std_logic_vector(2 downto 0)
		
	);
end registros;



architecture arch_registros of registros is

	signal S1, S2, S3, S4, S5 : std_logic;
	signal code : std_logic_vector(2 downto 0);
	
	signal sinUso : std_logic;

	component codificador is
		 Port (
			  I0, I1, I2, I3, I4, I5, I6, I7    : in  std_logic;
			  
			  code  : out std_logic_vector(2 downto 0);    
			  valido : out std_logic                      
		 );
	end component;
	
	component detectorSenal is
		 Port (
			  clk     : in  std_logic;                          
			  datos : in  std_logic_vector(2 downto 0);       
			  reset1  : in  std_logic;                          
			  reset2  : in  std_logic;                          
			  q1      : out std_logic_vector(2 downto 0);       
			  q2      : out std_logic_vector(2 downto 0)        
		 );
	end component;

	

begin

	S1 <= PS(0) or PB(0) or PD(0);
	S2 <= PS(1) or PB(1) or PD(1);
	S3 <= PS(2) or PB(2) or PD(2);
	S4 <= PS(3) or PB(3) or PD(3);
	S5 <= PS(4) or PB(4) or PD(4);
	
	
	U1 : codificador port map ('0',S1,S2,S3,S4,S5,'0','0',code,sinUso);
	U2 : detectorSenal port map (clk,code,reset1,reset2,pet1,pet2);
	

end arch_registros;

