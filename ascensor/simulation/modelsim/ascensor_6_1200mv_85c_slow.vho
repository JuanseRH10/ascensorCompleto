-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/27/2025 17:26:22"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ascensor IS
    PORT (
	clk : IN std_logic;
	sen1 : IN std_logic;
	sen2 : IN std_logic;
	PS : IN std_logic_vector(4 DOWNTO 0);
	PB : IN std_logic_vector(4 DOWNTO 0);
	PD : IN std_logic_vector(4 DOWNTO 0);
	a1 : BUFFER std_logic;
	b1 : BUFFER std_logic;
	c1 : BUFFER std_logic;
	d1 : BUFFER std_logic;
	e1 : BUFFER std_logic;
	f1 : BUFFER std_logic;
	g1 : BUFFER std_logic;
	mayor : BUFFER std_logic;
	abrir : BUFFER std_logic;
	cerrar : BUFFER std_logic
	);
END ascensor;

-- Design Ports Information
-- a1	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mayor	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sen1	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sen2	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ascensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sen1 : std_logic;
SIGNAL ww_sen2 : std_logic;
SIGNAL ww_PS : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PB : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_mayor : std_logic;
SIGNAL ww_abrir : std_logic;
SIGNAL ww_cerrar : std_logic;
SIGNAL \U6|out2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|U2|out2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a1~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \e1~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \mayor~output_o\ : std_logic;
SIGNAL \abrir~output_o\ : std_logic;
SIGNAL \cerrar~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U4|U2|Add1~0_combout\ : std_logic;
SIGNAL \U4|U2|Add1~1\ : std_logic;
SIGNAL \U4|U2|Add1~2_combout\ : std_logic;
SIGNAL \U4|U2|Add1~3\ : std_logic;
SIGNAL \U4|U2|Add1~4_combout\ : std_logic;
SIGNAL \U4|U2|Add1~5\ : std_logic;
SIGNAL \U4|U2|Add1~6_combout\ : std_logic;
SIGNAL \U4|U2|Add1~7\ : std_logic;
SIGNAL \U4|U2|Add1~8_combout\ : std_logic;
SIGNAL \U6|Add1~1\ : std_logic;
SIGNAL \U6|Add1~3\ : std_logic;
SIGNAL \U6|Add1~5\ : std_logic;
SIGNAL \U6|Add1~6_combout\ : std_logic;
SIGNAL \U4|U2|Add1~9\ : std_logic;
SIGNAL \U4|U2|Add1~10_combout\ : std_logic;
SIGNAL \U4|U2|Add1~11\ : std_logic;
SIGNAL \U4|U2|Add1~13\ : std_logic;
SIGNAL \U4|U2|Add1~14_combout\ : std_logic;
SIGNAL \U4|U2|Add1~12_combout\ : std_logic;
SIGNAL \U4|U2|Equal1~1_combout\ : std_logic;
SIGNAL \U4|U2|Equal1~0_combout\ : std_logic;
SIGNAL \U4|U2|Add1~15\ : std_logic;
SIGNAL \U4|U2|Add1~16_combout\ : std_logic;
SIGNAL \U4|U2|Add1~17\ : std_logic;
SIGNAL \U4|U2|Add1~18_combout\ : std_logic;
SIGNAL \U4|U2|Add1~19\ : std_logic;
SIGNAL \U4|U2|Add1~20_combout\ : std_logic;
SIGNAL \U4|U2|count2~8_combout\ : std_logic;
SIGNAL \U4|U2|Add1~21\ : std_logic;
SIGNAL \U4|U2|Add1~23\ : std_logic;
SIGNAL \U4|U2|Add1~24_combout\ : std_logic;
SIGNAL \U4|U2|count2~2_combout\ : std_logic;
SIGNAL \U4|U2|Add1~25\ : std_logic;
SIGNAL \U4|U2|Add1~26_combout\ : std_logic;
SIGNAL \U4|U2|count2~3_combout\ : std_logic;
SIGNAL \U4|U2|Add1~27\ : std_logic;
SIGNAL \U4|U2|Add1~28_combout\ : std_logic;
SIGNAL \U4|U2|count2~4_combout\ : std_logic;
SIGNAL \U4|U2|Add1~29\ : std_logic;
SIGNAL \U4|U2|Add1~30_combout\ : std_logic;
SIGNAL \U4|U2|Add1~31\ : std_logic;
SIGNAL \U4|U2|Add1~32_combout\ : std_logic;
SIGNAL \U4|U2|count2~5_combout\ : std_logic;
SIGNAL \U4|U2|Add1~33\ : std_logic;
SIGNAL \U4|U2|Add1~34_combout\ : std_logic;
SIGNAL \U4|U2|Add1~35\ : std_logic;
SIGNAL \U4|U2|Add1~37\ : std_logic;
SIGNAL \U4|U2|Add1~38_combout\ : std_logic;
SIGNAL \U4|U2|count2~7_combout\ : std_logic;
SIGNAL \U4|U2|Add1~39\ : std_logic;
SIGNAL \U4|U2|Add1~40_combout\ : std_logic;
SIGNAL \U4|U2|count2~10_combout\ : std_logic;
SIGNAL \U4|U2|Add1~41\ : std_logic;
SIGNAL \U4|U2|Add1~42_combout\ : std_logic;
SIGNAL \U4|U2|count2~9_combout\ : std_logic;
SIGNAL \U4|U2|Add1~43\ : std_logic;
SIGNAL \U4|U2|Add1~44_combout\ : std_logic;
SIGNAL \U4|U2|Add1~45\ : std_logic;
SIGNAL \U4|U2|Add1~46_combout\ : std_logic;
SIGNAL \U4|U2|Equal1~8_combout\ : std_logic;
SIGNAL \U4|U2|count2~11_combout\ : std_logic;
SIGNAL \U4|U2|Add1~47\ : std_logic;
SIGNAL \U4|U2|Add1~48_combout\ : std_logic;
SIGNAL \U4|U2|Equal1~6_combout\ : std_logic;
SIGNAL \U4|U2|Equal1~7_combout\ : std_logic;
SIGNAL \U4|U2|count2~6_combout\ : std_logic;
SIGNAL \U4|U2|Add1~36_combout\ : std_logic;
SIGNAL \U4|U2|Equal1~5_combout\ : std_logic;
SIGNAL \U4|U2|count2~1_combout\ : std_logic;
SIGNAL \U4|U2|Add1~22_combout\ : std_logic;
SIGNAL \U4|U2|Equal1~2_combout\ : std_logic;
SIGNAL \U4|U2|Equal1~3_combout\ : std_logic;
SIGNAL \U4|U2|Equal1~4_combout\ : std_logic;
SIGNAL \U4|U2|count2~0_combout\ : std_logic;
SIGNAL \U6|Add1~7\ : std_logic;
SIGNAL \U6|Add1~9\ : std_logic;
SIGNAL \U6|Add1~10_combout\ : std_logic;
SIGNAL \U6|Add1~8_combout\ : std_logic;
SIGNAL \U6|Add1~11\ : std_logic;
SIGNAL \U6|Add1~12_combout\ : std_logic;
SIGNAL \U6|Equal1~1_combout\ : std_logic;
SIGNAL \U6|Add1~13\ : std_logic;
SIGNAL \U6|Add1~15\ : std_logic;
SIGNAL \U6|Add1~17\ : std_logic;
SIGNAL \U6|Add1~18_combout\ : std_logic;
SIGNAL \U6|Add1~16_combout\ : std_logic;
SIGNAL \U6|Add1~14_combout\ : std_logic;
SIGNAL \U6|Add1~19\ : std_logic;
SIGNAL \U6|Add1~20_combout\ : std_logic;
SIGNAL \U6|Equal1~2_combout\ : std_logic;
SIGNAL \U6|Add1~0_combout\ : std_logic;
SIGNAL \U6|Add1~2_combout\ : std_logic;
SIGNAL \U6|Add1~4_combout\ : std_logic;
SIGNAL \U6|Equal1~0_combout\ : std_logic;
SIGNAL \U6|Add1~21\ : std_logic;
SIGNAL \U6|Add1~22_combout\ : std_logic;
SIGNAL \U6|Add1~23\ : std_logic;
SIGNAL \U6|Add1~24_combout\ : std_logic;
SIGNAL \U6|Add1~25\ : std_logic;
SIGNAL \U6|Add1~27\ : std_logic;
SIGNAL \U6|Add1~28_combout\ : std_logic;
SIGNAL \U6|Add1~26_combout\ : std_logic;
SIGNAL \U6|Equal1~3_combout\ : std_logic;
SIGNAL \U6|Equal1~4_combout\ : std_logic;
SIGNAL \U6|Add1~29\ : std_logic;
SIGNAL \U6|Add1~30_combout\ : std_logic;
SIGNAL \U6|Add1~31\ : std_logic;
SIGNAL \U6|Add1~32_combout\ : std_logic;
SIGNAL \U6|Add1~33\ : std_logic;
SIGNAL \U6|Add1~34_combout\ : std_logic;
SIGNAL \U6|Add1~35\ : std_logic;
SIGNAL \U6|Add1~36_combout\ : std_logic;
SIGNAL \U6|Equal1~5_combout\ : std_logic;
SIGNAL \U6|Add1~37\ : std_logic;
SIGNAL \U6|Add1~39\ : std_logic;
SIGNAL \U6|Add1~41\ : std_logic;
SIGNAL \U6|Add1~43\ : std_logic;
SIGNAL \U6|Add1~45\ : std_logic;
SIGNAL \U6|Add1~46_combout\ : std_logic;
SIGNAL \U6|Add1~42_combout\ : std_logic;
SIGNAL \U6|Add1~44_combout\ : std_logic;
SIGNAL \U6|Add1~38_combout\ : std_logic;
SIGNAL \U6|Add1~40_combout\ : std_logic;
SIGNAL \U6|Equal1~6_combout\ : std_logic;
SIGNAL \U6|Equal1~7_combout\ : std_logic;
SIGNAL \U6|out2~0_combout\ : std_logic;
SIGNAL \U6|out2~feeder_combout\ : std_logic;
SIGNAL \U6|out2~q\ : std_logic;
SIGNAL \U6|out2~clkctrl_outclk\ : std_logic;
SIGNAL \sen1~input_o\ : std_logic;
SIGNAL \U3|U6|sensorAprev~q\ : std_logic;
SIGNAL \sen2~input_o\ : std_logic;
SIGNAL \U3|U6|sensorBprev~q\ : std_logic;
SIGNAL \U3|U6|primeroB~1_combout\ : std_logic;
SIGNAL \U3|U6|primeroB~0_combout\ : std_logic;
SIGNAL \U3|U6|primeroB~2_combout\ : std_logic;
SIGNAL \U3|U6|primeroB~q\ : std_logic;
SIGNAL \U3|U6|primeroA~0_combout\ : std_logic;
SIGNAL \U3|U6|primeroA~1_combout\ : std_logic;
SIGNAL \U3|U6|primeroA~q\ : std_logic;
SIGNAL \U3|U6|process_0~0_combout\ : std_logic;
SIGNAL \U3|U6|personaSale~0_combout\ : std_logic;
SIGNAL \U3|U6|personaSale~q\ : std_logic;
SIGNAL \U3|U6|personaEntra~q\ : std_logic;
SIGNAL \U3|U7|process_0~0_combout\ : std_logic;
SIGNAL \U3|U7|cnt[2]~3_combout\ : std_logic;
SIGNAL \U3|U7|cnt[3]~0_combout\ : std_logic;
SIGNAL \U3|U7|cnt[2]~4_combout\ : std_logic;
SIGNAL \U3|U7|cnt[3]~1_combout\ : std_logic;
SIGNAL \U3|U7|cnt[3]~2_combout\ : std_logic;
SIGNAL \U3|U7|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|U7|cnt~5_combout\ : std_logic;
SIGNAL \U3|U7|cnt[1]~6_combout\ : std_logic;
SIGNAL \U3|U8|AmayB~0_combout\ : std_logic;
SIGNAL \PB[3]~input_o\ : std_logic;
SIGNAL \PD[3]~input_o\ : std_logic;
SIGNAL \PS[3]~input_o\ : std_logic;
SIGNAL \U1|U1|code~0_combout\ : std_logic;
SIGNAL \PD[4]~input_o\ : std_logic;
SIGNAL \PB[4]~input_o\ : std_logic;
SIGNAL \PS[4]~input_o\ : std_logic;
SIGNAL \U1|U1|code~5_combout\ : std_logic;
SIGNAL \PB[2]~input_o\ : std_logic;
SIGNAL \PD[2]~input_o\ : std_logic;
SIGNAL \PS[2]~input_o\ : std_logic;
SIGNAL \U1|U1|code~4_combout\ : std_logic;
SIGNAL \PS[1]~input_o\ : std_logic;
SIGNAL \PB[1]~input_o\ : std_logic;
SIGNAL \PD[1]~input_o\ : std_logic;
SIGNAL \U1|U1|code~2_combout\ : std_logic;
SIGNAL \U1|U1|code~7_combout\ : std_logic;
SIGNAL \U1|U1|code~1_combout\ : std_logic;
SIGNAL \U1|U2|reg2[2]~0_combout\ : std_logic;
SIGNAL \PB[0]~input_o\ : std_logic;
SIGNAL \PS[0]~input_o\ : std_logic;
SIGNAL \PD[0]~input_o\ : std_logic;
SIGNAL \U1|U1|code~3_combout\ : std_logic;
SIGNAL \U1|U1|code~6_combout\ : std_logic;
SIGNAL \U1|U2|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U2|primero~0_combout\ : std_logic;
SIGNAL \U1|U2|primero~q\ : std_logic;
SIGNAL \U1|U2|reg2[2]~1_combout\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|Equal1~1_combout\ : std_logic;
SIGNAL \U2|reset2~q\ : std_logic;
SIGNAL \U1|U2|datosPrev[0]~0_combout\ : std_logic;
SIGNAL \U1|U2|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U2|reg1[2]~0_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U2|Equal0~1_combout\ : std_logic;
SIGNAL \U2|reset1~q\ : std_logic;
SIGNAL \U3|U4|Equal0~0_combout\ : std_logic;
SIGNAL \U3|U2|D1[0]~1\ : std_logic;
SIGNAL \U3|U2|D1[1]~3\ : std_logic;
SIGNAL \U3|U2|D1[2]~5\ : std_logic;
SIGNAL \U3|U2|Add0~0_combout\ : std_logic;
SIGNAL \U3|U5|Equal0~0_combout\ : std_logic;
SIGNAL \U3|bajar~2_combout\ : std_logic;
SIGNAL \U3|U1|D1[0]~1\ : std_logic;
SIGNAL \U3|U1|D1[1]~3\ : std_logic;
SIGNAL \U3|U1|D1[2]~5\ : std_logic;
SIGNAL \U3|U1|Add0~0_combout\ : std_logic;
SIGNAL \U3|bajar~0_combout\ : std_logic;
SIGNAL \U3|U1|D2[0]~0_combout\ : std_logic;
SIGNAL \U3|U1|D1[0]~0_combout\ : std_logic;
SIGNAL \U3|U2|D1[0]~0_combout\ : std_logic;
SIGNAL \U3|U2|D2[0]~0_combout\ : std_logic;
SIGNAL \U3|U2|Add1~2_combout\ : std_logic;
SIGNAL \U3|U3|Equal0~1_combout\ : std_logic;
SIGNAL \U3|bajar~1_combout\ : std_logic;
SIGNAL \U3|U1|Add1~2_combout\ : std_logic;
SIGNAL \U3|U2|D2[0]~1\ : std_logic;
SIGNAL \U3|U2|D2[1]~2_combout\ : std_logic;
SIGNAL \U3|U2|D1[1]~2_combout\ : std_logic;
SIGNAL \U3|U2|Add1~0_combout\ : std_logic;
SIGNAL \U3|U1|D1[2]~4_combout\ : std_logic;
SIGNAL \U3|U1|D2[0]~1\ : std_logic;
SIGNAL \U3|U1|D2[1]~3\ : std_logic;
SIGNAL \U3|U1|D2[2]~4_combout\ : std_logic;
SIGNAL \U3|U1|Add1~0_combout\ : std_logic;
SIGNAL \U3|U1|D2[1]~2_combout\ : std_logic;
SIGNAL \U3|U1|D1[1]~2_combout\ : std_logic;
SIGNAL \U3|U1|Add1~1_combout\ : std_logic;
SIGNAL \U3|U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|bajar~3_combout\ : std_logic;
SIGNAL \U3|bajar~4_combout\ : std_logic;
SIGNAL \U2|piso[2]~0_combout\ : std_logic;
SIGNAL \U2|piso[2]~1_combout\ : std_logic;
SIGNAL \U3|U2|D1[2]~4_combout\ : std_logic;
SIGNAL \U3|U2|D2[1]~3\ : std_logic;
SIGNAL \U3|U2|D2[2]~4_combout\ : std_logic;
SIGNAL \U3|U2|Add1~1_combout\ : std_logic;
SIGNAL \U3|U3|Equal0~0_combout\ : std_logic;
SIGNAL \U3|subir~0_combout\ : std_logic;
SIGNAL \U3|subir~2_combout\ : std_logic;
SIGNAL \U3|subir~3_combout\ : std_logic;
SIGNAL \U3|subir~1_combout\ : std_logic;
SIGNAL \U2|nuevoPiso~0_combout\ : std_logic;
SIGNAL \U2|nuevoPiso~1_combout\ : std_logic;
SIGNAL \U2|piso[1]~2_combout\ : std_logic;
SIGNAL \U2|piso[1]~3_combout\ : std_logic;
SIGNAL \U5|Mux0~0_combout\ : std_logic;
SIGNAL \U5|Mux1~0_combout\ : std_logic;
SIGNAL \U5|Mux2~0_combout\ : std_logic;
SIGNAL \U5|Mux3~0_combout\ : std_logic;
SIGNAL \U5|Mux4~0_combout\ : std_logic;
SIGNAL \U5|Mux5~0_combout\ : std_logic;
SIGNAL \U5|Mux6~0_combout\ : std_logic;
SIGNAL \U4|U2|out2~0_combout\ : std_logic;
SIGNAL \U4|U2|out2~feeder_combout\ : std_logic;
SIGNAL \U4|U2|out2~q\ : std_logic;
SIGNAL \U4|U2|out2~clkctrl_outclk\ : std_logic;
SIGNAL \U4|U3|Add0~0_combout\ : std_logic;
SIGNAL \U4|U3|Add0~3\ : std_logic;
SIGNAL \U4|U3|Add0~4_combout\ : std_logic;
SIGNAL \U4|U3|contador~1_combout\ : std_logic;
SIGNAL \U4|U5|Equal0~3_combout\ : std_logic;
SIGNAL \U4|U1|reset2Prev~q\ : std_logic;
SIGNAL \U4|U1|reset1Prev~q\ : std_logic;
SIGNAL \U4|U1|detecta~0_combout\ : std_logic;
SIGNAL \U4|U1|detecta~1_combout\ : std_logic;
SIGNAL \U4|U1|detecta~q\ : std_logic;
SIGNAL \U4|U3|Add0~5\ : std_logic;
SIGNAL \U4|U3|Add0~6_combout\ : std_logic;
SIGNAL \U4|U3|contador~0_combout\ : std_logic;
SIGNAL \U4|U5|Equal0~4_combout\ : std_logic;
SIGNAL \U4|U3|Add0~1\ : std_logic;
SIGNAL \U4|U3|Add0~2_combout\ : std_logic;
SIGNAL \U4|U3|Add0~7\ : std_logic;
SIGNAL \U4|U3|Add0~9\ : std_logic;
SIGNAL \U4|U3|Add0~10_combout\ : std_logic;
SIGNAL \U4|U3|contador~2_combout\ : std_logic;
SIGNAL \U4|U5|Equal0~2_combout\ : std_logic;
SIGNAL \U4|U3|Add0~8_combout\ : std_logic;
SIGNAL \U4|U3|contador~3_combout\ : std_logic;
SIGNAL \U4|U4|Equal0~0_combout\ : std_logic;
SIGNAL \U4|U4|Equal0~1_combout\ : std_logic;
SIGNAL \U3|U7|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|U2|count2\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \U1|U2|reg2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U4|U3|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U1|U2|datosPrev\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|U2|reg1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U2|piso\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|U2|ALT_INV_reg2[2]~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_reset1~q\ : std_logic;
SIGNAL \U4|U5|ALT_INV_Equal0~4_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sen1 <= sen1;
ww_sen2 <= sen2;
ww_PS <= PS;
ww_PB <= PB;
ww_PD <= PD;
a1 <= ww_a1;
b1 <= ww_b1;
c1 <= ww_c1;
d1 <= ww_d1;
e1 <= ww_e1;
f1 <= ww_f1;
g1 <= ww_g1;
mayor <= ww_mayor;
abrir <= ww_abrir;
cerrar <= ww_cerrar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U6|out2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U6|out2~q\);

\U4|U2|out2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U4|U2|out2~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\U1|U2|ALT_INV_reg2[2]~0_combout\ <= NOT \U1|U2|reg2[2]~0_combout\;
\U2|ALT_INV_reset1~q\ <= NOT \U2|reset1~q\;
\U4|U5|ALT_INV_Equal0~4_combout\ <= NOT \U4|U5|Equal0~4_combout\;

-- Location: IOOBUF_X21_Y29_N23
\a1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \a1~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\b1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\c1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\d1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\e1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \e1~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\f1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\g1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\mayor~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U8|AmayB~0_combout\,
	devoe => ww_devoe,
	o => \mayor~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\abrir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|U4|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \abrir~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\cerrar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|U5|Equal0~4_combout\,
	devoe => ww_devoe,
	o => \cerrar~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y2_N8
\U4|U2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~0_combout\ = \U4|U2|count2\(0) $ (VCC)
-- \U4|U2|Add1~1\ = CARRY(\U4|U2|count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(0),
	datad => VCC,
	combout => \U4|U2|Add1~0_combout\,
	cout => \U4|U2|Add1~1\);

-- Location: FF_X27_Y2_N5
\U4|U2|count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4|U2|Add1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(0));

-- Location: LCCOMB_X27_Y2_N10
\U4|U2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~2_combout\ = (\U4|U2|count2\(1) & (!\U4|U2|Add1~1\)) # (!\U4|U2|count2\(1) & ((\U4|U2|Add1~1\) # (GND)))
-- \U4|U2|Add1~3\ = CARRY((!\U4|U2|Add1~1\) # (!\U4|U2|count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(1),
	datad => VCC,
	cin => \U4|U2|Add1~1\,
	combout => \U4|U2|Add1~2_combout\,
	cout => \U4|U2|Add1~3\);

-- Location: FF_X27_Y2_N11
\U4|U2|count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(1));

-- Location: LCCOMB_X27_Y2_N12
\U4|U2|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~4_combout\ = (\U4|U2|count2\(2) & (\U4|U2|Add1~3\ $ (GND))) # (!\U4|U2|count2\(2) & (!\U4|U2|Add1~3\ & VCC))
-- \U4|U2|Add1~5\ = CARRY((\U4|U2|count2\(2) & !\U4|U2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(2),
	datad => VCC,
	cin => \U4|U2|Add1~3\,
	combout => \U4|U2|Add1~4_combout\,
	cout => \U4|U2|Add1~5\);

-- Location: FF_X27_Y2_N13
\U4|U2|count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(2));

-- Location: LCCOMB_X27_Y2_N14
\U4|U2|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~6_combout\ = (\U4|U2|count2\(3) & (!\U4|U2|Add1~5\)) # (!\U4|U2|count2\(3) & ((\U4|U2|Add1~5\) # (GND)))
-- \U4|U2|Add1~7\ = CARRY((!\U4|U2|Add1~5\) # (!\U4|U2|count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(3),
	datad => VCC,
	cin => \U4|U2|Add1~5\,
	combout => \U4|U2|Add1~6_combout\,
	cout => \U4|U2|Add1~7\);

-- Location: FF_X27_Y2_N15
\U4|U2|count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(3));

-- Location: LCCOMB_X27_Y2_N16
\U4|U2|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~8_combout\ = (\U4|U2|count2\(4) & (\U4|U2|Add1~7\ $ (GND))) # (!\U4|U2|count2\(4) & (!\U4|U2|Add1~7\ & VCC))
-- \U4|U2|Add1~9\ = CARRY((\U4|U2|count2\(4) & !\U4|U2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(4),
	datad => VCC,
	cin => \U4|U2|Add1~7\,
	combout => \U4|U2|Add1~8_combout\,
	cout => \U4|U2|Add1~9\);

-- Location: FF_X27_Y2_N1
\U4|U2|count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4|U2|Add1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(4));

-- Location: LCCOMB_X28_Y2_N8
\U6|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~0_combout\ = (\U4|U2|count2\(1) & (\U4|U2|count2\(0) $ (VCC))) # (!\U4|U2|count2\(1) & (\U4|U2|count2\(0) & VCC))
-- \U6|Add1~1\ = CARRY((\U4|U2|count2\(1) & \U4|U2|count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(1),
	datab => \U4|U2|count2\(0),
	datad => VCC,
	combout => \U6|Add1~0_combout\,
	cout => \U6|Add1~1\);

-- Location: LCCOMB_X28_Y2_N10
\U6|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~2_combout\ = (\U4|U2|count2\(2) & (!\U6|Add1~1\)) # (!\U4|U2|count2\(2) & ((\U6|Add1~1\) # (GND)))
-- \U6|Add1~3\ = CARRY((!\U6|Add1~1\) # (!\U4|U2|count2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(2),
	datad => VCC,
	cin => \U6|Add1~1\,
	combout => \U6|Add1~2_combout\,
	cout => \U6|Add1~3\);

-- Location: LCCOMB_X28_Y2_N12
\U6|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~4_combout\ = (\U4|U2|count2\(3) & (\U6|Add1~3\ $ (GND))) # (!\U4|U2|count2\(3) & (!\U6|Add1~3\ & VCC))
-- \U6|Add1~5\ = CARRY((\U4|U2|count2\(3) & !\U6|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(3),
	datad => VCC,
	cin => \U6|Add1~3\,
	combout => \U6|Add1~4_combout\,
	cout => \U6|Add1~5\);

-- Location: LCCOMB_X28_Y2_N14
\U6|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~6_combout\ = (\U4|U2|count2\(4) & (!\U6|Add1~5\)) # (!\U4|U2|count2\(4) & ((\U6|Add1~5\) # (GND)))
-- \U6|Add1~7\ = CARRY((!\U6|Add1~5\) # (!\U4|U2|count2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(4),
	datad => VCC,
	cin => \U6|Add1~5\,
	combout => \U6|Add1~6_combout\,
	cout => \U6|Add1~7\);

-- Location: FF_X27_Y2_N23
\U4|U2|count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(7));

-- Location: LCCOMB_X27_Y2_N18
\U4|U2|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~10_combout\ = (\U4|U2|count2\(5) & (!\U4|U2|Add1~9\)) # (!\U4|U2|count2\(5) & ((\U4|U2|Add1~9\) # (GND)))
-- \U4|U2|Add1~11\ = CARRY((!\U4|U2|Add1~9\) # (!\U4|U2|count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(5),
	datad => VCC,
	cin => \U4|U2|Add1~9\,
	combout => \U4|U2|Add1~10_combout\,
	cout => \U4|U2|Add1~11\);

-- Location: FF_X27_Y2_N19
\U4|U2|count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(5));

-- Location: LCCOMB_X27_Y2_N20
\U4|U2|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~12_combout\ = (\U4|U2|count2\(6) & (\U4|U2|Add1~11\ $ (GND))) # (!\U4|U2|count2\(6) & (!\U4|U2|Add1~11\ & VCC))
-- \U4|U2|Add1~13\ = CARRY((\U4|U2|count2\(6) & !\U4|U2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(6),
	datad => VCC,
	cin => \U4|U2|Add1~11\,
	combout => \U4|U2|Add1~12_combout\,
	cout => \U4|U2|Add1~13\);

-- Location: LCCOMB_X27_Y2_N22
\U4|U2|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~14_combout\ = (\U4|U2|count2\(7) & (!\U4|U2|Add1~13\)) # (!\U4|U2|count2\(7) & ((\U4|U2|Add1~13\) # (GND)))
-- \U4|U2|Add1~15\ = CARRY((!\U4|U2|Add1~13\) # (!\U4|U2|count2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(7),
	datad => VCC,
	cin => \U4|U2|Add1~13\,
	combout => \U4|U2|Add1~14_combout\,
	cout => \U4|U2|Add1~15\);

-- Location: LCCOMB_X27_Y2_N0
\U4|U2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Equal1~1_combout\ = (!\U4|U2|Add1~14_combout\ & (\U4|U2|Add1~12_combout\ & (!\U4|U2|Add1~8_combout\ & !\U4|U2|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~14_combout\,
	datab => \U4|U2|Add1~12_combout\,
	datac => \U4|U2|Add1~8_combout\,
	datad => \U4|U2|Add1~10_combout\,
	combout => \U4|U2|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y2_N24
\U4|U2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Equal1~0_combout\ = (!\U4|U2|Add1~0_combout\ & (!\U4|U2|Add1~4_combout\ & (!\U4|U2|Add1~2_combout\ & !\U4|U2|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~0_combout\,
	datab => \U4|U2|Add1~4_combout\,
	datac => \U4|U2|Add1~2_combout\,
	datad => \U4|U2|Add1~6_combout\,
	combout => \U4|U2|Equal1~0_combout\);

-- Location: FF_X27_Y2_N27
\U4|U2|count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(9));

-- Location: LCCOMB_X27_Y2_N24
\U4|U2|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~16_combout\ = (\U4|U2|count2\(8) & (\U4|U2|Add1~15\ $ (GND))) # (!\U4|U2|count2\(8) & (!\U4|U2|Add1~15\ & VCC))
-- \U4|U2|Add1~17\ = CARRY((\U4|U2|count2\(8) & !\U4|U2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(8),
	datad => VCC,
	cin => \U4|U2|Add1~15\,
	combout => \U4|U2|Add1~16_combout\,
	cout => \U4|U2|Add1~17\);

-- Location: FF_X27_Y2_N7
\U4|U2|count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4|U2|Add1~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(8));

-- Location: LCCOMB_X27_Y2_N26
\U4|U2|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~18_combout\ = (\U4|U2|count2\(9) & (!\U4|U2|Add1~17\)) # (!\U4|U2|count2\(9) & ((\U4|U2|Add1~17\) # (GND)))
-- \U4|U2|Add1~19\ = CARRY((!\U4|U2|Add1~17\) # (!\U4|U2|count2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(9),
	datad => VCC,
	cin => \U4|U2|Add1~17\,
	combout => \U4|U2|Add1~18_combout\,
	cout => \U4|U2|Add1~19\);

-- Location: FF_X27_Y2_N29
\U4|U2|count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(10));

-- Location: LCCOMB_X27_Y2_N28
\U4|U2|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~20_combout\ = (\U4|U2|count2\(10) & (\U4|U2|Add1~19\ $ (GND))) # (!\U4|U2|count2\(10) & (!\U4|U2|Add1~19\ & VCC))
-- \U4|U2|Add1~21\ = CARRY((\U4|U2|count2\(10) & !\U4|U2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(10),
	datad => VCC,
	cin => \U4|U2|Add1~19\,
	combout => \U4|U2|Add1~20_combout\,
	cout => \U4|U2|Add1~21\);

-- Location: LCCOMB_X26_Y1_N4
\U4|U2|count2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~8_combout\ = (\U4|U2|Add1~44_combout\ & (((!\U4|U2|Equal1~4_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~44_combout\,
	datab => \U4|U2|Equal1~7_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Equal1~4_combout\,
	combout => \U4|U2|count2~8_combout\);

-- Location: FF_X26_Y1_N5
\U4|U2|count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(22));

-- Location: LCCOMB_X27_Y2_N30
\U4|U2|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~22_combout\ = (\U4|U2|count2\(11) & (!\U4|U2|Add1~21\)) # (!\U4|U2|count2\(11) & ((\U4|U2|Add1~21\) # (GND)))
-- \U4|U2|Add1~23\ = CARRY((!\U4|U2|Add1~21\) # (!\U4|U2|count2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(11),
	datad => VCC,
	cin => \U4|U2|Add1~21\,
	combout => \U4|U2|Add1~22_combout\,
	cout => \U4|U2|Add1~23\);

-- Location: LCCOMB_X27_Y1_N0
\U4|U2|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~24_combout\ = (\U4|U2|count2\(12) & (\U4|U2|Add1~23\ $ (GND))) # (!\U4|U2|count2\(12) & (!\U4|U2|Add1~23\ & VCC))
-- \U4|U2|Add1~25\ = CARRY((\U4|U2|count2\(12) & !\U4|U2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(12),
	datad => VCC,
	cin => \U4|U2|Add1~23\,
	combout => \U4|U2|Add1~24_combout\,
	cout => \U4|U2|Add1~25\);

-- Location: LCCOMB_X27_Y1_N30
\U4|U2|count2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~2_combout\ = (\U4|U2|Add1~24_combout\ & (((!\U4|U2|Equal1~4_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~24_combout\,
	datab => \U4|U2|Equal1~7_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Equal1~4_combout\,
	combout => \U4|U2|count2~2_combout\);

-- Location: FF_X27_Y1_N31
\U4|U2|count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(12));

-- Location: LCCOMB_X27_Y1_N2
\U4|U2|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~26_combout\ = (\U4|U2|count2\(13) & (!\U4|U2|Add1~25\)) # (!\U4|U2|count2\(13) & ((\U4|U2|Add1~25\) # (GND)))
-- \U4|U2|Add1~27\ = CARRY((!\U4|U2|Add1~25\) # (!\U4|U2|count2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(13),
	datad => VCC,
	cin => \U4|U2|Add1~25\,
	combout => \U4|U2|Add1~26_combout\,
	cout => \U4|U2|Add1~27\);

-- Location: LCCOMB_X27_Y1_N28
\U4|U2|count2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~3_combout\ = (\U4|U2|Add1~26_combout\ & (((!\U4|U2|Equal1~4_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~26_combout\,
	datab => \U4|U2|Equal1~7_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Equal1~4_combout\,
	combout => \U4|U2|count2~3_combout\);

-- Location: FF_X27_Y1_N29
\U4|U2|count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(13));

-- Location: LCCOMB_X27_Y1_N4
\U4|U2|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~28_combout\ = (\U4|U2|count2\(14) & (\U4|U2|Add1~27\ $ (GND))) # (!\U4|U2|count2\(14) & (!\U4|U2|Add1~27\ & VCC))
-- \U4|U2|Add1~29\ = CARRY((\U4|U2|count2\(14) & !\U4|U2|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(14),
	datad => VCC,
	cin => \U4|U2|Add1~27\,
	combout => \U4|U2|Add1~28_combout\,
	cout => \U4|U2|Add1~29\);

-- Location: LCCOMB_X26_Y1_N26
\U4|U2|count2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~4_combout\ = (\U4|U2|Add1~28_combout\ & (((!\U4|U2|Equal1~4_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~28_combout\,
	datab => \U4|U2|Equal1~7_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Equal1~4_combout\,
	combout => \U4|U2|count2~4_combout\);

-- Location: FF_X26_Y1_N27
\U4|U2|count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(14));

-- Location: LCCOMB_X27_Y1_N6
\U4|U2|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~30_combout\ = (\U4|U2|count2\(15) & (!\U4|U2|Add1~29\)) # (!\U4|U2|count2\(15) & ((\U4|U2|Add1~29\) # (GND)))
-- \U4|U2|Add1~31\ = CARRY((!\U4|U2|Add1~29\) # (!\U4|U2|count2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(15),
	datad => VCC,
	cin => \U4|U2|Add1~29\,
	combout => \U4|U2|Add1~30_combout\,
	cout => \U4|U2|Add1~31\);

-- Location: FF_X27_Y1_N27
\U4|U2|count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4|U2|Add1~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(15));

-- Location: LCCOMB_X27_Y1_N8
\U4|U2|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~32_combout\ = (\U4|U2|count2\(16) & (\U4|U2|Add1~31\ $ (GND))) # (!\U4|U2|count2\(16) & (!\U4|U2|Add1~31\ & VCC))
-- \U4|U2|Add1~33\ = CARRY((\U4|U2|count2\(16) & !\U4|U2|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(16),
	datad => VCC,
	cin => \U4|U2|Add1~31\,
	combout => \U4|U2|Add1~32_combout\,
	cout => \U4|U2|Add1~33\);

-- Location: LCCOMB_X26_Y1_N12
\U4|U2|count2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~5_combout\ = (\U4|U2|Add1~32_combout\ & (((!\U4|U2|Equal1~7_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Equal1~4_combout\,
	datab => \U4|U2|Equal1~5_combout\,
	datac => \U4|U2|Add1~32_combout\,
	datad => \U4|U2|Equal1~7_combout\,
	combout => \U4|U2|count2~5_combout\);

-- Location: FF_X26_Y1_N13
\U4|U2|count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(16));

-- Location: LCCOMB_X27_Y1_N10
\U4|U2|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~34_combout\ = (\U4|U2|count2\(17) & (!\U4|U2|Add1~33\)) # (!\U4|U2|count2\(17) & ((\U4|U2|Add1~33\) # (GND)))
-- \U4|U2|Add1~35\ = CARRY((!\U4|U2|Add1~33\) # (!\U4|U2|count2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(17),
	datad => VCC,
	cin => \U4|U2|Add1~33\,
	combout => \U4|U2|Add1~34_combout\,
	cout => \U4|U2|Add1~35\);

-- Location: FF_X27_Y1_N11
\U4|U2|count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(17));

-- Location: LCCOMB_X27_Y1_N12
\U4|U2|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~36_combout\ = (\U4|U2|count2\(18) & (\U4|U2|Add1~35\ $ (GND))) # (!\U4|U2|count2\(18) & (!\U4|U2|Add1~35\ & VCC))
-- \U4|U2|Add1~37\ = CARRY((\U4|U2|count2\(18) & !\U4|U2|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(18),
	datad => VCC,
	cin => \U4|U2|Add1~35\,
	combout => \U4|U2|Add1~36_combout\,
	cout => \U4|U2|Add1~37\);

-- Location: LCCOMB_X27_Y1_N14
\U4|U2|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~38_combout\ = (\U4|U2|count2\(19) & (!\U4|U2|Add1~37\)) # (!\U4|U2|count2\(19) & ((\U4|U2|Add1~37\) # (GND)))
-- \U4|U2|Add1~39\ = CARRY((!\U4|U2|Add1~37\) # (!\U4|U2|count2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(19),
	datad => VCC,
	cin => \U4|U2|Add1~37\,
	combout => \U4|U2|Add1~38_combout\,
	cout => \U4|U2|Add1~39\);

-- Location: LCCOMB_X26_Y1_N20
\U4|U2|count2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~7_combout\ = (\U4|U2|Add1~38_combout\ & (((!\U4|U2|Equal1~7_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Equal1~4_combout\,
	datab => \U4|U2|Add1~38_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Equal1~7_combout\,
	combout => \U4|U2|count2~7_combout\);

-- Location: FF_X26_Y1_N21
\U4|U2|count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(19));

-- Location: LCCOMB_X27_Y1_N16
\U4|U2|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~40_combout\ = (\U4|U2|count2\(20) & (\U4|U2|Add1~39\ $ (GND))) # (!\U4|U2|count2\(20) & (!\U4|U2|Add1~39\ & VCC))
-- \U4|U2|Add1~41\ = CARRY((\U4|U2|count2\(20) & !\U4|U2|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(20),
	datad => VCC,
	cin => \U4|U2|Add1~39\,
	combout => \U4|U2|Add1~40_combout\,
	cout => \U4|U2|Add1~41\);

-- Location: LCCOMB_X26_Y1_N14
\U4|U2|count2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~10_combout\ = (\U4|U2|Add1~40_combout\ & (((!\U4|U2|Equal1~5_combout\) # (!\U4|U2|Equal1~7_combout\)) # (!\U4|U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Equal1~4_combout\,
	datab => \U4|U2|Equal1~7_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Add1~40_combout\,
	combout => \U4|U2|count2~10_combout\);

-- Location: FF_X26_Y1_N15
\U4|U2|count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(20));

-- Location: LCCOMB_X27_Y1_N18
\U4|U2|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~42_combout\ = (\U4|U2|count2\(21) & (!\U4|U2|Add1~41\)) # (!\U4|U2|count2\(21) & ((\U4|U2|Add1~41\) # (GND)))
-- \U4|U2|Add1~43\ = CARRY((!\U4|U2|Add1~41\) # (!\U4|U2|count2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(21),
	datad => VCC,
	cin => \U4|U2|Add1~41\,
	combout => \U4|U2|Add1~42_combout\,
	cout => \U4|U2|Add1~43\);

-- Location: LCCOMB_X26_Y1_N10
\U4|U2|count2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~9_combout\ = (\U4|U2|Add1~42_combout\ & (((!\U4|U2|Equal1~5_combout\) # (!\U4|U2|Equal1~7_combout\)) # (!\U4|U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Equal1~4_combout\,
	datab => \U4|U2|Equal1~7_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Add1~42_combout\,
	combout => \U4|U2|count2~9_combout\);

-- Location: FF_X26_Y1_N11
\U4|U2|count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(21));

-- Location: LCCOMB_X27_Y1_N20
\U4|U2|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~44_combout\ = (\U4|U2|count2\(22) & (\U4|U2|Add1~43\ $ (GND))) # (!\U4|U2|count2\(22) & (!\U4|U2|Add1~43\ & VCC))
-- \U4|U2|Add1~45\ = CARRY((\U4|U2|count2\(22) & !\U4|U2|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(22),
	datad => VCC,
	cin => \U4|U2|Add1~43\,
	combout => \U4|U2|Add1~44_combout\,
	cout => \U4|U2|Add1~45\);

-- Location: FF_X27_Y1_N23
\U4|U2|count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(23));

-- Location: LCCOMB_X27_Y1_N22
\U4|U2|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~46_combout\ = (\U4|U2|count2\(23) & (!\U4|U2|Add1~45\)) # (!\U4|U2|count2\(23) & ((\U4|U2|Add1~45\) # (GND)))
-- \U4|U2|Add1~47\ = CARRY((!\U4|U2|Add1~45\) # (!\U4|U2|count2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(23),
	datad => VCC,
	cin => \U4|U2|Add1~45\,
	combout => \U4|U2|Add1~46_combout\,
	cout => \U4|U2|Add1~47\);

-- Location: LCCOMB_X26_Y1_N6
\U4|U2|Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Equal1~8_combout\ = (\U4|U2|Add1~42_combout\ & (\U4|U2|Add1~40_combout\ & (\U4|U2|Add1~44_combout\ & !\U4|U2|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~42_combout\,
	datab => \U4|U2|Add1~40_combout\,
	datac => \U4|U2|Add1~44_combout\,
	datad => \U4|U2|Add1~46_combout\,
	combout => \U4|U2|Equal1~8_combout\);

-- Location: LCCOMB_X26_Y1_N16
\U4|U2|count2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~11_combout\ = (\U4|U2|Add1~48_combout\ & (((!\U4|U2|Equal1~4_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Equal1~8_combout\,
	datab => \U4|U2|Add1~48_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Equal1~4_combout\,
	combout => \U4|U2|count2~11_combout\);

-- Location: FF_X26_Y1_N17
\U4|U2|count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(24));

-- Location: LCCOMB_X27_Y1_N24
\U4|U2|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Add1~48_combout\ = \U4|U2|count2\(24) $ (!\U4|U2|Add1~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(24),
	cin => \U4|U2|Add1~47\,
	combout => \U4|U2|Add1~48_combout\);

-- Location: LCCOMB_X26_Y1_N8
\U4|U2|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Equal1~6_combout\ = (\U4|U2|Add1~40_combout\ & \U4|U2|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|Add1~40_combout\,
	datad => \U4|U2|Add1~42_combout\,
	combout => \U4|U2|Equal1~6_combout\);

-- Location: LCCOMB_X26_Y1_N24
\U4|U2|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Equal1~7_combout\ = (\U4|U2|Add1~44_combout\ & (\U4|U2|Add1~48_combout\ & (\U4|U2|Equal1~6_combout\ & !\U4|U2|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~44_combout\,
	datab => \U4|U2|Add1~48_combout\,
	datac => \U4|U2|Equal1~6_combout\,
	datad => \U4|U2|Add1~46_combout\,
	combout => \U4|U2|Equal1~7_combout\);

-- Location: LCCOMB_X26_Y1_N18
\U4|U2|count2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~6_combout\ = (\U4|U2|Add1~36_combout\ & (((!\U4|U2|Equal1~7_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~36_combout\,
	datab => \U4|U2|Equal1~4_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Equal1~7_combout\,
	combout => \U4|U2|count2~6_combout\);

-- Location: FF_X26_Y1_N19
\U4|U2|count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(18));

-- Location: LCCOMB_X26_Y1_N22
\U4|U2|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Equal1~5_combout\ = (\U4|U2|Add1~36_combout\ & (\U4|U2|Add1~32_combout\ & (\U4|U2|Add1~38_combout\ & !\U4|U2|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~36_combout\,
	datab => \U4|U2|Add1~32_combout\,
	datac => \U4|U2|Add1~38_combout\,
	datad => \U4|U2|Add1~34_combout\,
	combout => \U4|U2|Equal1~5_combout\);

-- Location: LCCOMB_X26_Y1_N0
\U4|U2|count2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~1_combout\ = (\U4|U2|Add1~22_combout\ & (((!\U4|U2|Equal1~7_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~22_combout\,
	datab => \U4|U2|Equal1~4_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Equal1~7_combout\,
	combout => \U4|U2|count2~1_combout\);

-- Location: FF_X26_Y1_N1
\U4|U2|count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(11));

-- Location: LCCOMB_X27_Y2_N6
\U4|U2|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Equal1~2_combout\ = (!\U4|U2|Add1~18_combout\ & (!\U4|U2|Add1~20_combout\ & (!\U4|U2|Add1~16_combout\ & \U4|U2|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~18_combout\,
	datab => \U4|U2|Add1~20_combout\,
	datac => \U4|U2|Add1~16_combout\,
	datad => \U4|U2|Add1~22_combout\,
	combout => \U4|U2|Equal1~2_combout\);

-- Location: LCCOMB_X27_Y1_N26
\U4|U2|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Equal1~3_combout\ = (\U4|U2|Add1~26_combout\ & (\U4|U2|Add1~28_combout\ & (!\U4|U2|Add1~30_combout\ & \U4|U2|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Add1~26_combout\,
	datab => \U4|U2|Add1~28_combout\,
	datac => \U4|U2|Add1~30_combout\,
	datad => \U4|U2|Add1~24_combout\,
	combout => \U4|U2|Equal1~3_combout\);

-- Location: LCCOMB_X26_Y1_N30
\U4|U2|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|Equal1~4_combout\ = (\U4|U2|Equal1~1_combout\ & (\U4|U2|Equal1~0_combout\ & (\U4|U2|Equal1~2_combout\ & \U4|U2|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Equal1~1_combout\,
	datab => \U4|U2|Equal1~0_combout\,
	datac => \U4|U2|Equal1~2_combout\,
	datad => \U4|U2|Equal1~3_combout\,
	combout => \U4|U2|Equal1~4_combout\);

-- Location: LCCOMB_X27_Y2_N2
\U4|U2|count2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|count2~0_combout\ = (\U4|U2|Add1~12_combout\ & (((!\U4|U2|Equal1~7_combout\) # (!\U4|U2|Equal1~5_combout\)) # (!\U4|U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Equal1~4_combout\,
	datab => \U4|U2|Add1~12_combout\,
	datac => \U4|U2|Equal1~5_combout\,
	datad => \U4|U2|Equal1~7_combout\,
	combout => \U4|U2|count2~0_combout\);

-- Location: FF_X27_Y2_N3
\U4|U2|count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|count2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|count2\(6));

-- Location: LCCOMB_X28_Y2_N16
\U6|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~8_combout\ = (\U4|U2|count2\(5) & (\U6|Add1~7\ $ (GND))) # (!\U4|U2|count2\(5) & (!\U6|Add1~7\ & VCC))
-- \U6|Add1~9\ = CARRY((\U4|U2|count2\(5) & !\U6|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(5),
	datad => VCC,
	cin => \U6|Add1~7\,
	combout => \U6|Add1~8_combout\,
	cout => \U6|Add1~9\);

-- Location: LCCOMB_X28_Y2_N18
\U6|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~10_combout\ = (\U4|U2|count2\(6) & (!\U6|Add1~9\)) # (!\U4|U2|count2\(6) & ((\U6|Add1~9\) # (GND)))
-- \U6|Add1~11\ = CARRY((!\U6|Add1~9\) # (!\U4|U2|count2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(6),
	datad => VCC,
	cin => \U6|Add1~9\,
	combout => \U6|Add1~10_combout\,
	cout => \U6|Add1~11\);

-- Location: LCCOMB_X28_Y2_N20
\U6|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~12_combout\ = (\U4|U2|count2\(7) & (\U6|Add1~11\ $ (GND))) # (!\U4|U2|count2\(7) & (!\U6|Add1~11\ & VCC))
-- \U6|Add1~13\ = CARRY((\U4|U2|count2\(7) & !\U6|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(7),
	datad => VCC,
	cin => \U6|Add1~11\,
	combout => \U6|Add1~12_combout\,
	cout => \U6|Add1~13\);

-- Location: LCCOMB_X29_Y2_N4
\U6|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~1_combout\ = (!\U6|Add1~6_combout\ & (\U6|Add1~10_combout\ & (!\U6|Add1~8_combout\ & !\U6|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~6_combout\,
	datab => \U6|Add1~10_combout\,
	datac => \U6|Add1~8_combout\,
	datad => \U6|Add1~12_combout\,
	combout => \U6|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y2_N22
\U6|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~14_combout\ = (\U4|U2|count2\(8) & (!\U6|Add1~13\)) # (!\U4|U2|count2\(8) & ((\U6|Add1~13\) # (GND)))
-- \U6|Add1~15\ = CARRY((!\U6|Add1~13\) # (!\U4|U2|count2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(8),
	datad => VCC,
	cin => \U6|Add1~13\,
	combout => \U6|Add1~14_combout\,
	cout => \U6|Add1~15\);

-- Location: LCCOMB_X28_Y2_N24
\U6|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~16_combout\ = (\U4|U2|count2\(9) & (\U6|Add1~15\ $ (GND))) # (!\U4|U2|count2\(9) & (!\U6|Add1~15\ & VCC))
-- \U6|Add1~17\ = CARRY((\U4|U2|count2\(9) & !\U6|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(9),
	datad => VCC,
	cin => \U6|Add1~15\,
	combout => \U6|Add1~16_combout\,
	cout => \U6|Add1~17\);

-- Location: LCCOMB_X28_Y2_N26
\U6|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~18_combout\ = (\U4|U2|count2\(10) & (!\U6|Add1~17\)) # (!\U4|U2|count2\(10) & ((\U6|Add1~17\) # (GND)))
-- \U6|Add1~19\ = CARRY((!\U6|Add1~17\) # (!\U4|U2|count2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(10),
	datad => VCC,
	cin => \U6|Add1~17\,
	combout => \U6|Add1~18_combout\,
	cout => \U6|Add1~19\);

-- Location: LCCOMB_X28_Y2_N28
\U6|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~20_combout\ = (\U4|U2|count2\(11) & (\U6|Add1~19\ $ (GND))) # (!\U4|U2|count2\(11) & (!\U6|Add1~19\ & VCC))
-- \U6|Add1~21\ = CARRY((\U4|U2|count2\(11) & !\U6|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(11),
	datad => VCC,
	cin => \U6|Add1~19\,
	combout => \U6|Add1~20_combout\,
	cout => \U6|Add1~21\);

-- Location: LCCOMB_X28_Y2_N0
\U6|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~2_combout\ = (!\U6|Add1~18_combout\ & (!\U6|Add1~16_combout\ & (!\U6|Add1~14_combout\ & \U6|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~18_combout\,
	datab => \U6|Add1~16_combout\,
	datac => \U6|Add1~14_combout\,
	datad => \U6|Add1~20_combout\,
	combout => \U6|Equal1~2_combout\);

-- Location: LCCOMB_X27_Y2_N4
\U6|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~0_combout\ = (!\U6|Add1~0_combout\ & (!\U6|Add1~2_combout\ & (\U4|U2|count2\(0) & !\U6|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~0_combout\,
	datab => \U6|Add1~2_combout\,
	datac => \U4|U2|count2\(0),
	datad => \U6|Add1~4_combout\,
	combout => \U6|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y2_N30
\U6|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~22_combout\ = (\U4|U2|count2\(12) & (!\U6|Add1~21\)) # (!\U4|U2|count2\(12) & ((\U6|Add1~21\) # (GND)))
-- \U6|Add1~23\ = CARRY((!\U6|Add1~21\) # (!\U4|U2|count2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(12),
	datad => VCC,
	cin => \U6|Add1~21\,
	combout => \U6|Add1~22_combout\,
	cout => \U6|Add1~23\);

-- Location: LCCOMB_X28_Y1_N0
\U6|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~24_combout\ = (\U4|U2|count2\(13) & (\U6|Add1~23\ $ (GND))) # (!\U4|U2|count2\(13) & (!\U6|Add1~23\ & VCC))
-- \U6|Add1~25\ = CARRY((\U4|U2|count2\(13) & !\U6|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(13),
	datad => VCC,
	cin => \U6|Add1~23\,
	combout => \U6|Add1~24_combout\,
	cout => \U6|Add1~25\);

-- Location: LCCOMB_X28_Y1_N2
\U6|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~26_combout\ = (\U4|U2|count2\(14) & (!\U6|Add1~25\)) # (!\U4|U2|count2\(14) & ((\U6|Add1~25\) # (GND)))
-- \U6|Add1~27\ = CARRY((!\U6|Add1~25\) # (!\U4|U2|count2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(14),
	datad => VCC,
	cin => \U6|Add1~25\,
	combout => \U6|Add1~26_combout\,
	cout => \U6|Add1~27\);

-- Location: LCCOMB_X28_Y1_N4
\U6|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~28_combout\ = (\U4|U2|count2\(15) & (\U6|Add1~27\ $ (GND))) # (!\U4|U2|count2\(15) & (!\U6|Add1~27\ & VCC))
-- \U6|Add1~29\ = CARRY((\U4|U2|count2\(15) & !\U6|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(15),
	datad => VCC,
	cin => \U6|Add1~27\,
	combout => \U6|Add1~28_combout\,
	cout => \U6|Add1~29\);

-- Location: LCCOMB_X28_Y1_N28
\U6|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~3_combout\ = (\U6|Add1~22_combout\ & (\U6|Add1~24_combout\ & (!\U6|Add1~28_combout\ & \U6|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~22_combout\,
	datab => \U6|Add1~24_combout\,
	datac => \U6|Add1~28_combout\,
	datad => \U6|Add1~26_combout\,
	combout => \U6|Equal1~3_combout\);

-- Location: LCCOMB_X28_Y2_N4
\U6|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~4_combout\ = (\U6|Equal1~1_combout\ & (\U6|Equal1~2_combout\ & (\U6|Equal1~0_combout\ & \U6|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Equal1~1_combout\,
	datab => \U6|Equal1~2_combout\,
	datac => \U6|Equal1~0_combout\,
	datad => \U6|Equal1~3_combout\,
	combout => \U6|Equal1~4_combout\);

-- Location: LCCOMB_X28_Y1_N6
\U6|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~30_combout\ = (\U4|U2|count2\(16) & (!\U6|Add1~29\)) # (!\U4|U2|count2\(16) & ((\U6|Add1~29\) # (GND)))
-- \U6|Add1~31\ = CARRY((!\U6|Add1~29\) # (!\U4|U2|count2\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(16),
	datad => VCC,
	cin => \U6|Add1~29\,
	combout => \U6|Add1~30_combout\,
	cout => \U6|Add1~31\);

-- Location: LCCOMB_X28_Y1_N8
\U6|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~32_combout\ = (\U4|U2|count2\(17) & (\U6|Add1~31\ $ (GND))) # (!\U4|U2|count2\(17) & (!\U6|Add1~31\ & VCC))
-- \U6|Add1~33\ = CARRY((\U4|U2|count2\(17) & !\U6|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(17),
	datad => VCC,
	cin => \U6|Add1~31\,
	combout => \U6|Add1~32_combout\,
	cout => \U6|Add1~33\);

-- Location: LCCOMB_X28_Y1_N10
\U6|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~34_combout\ = (\U4|U2|count2\(18) & (!\U6|Add1~33\)) # (!\U4|U2|count2\(18) & ((\U6|Add1~33\) # (GND)))
-- \U6|Add1~35\ = CARRY((!\U6|Add1~33\) # (!\U4|U2|count2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(18),
	datad => VCC,
	cin => \U6|Add1~33\,
	combout => \U6|Add1~34_combout\,
	cout => \U6|Add1~35\);

-- Location: LCCOMB_X28_Y1_N12
\U6|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~36_combout\ = (\U4|U2|count2\(19) & (\U6|Add1~35\ $ (GND))) # (!\U4|U2|count2\(19) & (!\U6|Add1~35\ & VCC))
-- \U6|Add1~37\ = CARRY((\U4|U2|count2\(19) & !\U6|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(19),
	datad => VCC,
	cin => \U6|Add1~35\,
	combout => \U6|Add1~36_combout\,
	cout => \U6|Add1~37\);

-- Location: LCCOMB_X28_Y1_N26
\U6|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~5_combout\ = (\U6|Add1~30_combout\ & (!\U6|Add1~32_combout\ & (\U6|Add1~34_combout\ & \U6|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~30_combout\,
	datab => \U6|Add1~32_combout\,
	datac => \U6|Add1~34_combout\,
	datad => \U6|Add1~36_combout\,
	combout => \U6|Equal1~5_combout\);

-- Location: LCCOMB_X28_Y1_N14
\U6|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~38_combout\ = (\U4|U2|count2\(20) & (!\U6|Add1~37\)) # (!\U4|U2|count2\(20) & ((\U6|Add1~37\) # (GND)))
-- \U6|Add1~39\ = CARRY((!\U6|Add1~37\) # (!\U4|U2|count2\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(20),
	datad => VCC,
	cin => \U6|Add1~37\,
	combout => \U6|Add1~38_combout\,
	cout => \U6|Add1~39\);

-- Location: LCCOMB_X28_Y1_N16
\U6|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~40_combout\ = (\U4|U2|count2\(21) & (\U6|Add1~39\ $ (GND))) # (!\U4|U2|count2\(21) & (!\U6|Add1~39\ & VCC))
-- \U6|Add1~41\ = CARRY((\U4|U2|count2\(21) & !\U6|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(21),
	datad => VCC,
	cin => \U6|Add1~39\,
	combout => \U6|Add1~40_combout\,
	cout => \U6|Add1~41\);

-- Location: LCCOMB_X28_Y1_N18
\U6|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~42_combout\ = (\U4|U2|count2\(22) & (!\U6|Add1~41\)) # (!\U4|U2|count2\(22) & ((\U6|Add1~41\) # (GND)))
-- \U6|Add1~43\ = CARRY((!\U6|Add1~41\) # (!\U4|U2|count2\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|count2\(22),
	datad => VCC,
	cin => \U6|Add1~41\,
	combout => \U6|Add1~42_combout\,
	cout => \U6|Add1~43\);

-- Location: LCCOMB_X28_Y1_N20
\U6|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~44_combout\ = (\U4|U2|count2\(23) & (\U6|Add1~43\ $ (GND))) # (!\U4|U2|count2\(23) & (!\U6|Add1~43\ & VCC))
-- \U6|Add1~45\ = CARRY((\U4|U2|count2\(23) & !\U6|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U2|count2\(23),
	datad => VCC,
	cin => \U6|Add1~43\,
	combout => \U6|Add1~44_combout\,
	cout => \U6|Add1~45\);

-- Location: LCCOMB_X28_Y1_N22
\U6|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~46_combout\ = \U6|Add1~45\ $ (\U4|U2|count2\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U4|U2|count2\(24),
	cin => \U6|Add1~45\,
	combout => \U6|Add1~46_combout\);

-- Location: LCCOMB_X28_Y1_N24
\U6|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~6_combout\ = (\U6|Add1~38_combout\ & \U6|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|Add1~38_combout\,
	datad => \U6|Add1~40_combout\,
	combout => \U6|Equal1~6_combout\);

-- Location: LCCOMB_X28_Y1_N30
\U6|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~7_combout\ = (\U6|Add1~46_combout\ & (\U6|Add1~42_combout\ & (!\U6|Add1~44_combout\ & \U6|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~46_combout\,
	datab => \U6|Add1~42_combout\,
	datac => \U6|Add1~44_combout\,
	datad => \U6|Equal1~6_combout\,
	combout => \U6|Equal1~7_combout\);

-- Location: LCCOMB_X28_Y2_N2
\U6|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|out2~0_combout\ = \U6|out2~q\ $ (((\U6|Equal1~4_combout\ & (\U6|Equal1~5_combout\ & \U6|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|out2~q\,
	datab => \U6|Equal1~4_combout\,
	datac => \U6|Equal1~5_combout\,
	datad => \U6|Equal1~7_combout\,
	combout => \U6|out2~0_combout\);

-- Location: LCCOMB_X28_Y2_N6
\U6|out2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|out2~feeder_combout\ = \U6|out2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|out2~0_combout\,
	combout => \U6|out2~feeder_combout\);

-- Location: FF_X28_Y2_N7
\U6|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U6|out2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|out2~q\);

-- Location: CLKCTRL_G17
\U6|out2~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U6|out2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U6|out2~clkctrl_outclk\);

-- Location: IOIBUF_X23_Y0_N8
\sen1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sen1,
	o => \sen1~input_o\);

-- Location: FF_X19_Y15_N1
\U3|U6|sensorAprev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sen1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U6|sensorAprev~q\);

-- Location: IOIBUF_X23_Y0_N15
\sen2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sen2,
	o => \sen2~input_o\);

-- Location: FF_X19_Y15_N5
\U3|U6|sensorBprev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sen2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U6|sensorBprev~q\);

-- Location: LCCOMB_X19_Y15_N8
\U3|U6|primeroB~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|primeroB~1_combout\ = (\sen1~input_o\ & ((\U3|U6|sensorAprev~q\) # ((!\U3|U6|primeroB~q\)))) # (!\sen1~input_o\ & (((\sen2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sen1~input_o\,
	datab => \U3|U6|sensorAprev~q\,
	datac => \sen2~input_o\,
	datad => \U3|U6|primeroB~q\,
	combout => \U3|U6|primeroB~1_combout\);

-- Location: LCCOMB_X19_Y15_N18
\U3|U6|primeroB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|primeroB~0_combout\ = (\sen2~input_o\ & ((\U3|U6|sensorBprev~q\ & ((\U3|U6|primeroB~q\))) # (!\U3|U6|sensorBprev~q\ & (!\U3|U6|primeroA~q\)))) # (!\sen2~input_o\ & (((\U3|U6|primeroB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U6|primeroA~q\,
	datab => \sen2~input_o\,
	datac => \U3|U6|sensorBprev~q\,
	datad => \U3|U6|primeroB~q\,
	combout => \U3|U6|primeroB~0_combout\);

-- Location: LCCOMB_X19_Y15_N28
\U3|U6|primeroB~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|primeroB~2_combout\ = (\U3|U6|primeroB~1_combout\ & \U3|U6|primeroB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U6|primeroB~1_combout\,
	datad => \U3|U6|primeroB~0_combout\,
	combout => \U3|U6|primeroB~2_combout\);

-- Location: FF_X19_Y15_N29
\U3|U6|primeroB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|U6|primeroB~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U6|primeroB~q\);

-- Location: LCCOMB_X19_Y15_N30
\U3|U6|primeroA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|primeroA~0_combout\ = (\sen1~input_o\ & ((\U3|U6|sensorAprev~q\ & (\U3|U6|primeroA~q\)) # (!\U3|U6|sensorAprev~q\ & ((!\U3|U6|primeroB~q\))))) # (!\sen1~input_o\ & (((\U3|U6|primeroA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sen1~input_o\,
	datab => \U3|U6|sensorAprev~q\,
	datac => \U3|U6|primeroA~q\,
	datad => \U3|U6|primeroB~q\,
	combout => \U3|U6|primeroA~0_combout\);

-- Location: LCCOMB_X19_Y15_N2
\U3|U6|primeroA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|primeroA~1_combout\ = (\U3|U6|primeroA~0_combout\ & (!\U3|U6|process_0~0_combout\ & ((\sen1~input_o\) # (\sen2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sen1~input_o\,
	datab => \sen2~input_o\,
	datac => \U3|U6|primeroA~0_combout\,
	datad => \U3|U6|process_0~0_combout\,
	combout => \U3|U6|primeroA~1_combout\);

-- Location: FF_X19_Y15_N3
\U3|U6|primeroA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|U6|primeroA~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U6|primeroA~q\);

-- Location: LCCOMB_X19_Y15_N6
\U3|U6|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|process_0~0_combout\ = (\sen2~input_o\ & (!\U3|U6|sensorBprev~q\ & \U3|U6|primeroA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sen2~input_o\,
	datac => \U3|U6|sensorBprev~q\,
	datad => \U3|U6|primeroA~q\,
	combout => \U3|U6|process_0~0_combout\);

-- Location: LCCOMB_X20_Y15_N22
\U3|U6|personaSale~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|personaSale~0_combout\ = (!\U3|U6|sensorAprev~q\ & (\sen1~input_o\ & (!\U3|U6|process_0~0_combout\ & \U3|U6|primeroB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U6|sensorAprev~q\,
	datab => \sen1~input_o\,
	datac => \U3|U6|process_0~0_combout\,
	datad => \U3|U6|primeroB~q\,
	combout => \U3|U6|personaSale~0_combout\);

-- Location: FF_X20_Y15_N23
\U3|U6|personaSale\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|U6|personaSale~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U6|personaSale~q\);

-- Location: FF_X20_Y15_N17
\U3|U6|personaEntra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U3|U6|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U6|personaEntra~q\);

-- Location: LCCOMB_X20_Y15_N28
\U3|U7|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U7|process_0~0_combout\ = (!\U3|U6|personaSale~q\ & \U3|U6|personaEntra~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U6|personaSale~q\,
	datad => \U3|U6|personaEntra~q\,
	combout => \U3|U7|process_0~0_combout\);

-- Location: LCCOMB_X20_Y15_N4
\U3|U7|cnt[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U7|cnt[2]~3_combout\ = (\U3|U7|cnt\(1) & (\U3|U6|personaEntra~q\ & (!\U3|U6|personaSale~q\ & \U3|U7|cnt\(0)))) # (!\U3|U7|cnt\(1) & (!\U3|U7|cnt\(0) & ((\U3|U6|personaSale~q\) # (!\U3|U6|personaEntra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U7|cnt\(1),
	datab => \U3|U6|personaEntra~q\,
	datac => \U3|U6|personaSale~q\,
	datad => \U3|U7|cnt\(0),
	combout => \U3|U7|cnt[2]~3_combout\);

-- Location: LCCOMB_X20_Y15_N10
\U3|U7|cnt[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U7|cnt[3]~0_combout\ = (\U3|U6|personaEntra~q\ & (\U3|U6|personaSale~q\)) # (!\U3|U6|personaEntra~q\ & ((!\U3|U7|LessThan0~0_combout\) # (!\U3|U6|personaSale~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U6|personaEntra~q\,
	datac => \U3|U6|personaSale~q\,
	datad => \U3|U7|LessThan0~0_combout\,
	combout => \U3|U7|cnt[3]~0_combout\);

-- Location: LCCOMB_X20_Y15_N14
\U3|U7|cnt[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U7|cnt[2]~4_combout\ = \U3|U7|cnt\(2) $ (((\U3|U7|cnt[2]~3_combout\ & !\U3|U7|cnt[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U7|cnt[2]~3_combout\,
	datac => \U3|U7|cnt\(2),
	datad => \U3|U7|cnt[3]~0_combout\,
	combout => \U3|U7|cnt[2]~4_combout\);

-- Location: FF_X20_Y15_N15
\U3|U7|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|U7|cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U7|cnt\(2));

-- Location: LCCOMB_X20_Y15_N18
\U3|U7|cnt[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U7|cnt[3]~1_combout\ = (\U3|U7|cnt\(1) & (\U3|U7|cnt\(2) & (\U3|U7|cnt\(0) & \U3|U7|process_0~0_combout\))) # (!\U3|U7|cnt\(1) & (!\U3|U7|cnt\(2) & (!\U3|U7|cnt\(0) & !\U3|U7|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U7|cnt\(1),
	datab => \U3|U7|cnt\(2),
	datac => \U3|U7|cnt\(0),
	datad => \U3|U7|process_0~0_combout\,
	combout => \U3|U7|cnt[3]~1_combout\);

-- Location: LCCOMB_X20_Y15_N8
\U3|U7|cnt[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U7|cnt[3]~2_combout\ = \U3|U7|cnt\(3) $ (((\U3|U7|cnt[3]~1_combout\ & !\U3|U7|cnt[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U7|cnt[3]~1_combout\,
	datac => \U3|U7|cnt\(3),
	datad => \U3|U7|cnt[3]~0_combout\,
	combout => \U3|U7|cnt[3]~2_combout\);

-- Location: FF_X20_Y15_N9
\U3|U7|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|U7|cnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U7|cnt\(3));

-- Location: LCCOMB_X20_Y15_N24
\U3|U7|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U7|LessThan0~0_combout\ = (\U3|U7|cnt\(1)) # ((\U3|U7|cnt\(2)) # ((\U3|U7|cnt\(3)) # (\U3|U7|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U7|cnt\(1),
	datab => \U3|U7|cnt\(2),
	datac => \U3|U7|cnt\(3),
	datad => \U3|U7|cnt\(0),
	combout => \U3|U7|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y15_N12
\U3|U7|cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U7|cnt~5_combout\ = (\U3|U6|personaSale~q\ & ((\U3|U7|cnt\(0) & ((\U3|U6|personaEntra~q\))) # (!\U3|U7|cnt\(0) & (\U3|U7|LessThan0~0_combout\ & !\U3|U6|personaEntra~q\)))) # (!\U3|U6|personaSale~q\ & ((\U3|U7|cnt\(0) $ (\U3|U6|personaEntra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U6|personaSale~q\,
	datab => \U3|U7|LessThan0~0_combout\,
	datac => \U3|U7|cnt\(0),
	datad => \U3|U6|personaEntra~q\,
	combout => \U3|U7|cnt~5_combout\);

-- Location: FF_X20_Y15_N13
\U3|U7|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|U7|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U7|cnt\(0));

-- Location: LCCOMB_X20_Y15_N6
\U3|U7|cnt[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U7|cnt[1]~6_combout\ = \U3|U7|cnt\(1) $ (((!\U3|U7|cnt[3]~0_combout\ & (\U3|U7|process_0~0_combout\ $ (!\U3|U7|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U7|process_0~0_combout\,
	datab => \U3|U7|cnt\(0),
	datac => \U3|U7|cnt\(1),
	datad => \U3|U7|cnt[3]~0_combout\,
	combout => \U3|U7|cnt[1]~6_combout\);

-- Location: FF_X20_Y15_N7
\U3|U7|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|U7|cnt[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U7|cnt\(1));

-- Location: LCCOMB_X20_Y15_N0
\U3|U8|AmayB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U8|AmayB~0_combout\ = (\U3|U7|cnt\(3) & ((\U3|U7|cnt\(2)) # ((\U3|U7|cnt\(1) & \U3|U7|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U7|cnt\(1),
	datab => \U3|U7|cnt\(2),
	datac => \U3|U7|cnt\(0),
	datad => \U3|U7|cnt\(3),
	combout => \U3|U8|AmayB~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\PB[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(3),
	o => \PB[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\PD[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(3),
	o => \PD[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\PS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(3),
	o => \PS[3]~input_o\);

-- Location: LCCOMB_X8_Y3_N12
\U1|U1|code~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|code~0_combout\ = (!\PB[3]~input_o\ & (!\PD[3]~input_o\ & !\PS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[3]~input_o\,
	datac => \PD[3]~input_o\,
	datad => \PS[3]~input_o\,
	combout => \U1|U1|code~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\PD[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(4),
	o => \PD[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\PB[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(4),
	o => \PB[4]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\PS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(4),
	o => \PS[4]~input_o\);

-- Location: LCCOMB_X12_Y12_N2
\U1|U1|code~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|code~5_combout\ = (!\PD[4]~input_o\ & (!\PB[4]~input_o\ & !\PS[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PD[4]~input_o\,
	datac => \PB[4]~input_o\,
	datad => \PS[4]~input_o\,
	combout => \U1|U1|code~5_combout\);

-- Location: IOIBUF_X1_Y0_N22
\PB[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(2),
	o => \PB[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\PD[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(2),
	o => \PD[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\PS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(2),
	o => \PS[2]~input_o\);

-- Location: LCCOMB_X7_Y8_N12
\U1|U1|code~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|code~4_combout\ = (!\PB[2]~input_o\ & (!\PD[2]~input_o\ & !\PS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[2]~input_o\,
	datac => \PD[2]~input_o\,
	datad => \PS[2]~input_o\,
	combout => \U1|U1|code~4_combout\);

-- Location: IOIBUF_X19_Y0_N15
\PS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(1),
	o => \PS[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\PB[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(1),
	o => \PB[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\PD[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(1),
	o => \PD[1]~input_o\);

-- Location: LCCOMB_X19_Y1_N16
\U1|U1|code~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|code~2_combout\ = (!\PS[1]~input_o\ & (!\PB[1]~input_o\ & !\PD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[1]~input_o\,
	datac => \PB[1]~input_o\,
	datad => \PD[1]~input_o\,
	combout => \U1|U1|code~2_combout\);

-- Location: LCCOMB_X12_Y12_N6
\U1|U1|code~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|code~7_combout\ = (\U1|U1|code~0_combout\ & (\U1|U1|code~5_combout\ & ((!\U1|U1|code~2_combout\) # (!\U1|U1|code~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|code~0_combout\,
	datab => \U1|U1|code~5_combout\,
	datac => \U1|U1|code~4_combout\,
	datad => \U1|U1|code~2_combout\,
	combout => \U1|U1|code~7_combout\);

-- Location: LCCOMB_X12_Y12_N4
\U1|U1|code~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|code~1_combout\ = ((\PD[4]~input_o\) # ((\PB[4]~input_o\) # (\PS[4]~input_o\))) # (!\U1|U1|code~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|code~0_combout\,
	datab => \PD[4]~input_o\,
	datac => \PB[4]~input_o\,
	datad => \PS[4]~input_o\,
	combout => \U1|U1|code~1_combout\);

-- Location: LCCOMB_X16_Y16_N8
\U1|U2|reg2[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|reg2[2]~0_combout\ = (!\U2|reset1~q\ & \U2|reset2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|reset1~q\,
	datad => \U2|reset2~q\,
	combout => \U1|U2|reg2[2]~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\PB[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(0),
	o => \PB[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\PS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(0),
	o => \PS[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\PD[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(0),
	o => \PD[0]~input_o\);

-- Location: LCCOMB_X19_Y1_N6
\U1|U1|code~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|code~3_combout\ = (\U1|U1|code~2_combout\ & ((\PB[0]~input_o\) # ((\PS[0]~input_o\) # (\PD[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[0]~input_o\,
	datab => \U1|U1|code~2_combout\,
	datac => \PS[0]~input_o\,
	datad => \PD[0]~input_o\,
	combout => \U1|U1|code~3_combout\);

-- Location: LCCOMB_X12_Y12_N16
\U1|U1|code~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|code~6_combout\ = ((\U1|U1|code~0_combout\ & ((\U1|U1|code~3_combout\) # (!\U1|U1|code~4_combout\)))) # (!\U1|U1|code~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|code~0_combout\,
	datab => \U1|U1|code~5_combout\,
	datac => \U1|U1|code~4_combout\,
	datad => \U1|U1|code~3_combout\,
	combout => \U1|U1|code~6_combout\);

-- Location: FF_X14_Y16_N1
\U1|U2|datosPrev[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U1|code~1_combout\,
	sload => VCC,
	ena => \U1|U2|datosPrev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|datosPrev\(2));

-- Location: FF_X14_Y16_N7
\U1|U2|datosPrev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U1|code~6_combout\,
	sload => VCC,
	ena => \U1|U2|datosPrev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|datosPrev\(0));

-- Location: LCCOMB_X14_Y16_N0
\U1|U2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Equal0~0_combout\ = (\U1|U1|code~6_combout\ & (\U1|U2|datosPrev\(0) & (\U1|U1|code~1_combout\ $ (!\U1|U2|datosPrev\(2))))) # (!\U1|U1|code~6_combout\ & (!\U1|U2|datosPrev\(0) & (\U1|U1|code~1_combout\ $ (!\U1|U2|datosPrev\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|code~6_combout\,
	datab => \U1|U1|code~1_combout\,
	datac => \U1|U2|datosPrev\(2),
	datad => \U1|U2|datosPrev\(0),
	combout => \U1|U2|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y16_N8
\U1|U2|primero~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|primero~0_combout\ = (\U1|U2|primero~q\) # ((!\U2|reset2~q\ & ((\U1|U2|Equal0~1_combout\) # (!\U1|U2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|reset2~q\,
	datab => \U1|U2|Equal0~1_combout\,
	datac => \U1|U2|primero~q\,
	datad => \U1|U2|Equal0~0_combout\,
	combout => \U1|U2|primero~0_combout\);

-- Location: FF_X17_Y16_N9
\U1|U2|primero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|primero~0_combout\,
	clrn => \U2|ALT_INV_reset1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|primero~q\);

-- Location: LCCOMB_X16_Y16_N10
\U1|U2|reg2[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|reg2[2]~1_combout\ = (\U1|U2|primero~q\ & (!\U2|reset1~q\ & ((\U1|U2|Equal0~1_combout\) # (!\U1|U2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|primero~q\,
	datab => \U2|reset1~q\,
	datac => \U1|U2|Equal0~1_combout\,
	datad => \U1|U2|Equal0~0_combout\,
	combout => \U1|U2|reg2[2]~1_combout\);

-- Location: FF_X16_Y16_N1
\U1|U2|reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U1|code~1_combout\,
	clrn => \U1|U2|ALT_INV_reg2[2]~0_combout\,
	sload => VCC,
	ena => \U1|U2|reg2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|reg2\(2));

-- Location: FF_X16_Y16_N3
\U1|U2|reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U1|code~7_combout\,
	clrn => \U1|U2|ALT_INV_reg2[2]~0_combout\,
	sload => VCC,
	ena => \U1|U2|reg2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|reg2\(1));

-- Location: FF_X16_Y16_N13
\U1|U2|reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U1|code~6_combout\,
	clrn => \U1|U2|ALT_INV_reg2[2]~0_combout\,
	sload => VCC,
	ena => \U1|U2|reg2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|reg2\(0));

-- Location: LCCOMB_X17_Y16_N2
\U2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = (\U2|piso\(0) & (!\U1|U2|reg2\(0) & (\U2|piso\(1) $ (!\U1|U2|reg2\(1))))) # (!\U2|piso\(0) & (\U1|U2|reg2\(0) & (\U2|piso\(1) $ (!\U1|U2|reg2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(0),
	datab => \U2|piso\(1),
	datac => \U1|U2|reg2\(1),
	datad => \U1|U2|reg2\(0),
	combout => \U2|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y16_N12
\U2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~1_combout\ = (\U2|Equal1~0_combout\ & (\U1|U2|reg2\(2) $ (!\U2|piso\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|reg2\(2),
	datac => \U2|piso\(2),
	datad => \U2|Equal1~0_combout\,
	combout => \U2|Equal1~1_combout\);

-- Location: FF_X16_Y16_N7
\U2|reset2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \U2|Equal1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|reset2~q\);

-- Location: LCCOMB_X14_Y16_N2
\U1|U2|datosPrev[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|datosPrev[0]~0_combout\ = (!\U2|reset1~q\ & !\U2|reset2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|reset1~q\,
	datad => \U2|reset2~q\,
	combout => \U1|U2|datosPrev[0]~0_combout\);

-- Location: FF_X14_Y16_N31
\U1|U2|datosPrev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U1|code~7_combout\,
	sload => VCC,
	ena => \U1|U2|datosPrev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|datosPrev\(1));

-- Location: LCCOMB_X14_Y16_N30
\U1|U2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Equal0~1_combout\ = \U1|U2|datosPrev\(1) $ (((!\U1|U1|code~1_combout\ & ((!\U1|U1|code~2_combout\) # (!\U1|U1|code~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|code~4_combout\,
	datab => \U1|U1|code~1_combout\,
	datac => \U1|U2|datosPrev\(1),
	datad => \U1|U1|code~2_combout\,
	combout => \U1|U2|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y16_N24
\U1|U2|reg1[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|reg1[2]~0_combout\ = (!\U1|U2|primero~q\ & (!\U2|reset2~q\ & ((\U1|U2|Equal0~1_combout\) # (!\U1|U2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|Equal0~1_combout\,
	datab => \U1|U2|primero~q\,
	datac => \U2|reset2~q\,
	datad => \U1|U2|Equal0~0_combout\,
	combout => \U1|U2|reg1[2]~0_combout\);

-- Location: FF_X14_Y16_N29
\U1|U2|reg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U1|code~1_combout\,
	clrn => \U2|ALT_INV_reset1~q\,
	sload => VCC,
	ena => \U1|U2|reg1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|reg1\(2));

-- Location: FF_X14_Y16_N5
\U1|U2|reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U1|code~6_combout\,
	clrn => \U2|ALT_INV_reset1~q\,
	sload => VCC,
	ena => \U1|U2|reg1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|reg1\(0));

-- Location: LCCOMB_X14_Y16_N26
\U2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = (\U2|piso\(0) & (!\U1|U2|reg1\(0) & (\U2|piso\(1) $ (!\U1|U2|reg1\(1))))) # (!\U2|piso\(0) & (\U1|U2|reg1\(0) & (\U2|piso\(1) $ (!\U1|U2|reg1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(0),
	datab => \U2|piso\(1),
	datac => \U1|U2|reg1\(1),
	datad => \U1|U2|reg1\(0),
	combout => \U2|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y16_N4
\U2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~1_combout\ = (\U2|Equal0~0_combout\ & (\U1|U2|reg1\(2) $ (!\U2|piso\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|reg1\(2),
	datac => \U2|piso\(2),
	datad => \U2|Equal0~0_combout\,
	combout => \U2|Equal0~1_combout\);

-- Location: FF_X16_Y16_N5
\U2|reset1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|reset1~q\);

-- Location: FF_X14_Y16_N27
\U1|U2|reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U1|code~7_combout\,
	clrn => \U2|ALT_INV_reset1~q\,
	sload => VCC,
	ena => \U1|U2|reg1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|reg1\(1));

-- Location: LCCOMB_X14_Y16_N6
\U3|U4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U4|Equal0~0_combout\ = (!\U1|U2|reg1\(1) & (!\U1|U2|reg1\(0) & !\U1|U2|reg1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|reg1\(1),
	datab => \U1|U2|reg1\(0),
	datad => \U1|U2|reg1\(2),
	combout => \U3|U4|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y16_N14
\U3|U2|D1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|D1[0]~0_combout\ = (\U1|U2|reg2\(0) & (\U2|piso\(0) $ (GND))) # (!\U1|U2|reg2\(0) & ((GND) # (!\U2|piso\(0))))
-- \U3|U2|D1[0]~1\ = CARRY((!\U2|piso\(0)) # (!\U1|U2|reg2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|reg2\(0),
	datab => \U2|piso\(0),
	datad => VCC,
	combout => \U3|U2|D1[0]~0_combout\,
	cout => \U3|U2|D1[0]~1\);

-- Location: LCCOMB_X16_Y16_N16
\U3|U2|D1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|D1[1]~2_combout\ = (\U2|piso\(1) & ((\U1|U2|reg2\(1) & (!\U3|U2|D1[0]~1\)) # (!\U1|U2|reg2\(1) & (\U3|U2|D1[0]~1\ & VCC)))) # (!\U2|piso\(1) & ((\U1|U2|reg2\(1) & ((\U3|U2|D1[0]~1\) # (GND))) # (!\U1|U2|reg2\(1) & (!\U3|U2|D1[0]~1\))))
-- \U3|U2|D1[1]~3\ = CARRY((\U2|piso\(1) & (\U1|U2|reg2\(1) & !\U3|U2|D1[0]~1\)) # (!\U2|piso\(1) & ((\U1|U2|reg2\(1)) # (!\U3|U2|D1[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(1),
	datab => \U1|U2|reg2\(1),
	datad => VCC,
	cin => \U3|U2|D1[0]~1\,
	combout => \U3|U2|D1[1]~2_combout\,
	cout => \U3|U2|D1[1]~3\);

-- Location: LCCOMB_X16_Y16_N18
\U3|U2|D1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|D1[2]~4_combout\ = ((\U2|piso\(2) $ (\U1|U2|reg2\(2) $ (\U3|U2|D1[1]~3\)))) # (GND)
-- \U3|U2|D1[2]~5\ = CARRY((\U2|piso\(2) & ((!\U3|U2|D1[1]~3\) # (!\U1|U2|reg2\(2)))) # (!\U2|piso\(2) & (!\U1|U2|reg2\(2) & !\U3|U2|D1[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(2),
	datab => \U1|U2|reg2\(2),
	datad => VCC,
	cin => \U3|U2|D1[1]~3\,
	combout => \U3|U2|D1[2]~4_combout\,
	cout => \U3|U2|D1[2]~5\);

-- Location: LCCOMB_X16_Y16_N20
\U3|U2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|Add0~0_combout\ = !\U3|U2|D1[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|U2|D1[2]~5\,
	combout => \U3|U2|Add0~0_combout\);

-- Location: LCCOMB_X16_Y16_N12
\U3|U5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U5|Equal0~0_combout\ = (!\U1|U2|reg2\(1) & (!\U1|U2|reg2\(0) & !\U1|U2|reg2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|reg2\(1),
	datac => \U1|U2|reg2\(0),
	datad => \U1|U2|reg2\(2),
	combout => \U3|U5|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y16_N0
\U3|bajar~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|bajar~2_combout\ = (!\U3|U2|Add0~0_combout\ & (!\U3|U5|Equal0~0_combout\ & !\U3|U8|AmayB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U2|Add0~0_combout\,
	datab => \U3|U5|Equal0~0_combout\,
	datad => \U3|U8|AmayB~0_combout\,
	combout => \U3|bajar~2_combout\);

-- Location: LCCOMB_X14_Y16_N16
\U3|U1|D1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|D1[0]~0_combout\ = (\U2|piso\(0) & (\U1|U2|reg1\(0) $ (GND))) # (!\U2|piso\(0) & ((GND) # (!\U1|U2|reg1\(0))))
-- \U3|U1|D1[0]~1\ = CARRY((!\U1|U2|reg1\(0)) # (!\U2|piso\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(0),
	datab => \U1|U2|reg1\(0),
	datad => VCC,
	combout => \U3|U1|D1[0]~0_combout\,
	cout => \U3|U1|D1[0]~1\);

-- Location: LCCOMB_X14_Y16_N18
\U3|U1|D1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|D1[1]~2_combout\ = (\U1|U2|reg1\(1) & ((\U2|piso\(1) & (!\U3|U1|D1[0]~1\)) # (!\U2|piso\(1) & ((\U3|U1|D1[0]~1\) # (GND))))) # (!\U1|U2|reg1\(1) & ((\U2|piso\(1) & (\U3|U1|D1[0]~1\ & VCC)) # (!\U2|piso\(1) & (!\U3|U1|D1[0]~1\))))
-- \U3|U1|D1[1]~3\ = CARRY((\U1|U2|reg1\(1) & ((!\U3|U1|D1[0]~1\) # (!\U2|piso\(1)))) # (!\U1|U2|reg1\(1) & (!\U2|piso\(1) & !\U3|U1|D1[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|reg1\(1),
	datab => \U2|piso\(1),
	datad => VCC,
	cin => \U3|U1|D1[0]~1\,
	combout => \U3|U1|D1[1]~2_combout\,
	cout => \U3|U1|D1[1]~3\);

-- Location: LCCOMB_X14_Y16_N20
\U3|U1|D1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|D1[2]~4_combout\ = ((\U2|piso\(2) $ (\U1|U2|reg1\(2) $ (\U3|U1|D1[1]~3\)))) # (GND)
-- \U3|U1|D1[2]~5\ = CARRY((\U2|piso\(2) & ((!\U3|U1|D1[1]~3\) # (!\U1|U2|reg1\(2)))) # (!\U2|piso\(2) & (!\U1|U2|reg1\(2) & !\U3|U1|D1[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(2),
	datab => \U1|U2|reg1\(2),
	datad => VCC,
	cin => \U3|U1|D1[1]~3\,
	combout => \U3|U1|D1[2]~4_combout\,
	cout => \U3|U1|D1[2]~5\);

-- Location: LCCOMB_X14_Y16_N22
\U3|U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|Add0~0_combout\ = !\U3|U1|D1[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|U1|D1[2]~5\,
	combout => \U3|U1|Add0~0_combout\);

-- Location: LCCOMB_X15_Y16_N22
\U3|bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|bajar~0_combout\ = (!\U3|U4|Equal0~0_combout\ & (!\U3|U8|AmayB~0_combout\ & !\U3|U1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|Equal0~0_combout\,
	datac => \U3|U8|AmayB~0_combout\,
	datad => \U3|U1|Add0~0_combout\,
	combout => \U3|bajar~0_combout\);

-- Location: LCCOMB_X14_Y16_N10
\U3|U1|D2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|D2[0]~0_combout\ = (\U2|piso\(0) & ((\U1|U2|reg1\(0)) # (GND))) # (!\U2|piso\(0) & (\U1|U2|reg1\(0) $ (VCC)))
-- \U3|U1|D2[0]~1\ = CARRY((\U2|piso\(0)) # (\U1|U2|reg1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(0),
	datab => \U1|U2|reg1\(0),
	datad => VCC,
	combout => \U3|U1|D2[0]~0_combout\,
	cout => \U3|U1|D2[0]~1\);

-- Location: LCCOMB_X16_Y16_N22
\U3|U2|D2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|D2[0]~0_combout\ = (\U1|U2|reg2\(0) & ((\U2|piso\(0)) # (GND))) # (!\U1|U2|reg2\(0) & (\U2|piso\(0) $ (VCC)))
-- \U3|U2|D2[0]~1\ = CARRY((\U1|U2|reg2\(0)) # (\U2|piso\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|reg2\(0),
	datab => \U2|piso\(0),
	datad => VCC,
	combout => \U3|U2|D2[0]~0_combout\,
	cout => \U3|U2|D2[0]~1\);

-- Location: LCCOMB_X16_Y16_N28
\U3|U2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|Add1~2_combout\ = (\U3|U2|Add0~0_combout\ & ((\U3|U2|D2[0]~0_combout\))) # (!\U3|U2|Add0~0_combout\ & (\U3|U2|D1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U2|D1[0]~0_combout\,
	datac => \U3|U2|D2[0]~0_combout\,
	datad => \U3|U2|Add0~0_combout\,
	combout => \U3|U2|Add1~2_combout\);

-- Location: LCCOMB_X15_Y16_N14
\U3|U3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U3|Equal0~1_combout\ = \U3|U2|Add1~2_combout\ $ (((\U3|U1|Add0~0_combout\ & (\U3|U1|D2[0]~0_combout\)) # (!\U3|U1|Add0~0_combout\ & ((\U3|U1|D1[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|D2[0]~0_combout\,
	datab => \U3|U1|Add0~0_combout\,
	datac => \U3|U1|D1[0]~0_combout\,
	datad => \U3|U2|Add1~2_combout\,
	combout => \U3|U3|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y16_N8
\U3|bajar~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|bajar~1_combout\ = (\U3|bajar~0_combout\ & ((\U3|U5|Equal0~0_combout\) # ((!\U3|U3|Equal0~1_combout\ & \U3|U3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|bajar~0_combout\,
	datab => \U3|U5|Equal0~0_combout\,
	datac => \U3|U3|Equal0~1_combout\,
	datad => \U3|U3|Equal0~0_combout\,
	combout => \U3|bajar~1_combout\);

-- Location: LCCOMB_X14_Y16_N4
\U3|U1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|Add1~2_combout\ = (\U3|U1|Add0~0_combout\ & (\U3|U1|D2[0]~0_combout\)) # (!\U3|U1|Add0~0_combout\ & ((\U3|U1|D1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|D2[0]~0_combout\,
	datab => \U3|U1|D1[0]~0_combout\,
	datad => \U3|U1|Add0~0_combout\,
	combout => \U3|U1|Add1~2_combout\);

-- Location: LCCOMB_X16_Y16_N24
\U3|U2|D2[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|D2[1]~2_combout\ = (\U2|piso\(1) & ((\U1|U2|reg2\(1) & (!\U3|U2|D2[0]~1\)) # (!\U1|U2|reg2\(1) & ((\U3|U2|D2[0]~1\) # (GND))))) # (!\U2|piso\(1) & ((\U1|U2|reg2\(1) & (\U3|U2|D2[0]~1\ & VCC)) # (!\U1|U2|reg2\(1) & (!\U3|U2|D2[0]~1\))))
-- \U3|U2|D2[1]~3\ = CARRY((\U2|piso\(1) & ((!\U3|U2|D2[0]~1\) # (!\U1|U2|reg2\(1)))) # (!\U2|piso\(1) & (!\U1|U2|reg2\(1) & !\U3|U2|D2[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(1),
	datab => \U1|U2|reg2\(1),
	datad => VCC,
	cin => \U3|U2|D2[0]~1\,
	combout => \U3|U2|D2[1]~2_combout\,
	cout => \U3|U2|D2[1]~3\);

-- Location: LCCOMB_X16_Y16_N2
\U3|U2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|Add1~0_combout\ = (\U3|U2|Add0~0_combout\ & (\U3|U2|D2[1]~2_combout\)) # (!\U3|U2|Add0~0_combout\ & ((\U3|U2|D1[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U2|D2[1]~2_combout\,
	datab => \U3|U2|D1[1]~2_combout\,
	datad => \U3|U2|Add0~0_combout\,
	combout => \U3|U2|Add1~0_combout\);

-- Location: LCCOMB_X14_Y16_N12
\U3|U1|D2[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|D2[1]~2_combout\ = (\U1|U2|reg1\(1) & ((\U2|piso\(1) & (!\U3|U1|D2[0]~1\)) # (!\U2|piso\(1) & (\U3|U1|D2[0]~1\ & VCC)))) # (!\U1|U2|reg1\(1) & ((\U2|piso\(1) & ((\U3|U1|D2[0]~1\) # (GND))) # (!\U2|piso\(1) & (!\U3|U1|D2[0]~1\))))
-- \U3|U1|D2[1]~3\ = CARRY((\U1|U2|reg1\(1) & (\U2|piso\(1) & !\U3|U1|D2[0]~1\)) # (!\U1|U2|reg1\(1) & ((\U2|piso\(1)) # (!\U3|U1|D2[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|reg1\(1),
	datab => \U2|piso\(1),
	datad => VCC,
	cin => \U3|U1|D2[0]~1\,
	combout => \U3|U1|D2[1]~2_combout\,
	cout => \U3|U1|D2[1]~3\);

-- Location: LCCOMB_X14_Y16_N14
\U3|U1|D2[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|D2[2]~4_combout\ = \U2|piso\(2) $ (\U3|U1|D2[1]~3\ $ (\U1|U2|reg1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(2),
	datad => \U1|U2|reg1\(2),
	cin => \U3|U1|D2[1]~3\,
	combout => \U3|U1|D2[2]~4_combout\);

-- Location: LCCOMB_X14_Y16_N28
\U3|U1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|Add1~0_combout\ = (\U3|U1|Add0~0_combout\ & ((\U3|U1|D2[2]~4_combout\))) # (!\U3|U1|Add0~0_combout\ & (\U3|U1|D1[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|D1[2]~4_combout\,
	datab => \U3|U1|D2[2]~4_combout\,
	datad => \U3|U1|Add0~0_combout\,
	combout => \U3|U1|Add1~0_combout\);

-- Location: LCCOMB_X14_Y16_N8
\U3|U1|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|Add1~1_combout\ = (\U3|U1|Add0~0_combout\ & (\U3|U1|D2[1]~2_combout\)) # (!\U3|U1|Add0~0_combout\ & ((\U3|U1|D1[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|D2[1]~2_combout\,
	datac => \U3|U1|Add0~0_combout\,
	datad => \U3|U1|D1[1]~2_combout\,
	combout => \U3|U1|Add1~1_combout\);

-- Location: LCCOMB_X15_Y16_N30
\U3|U3|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U3|LessThan0~0_combout\ = (\U3|U1|Add1~0_combout\ & (((!\U3|U2|Add1~0_combout\ & \U3|U1|Add1~1_combout\)) # (!\U3|U2|Add1~1_combout\))) # (!\U3|U1|Add1~0_combout\ & (!\U3|U2|Add1~0_combout\ & (!\U3|U2|Add1~1_combout\ & \U3|U1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U2|Add1~0_combout\,
	datab => \U3|U1|Add1~0_combout\,
	datac => \U3|U2|Add1~1_combout\,
	datad => \U3|U1|Add1~1_combout\,
	combout => \U3|U3|LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y16_N28
\U3|bajar~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|bajar~3_combout\ = (\U3|U3|Equal0~0_combout\ & ((\U3|U2|Add1~2_combout\ & (!\U3|U1|Add1~2_combout\ & \U3|U3|LessThan0~0_combout\)) # (!\U3|U2|Add1~2_combout\ & (\U3|U1|Add1~2_combout\)))) # (!\U3|U3|Equal0~0_combout\ & 
-- (((\U3|U3|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U2|Add1~2_combout\,
	datab => \U3|U1|Add1~2_combout\,
	datac => \U3|U3|LessThan0~0_combout\,
	datad => \U3|U3|Equal0~0_combout\,
	combout => \U3|bajar~3_combout\);

-- Location: LCCOMB_X15_Y16_N26
\U3|bajar~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|bajar~4_combout\ = (\U3|bajar~1_combout\) # ((\U3|bajar~2_combout\ & ((\U3|U4|Equal0~0_combout\) # (\U3|bajar~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|Equal0~0_combout\,
	datab => \U3|bajar~2_combout\,
	datac => \U3|bajar~1_combout\,
	datad => \U3|bajar~3_combout\,
	combout => \U3|bajar~4_combout\);

-- Location: LCCOMB_X16_Y16_N6
\U2|piso[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|piso[2]~0_combout\ = (\U2|piso\(2) & (!\U2|piso\(1) & \U2|piso\(0))) # (!\U2|piso\(2) & (\U2|piso\(1) & !\U2|piso\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(2),
	datab => \U2|piso\(1),
	datad => \U2|piso\(0),
	combout => \U2|piso[2]~0_combout\);

-- Location: LCCOMB_X15_Y16_N6
\U2|piso[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|piso[2]~1_combout\ = (\U2|piso[2]~0_combout\ & ((\U3|subir~1_combout\) # ((!\U3|bajar~4_combout\ & \U2|piso\(2))))) # (!\U2|piso[2]~0_combout\ & (((\U2|piso\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|bajar~4_combout\,
	datab => \U2|piso[2]~0_combout\,
	datac => \U2|piso\(2),
	datad => \U3|subir~1_combout\,
	combout => \U2|piso[2]~1_combout\);

-- Location: FF_X15_Y16_N7
\U2|piso[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U2|piso[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|piso\(2));

-- Location: LCCOMB_X16_Y16_N26
\U3|U2|D2[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|D2[2]~4_combout\ = \U2|piso\(2) $ (\U3|U2|D2[1]~3\ $ (\U1|U2|reg2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|piso\(2),
	datad => \U1|U2|reg2\(2),
	cin => \U3|U2|D2[1]~3\,
	combout => \U3|U2|D2[2]~4_combout\);

-- Location: LCCOMB_X16_Y16_N30
\U3|U2|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|Add1~1_combout\ = (\U3|U2|Add0~0_combout\ & ((\U3|U2|D2[2]~4_combout\))) # (!\U3|U2|Add0~0_combout\ & (\U3|U2|D1[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U2|D1[2]~4_combout\,
	datac => \U3|U2|D2[2]~4_combout\,
	datad => \U3|U2|Add0~0_combout\,
	combout => \U3|U2|Add1~1_combout\);

-- Location: LCCOMB_X15_Y16_N0
\U3|U3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U3|Equal0~0_combout\ = (\U3|U2|Add1~1_combout\ & (\U3|U1|Add1~0_combout\ & (\U3|U1|Add1~1_combout\ $ (!\U3|U2|Add1~0_combout\)))) # (!\U3|U2|Add1~1_combout\ & (!\U3|U1|Add1~0_combout\ & (\U3|U1|Add1~1_combout\ $ (!\U3|U2|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U2|Add1~1_combout\,
	datab => \U3|U1|Add1~1_combout\,
	datac => \U3|U2|Add1~0_combout\,
	datad => \U3|U1|Add1~0_combout\,
	combout => \U3|U3|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y16_N4
\U3|subir~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|subir~0_combout\ = (\U3|U3|LessThan0~0_combout\ & (((!\U3|U3|Equal0~0_combout\)))) # (!\U3|U3|LessThan0~0_combout\ & (\U3|U2|Add1~2_combout\ & (!\U3|U1|Add1~2_combout\ & \U3|U3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U2|Add1~2_combout\,
	datab => \U3|U1|Add1~2_combout\,
	datac => \U3|U3|LessThan0~0_combout\,
	datad => \U3|U3|Equal0~0_combout\,
	combout => \U3|subir~0_combout\);

-- Location: LCCOMB_X15_Y16_N16
\U3|subir~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|subir~2_combout\ = (!\U3|U5|Equal0~0_combout\ & ((\U3|U4|Equal0~0_combout\) # ((\U3|U3|Equal0~1_combout\) # (!\U3|U3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|Equal0~0_combout\,
	datab => \U3|U5|Equal0~0_combout\,
	datac => \U3|U3|Equal0~1_combout\,
	datad => \U3|U3|Equal0~0_combout\,
	combout => \U3|subir~2_combout\);

-- Location: LCCOMB_X15_Y16_N2
\U3|subir~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|subir~3_combout\ = (\U3|subir~2_combout\ & (((\U3|U2|Add0~0_combout\)))) # (!\U3|subir~2_combout\ & (!\U3|U4|Equal0~0_combout\ & (\U3|U1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|Equal0~0_combout\,
	datab => \U3|U1|Add0~0_combout\,
	datac => \U3|U2|Add0~0_combout\,
	datad => \U3|subir~2_combout\,
	combout => \U3|subir~3_combout\);

-- Location: LCCOMB_X15_Y16_N10
\U3|subir~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|subir~1_combout\ = (!\U3|U8|AmayB~0_combout\ & ((\U3|subir~3_combout\) # (\U3|U3|Equal0~0_combout\ $ (!\U3|subir~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U8|AmayB~0_combout\,
	datab => \U3|U3|Equal0~0_combout\,
	datac => \U3|subir~0_combout\,
	datad => \U3|subir~3_combout\,
	combout => \U3|subir~1_combout\);

-- Location: LCCOMB_X15_Y16_N18
\U2|nuevoPiso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|nuevoPiso~0_combout\ = (\U3|subir~1_combout\ & (((\U2|piso\(2))))) # (!\U3|subir~1_combout\ & (((!\U2|piso\(1) & !\U2|piso\(2))) # (!\U3|bajar~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(1),
	datab => \U2|piso\(2),
	datac => \U3|bajar~4_combout\,
	datad => \U3|subir~1_combout\,
	combout => \U2|nuevoPiso~0_combout\);

-- Location: LCCOMB_X15_Y16_N20
\U2|nuevoPiso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|nuevoPiso~1_combout\ = (\U2|piso\(0) & (\U2|nuevoPiso~0_combout\ & ((\U2|piso\(1)) # (!\U3|subir~1_combout\)))) # (!\U2|piso\(0) & (((!\U2|nuevoPiso~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|subir~1_combout\,
	datab => \U2|piso\(1),
	datac => \U2|piso\(0),
	datad => \U2|nuevoPiso~0_combout\,
	combout => \U2|nuevoPiso~1_combout\);

-- Location: FF_X15_Y16_N21
\U2|piso[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U2|nuevoPiso~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|piso\(0));

-- Location: LCCOMB_X15_Y16_N24
\U2|piso[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|piso[1]~2_combout\ = (\U2|piso\(0) & (\U3|bajar~4_combout\ & !\U3|subir~1_combout\)) # (!\U2|piso\(0) & ((\U3|subir~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(0),
	datac => \U3|bajar~4_combout\,
	datad => \U3|subir~1_combout\,
	combout => \U2|piso[1]~2_combout\);

-- Location: LCCOMB_X15_Y16_N12
\U2|piso[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|piso[1]~3_combout\ = (\U2|piso\(1) & (((!\U2|piso\(0) & \U2|piso\(2))) # (!\U2|piso[1]~2_combout\))) # (!\U2|piso\(1) & (\U2|piso[1]~2_combout\ & (\U2|piso\(0) $ (!\U2|piso\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(0),
	datab => \U2|piso\(2),
	datac => \U2|piso\(1),
	datad => \U2|piso[1]~2_combout\,
	combout => \U2|piso[1]~3_combout\);

-- Location: FF_X15_Y16_N13
\U2|piso[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U2|piso[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|piso\(1));

-- Location: LCCOMB_X17_Y16_N24
\U5|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux0~0_combout\ = (\U2|piso\(0) & ((\U2|piso\(2)))) # (!\U2|piso\(0) & (!\U2|piso\(1) & !\U2|piso\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|piso\(1),
	datac => \U2|piso\(0),
	datad => \U2|piso\(2),
	combout => \U5|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y15_N20
\U5|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux1~0_combout\ = (\U2|piso\(2) & (\U2|piso\(1) $ (!\U2|piso\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|piso\(2),
	datac => \U2|piso\(1),
	datad => \U2|piso\(0),
	combout => \U5|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y15_N30
\U5|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux2~0_combout\ = (!\U2|piso\(2) & (\U2|piso\(1) & \U2|piso\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|piso\(2),
	datac => \U2|piso\(1),
	datad => \U2|piso\(0),
	combout => \U5|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y15_N16
\U5|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux3~0_combout\ = (\U2|piso\(0) & (!\U2|piso\(1) & \U2|piso\(2))) # (!\U2|piso\(0) & (\U2|piso\(1) $ (!\U2|piso\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(0),
	datab => \U2|piso\(1),
	datad => \U2|piso\(2),
	combout => \U5|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y16_N24
\U5|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux4~0_combout\ = ((\U2|piso\(2) & !\U2|piso\(1))) # (!\U2|piso\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|piso\(2),
	datac => \U2|piso\(1),
	datad => \U2|piso\(0),
	combout => \U5|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y16_N14
\U5|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux5~0_combout\ = (\U2|piso\(1) & ((!\U2|piso\(2)) # (!\U2|piso\(0)))) # (!\U2|piso\(1) & (!\U2|piso\(0) & !\U2|piso\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|piso\(1),
	datac => \U2|piso\(0),
	datad => \U2|piso\(2),
	combout => \U5|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y15_N2
\U5|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux6~0_combout\ = (\U2|piso\(2) & (\U2|piso\(1) & !\U2|piso\(0))) # (!\U2|piso\(2) & (!\U2|piso\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|piso\(2),
	datac => \U2|piso\(1),
	datad => \U2|piso\(0),
	combout => \U5|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y1_N28
\U4|U2|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|out2~0_combout\ = \U4|U2|out2~q\ $ (((\U4|U2|Equal1~5_combout\ & (\U4|U2|Equal1~4_combout\ & \U4|U2|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U2|Equal1~5_combout\,
	datab => \U4|U2|out2~q\,
	datac => \U4|U2|Equal1~4_combout\,
	datad => \U4|U2|Equal1~7_combout\,
	combout => \U4|U2|out2~0_combout\);

-- Location: LCCOMB_X26_Y1_N2
\U4|U2|out2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|out2~feeder_combout\ = \U4|U2|out2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|U2|out2~0_combout\,
	combout => \U4|U2|out2~feeder_combout\);

-- Location: FF_X26_Y1_N3
\U4|U2|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U2|out2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|out2~q\);

-- Location: CLKCTRL_G18
\U4|U2|out2~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U4|U2|out2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U4|U2|out2~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y19_N10
\U4|U3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|Add0~0_combout\ = \U4|U3|contador\(0) $ (VCC)
-- \U4|U3|Add0~1\ = CARRY(\U4|U3|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(0),
	datad => VCC,
	combout => \U4|U3|Add0~0_combout\,
	cout => \U4|U3|Add0~1\);

-- Location: LCCOMB_X15_Y19_N12
\U4|U3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|Add0~2_combout\ = (\U4|U3|contador\(1) & (!\U4|U3|Add0~1\)) # (!\U4|U3|contador\(1) & ((\U4|U3|Add0~1\) # (GND)))
-- \U4|U3|Add0~3\ = CARRY((!\U4|U3|Add0~1\) # (!\U4|U3|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(1),
	datad => VCC,
	cin => \U4|U3|Add0~1\,
	combout => \U4|U3|Add0~2_combout\,
	cout => \U4|U3|Add0~3\);

-- Location: LCCOMB_X15_Y19_N14
\U4|U3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|Add0~4_combout\ = (\U4|U3|contador\(2) & (\U4|U3|Add0~3\ $ (GND))) # (!\U4|U3|contador\(2) & (!\U4|U3|Add0~3\ & VCC))
-- \U4|U3|Add0~5\ = CARRY((\U4|U3|contador\(2) & !\U4|U3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(2),
	datad => VCC,
	cin => \U4|U3|Add0~3\,
	combout => \U4|U3|Add0~4_combout\,
	cout => \U4|U3|Add0~5\);

-- Location: LCCOMB_X15_Y19_N6
\U4|U3|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|contador~1_combout\ = (\U4|U3|Add0~4_combout\ & (((\U4|U3|contador\(2)) # (!\U4|U5|Equal0~2_combout\)) # (!\U4|U3|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(3),
	datab => \U4|U5|Equal0~2_combout\,
	datac => \U4|U3|contador\(2),
	datad => \U4|U3|Add0~4_combout\,
	combout => \U4|U3|contador~1_combout\);

-- Location: LCCOMB_X15_Y19_N24
\U4|U5|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U5|Equal0~3_combout\ = (!\U4|U3|contador\(3) & \U4|U3|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U3|contador\(3),
	datad => \U4|U3|contador\(2),
	combout => \U4|U5|Equal0~3_combout\);

-- Location: FF_X15_Y19_N1
\U4|U1|reset2Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|reset2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U1|reset2Prev~q\);

-- Location: FF_X15_Y19_N29
\U4|U1|reset1Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|reset1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U1|reset1Prev~q\);

-- Location: LCCOMB_X15_Y19_N0
\U4|U1|detecta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|detecta~0_combout\ = (\U2|reset1~q\ & (((\U2|reset2~q\ & !\U4|U1|reset2Prev~q\)) # (!\U4|U1|reset1Prev~q\))) # (!\U2|reset1~q\ & (\U2|reset2~q\ & (!\U4|U1|reset2Prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|reset1~q\,
	datab => \U2|reset2~q\,
	datac => \U4|U1|reset2Prev~q\,
	datad => \U4|U1|reset1Prev~q\,
	combout => \U4|U1|detecta~0_combout\);

-- Location: LCCOMB_X15_Y19_N30
\U4|U1|detecta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|detecta~1_combout\ = (\U4|U5|Equal0~3_combout\ & (!\U4|U5|Equal0~2_combout\ & ((\U4|U1|detecta~q\) # (\U4|U1|detecta~0_combout\)))) # (!\U4|U5|Equal0~3_combout\ & (((\U4|U1|detecta~q\) # (\U4|U1|detecta~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U5|Equal0~3_combout\,
	datab => \U4|U5|Equal0~2_combout\,
	datac => \U4|U1|detecta~q\,
	datad => \U4|U1|detecta~0_combout\,
	combout => \U4|U1|detecta~1_combout\);

-- Location: FF_X15_Y19_N31
\U4|U1|detecta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U1|detecta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U1|detecta~q\);

-- Location: FF_X15_Y19_N7
\U4|U3|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U2|out2~clkctrl_outclk\,
	d => \U4|U3|contador~1_combout\,
	clrn => \U4|U5|ALT_INV_Equal0~4_combout\,
	ena => \U4|U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(2));

-- Location: LCCOMB_X15_Y19_N16
\U4|U3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|Add0~6_combout\ = (\U4|U3|contador\(3) & (!\U4|U3|Add0~5\)) # (!\U4|U3|contador\(3) & ((\U4|U3|Add0~5\) # (GND)))
-- \U4|U3|Add0~7\ = CARRY((!\U4|U3|Add0~5\) # (!\U4|U3|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U3|contador\(3),
	datad => VCC,
	cin => \U4|U3|Add0~5\,
	combout => \U4|U3|Add0~6_combout\,
	cout => \U4|U3|Add0~7\);

-- Location: LCCOMB_X15_Y19_N8
\U4|U3|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|contador~0_combout\ = (\U4|U3|Add0~6_combout\ & (((\U4|U3|contador\(2)) # (!\U4|U3|contador\(3))) # (!\U4|U5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U5|Equal0~2_combout\,
	datab => \U4|U3|contador\(2),
	datac => \U4|U3|contador\(3),
	datad => \U4|U3|Add0~6_combout\,
	combout => \U4|U3|contador~0_combout\);

-- Location: FF_X15_Y19_N9
\U4|U3|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U2|out2~clkctrl_outclk\,
	d => \U4|U3|contador~0_combout\,
	clrn => \U4|U5|ALT_INV_Equal0~4_combout\,
	ena => \U4|U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(3));

-- Location: LCCOMB_X15_Y19_N26
\U4|U5|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U5|Equal0~4_combout\ = (!\U4|U3|contador\(3) & (\U4|U3|contador\(2) & \U4|U5|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(3),
	datac => \U4|U3|contador\(2),
	datad => \U4|U5|Equal0~2_combout\,
	combout => \U4|U5|Equal0~4_combout\);

-- Location: FF_X15_Y19_N11
\U4|U3|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U2|out2~clkctrl_outclk\,
	d => \U4|U3|Add0~0_combout\,
	clrn => \U4|U5|ALT_INV_Equal0~4_combout\,
	ena => \U4|U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(0));

-- Location: FF_X15_Y19_N13
\U4|U3|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U2|out2~clkctrl_outclk\,
	d => \U4|U3|Add0~2_combout\,
	clrn => \U4|U5|ALT_INV_Equal0~4_combout\,
	ena => \U4|U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(1));

-- Location: LCCOMB_X15_Y19_N18
\U4|U3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|Add0~8_combout\ = (\U4|U3|contador\(4) & (\U4|U3|Add0~7\ $ (GND))) # (!\U4|U3|contador\(4) & (!\U4|U3|Add0~7\ & VCC))
-- \U4|U3|Add0~9\ = CARRY((\U4|U3|contador\(4) & !\U4|U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(4),
	datad => VCC,
	cin => \U4|U3|Add0~7\,
	combout => \U4|U3|Add0~8_combout\,
	cout => \U4|U3|Add0~9\);

-- Location: LCCOMB_X15_Y19_N20
\U4|U3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|Add0~10_combout\ = \U4|U3|Add0~9\ $ (\U4|U3|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U4|U3|contador\(5),
	cin => \U4|U3|Add0~9\,
	combout => \U4|U3|Add0~10_combout\);

-- Location: LCCOMB_X15_Y19_N4
\U4|U3|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|contador~2_combout\ = (\U4|U3|Add0~10_combout\ & (((\U4|U3|contador\(2)) # (!\U4|U3|contador\(3))) # (!\U4|U5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U5|Equal0~2_combout\,
	datab => \U4|U3|contador\(2),
	datac => \U4|U3|contador\(3),
	datad => \U4|U3|Add0~10_combout\,
	combout => \U4|U3|contador~2_combout\);

-- Location: FF_X15_Y19_N5
\U4|U3|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U2|out2~clkctrl_outclk\,
	d => \U4|U3|contador~2_combout\,
	clrn => \U4|U5|ALT_INV_Equal0~4_combout\,
	ena => \U4|U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(5));

-- Location: LCCOMB_X15_Y19_N2
\U4|U5|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U5|Equal0~2_combout\ = (\U4|U3|contador\(1) & (\U4|U3|contador\(5) & (\U4|U3|contador\(4) & \U4|U3|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(1),
	datab => \U4|U3|contador\(5),
	datac => \U4|U3|contador\(4),
	datad => \U4|U3|contador\(0),
	combout => \U4|U5|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y19_N22
\U4|U3|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|contador~3_combout\ = (\U4|U3|Add0~8_combout\ & (((\U4|U3|contador\(2)) # (!\U4|U3|contador\(3))) # (!\U4|U5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U5|Equal0~2_combout\,
	datab => \U4|U3|contador\(2),
	datac => \U4|U3|contador\(3),
	datad => \U4|U3|Add0~8_combout\,
	combout => \U4|U3|contador~3_combout\);

-- Location: FF_X15_Y19_N23
\U4|U3|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U2|out2~clkctrl_outclk\,
	d => \U4|U3|contador~3_combout\,
	clrn => \U4|U5|ALT_INV_Equal0~4_combout\,
	ena => \U4|U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(4));

-- Location: LCCOMB_X16_Y19_N4
\U4|U4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|Equal0~0_combout\ = (!\U4|U3|contador\(4) & (!\U4|U3|contador\(5) & (!\U4|U3|contador\(2) & \U4|U3|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(4),
	datab => \U4|U3|contador\(5),
	datac => \U4|U3|contador\(2),
	datad => \U4|U3|contador\(3),
	combout => \U4|U4|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y19_N28
\U4|U4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|Equal0~1_combout\ = (\U4|U4|Equal0~0_combout\ & (\U4|U3|contador\(1) & !\U4|U3|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U4|Equal0~0_combout\,
	datab => \U4|U3|contador\(1),
	datad => \U4|U3|contador\(0),
	combout => \U4|U4|Equal0~1_combout\);

ww_a1 <= \a1~output_o\;

ww_b1 <= \b1~output_o\;

ww_c1 <= \c1~output_o\;

ww_d1 <= \d1~output_o\;

ww_e1 <= \e1~output_o\;

ww_f1 <= \f1~output_o\;

ww_g1 <= \g1~output_o\;

ww_mayor <= \mayor~output_o\;

ww_abrir <= \abrir~output_o\;

ww_cerrar <= \cerrar~output_o\;
END structure;


