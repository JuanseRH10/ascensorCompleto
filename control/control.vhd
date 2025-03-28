library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity control is
	port
	(
		
		clk : in std_logic;
		pisoActual, pet1, pet2	: in  std_logic_vector(2 downto 0);
		sensor1, sensor2 : std_logic;
		subir, bajar, mayor  : out std_logic		
		
	);
end control;




architecture arch_control of control is

 signal s1, s3 : std_logic_vector(2 downto 0);
 signal s2, s4, s5, s6 : std_logic;
 signal c11, c12, c13 : std_logic;
 signal snor, snand : std_logic;
 signal baja1, sube1, sube2, baja2 : std_logic;
 signal sube3, baja3, sube4, baja4 : std_logic;
 signal orsube, orbaja : std_logic;
 signal perEn, perSal,mayo  : std_logic;
 signal cantPer : std_logic_vector(3 downto 0);
 
 signal SIN, SIN2, SIN3, SIN4, SIN5, SIN6 : std_logic;

	component restador is
		generic
		(
			n	: integer  :=	3
		);

		port
		(
			
			x, y	: in  std_logic_vector(n-1 downto 0);
			sig   : out std_logic;
			mag   : out std_logic_vector(n-1 downto 0)

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
	
	component sensorPersonas is
		port
		(
			
			clk	: in  std_logic; -- Reloj de la FPGA
			sensorA : in std_logic;
			sensorB : in std_logic;
			
			personaEntra : out std_logic;
			personaSale  : out std_logic
			
		);
	end component;
	
	component contadorPersonas is
		 Port (
			  clk        : in  std_logic;                 
			  reset      : in  std_logic;                 
			  personaEntra  : in  std_logic;                 
			  personaSale : in  std_logic; 
			  
			  cuenta      : out std_logic_vector(3 downto 0) 
		 );
	end component;
	
	
begin

	U1 : restador port map(pisoActual,pet1,s2,s1);
	U2 : restador port map(pisoActual,pet2,s4,s3);
	U3 : comparadorNbits port map('0'&s1,'0'&s3,c11,c12,c13);
	U4 : comparadorNbits port map('0'&pet1,"0000",s5,SIN,SIN2);
	U5 : comparadorNbits port map('0'&pet2,"0000",s6,SIN3,SIN4);
	
	snor <= s5 nor s6;
	snand <= s5 nand s6;
	
	baja1 <= (not s2) and c11 and snor;
	sube1 <= c11 and s2 and snor;
	sube2 <= c12 and s4 and snor;
	baja2 <= (not s4) and c12 and snor;
	
	sube3 <= (not snor) and snand and s5 and s4;
	baja3 <= (not snor) and snand and s5 and (not s4);
	sube4 <= (not snor) and snand and s6 and s2;
	baja4 <= (not snor) and snand and (not s2) and s6;
	
	orsube <= sube1 or sube2 or sube3 or sube4 or c13;
	orbaja <= baja1 or baja2 or baja3 or baja4;
	
	U6 : sensorPersonas port map(clk,sensor1,sensor2,perEn,perSal);
	U7 : contadorPersonas port map(clk,'0',perEn,perSal,cantPer);
	U8 : comparadorNbits port map(cantPer,"1010",SIN5,mayo,SIN6);
	
	subir <= orsube and (not mayo);
	bajar <= orbaja and (not mayo);
	
	mayor <= mayo;
	


end arch_control;

