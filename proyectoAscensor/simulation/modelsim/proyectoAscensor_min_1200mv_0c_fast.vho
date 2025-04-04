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

-- DATE "04/03/2025 21:36:58"

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

ENTITY 	proyectoAscensor IS
    PORT (
	PS : IN std_logic_vector(4 DOWNTO 0);
	PB : IN std_logic_vector(4 DOWNTO 0);
	PD : IN std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	anomalia : IN std_logic;
	perEn : IN std_logic;
	perSal : IN std_logic;
	botonNotificacion : IN std_logic;
	estadoPuerta : BUFFER std_logic;
	subiendo : BUFFER std_logic;
	bajando : BUFFER std_logic;
	notificacion : BUFFER std_logic;
	anomaliaEn : BUFFER std_logic;
	luz : BUFFER std_logic;
	alarmaSonora : BUFFER std_logic;
	a1 : BUFFER std_logic;
	b1 : BUFFER std_logic;
	c1 : BUFFER std_logic;
	d1 : BUFFER std_logic;
	e1 : BUFFER std_logic;
	f1 : BUFFER std_logic;
	g1 : BUFFER std_logic;
	a2 : BUFFER std_logic;
	b2 : BUFFER std_logic;
	c2 : BUFFER std_logic;
	d2 : BUFFER std_logic;
	e2 : BUFFER std_logic;
	f2 : BUFFER std_logic;
	g2 : BUFFER std_logic;
	a3 : BUFFER std_logic;
	b3 : BUFFER std_logic;
	c3 : BUFFER std_logic;
	d3 : BUFFER std_logic;
	e3 : BUFFER std_logic;
	f3 : BUFFER std_logic;
	g3 : BUFFER std_logic
	);
END proyectoAscensor;

-- Design Ports Information
-- estadoPuerta	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- subiendo	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bajando	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notificacion	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomaliaEn	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarmaSonora	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c2	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e2	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f2	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g2	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c3	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e3	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f3	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g3	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomalia	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botonNotificacion	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- perSal	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- perEn	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[2]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[4]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF proyectoAscensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PS : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PB : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_anomalia : std_logic;
SIGNAL ww_perEn : std_logic;
SIGNAL ww_perSal : std_logic;
SIGNAL ww_botonNotificacion : std_logic;
SIGNAL ww_estadoPuerta : std_logic;
SIGNAL ww_subiendo : std_logic;
SIGNAL ww_bajando : std_logic;
SIGNAL ww_notificacion : std_logic;
SIGNAL ww_anomaliaEn : std_logic;
SIGNAL ww_luz : std_logic;
SIGNAL ww_alarmaSonora : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_c2 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_e2 : std_logic;
SIGNAL ww_f2 : std_logic;
SIGNAL ww_g2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_c3 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_e3 : std_logic;
SIGNAL ww_f3 : std_logic;
SIGNAL ww_g3 : std_logic;
SIGNAL \U4|U9|out2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U6|out2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|U1|eleccion[30]~17clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estadoPuerta~output_o\ : std_logic;
SIGNAL \subiendo~output_o\ : std_logic;
SIGNAL \bajando~output_o\ : std_logic;
SIGNAL \notificacion~output_o\ : std_logic;
SIGNAL \anomaliaEn~output_o\ : std_logic;
SIGNAL \luz~output_o\ : std_logic;
SIGNAL \alarmaSonora~output_o\ : std_logic;
SIGNAL \a1~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \e1~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \a2~output_o\ : std_logic;
SIGNAL \b2~output_o\ : std_logic;
SIGNAL \c2~output_o\ : std_logic;
SIGNAL \d2~output_o\ : std_logic;
SIGNAL \e2~output_o\ : std_logic;
SIGNAL \f2~output_o\ : std_logic;
SIGNAL \g2~output_o\ : std_logic;
SIGNAL \a3~output_o\ : std_logic;
SIGNAL \b3~output_o\ : std_logic;
SIGNAL \c3~output_o\ : std_logic;
SIGNAL \d3~output_o\ : std_logic;
SIGNAL \e3~output_o\ : std_logic;
SIGNAL \f3~output_o\ : std_logic;
SIGNAL \g3~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \anomalia~input_o\ : std_logic;
SIGNAL \U6|out2~0_combout\ : std_logic;
SIGNAL \U4|U9|Add1~0_combout\ : std_logic;
SIGNAL \U4|U9|Add1~1\ : std_logic;
SIGNAL \U4|U9|Add1~2_combout\ : std_logic;
SIGNAL \U4|U9|Add1~3\ : std_logic;
SIGNAL \U4|U9|Add1~4_combout\ : std_logic;
SIGNAL \U4|U9|Add1~5\ : std_logic;
SIGNAL \U4|U9|Add1~6_combout\ : std_logic;
SIGNAL \U4|U9|Add1~7\ : std_logic;
SIGNAL \U4|U9|Add1~8_combout\ : std_logic;
SIGNAL \U4|U9|Add1~9\ : std_logic;
SIGNAL \U4|U9|Add1~10_combout\ : std_logic;
SIGNAL \U4|U9|Add1~11\ : std_logic;
SIGNAL \U4|U9|Add1~12_combout\ : std_logic;
SIGNAL \U4|U9|count2~11_combout\ : std_logic;
SIGNAL \U4|U9|Add1~13\ : std_logic;
SIGNAL \U4|U9|Add1~14_combout\ : std_logic;
SIGNAL \U4|U9|Add1~15\ : std_logic;
SIGNAL \U4|U9|Add1~16_combout\ : std_logic;
SIGNAL \U4|U9|Add1~17\ : std_logic;
SIGNAL \U4|U9|Add1~18_combout\ : std_logic;
SIGNAL \U4|U9|Add1~19\ : std_logic;
SIGNAL \U4|U9|Add1~20_combout\ : std_logic;
SIGNAL \U4|U9|Add1~21\ : std_logic;
SIGNAL \U4|U9|Add1~22_combout\ : std_logic;
SIGNAL \U4|U9|count2~10_combout\ : std_logic;
SIGNAL \U4|U9|Add1~23\ : std_logic;
SIGNAL \U4|U9|Add1~24_combout\ : std_logic;
SIGNAL \U4|U9|count2~9_combout\ : std_logic;
SIGNAL \U4|U9|Add1~25\ : std_logic;
SIGNAL \U4|U9|Add1~26_combout\ : std_logic;
SIGNAL \U4|U9|count2~8_combout\ : std_logic;
SIGNAL \U4|U9|Add1~27\ : std_logic;
SIGNAL \U4|U9|Add1~28_combout\ : std_logic;
SIGNAL \U4|U9|count2~7_combout\ : std_logic;
SIGNAL \U4|U9|Add1~29\ : std_logic;
SIGNAL \U4|U9|Add1~30_combout\ : std_logic;
SIGNAL \U4|U9|Add1~31\ : std_logic;
SIGNAL \U4|U9|Add1~32_combout\ : std_logic;
SIGNAL \U4|U9|count2~6_combout\ : std_logic;
SIGNAL \U4|U9|Add1~33\ : std_logic;
SIGNAL \U4|U9|Add1~34_combout\ : std_logic;
SIGNAL \U4|U9|Add1~35\ : std_logic;
SIGNAL \U4|U9|Add1~36_combout\ : std_logic;
SIGNAL \U4|U9|count2~5_combout\ : std_logic;
SIGNAL \U4|U9|Add1~37\ : std_logic;
SIGNAL \U4|U9|Add1~38_combout\ : std_logic;
SIGNAL \U4|U9|count2~4_combout\ : std_logic;
SIGNAL \U4|U9|Add1~39\ : std_logic;
SIGNAL \U4|U9|Add1~40_combout\ : std_logic;
SIGNAL \U4|U9|count2~3_combout\ : std_logic;
SIGNAL \U4|U9|Add1~41\ : std_logic;
SIGNAL \U4|U9|Add1~42_combout\ : std_logic;
SIGNAL \U4|U9|count2~2_combout\ : std_logic;
SIGNAL \U4|U9|Add1~43\ : std_logic;
SIGNAL \U4|U9|Add1~45\ : std_logic;
SIGNAL \U4|U9|Add1~46_combout\ : std_logic;
SIGNAL \U4|U9|Add1~47\ : std_logic;
SIGNAL \U4|U9|Add1~48_combout\ : std_logic;
SIGNAL \U4|U9|Equal1~5_combout\ : std_logic;
SIGNAL \U4|U9|Equal1~0_combout\ : std_logic;
SIGNAL \U4|U9|Equal1~1_combout\ : std_logic;
SIGNAL \U4|U9|Equal1~3_combout\ : std_logic;
SIGNAL \U4|U9|Equal1~2_combout\ : std_logic;
SIGNAL \U4|U9|Equal1~4_combout\ : std_logic;
SIGNAL \U4|U9|Equal1~7_combout\ : std_logic;
SIGNAL \U4|U9|count2~1_combout\ : std_logic;
SIGNAL \U4|U9|Add1~44_combout\ : std_logic;
SIGNAL \U4|U9|Equal1~6_combout\ : std_logic;
SIGNAL \U4|U9|count2~0_combout\ : std_logic;
SIGNAL \U6|Add1~1\ : std_logic;
SIGNAL \U6|Add1~3\ : std_logic;
SIGNAL \U6|Add1~5\ : std_logic;
SIGNAL \U6|Add1~7\ : std_logic;
SIGNAL \U6|Add1~9\ : std_logic;
SIGNAL \U6|Add1~11\ : std_logic;
SIGNAL \U6|Add1~13\ : std_logic;
SIGNAL \U6|Add1~15\ : std_logic;
SIGNAL \U6|Add1~17\ : std_logic;
SIGNAL \U6|Add1~19\ : std_logic;
SIGNAL \U6|Add1~21\ : std_logic;
SIGNAL \U6|Add1~23\ : std_logic;
SIGNAL \U6|Add1~25\ : std_logic;
SIGNAL \U6|Add1~27\ : std_logic;
SIGNAL \U6|Add1~29\ : std_logic;
SIGNAL \U6|Add1~31\ : std_logic;
SIGNAL \U6|Add1~33\ : std_logic;
SIGNAL \U6|Add1~35\ : std_logic;
SIGNAL \U6|Add1~37\ : std_logic;
SIGNAL \U6|Add1~39\ : std_logic;
SIGNAL \U6|Add1~41\ : std_logic;
SIGNAL \U6|Add1~43\ : std_logic;
SIGNAL \U6|Add1~45\ : std_logic;
SIGNAL \U6|Add1~46_combout\ : std_logic;
SIGNAL \U6|Add1~44_combout\ : std_logic;
SIGNAL \U6|Add1~42_combout\ : std_logic;
SIGNAL \U6|Add1~36_combout\ : std_logic;
SIGNAL \U6|Add1~40_combout\ : std_logic;
SIGNAL \U6|Add1~38_combout\ : std_logic;
SIGNAL \U6|Add1~32_combout\ : std_logic;
SIGNAL \U6|Add1~34_combout\ : std_logic;
SIGNAL \U6|Add1~24_combout\ : std_logic;
SIGNAL \U6|Add1~26_combout\ : std_logic;
SIGNAL \U6|Add1~28_combout\ : std_logic;
SIGNAL \U6|Add1~22_combout\ : std_logic;
SIGNAL \U6|Equal1~0_combout\ : std_logic;
SIGNAL \U6|Add1~6_combout\ : std_logic;
SIGNAL \U6|Add1~8_combout\ : std_logic;
SIGNAL \U6|Add1~10_combout\ : std_logic;
SIGNAL \U6|Add1~12_combout\ : std_logic;
SIGNAL \U6|Equal1~2_combout\ : std_logic;
SIGNAL \U6|Add1~2_combout\ : std_logic;
SIGNAL \U6|Add1~0_combout\ : std_logic;
SIGNAL \U6|Add1~4_combout\ : std_logic;
SIGNAL \U6|Equal1~1_combout\ : std_logic;
SIGNAL \U6|Add1~14_combout\ : std_logic;
SIGNAL \U6|Add1~16_combout\ : std_logic;
SIGNAL \U6|Add1~18_combout\ : std_logic;
SIGNAL \U6|Add1~20_combout\ : std_logic;
SIGNAL \U6|Equal1~3_combout\ : std_logic;
SIGNAL \U6|Add1~30_combout\ : std_logic;
SIGNAL \U6|Equal1~4_combout\ : std_logic;
SIGNAL \U6|Equal1~5_combout\ : std_logic;
SIGNAL \U6|Equal1~6_combout\ : std_logic;
SIGNAL \U6|Equal1~7_combout\ : std_logic;
SIGNAL \U6|out2~q\ : std_logic;
SIGNAL \perEn~input_o\ : std_logic;
SIGNAL \perSal~input_o\ : std_logic;
SIGNAL \U4|U9|out2~0_combout\ : std_logic;
SIGNAL \U4|U9|out2~q\ : std_logic;
SIGNAL \U4|U9|out2~clkctrl_outclk\ : std_logic;
SIGNAL \U4|U4|Add0~1\ : std_logic;
SIGNAL \U4|U4|Add0~3\ : std_logic;
SIGNAL \U4|U4|Add0~4_combout\ : std_logic;
SIGNAL \U3|U1|out2~0_combout\ : std_logic;
SIGNAL \U3|U1|out2~q\ : std_logic;
SIGNAL \U3|U2|contador[0]~0_combout\ : std_logic;
SIGNAL \U3|U2|contador[0]~feeder_combout\ : std_logic;
SIGNAL \U3|U3|Equal0~combout\ : std_logic;
SIGNAL \U6|out2~clkctrl_outclk\ : std_logic;
SIGNAL \PD[3]~input_o\ : std_logic;
SIGNAL \PD[1]~input_o\ : std_logic;
SIGNAL \PD[0]~input_o\ : std_logic;
SIGNAL \PD[2]~input_o\ : std_logic;
SIGNAL \U1|U1|Equal5~0_combout\ : std_logic;
SIGNAL \PD[4]~input_o\ : std_logic;
SIGNAL \U1|U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|U1|process_0~1_combout\ : std_logic;
SIGNAL \PS[3]~input_o\ : std_logic;
SIGNAL \PB[3]~input_o\ : std_logic;
SIGNAL \PS[4]~input_o\ : std_logic;
SIGNAL \PS[0]~input_o\ : std_logic;
SIGNAL \PS[2]~input_o\ : std_logic;
SIGNAL \PS[1]~input_o\ : std_logic;
SIGNAL \U1|U1|nueva_pet~2_combout\ : std_logic;
SIGNAL \U1|U1|prev_PS[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U1|prev_PS[0]~feeder_combout\ : std_logic;
SIGNAL \U1|U1|prev_PS[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~1_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~3_combout\ : std_logic;
SIGNAL \PB[0]~input_o\ : std_logic;
SIGNAL \PB[2]~input_o\ : std_logic;
SIGNAL \PB[1]~input_o\ : std_logic;
SIGNAL \U1|U1|Equal3~0_combout\ : std_logic;
SIGNAL \PB[4]~input_o\ : std_logic;
SIGNAL \U1|U1|prev_PB[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U1|prev_PB[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|U1|process_0~3_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~12_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~13_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~0_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~4_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~5_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~10_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~11_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~6_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~7_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~8_combout\ : std_logic;
SIGNAL \U1|U1|nueva_pet~9_combout\ : std_logic;
SIGNAL \U1|U1|Equal6~0_combout\ : std_logic;
SIGNAL \U1|U1|pet2_reg[0]~7_combout\ : std_logic;
SIGNAL \U1|U1|pet2_reg[2]~6_combout\ : std_logic;
SIGNAL \U1|U1|pet2_reg[1]~5_combout\ : std_logic;
SIGNAL \U1|U3|code~2_combout\ : std_logic;
SIGNAL \U1|U1|pet1_reg[3]~4_combout\ : std_logic;
SIGNAL \U1|U3|code~0_combout\ : std_logic;
SIGNAL \U1|U3|code~3_combout\ : std_logic;
SIGNAL \U2|U1|Add2~1\ : std_logic;
SIGNAL \U2|U1|Add2~2_combout\ : std_logic;
SIGNAL \U2|U1|Add2~0_combout\ : std_logic;
SIGNAL \U2|U1|Add2~3\ : std_logic;
SIGNAL \U2|U1|Add2~5\ : std_logic;
SIGNAL \U2|U1|Add2~6_combout\ : std_logic;
SIGNAL \U2|U1|Add2~4_combout\ : std_logic;
SIGNAL \U2|U1|Add3~1_combout\ : std_logic;
SIGNAL \U2|U1|Add3~0_combout\ : std_logic;
SIGNAL \U1|U1|pet1_reg[0]~7_combout\ : std_logic;
SIGNAL \U1|U1|pet1_reg[1]~5_combout\ : std_logic;
SIGNAL \U1|U2|code~2_combout\ : std_logic;
SIGNAL \U1|U2|code~3_combout\ : std_logic;
SIGNAL \U2|U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|U2|code~0_combout\ : std_logic;
SIGNAL \U1|U2|code~1_combout\ : std_logic;
SIGNAL \U2|U1|Add0~1\ : std_logic;
SIGNAL \U2|U1|Add0~3\ : std_logic;
SIGNAL \U2|U1|Add0~4_combout\ : std_logic;
SIGNAL \U2|U1|Add0~2_combout\ : std_logic;
SIGNAL \U2|U1|Add0~5\ : std_logic;
SIGNAL \U2|U1|Add0~6_combout\ : std_logic;
SIGNAL \U2|U1|Add1~0_combout\ : std_logic;
SIGNAL \U2|U1|Add1~1_combout\ : std_logic;
SIGNAL \U2|U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U2|U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|U1|Add3~2_combout\ : std_logic;
SIGNAL \U2|U1|Add1~2_combout\ : std_logic;
SIGNAL \U2|U1|LessThan1~1_combout\ : std_logic;
SIGNAL \U2|U1|LessThan1~2_combout\ : std_logic;
SIGNAL \U2|U1|Equal1~2_combout\ : std_logic;
SIGNAL \U2|U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U2|U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[30]~10_combout\ : std_logic;
SIGNAL \U2|U1|eleccion~11_combout\ : std_logic;
SIGNAL \U2|U1|Equal0~2_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[2]~15_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[2]~14_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[2]~16_combout\ : std_logic;
SIGNAL \U2|U1|subir~0_combout\ : std_logic;
SIGNAL \U2|U1|subir~1_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[30]~17_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[30]~17clkctrl_outclk\ : std_logic;
SIGNAL \U2|U1|eleccion~24_combout\ : std_logic;
SIGNAL \U2|U1|LessThan4~0_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[1]~27_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[1]~18_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[1]~28_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[1]~19_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[1]~20_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[0]~22_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[0]~21_combout\ : std_logic;
SIGNAL \U2|U1|eleccion[0]~23_combout\ : std_logic;
SIGNAL \U2|U1|LessThan2~0_combout\ : std_logic;
SIGNAL \U2|U1|subir~3_combout\ : std_logic;
SIGNAL \U2|U1|subir~4_combout\ : std_logic;
SIGNAL \U3|U4|piso[2]~6_combout\ : std_logic;
SIGNAL \U2|U1|eleccion~26_combout\ : std_logic;
SIGNAL \U2|U1|eleccion~25_combout\ : std_logic;
SIGNAL \U2|U1|LessThan5~0_combout\ : std_logic;
SIGNAL \U2|U1|LessThan4~2_combout\ : std_logic;
SIGNAL \U2|U1|LessThan5~1_combout\ : std_logic;
SIGNAL \U2|U1|LessThan5~2_combout\ : std_logic;
SIGNAL \U3|U4|piso[2]~8_combout\ : std_logic;
SIGNAL \U3|U4|piso[2]~7_combout\ : std_logic;
SIGNAL \U3|U5|Equal0~1_combout\ : std_logic;
SIGNAL \U3|U5|Equal0~0_combout\ : std_logic;
SIGNAL \U3|U5|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U1|pet1_reg[2]~6_combout\ : std_logic;
SIGNAL \U1|U1|pet1_reg[0]~0_combout\ : std_logic;
SIGNAL \U1|U1|pet1_reg[0]~2_combout\ : std_logic;
SIGNAL \U1|U1|pet1_reg[4]~3_combout\ : std_logic;
SIGNAL \U1|U1|pet1_reg[0]~1_combout\ : std_logic;
SIGNAL \U2|U1|LessThan0~3_combout\ : std_logic;
SIGNAL \U2|U1|subir~2_combout\ : std_logic;
SIGNAL \U2|U1|LessThan3~0_combout\ : std_logic;
SIGNAL \U2|U1|bajar~0_combout\ : std_logic;
SIGNAL \U2|U1|bajar~1_combout\ : std_logic;
SIGNAL \U2|U1|LessThan4~4_combout\ : std_logic;
SIGNAL \U2|U1|bajar~2_combout\ : std_logic;
SIGNAL \U3|U4|piso[0]~2_combout\ : std_logic;
SIGNAL \U3|U6|Equal0~2_combout\ : std_logic;
SIGNAL \U3|U6|Equal0~0_combout\ : std_logic;
SIGNAL \U3|U6|Equal0~3_combout\ : std_logic;
SIGNAL \U1|U1|pet2_reg[4]~3_combout\ : std_logic;
SIGNAL \U1|U1|pet2_reg[0]~0_combout\ : std_logic;
SIGNAL \U1|U1|pet2_reg[0]~1_combout\ : std_logic;
SIGNAL \U1|U1|pet2_reg[0]~2_combout\ : std_logic;
SIGNAL \U1|U1|pet2_reg[3]~4_combout\ : std_logic;
SIGNAL \U1|U3|code~1_combout\ : std_logic;
SIGNAL \U2|U1|eleccion~12_combout\ : std_logic;
SIGNAL \U2|U1|eleccion~13_combout\ : std_logic;
SIGNAL \U2|U1|LessThan4~1_combout\ : std_logic;
SIGNAL \U2|U1|LessThan4~3_combout\ : std_logic;
SIGNAL \U3|U4|piso[2]~3_combout\ : std_logic;
SIGNAL \U3|U4|piso[2]~4_combout\ : std_logic;
SIGNAL \U3|U4|Add0~0_combout\ : std_logic;
SIGNAL \U3|U4|piso[1]~5_combout\ : std_logic;
SIGNAL \U3|U6|Equal0~1_combout\ : std_logic;
SIGNAL \sllego~combout\ : std_logic;
SIGNAL \U4|U2|llego_prev~q\ : std_logic;
SIGNAL \U4|U2|capturado~0_combout\ : std_logic;
SIGNAL \U4|U2|capturado~q\ : std_logic;
SIGNAL \U4|U1|reset2_reg~2_combout\ : std_logic;
SIGNAL \U4|U1|stage[1]~1_combout\ : std_logic;
SIGNAL \U4|U1|reset2_reg~0_combout\ : std_logic;
SIGNAL \U4|U1|reset2_reg~1_combout\ : std_logic;
SIGNAL \U4|U1|process_0~0_combout\ : std_logic;
SIGNAL \U4|U1|stage[0]~2_combout\ : std_logic;
SIGNAL \U4|U1|stage[1]~0_combout\ : std_logic;
SIGNAL \U4|U1|reset2_reg~feeder_combout\ : std_logic;
SIGNAL \U4|U1|reset2_reg~q\ : std_logic;
SIGNAL \U4|U4|Add0~0_combout\ : std_logic;
SIGNAL \U4|U4|contador~1_combout\ : std_logic;
SIGNAL \U4|U4|Add0~5\ : std_logic;
SIGNAL \U4|U4|Add0~6_combout\ : std_logic;
SIGNAL \U4|U4|contador~0_combout\ : std_logic;
SIGNAL \U4|U4|Add0~7\ : std_logic;
SIGNAL \U4|U4|Add0~8_combout\ : std_logic;
SIGNAL \U4|U4|Add0~9\ : std_logic;
SIGNAL \U4|U4|Add0~10_combout\ : std_logic;
SIGNAL \U7|U3|Equal0~0_combout\ : std_logic;
SIGNAL \U4|U4|Add0~2_combout\ : std_logic;
SIGNAL \U4|U4|contador~2_combout\ : std_logic;
SIGNAL \U7|U3|Equal0~1_combout\ : std_logic;
SIGNAL \U4|U8|llego_prev~q\ : std_logic;
SIGNAL \U4|U8|capturado~0_combout\ : std_logic;
SIGNAL \U4|U8|capturado~q\ : std_logic;
SIGNAL \U5|U1|cnt[0]~8_combout\ : std_logic;
SIGNAL \U5|U1|cnt[0]~7_combout\ : std_logic;
SIGNAL \U5|U1|cnt[0]~9_combout\ : std_logic;
SIGNAL \U5|U1|cnt[1]~10_combout\ : std_logic;
SIGNAL \U5|U1|cnt[2]~1_combout\ : std_logic;
SIGNAL \U4|estadoPuerta~1_combout\ : std_logic;
SIGNAL \U5|U1|cnt[2]~2_combout\ : std_logic;
SIGNAL \U5|U1|cnt[1]~11_combout\ : std_logic;
SIGNAL \U5|U1|cnt[2]~5_combout\ : std_logic;
SIGNAL \U5|U1|cnt[2]~6_combout\ : std_logic;
SIGNAL \U7|U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U5|U1|cnt[2]~0_combout\ : std_logic;
SIGNAL \U5|U1|process_0~0_combout\ : std_logic;
SIGNAL \U5|U1|cnt[3]~3_combout\ : std_logic;
SIGNAL \U5|U1|cnt[3]~4_combout\ : std_logic;
SIGNAL \U5|U2|AmayB~0_combout\ : std_logic;
SIGNAL \U4|U1|clear_reg~0_combout\ : std_logic;
SIGNAL \U4|U1|clear_reg~1_combout\ : std_logic;
SIGNAL \U4|U1|clear_reg~q\ : std_logic;
SIGNAL \U4|U3|Add0~0_combout\ : std_logic;
SIGNAL \U4|U3|contador~1_combout\ : std_logic;
SIGNAL \U4|U1|reset1_reg~q\ : std_logic;
SIGNAL \U4|U3|Add0~1\ : std_logic;
SIGNAL \U4|U3|Add0~2_combout\ : std_logic;
SIGNAL \U4|U3|Add0~3\ : std_logic;
SIGNAL \U4|U3|Add0~5\ : std_logic;
SIGNAL \U4|U3|Add0~6_combout\ : std_logic;
SIGNAL \U4|U3|Add0~7\ : std_logic;
SIGNAL \U4|U3|Add0~8_combout\ : std_logic;
SIGNAL \U4|U3|contador~0_combout\ : std_logic;
SIGNAL \U4|U3|Add0~9\ : std_logic;
SIGNAL \U4|U3|Add0~10_combout\ : std_logic;
SIGNAL \U7|U2|Equal0~0_combout\ : std_logic;
SIGNAL \U4|U3|Add0~4_combout\ : std_logic;
SIGNAL \U4|U3|contador~2_combout\ : std_logic;
SIGNAL \U7|U2|Equal0~1_combout\ : std_logic;
SIGNAL \U4|U7|llego_prev~q\ : std_logic;
SIGNAL \U4|U7|capturado~0_combout\ : std_logic;
SIGNAL \U4|U7|capturado~q\ : std_logic;
SIGNAL \U4|estadoPuerta~0_combout\ : std_logic;
SIGNAL \botonNotificacion~input_o\ : std_logic;
SIGNAL \U7|luz~combout\ : std_logic;
SIGNAL \alarmaSonora~0_combout\ : std_logic;
SIGNAL \H1|Mux0~0_combout\ : std_logic;
SIGNAL \H1|Mux1~0_combout\ : std_logic;
SIGNAL \H1|Mux2~0_combout\ : std_logic;
SIGNAL \H1|Mux3~0_combout\ : std_logic;
SIGNAL \H1|Mux4~0_combout\ : std_logic;
SIGNAL \H1|Mux5~0_combout\ : std_logic;
SIGNAL \H1|Mux6~0_combout\ : std_logic;
SIGNAL \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ : std_logic;
SIGNAL \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~1\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~3\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~5\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~7_cout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~9_cout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~11_cout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~13_cout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~14_combout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~2_combout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|op_24~0_combout\ : std_logic;
SIGNAL \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\ : std_logic;
SIGNAL \H4|Mux0~0_combout\ : std_logic;
SIGNAL \H4|Mux1~0_combout\ : std_logic;
SIGNAL \H4|Mux2~0_combout\ : std_logic;
SIGNAL \H4|Mux3~0_combout\ : std_logic;
SIGNAL \H4|Mux4~0_combout\ : std_logic;
SIGNAL \H4|Mux5~0_combout\ : std_logic;
SIGNAL \H4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|U4|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U4|U9|count2\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \U1|U1|prev_PS\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|U1|prev_PD\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|U1|prev_PB\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|U1|pet2_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|U1|pet1_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|U1|nueva_pet\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|U1|eleccion\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|U2|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|U4|piso\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U4|U1|stage\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|U3|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U5|U1|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_botonNotificacion~input_o\ : std_logic;
SIGNAL \U4|U1|ALT_INV_reset2_reg~2_combout\ : std_logic;
SIGNAL \H4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_bajar~2_combout\ : std_logic;
SIGNAL \H2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_31_result_int[6]~10_combout\ : std_logic;

BEGIN

ww_PS <= PS;
ww_PB <= PB;
ww_PD <= PD;
ww_clk <= clk;
ww_anomalia <= anomalia;
ww_perEn <= perEn;
ww_perSal <= perSal;
ww_botonNotificacion <= botonNotificacion;
estadoPuerta <= ww_estadoPuerta;
subiendo <= ww_subiendo;
bajando <= ww_bajando;
notificacion <= ww_notificacion;
anomaliaEn <= ww_anomaliaEn;
luz <= ww_luz;
alarmaSonora <= ww_alarmaSonora;
a1 <= ww_a1;
b1 <= ww_b1;
c1 <= ww_c1;
d1 <= ww_d1;
e1 <= ww_e1;
f1 <= ww_f1;
g1 <= ww_g1;
a2 <= ww_a2;
b2 <= ww_b2;
c2 <= ww_c2;
d2 <= ww_d2;
e2 <= ww_e2;
f2 <= ww_f2;
g2 <= ww_g2;
a3 <= ww_a3;
b3 <= ww_b3;
c3 <= ww_c3;
d3 <= ww_d3;
e3 <= ww_e3;
f3 <= ww_f3;
g3 <= ww_g3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U4|U9|out2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U4|U9|out2~q\);

\U6|out2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U6|out2~q\);

\U2|U1|eleccion[30]~17clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|U1|eleccion[30]~17_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_botonNotificacion~input_o\ <= NOT \botonNotificacion~input_o\;
\U4|U1|ALT_INV_reset2_reg~2_combout\ <= NOT \U4|U1|reset2_reg~2_combout\;
\H4|ALT_INV_Mux6~0_combout\ <= NOT \H4|Mux6~0_combout\;
\U2|U1|ALT_INV_bajar~2_combout\ <= NOT \U2|U1|bajar~2_combout\;
\H2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_31_result_int[6]~10_combout\ <= NOT \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\;

-- Location: IOOBUF_X0_Y20_N9
\estadoPuerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|estadoPuerta~0_combout\,
	devoe => ww_devoe,
	o => \estadoPuerta~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\subiendo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U1|subir~4_combout\,
	devoe => ww_devoe,
	o => \subiendo~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\bajando~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U1|ALT_INV_bajar~2_combout\,
	devoe => ww_devoe,
	o => \bajando~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\notificacion~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_botonNotificacion~input_o\,
	devoe => ww_devoe,
	o => \notificacion~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\anomaliaEn~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \anomalia~input_o\,
	devoe => ww_devoe,
	o => \anomaliaEn~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\luz~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|luz~combout\,
	devoe => ww_devoe,
	o => \luz~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\alarmaSonora~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarmaSonora~0_combout\,
	devoe => ww_devoe,
	o => \alarmaSonora~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\a1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux0~0_combout\,
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
	i => \H1|Mux1~0_combout\,
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
	i => \H1|Mux2~0_combout\,
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
	i => \H1|Mux3~0_combout\,
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
	i => \H1|Mux4~0_combout\,
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
	i => \H1|Mux5~0_combout\,
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
	i => \H1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\a2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_31_result_int[6]~10_combout\,
	devoe => ww_devoe,
	o => \a2~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\b2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b2~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\c2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \c2~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\d2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_31_result_int[6]~10_combout\,
	devoe => ww_devoe,
	o => \d2~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\e2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_31_result_int[6]~10_combout\,
	devoe => ww_devoe,
	o => \e2~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\f2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_31_result_int[6]~10_combout\,
	devoe => ww_devoe,
	o => \f2~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\g2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \g2~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\a3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \a3~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\b3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \b3~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\c3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \c3~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\d3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \d3~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\e3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \e3~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\f3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \f3~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\g3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \g3~output_o\);

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

-- Location: IOIBUF_X19_Y0_N15
\anomalia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_anomalia,
	o => \anomalia~input_o\);

-- Location: LCCOMB_X22_Y27_N20
\U6|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|out2~0_combout\ = !\U6|out2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|out2~q\,
	combout => \U6|out2~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\U4|U9|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~0_combout\ = \U4|U9|count2\(0) $ (VCC)
-- \U4|U9|Add1~1\ = CARRY(\U4|U9|count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(0),
	datad => VCC,
	combout => \U4|U9|Add1~0_combout\,
	cout => \U4|U9|Add1~1\);

-- Location: FF_X23_Y28_N7
\U4|U9|count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4|U9|Add1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(0));

-- Location: LCCOMB_X23_Y28_N10
\U4|U9|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~2_combout\ = (\U4|U9|count2\(1) & (!\U4|U9|Add1~1\)) # (!\U4|U9|count2\(1) & ((\U4|U9|Add1~1\) # (GND)))
-- \U4|U9|Add1~3\ = CARRY((!\U4|U9|Add1~1\) # (!\U4|U9|count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(1),
	datad => VCC,
	cin => \U4|U9|Add1~1\,
	combout => \U4|U9|Add1~2_combout\,
	cout => \U4|U9|Add1~3\);

-- Location: FF_X23_Y28_N11
\U4|U9|count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(1));

-- Location: LCCOMB_X23_Y28_N12
\U4|U9|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~4_combout\ = (\U4|U9|count2\(2) & (\U4|U9|Add1~3\ $ (GND))) # (!\U4|U9|count2\(2) & (!\U4|U9|Add1~3\ & VCC))
-- \U4|U9|Add1~5\ = CARRY((\U4|U9|count2\(2) & !\U4|U9|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(2),
	datad => VCC,
	cin => \U4|U9|Add1~3\,
	combout => \U4|U9|Add1~4_combout\,
	cout => \U4|U9|Add1~5\);

-- Location: FF_X23_Y28_N13
\U4|U9|count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(2));

-- Location: LCCOMB_X23_Y28_N14
\U4|U9|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~6_combout\ = (\U4|U9|count2\(3) & (!\U4|U9|Add1~5\)) # (!\U4|U9|count2\(3) & ((\U4|U9|Add1~5\) # (GND)))
-- \U4|U9|Add1~7\ = CARRY((!\U4|U9|Add1~5\) # (!\U4|U9|count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(3),
	datad => VCC,
	cin => \U4|U9|Add1~5\,
	combout => \U4|U9|Add1~6_combout\,
	cout => \U4|U9|Add1~7\);

-- Location: FF_X23_Y28_N15
\U4|U9|count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(3));

-- Location: LCCOMB_X23_Y28_N16
\U4|U9|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~8_combout\ = (\U4|U9|count2\(4) & (\U4|U9|Add1~7\ $ (GND))) # (!\U4|U9|count2\(4) & (!\U4|U9|Add1~7\ & VCC))
-- \U4|U9|Add1~9\ = CARRY((\U4|U9|count2\(4) & !\U4|U9|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(4),
	datad => VCC,
	cin => \U4|U9|Add1~7\,
	combout => \U4|U9|Add1~8_combout\,
	cout => \U4|U9|Add1~9\);

-- Location: FF_X23_Y28_N17
\U4|U9|count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(4));

-- Location: LCCOMB_X23_Y28_N18
\U4|U9|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~10_combout\ = (\U4|U9|count2\(5) & (!\U4|U9|Add1~9\)) # (!\U4|U9|count2\(5) & ((\U4|U9|Add1~9\) # (GND)))
-- \U4|U9|Add1~11\ = CARRY((!\U4|U9|Add1~9\) # (!\U4|U9|count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(5),
	datad => VCC,
	cin => \U4|U9|Add1~9\,
	combout => \U4|U9|Add1~10_combout\,
	cout => \U4|U9|Add1~11\);

-- Location: FF_X23_Y28_N1
\U4|U9|count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4|U9|Add1~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(5));

-- Location: LCCOMB_X23_Y28_N20
\U4|U9|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~12_combout\ = (\U4|U9|count2\(6) & (\U4|U9|Add1~11\ $ (GND))) # (!\U4|U9|count2\(6) & (!\U4|U9|Add1~11\ & VCC))
-- \U4|U9|Add1~13\ = CARRY((\U4|U9|count2\(6) & !\U4|U9|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(6),
	datad => VCC,
	cin => \U4|U9|Add1~11\,
	combout => \U4|U9|Add1~12_combout\,
	cout => \U4|U9|Add1~13\);

-- Location: LCCOMB_X23_Y28_N2
\U4|U9|count2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~11_combout\ = (\U4|U9|Add1~12_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|Add1~12_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~11_combout\);

-- Location: FF_X23_Y28_N3
\U4|U9|count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(6));

-- Location: LCCOMB_X23_Y28_N22
\U4|U9|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~14_combout\ = (\U4|U9|count2\(7) & (!\U4|U9|Add1~13\)) # (!\U4|U9|count2\(7) & ((\U4|U9|Add1~13\) # (GND)))
-- \U4|U9|Add1~15\ = CARRY((!\U4|U9|Add1~13\) # (!\U4|U9|count2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(7),
	datad => VCC,
	cin => \U4|U9|Add1~13\,
	combout => \U4|U9|Add1~14_combout\,
	cout => \U4|U9|Add1~15\);

-- Location: FF_X23_Y28_N23
\U4|U9|count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(7));

-- Location: LCCOMB_X23_Y28_N24
\U4|U9|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~16_combout\ = (\U4|U9|count2\(8) & (\U4|U9|Add1~15\ $ (GND))) # (!\U4|U9|count2\(8) & (!\U4|U9|Add1~15\ & VCC))
-- \U4|U9|Add1~17\ = CARRY((\U4|U9|count2\(8) & !\U4|U9|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(8),
	datad => VCC,
	cin => \U4|U9|Add1~15\,
	combout => \U4|U9|Add1~16_combout\,
	cout => \U4|U9|Add1~17\);

-- Location: FF_X23_Y28_N25
\U4|U9|count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(8));

-- Location: LCCOMB_X23_Y28_N26
\U4|U9|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~18_combout\ = (\U4|U9|count2\(9) & (!\U4|U9|Add1~17\)) # (!\U4|U9|count2\(9) & ((\U4|U9|Add1~17\) # (GND)))
-- \U4|U9|Add1~19\ = CARRY((!\U4|U9|Add1~17\) # (!\U4|U9|count2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(9),
	datad => VCC,
	cin => \U4|U9|Add1~17\,
	combout => \U4|U9|Add1~18_combout\,
	cout => \U4|U9|Add1~19\);

-- Location: FF_X23_Y28_N5
\U4|U9|count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4|U9|Add1~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(9));

-- Location: LCCOMB_X23_Y28_N28
\U4|U9|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~20_combout\ = (\U4|U9|count2\(10) & (\U4|U9|Add1~19\ $ (GND))) # (!\U4|U9|count2\(10) & (!\U4|U9|Add1~19\ & VCC))
-- \U4|U9|Add1~21\ = CARRY((\U4|U9|count2\(10) & !\U4|U9|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(10),
	datad => VCC,
	cin => \U4|U9|Add1~19\,
	combout => \U4|U9|Add1~20_combout\,
	cout => \U4|U9|Add1~21\);

-- Location: FF_X23_Y28_N29
\U4|U9|count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(10));

-- Location: LCCOMB_X23_Y28_N30
\U4|U9|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~22_combout\ = (\U4|U9|count2\(11) & (!\U4|U9|Add1~21\)) # (!\U4|U9|count2\(11) & ((\U4|U9|Add1~21\) # (GND)))
-- \U4|U9|Add1~23\ = CARRY((!\U4|U9|Add1~21\) # (!\U4|U9|count2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(11),
	datad => VCC,
	cin => \U4|U9|Add1~21\,
	combout => \U4|U9|Add1~22_combout\,
	cout => \U4|U9|Add1~23\);

-- Location: LCCOMB_X23_Y27_N28
\U4|U9|count2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~10_combout\ = (\U4|U9|Add1~22_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U9|Add1~22_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~10_combout\);

-- Location: FF_X23_Y27_N29
\U4|U9|count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(11));

-- Location: LCCOMB_X23_Y27_N0
\U4|U9|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~24_combout\ = (\U4|U9|count2\(12) & (\U4|U9|Add1~23\ $ (GND))) # (!\U4|U9|count2\(12) & (!\U4|U9|Add1~23\ & VCC))
-- \U4|U9|Add1~25\ = CARRY((\U4|U9|count2\(12) & !\U4|U9|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(12),
	datad => VCC,
	cin => \U4|U9|Add1~23\,
	combout => \U4|U9|Add1~24_combout\,
	cout => \U4|U9|Add1~25\);

-- Location: LCCOMB_X22_Y27_N0
\U4|U9|count2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~9_combout\ = (\U4|U9|Add1~24_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U9|Add1~24_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~9_combout\);

-- Location: FF_X22_Y27_N1
\U4|U9|count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(12));

-- Location: LCCOMB_X23_Y27_N2
\U4|U9|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~26_combout\ = (\U4|U9|count2\(13) & (!\U4|U9|Add1~25\)) # (!\U4|U9|count2\(13) & ((\U4|U9|Add1~25\) # (GND)))
-- \U4|U9|Add1~27\ = CARRY((!\U4|U9|Add1~25\) # (!\U4|U9|count2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(13),
	datad => VCC,
	cin => \U4|U9|Add1~25\,
	combout => \U4|U9|Add1~26_combout\,
	cout => \U4|U9|Add1~27\);

-- Location: LCCOMB_X23_Y27_N26
\U4|U9|count2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~8_combout\ = (\U4|U9|Add1~26_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|Add1~26_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~8_combout\);

-- Location: FF_X23_Y27_N27
\U4|U9|count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(13));

-- Location: LCCOMB_X23_Y27_N4
\U4|U9|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~28_combout\ = (\U4|U9|count2\(14) & (\U4|U9|Add1~27\ $ (GND))) # (!\U4|U9|count2\(14) & (!\U4|U9|Add1~27\ & VCC))
-- \U4|U9|Add1~29\ = CARRY((\U4|U9|count2\(14) & !\U4|U9|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(14),
	datad => VCC,
	cin => \U4|U9|Add1~27\,
	combout => \U4|U9|Add1~28_combout\,
	cout => \U4|U9|Add1~29\);

-- Location: LCCOMB_X22_Y27_N22
\U4|U9|count2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~7_combout\ = (\U4|U9|Add1~28_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Add1~28_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~7_combout\);

-- Location: FF_X22_Y27_N23
\U4|U9|count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(14));

-- Location: LCCOMB_X23_Y27_N6
\U4|U9|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~30_combout\ = (\U4|U9|count2\(15) & (!\U4|U9|Add1~29\)) # (!\U4|U9|count2\(15) & ((\U4|U9|Add1~29\) # (GND)))
-- \U4|U9|Add1~31\ = CARRY((!\U4|U9|Add1~29\) # (!\U4|U9|count2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(15),
	datad => VCC,
	cin => \U4|U9|Add1~29\,
	combout => \U4|U9|Add1~30_combout\,
	cout => \U4|U9|Add1~31\);

-- Location: FF_X23_Y27_N7
\U4|U9|count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(15));

-- Location: LCCOMB_X23_Y27_N8
\U4|U9|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~32_combout\ = (\U4|U9|count2\(16) & (\U4|U9|Add1~31\ $ (GND))) # (!\U4|U9|count2\(16) & (!\U4|U9|Add1~31\ & VCC))
-- \U4|U9|Add1~33\ = CARRY((\U4|U9|count2\(16) & !\U4|U9|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(16),
	datad => VCC,
	cin => \U4|U9|Add1~31\,
	combout => \U4|U9|Add1~32_combout\,
	cout => \U4|U9|Add1~33\);

-- Location: LCCOMB_X22_Y27_N4
\U4|U9|count2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~6_combout\ = (\U4|U9|Add1~32_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U9|Add1~32_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~6_combout\);

-- Location: FF_X22_Y27_N5
\U4|U9|count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(16));

-- Location: LCCOMB_X23_Y27_N10
\U4|U9|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~34_combout\ = (\U4|U9|count2\(17) & (!\U4|U9|Add1~33\)) # (!\U4|U9|count2\(17) & ((\U4|U9|Add1~33\) # (GND)))
-- \U4|U9|Add1~35\ = CARRY((!\U4|U9|Add1~33\) # (!\U4|U9|count2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(17),
	datad => VCC,
	cin => \U4|U9|Add1~33\,
	combout => \U4|U9|Add1~34_combout\,
	cout => \U4|U9|Add1~35\);

-- Location: FF_X23_Y27_N11
\U4|U9|count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(17));

-- Location: LCCOMB_X23_Y27_N12
\U4|U9|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~36_combout\ = (\U4|U9|count2\(18) & (\U4|U9|Add1~35\ $ (GND))) # (!\U4|U9|count2\(18) & (!\U4|U9|Add1~35\ & VCC))
-- \U4|U9|Add1~37\ = CARRY((\U4|U9|count2\(18) & !\U4|U9|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(18),
	datad => VCC,
	cin => \U4|U9|Add1~35\,
	combout => \U4|U9|Add1~36_combout\,
	cout => \U4|U9|Add1~37\);

-- Location: LCCOMB_X22_Y27_N18
\U4|U9|count2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~5_combout\ = (\U4|U9|Add1~36_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U9|Add1~36_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~5_combout\);

-- Location: FF_X22_Y27_N19
\U4|U9|count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(18));

-- Location: LCCOMB_X23_Y27_N14
\U4|U9|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~38_combout\ = (\U4|U9|count2\(19) & (!\U4|U9|Add1~37\)) # (!\U4|U9|count2\(19) & ((\U4|U9|Add1~37\) # (GND)))
-- \U4|U9|Add1~39\ = CARRY((!\U4|U9|Add1~37\) # (!\U4|U9|count2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(19),
	datad => VCC,
	cin => \U4|U9|Add1~37\,
	combout => \U4|U9|Add1~38_combout\,
	cout => \U4|U9|Add1~39\);

-- Location: LCCOMB_X22_Y27_N16
\U4|U9|count2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~4_combout\ = (\U4|U9|Add1~38_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U9|Add1~38_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~4_combout\);

-- Location: FF_X22_Y27_N17
\U4|U9|count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(19));

-- Location: LCCOMB_X23_Y27_N16
\U4|U9|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~40_combout\ = (\U4|U9|count2\(20) & (\U4|U9|Add1~39\ $ (GND))) # (!\U4|U9|count2\(20) & (!\U4|U9|Add1~39\ & VCC))
-- \U4|U9|Add1~41\ = CARRY((\U4|U9|count2\(20) & !\U4|U9|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(20),
	datad => VCC,
	cin => \U4|U9|Add1~39\,
	combout => \U4|U9|Add1~40_combout\,
	cout => \U4|U9|Add1~41\);

-- Location: LCCOMB_X22_Y27_N14
\U4|U9|count2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~3_combout\ = (\U4|U9|Add1~40_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U9|Add1~40_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~3_combout\);

-- Location: FF_X22_Y27_N15
\U4|U9|count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(20));

-- Location: LCCOMB_X23_Y27_N18
\U4|U9|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~42_combout\ = (\U4|U9|count2\(21) & (!\U4|U9|Add1~41\)) # (!\U4|U9|count2\(21) & ((\U4|U9|Add1~41\) # (GND)))
-- \U4|U9|Add1~43\ = CARRY((!\U4|U9|Add1~41\) # (!\U4|U9|count2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(21),
	datad => VCC,
	cin => \U4|U9|Add1~41\,
	combout => \U4|U9|Add1~42_combout\,
	cout => \U4|U9|Add1~43\);

-- Location: LCCOMB_X22_Y27_N8
\U4|U9|count2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~2_combout\ = (\U4|U9|Add1~42_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|Add1~42_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~2_combout\);

-- Location: FF_X22_Y27_N9
\U4|U9|count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(21));

-- Location: LCCOMB_X23_Y27_N20
\U4|U9|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~44_combout\ = (\U4|U9|count2\(22) & (\U4|U9|Add1~43\ $ (GND))) # (!\U4|U9|count2\(22) & (!\U4|U9|Add1~43\ & VCC))
-- \U4|U9|Add1~45\ = CARRY((\U4|U9|count2\(22) & !\U4|U9|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(22),
	datad => VCC,
	cin => \U4|U9|Add1~43\,
	combout => \U4|U9|Add1~44_combout\,
	cout => \U4|U9|Add1~45\);

-- Location: LCCOMB_X23_Y27_N22
\U4|U9|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~46_combout\ = (\U4|U9|count2\(23) & (!\U4|U9|Add1~45\)) # (!\U4|U9|count2\(23) & ((\U4|U9|Add1~45\) # (GND)))
-- \U4|U9|Add1~47\ = CARRY((!\U4|U9|Add1~45\) # (!\U4|U9|count2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(23),
	datad => VCC,
	cin => \U4|U9|Add1~45\,
	combout => \U4|U9|Add1~46_combout\,
	cout => \U4|U9|Add1~47\);

-- Location: FF_X23_Y27_N23
\U4|U9|count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(23));

-- Location: LCCOMB_X23_Y27_N24
\U4|U9|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Add1~48_combout\ = \U4|U9|Add1~47\ $ (!\U4|U9|count2\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U4|U9|count2\(24),
	cin => \U4|U9|Add1~47\,
	combout => \U4|U9|Add1~48_combout\);

-- Location: LCCOMB_X22_Y27_N24
\U4|U9|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Equal1~5_combout\ = (\U4|U9|Add1~32_combout\ & (\U4|U9|Add1~36_combout\ & (\U4|U9|Add1~38_combout\ & !\U4|U9|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Add1~32_combout\,
	datab => \U4|U9|Add1~36_combout\,
	datac => \U4|U9|Add1~38_combout\,
	datad => \U4|U9|Add1~34_combout\,
	combout => \U4|U9|Equal1~5_combout\);

-- Location: LCCOMB_X23_Y28_N6
\U4|U9|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Equal1~0_combout\ = (!\U4|U9|Add1~6_combout\ & (!\U4|U9|Add1~2_combout\ & (!\U4|U9|Add1~0_combout\ & !\U4|U9|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Add1~6_combout\,
	datab => \U4|U9|Add1~2_combout\,
	datac => \U4|U9|Add1~0_combout\,
	datad => \U4|U9|Add1~4_combout\,
	combout => \U4|U9|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\U4|U9|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Equal1~1_combout\ = (!\U4|U9|Add1~14_combout\ & (!\U4|U9|Add1~8_combout\ & (!\U4|U9|Add1~10_combout\ & \U4|U9|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Add1~14_combout\,
	datab => \U4|U9|Add1~8_combout\,
	datac => \U4|U9|Add1~10_combout\,
	datad => \U4|U9|Add1~12_combout\,
	combout => \U4|U9|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y27_N26
\U4|U9|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Equal1~3_combout\ = (\U4|U9|Add1~28_combout\ & (\U4|U9|Add1~24_combout\ & (\U4|U9|Add1~26_combout\ & !\U4|U9|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Add1~28_combout\,
	datab => \U4|U9|Add1~24_combout\,
	datac => \U4|U9|Add1~26_combout\,
	datad => \U4|U9|Add1~30_combout\,
	combout => \U4|U9|Equal1~3_combout\);

-- Location: LCCOMB_X23_Y28_N4
\U4|U9|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Equal1~2_combout\ = (\U4|U9|Add1~22_combout\ & (!\U4|U9|Add1~16_combout\ & (!\U4|U9|Add1~18_combout\ & !\U4|U9|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Add1~22_combout\,
	datab => \U4|U9|Add1~16_combout\,
	datac => \U4|U9|Add1~18_combout\,
	datad => \U4|U9|Add1~20_combout\,
	combout => \U4|U9|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y27_N12
\U4|U9|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Equal1~4_combout\ = (\U4|U9|Equal1~0_combout\ & (\U4|U9|Equal1~1_combout\ & (\U4|U9|Equal1~3_combout\ & \U4|U9|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Equal1~0_combout\,
	datab => \U4|U9|Equal1~1_combout\,
	datac => \U4|U9|Equal1~3_combout\,
	datad => \U4|U9|Equal1~2_combout\,
	combout => \U4|U9|Equal1~4_combout\);

-- Location: LCCOMB_X22_Y27_N10
\U4|U9|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Equal1~7_combout\ = (\U4|U9|Add1~48_combout\ & (\U4|U9|Equal1~5_combout\ & (\U4|U9|Equal1~6_combout\ & \U4|U9|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Add1~48_combout\,
	datab => \U4|U9|Equal1~5_combout\,
	datac => \U4|U9|Equal1~6_combout\,
	datad => \U4|U9|Equal1~4_combout\,
	combout => \U4|U9|Equal1~7_combout\);

-- Location: LCCOMB_X22_Y27_N2
\U4|U9|count2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~1_combout\ = (\U4|U9|Add1~44_combout\ & !\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U9|Add1~44_combout\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|count2~1_combout\);

-- Location: FF_X22_Y27_N3
\U4|U9|count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(22));

-- Location: LCCOMB_X23_Y27_N30
\U4|U9|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|Equal1~6_combout\ = (\U4|U9|Add1~44_combout\ & (\U4|U9|Add1~40_combout\ & (!\U4|U9|Add1~46_combout\ & \U4|U9|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Add1~44_combout\,
	datab => \U4|U9|Add1~40_combout\,
	datac => \U4|U9|Add1~46_combout\,
	datad => \U4|U9|Add1~42_combout\,
	combout => \U4|U9|Equal1~6_combout\);

-- Location: LCCOMB_X22_Y27_N28
\U4|U9|count2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|count2~0_combout\ = (\U4|U9|Add1~48_combout\ & (((!\U4|U9|Equal1~4_combout\) # (!\U4|U9|Equal1~5_combout\)) # (!\U4|U9|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|Equal1~6_combout\,
	datab => \U4|U9|Equal1~5_combout\,
	datac => \U4|U9|Equal1~4_combout\,
	datad => \U4|U9|Add1~48_combout\,
	combout => \U4|U9|count2~0_combout\);

-- Location: FF_X22_Y27_N29
\U4|U9|count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U9|count2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|count2\(24));

-- Location: LCCOMB_X24_Y28_N8
\U6|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~0_combout\ = (\U4|U9|count2\(1) & (\U4|U9|count2\(0) $ (VCC))) # (!\U4|U9|count2\(1) & (\U4|U9|count2\(0) & VCC))
-- \U6|Add1~1\ = CARRY((\U4|U9|count2\(1) & \U4|U9|count2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(1),
	datab => \U4|U9|count2\(0),
	datad => VCC,
	combout => \U6|Add1~0_combout\,
	cout => \U6|Add1~1\);

-- Location: LCCOMB_X24_Y28_N10
\U6|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~2_combout\ = (\U4|U9|count2\(2) & (!\U6|Add1~1\)) # (!\U4|U9|count2\(2) & ((\U6|Add1~1\) # (GND)))
-- \U6|Add1~3\ = CARRY((!\U6|Add1~1\) # (!\U4|U9|count2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(2),
	datad => VCC,
	cin => \U6|Add1~1\,
	combout => \U6|Add1~2_combout\,
	cout => \U6|Add1~3\);

-- Location: LCCOMB_X24_Y28_N12
\U6|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~4_combout\ = (\U4|U9|count2\(3) & (\U6|Add1~3\ $ (GND))) # (!\U4|U9|count2\(3) & (!\U6|Add1~3\ & VCC))
-- \U6|Add1~5\ = CARRY((\U4|U9|count2\(3) & !\U6|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(3),
	datad => VCC,
	cin => \U6|Add1~3\,
	combout => \U6|Add1~4_combout\,
	cout => \U6|Add1~5\);

-- Location: LCCOMB_X24_Y28_N14
\U6|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~6_combout\ = (\U4|U9|count2\(4) & (!\U6|Add1~5\)) # (!\U4|U9|count2\(4) & ((\U6|Add1~5\) # (GND)))
-- \U6|Add1~7\ = CARRY((!\U6|Add1~5\) # (!\U4|U9|count2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(4),
	datad => VCC,
	cin => \U6|Add1~5\,
	combout => \U6|Add1~6_combout\,
	cout => \U6|Add1~7\);

-- Location: LCCOMB_X24_Y28_N16
\U6|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~8_combout\ = (\U4|U9|count2\(5) & (\U6|Add1~7\ $ (GND))) # (!\U4|U9|count2\(5) & (!\U6|Add1~7\ & VCC))
-- \U6|Add1~9\ = CARRY((\U4|U9|count2\(5) & !\U6|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(5),
	datad => VCC,
	cin => \U6|Add1~7\,
	combout => \U6|Add1~8_combout\,
	cout => \U6|Add1~9\);

-- Location: LCCOMB_X24_Y28_N18
\U6|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~10_combout\ = (\U4|U9|count2\(6) & (!\U6|Add1~9\)) # (!\U4|U9|count2\(6) & ((\U6|Add1~9\) # (GND)))
-- \U6|Add1~11\ = CARRY((!\U6|Add1~9\) # (!\U4|U9|count2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(6),
	datad => VCC,
	cin => \U6|Add1~9\,
	combout => \U6|Add1~10_combout\,
	cout => \U6|Add1~11\);

-- Location: LCCOMB_X24_Y28_N20
\U6|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~12_combout\ = (\U4|U9|count2\(7) & (\U6|Add1~11\ $ (GND))) # (!\U4|U9|count2\(7) & (!\U6|Add1~11\ & VCC))
-- \U6|Add1~13\ = CARRY((\U4|U9|count2\(7) & !\U6|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(7),
	datad => VCC,
	cin => \U6|Add1~11\,
	combout => \U6|Add1~12_combout\,
	cout => \U6|Add1~13\);

-- Location: LCCOMB_X24_Y28_N22
\U6|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~14_combout\ = (\U4|U9|count2\(8) & (!\U6|Add1~13\)) # (!\U4|U9|count2\(8) & ((\U6|Add1~13\) # (GND)))
-- \U6|Add1~15\ = CARRY((!\U6|Add1~13\) # (!\U4|U9|count2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(8),
	datad => VCC,
	cin => \U6|Add1~13\,
	combout => \U6|Add1~14_combout\,
	cout => \U6|Add1~15\);

-- Location: LCCOMB_X24_Y28_N24
\U6|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~16_combout\ = (\U4|U9|count2\(9) & (\U6|Add1~15\ $ (GND))) # (!\U4|U9|count2\(9) & (!\U6|Add1~15\ & VCC))
-- \U6|Add1~17\ = CARRY((\U4|U9|count2\(9) & !\U6|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(9),
	datad => VCC,
	cin => \U6|Add1~15\,
	combout => \U6|Add1~16_combout\,
	cout => \U6|Add1~17\);

-- Location: LCCOMB_X24_Y28_N26
\U6|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~18_combout\ = (\U4|U9|count2\(10) & (!\U6|Add1~17\)) # (!\U4|U9|count2\(10) & ((\U6|Add1~17\) # (GND)))
-- \U6|Add1~19\ = CARRY((!\U6|Add1~17\) # (!\U4|U9|count2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(10),
	datad => VCC,
	cin => \U6|Add1~17\,
	combout => \U6|Add1~18_combout\,
	cout => \U6|Add1~19\);

-- Location: LCCOMB_X24_Y28_N28
\U6|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~20_combout\ = (\U4|U9|count2\(11) & (\U6|Add1~19\ $ (GND))) # (!\U4|U9|count2\(11) & (!\U6|Add1~19\ & VCC))
-- \U6|Add1~21\ = CARRY((\U4|U9|count2\(11) & !\U6|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(11),
	datad => VCC,
	cin => \U6|Add1~19\,
	combout => \U6|Add1~20_combout\,
	cout => \U6|Add1~21\);

-- Location: LCCOMB_X24_Y28_N30
\U6|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~22_combout\ = (\U4|U9|count2\(12) & (!\U6|Add1~21\)) # (!\U4|U9|count2\(12) & ((\U6|Add1~21\) # (GND)))
-- \U6|Add1~23\ = CARRY((!\U6|Add1~21\) # (!\U4|U9|count2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(12),
	datad => VCC,
	cin => \U6|Add1~21\,
	combout => \U6|Add1~22_combout\,
	cout => \U6|Add1~23\);

-- Location: LCCOMB_X24_Y27_N0
\U6|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~24_combout\ = (\U4|U9|count2\(13) & (\U6|Add1~23\ $ (GND))) # (!\U4|U9|count2\(13) & (!\U6|Add1~23\ & VCC))
-- \U6|Add1~25\ = CARRY((\U4|U9|count2\(13) & !\U6|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(13),
	datad => VCC,
	cin => \U6|Add1~23\,
	combout => \U6|Add1~24_combout\,
	cout => \U6|Add1~25\);

-- Location: LCCOMB_X24_Y27_N2
\U6|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~26_combout\ = (\U4|U9|count2\(14) & (!\U6|Add1~25\)) # (!\U4|U9|count2\(14) & ((\U6|Add1~25\) # (GND)))
-- \U6|Add1~27\ = CARRY((!\U6|Add1~25\) # (!\U4|U9|count2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(14),
	datad => VCC,
	cin => \U6|Add1~25\,
	combout => \U6|Add1~26_combout\,
	cout => \U6|Add1~27\);

-- Location: LCCOMB_X24_Y27_N4
\U6|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~28_combout\ = (\U4|U9|count2\(15) & (\U6|Add1~27\ $ (GND))) # (!\U4|U9|count2\(15) & (!\U6|Add1~27\ & VCC))
-- \U6|Add1~29\ = CARRY((\U4|U9|count2\(15) & !\U6|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(15),
	datad => VCC,
	cin => \U6|Add1~27\,
	combout => \U6|Add1~28_combout\,
	cout => \U6|Add1~29\);

-- Location: LCCOMB_X24_Y27_N6
\U6|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~30_combout\ = (\U4|U9|count2\(16) & (!\U6|Add1~29\)) # (!\U4|U9|count2\(16) & ((\U6|Add1~29\) # (GND)))
-- \U6|Add1~31\ = CARRY((!\U6|Add1~29\) # (!\U4|U9|count2\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(16),
	datad => VCC,
	cin => \U6|Add1~29\,
	combout => \U6|Add1~30_combout\,
	cout => \U6|Add1~31\);

-- Location: LCCOMB_X24_Y27_N8
\U6|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~32_combout\ = (\U4|U9|count2\(17) & (\U6|Add1~31\ $ (GND))) # (!\U4|U9|count2\(17) & (!\U6|Add1~31\ & VCC))
-- \U6|Add1~33\ = CARRY((\U4|U9|count2\(17) & !\U6|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(17),
	datad => VCC,
	cin => \U6|Add1~31\,
	combout => \U6|Add1~32_combout\,
	cout => \U6|Add1~33\);

-- Location: LCCOMB_X24_Y27_N10
\U6|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~34_combout\ = (\U4|U9|count2\(18) & (!\U6|Add1~33\)) # (!\U4|U9|count2\(18) & ((\U6|Add1~33\) # (GND)))
-- \U6|Add1~35\ = CARRY((!\U6|Add1~33\) # (!\U4|U9|count2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(18),
	datad => VCC,
	cin => \U6|Add1~33\,
	combout => \U6|Add1~34_combout\,
	cout => \U6|Add1~35\);

-- Location: LCCOMB_X24_Y27_N12
\U6|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~36_combout\ = (\U4|U9|count2\(19) & (\U6|Add1~35\ $ (GND))) # (!\U4|U9|count2\(19) & (!\U6|Add1~35\ & VCC))
-- \U6|Add1~37\ = CARRY((\U4|U9|count2\(19) & !\U6|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(19),
	datad => VCC,
	cin => \U6|Add1~35\,
	combout => \U6|Add1~36_combout\,
	cout => \U6|Add1~37\);

-- Location: LCCOMB_X24_Y27_N14
\U6|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~38_combout\ = (\U4|U9|count2\(20) & (!\U6|Add1~37\)) # (!\U4|U9|count2\(20) & ((\U6|Add1~37\) # (GND)))
-- \U6|Add1~39\ = CARRY((!\U6|Add1~37\) # (!\U4|U9|count2\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(20),
	datad => VCC,
	cin => \U6|Add1~37\,
	combout => \U6|Add1~38_combout\,
	cout => \U6|Add1~39\);

-- Location: LCCOMB_X24_Y27_N16
\U6|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~40_combout\ = (\U4|U9|count2\(21) & (\U6|Add1~39\ $ (GND))) # (!\U4|U9|count2\(21) & (!\U6|Add1~39\ & VCC))
-- \U6|Add1~41\ = CARRY((\U4|U9|count2\(21) & !\U6|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U9|count2\(21),
	datad => VCC,
	cin => \U6|Add1~39\,
	combout => \U6|Add1~40_combout\,
	cout => \U6|Add1~41\);

-- Location: LCCOMB_X24_Y27_N18
\U6|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~42_combout\ = (\U4|U9|count2\(22) & (!\U6|Add1~41\)) # (!\U4|U9|count2\(22) & ((\U6|Add1~41\) # (GND)))
-- \U6|Add1~43\ = CARRY((!\U6|Add1~41\) # (!\U4|U9|count2\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(22),
	datad => VCC,
	cin => \U6|Add1~41\,
	combout => \U6|Add1~42_combout\,
	cout => \U6|Add1~43\);

-- Location: LCCOMB_X24_Y27_N20
\U6|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~44_combout\ = (\U4|U9|count2\(23) & (\U6|Add1~43\ $ (GND))) # (!\U4|U9|count2\(23) & (!\U6|Add1~43\ & VCC))
-- \U6|Add1~45\ = CARRY((\U4|U9|count2\(23) & !\U6|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|count2\(23),
	datad => VCC,
	cin => \U6|Add1~43\,
	combout => \U6|Add1~44_combout\,
	cout => \U6|Add1~45\);

-- Location: LCCOMB_X24_Y27_N22
\U6|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Add1~46_combout\ = \U6|Add1~45\ $ (\U4|U9|count2\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U4|U9|count2\(24),
	cin => \U6|Add1~45\,
	combout => \U6|Add1~46_combout\);

-- Location: LCCOMB_X24_Y27_N26
\U6|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~0_combout\ = (\U6|Add1~24_combout\ & (\U6|Add1~26_combout\ & (!\U6|Add1~28_combout\ & \U6|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~24_combout\,
	datab => \U6|Add1~26_combout\,
	datac => \U6|Add1~28_combout\,
	datad => \U6|Add1~22_combout\,
	combout => \U6|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\U6|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~2_combout\ = (!\U6|Add1~6_combout\ & (!\U6|Add1~8_combout\ & (\U6|Add1~10_combout\ & !\U6|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~6_combout\,
	datab => \U6|Add1~8_combout\,
	datac => \U6|Add1~10_combout\,
	datad => \U6|Add1~12_combout\,
	combout => \U6|Equal1~2_combout\);

-- Location: LCCOMB_X24_Y28_N0
\U6|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~1_combout\ = (!\U6|Add1~2_combout\ & (\U4|U9|count2\(0) & (!\U6|Add1~0_combout\ & !\U6|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~2_combout\,
	datab => \U4|U9|count2\(0),
	datac => \U6|Add1~0_combout\,
	datad => \U6|Add1~4_combout\,
	combout => \U6|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y28_N4
\U6|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~3_combout\ = (!\U6|Add1~14_combout\ & (!\U6|Add1~16_combout\ & (!\U6|Add1~18_combout\ & \U6|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~14_combout\,
	datab => \U6|Add1~16_combout\,
	datac => \U6|Add1~18_combout\,
	datad => \U6|Add1~20_combout\,
	combout => \U6|Equal1~3_combout\);

-- Location: LCCOMB_X24_Y28_N2
\U6|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~4_combout\ = (\U6|Equal1~2_combout\ & (\U6|Equal1~1_combout\ & (\U6|Equal1~3_combout\ & \U6|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Equal1~2_combout\,
	datab => \U6|Equal1~1_combout\,
	datac => \U6|Equal1~3_combout\,
	datad => \U6|Add1~30_combout\,
	combout => \U6|Equal1~4_combout\);

-- Location: LCCOMB_X24_Y27_N28
\U6|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~5_combout\ = (!\U6|Add1~32_combout\ & (\U6|Add1~34_combout\ & (\U6|Equal1~0_combout\ & \U6|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~32_combout\,
	datab => \U6|Add1~34_combout\,
	datac => \U6|Equal1~0_combout\,
	datad => \U6|Equal1~4_combout\,
	combout => \U6|Equal1~5_combout\);

-- Location: LCCOMB_X24_Y27_N24
\U6|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~6_combout\ = (\U6|Add1~36_combout\ & (\U6|Add1~40_combout\ & (\U6|Add1~38_combout\ & \U6|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~36_combout\,
	datab => \U6|Add1~40_combout\,
	datac => \U6|Add1~38_combout\,
	datad => \U6|Equal1~5_combout\,
	combout => \U6|Equal1~6_combout\);

-- Location: LCCOMB_X24_Y27_N30
\U6|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal1~7_combout\ = (\U6|Add1~46_combout\ & (!\U6|Add1~44_combout\ & (\U6|Add1~42_combout\ & \U6|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add1~46_combout\,
	datab => \U6|Add1~44_combout\,
	datac => \U6|Add1~42_combout\,
	datad => \U6|Equal1~6_combout\,
	combout => \U6|Equal1~7_combout\);

-- Location: FF_X24_Y27_N21
\U6|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U6|out2~0_combout\,
	sload => VCC,
	ena => \U6|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|out2~q\);

-- Location: IOIBUF_X0_Y23_N15
\perEn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_perEn,
	o => \perEn~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\perSal~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_perSal,
	o => \perSal~input_o\);

-- Location: LCCOMB_X22_Y27_N6
\U4|U9|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U9|out2~0_combout\ = \U4|U9|out2~q\ $ (\U4|U9|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U9|out2~q\,
	datad => \U4|U9|Equal1~7_combout\,
	combout => \U4|U9|out2~0_combout\);

-- Location: FF_X22_Y27_N31
\U4|U9|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4|U9|out2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U9|out2~q\);

-- Location: CLKCTRL_G11
\U4|U9|out2~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U4|U9|out2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U4|U9|out2~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y24_N18
\U4|U4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|Add0~0_combout\ = \U4|U4|contador\(0) $ (VCC)
-- \U4|U4|Add0~1\ = CARRY(\U4|U4|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U4|contador\(0),
	datad => VCC,
	combout => \U4|U4|Add0~0_combout\,
	cout => \U4|U4|Add0~1\);

-- Location: LCCOMB_X30_Y24_N20
\U4|U4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|Add0~2_combout\ = (\U4|U4|contador\(1) & (!\U4|U4|Add0~1\)) # (!\U4|U4|contador\(1) & ((\U4|U4|Add0~1\) # (GND)))
-- \U4|U4|Add0~3\ = CARRY((!\U4|U4|Add0~1\) # (!\U4|U4|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U4|contador\(1),
	datad => VCC,
	cin => \U4|U4|Add0~1\,
	combout => \U4|U4|Add0~2_combout\,
	cout => \U4|U4|Add0~3\);

-- Location: LCCOMB_X30_Y24_N22
\U4|U4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|Add0~4_combout\ = (\U4|U4|contador\(2) & (\U4|U4|Add0~3\ $ (GND))) # (!\U4|U4|contador\(2) & (!\U4|U4|Add0~3\ & VCC))
-- \U4|U4|Add0~5\ = CARRY((\U4|U4|contador\(2) & !\U4|U4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U4|contador\(2),
	datad => VCC,
	cin => \U4|U4|Add0~3\,
	combout => \U4|U4|Add0~4_combout\,
	cout => \U4|U4|Add0~5\);

-- Location: LCCOMB_X22_Y27_N30
\U3|U1|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U1|out2~0_combout\ = !\U3|U1|out2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U1|out2~q\,
	combout => \U3|U1|out2~0_combout\);

-- Location: FF_X24_Y27_N11
\U3|U1|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U3|U1|out2~0_combout\,
	sload => VCC,
	ena => \U6|Equal1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|out2~q\);

-- Location: LCCOMB_X26_Y23_N22
\U3|U2|contador[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|contador[0]~0_combout\ = !\U3|U2|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U2|contador\(0),
	combout => \U3|U2|contador[0]~0_combout\);

-- Location: LCCOMB_X26_Y23_N6
\U3|U2|contador[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U2|contador[0]~feeder_combout\ = \U3|U2|contador[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U2|contador[0]~0_combout\,
	combout => \U3|U2|contador[0]~feeder_combout\);

-- Location: FF_X26_Y23_N7
\U3|U2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|out2~q\,
	d => \U3|U2|contador[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U2|contador\(0));

-- Location: LCCOMB_X26_Y23_N24
\U3|U3|Equal0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U3|Equal0~combout\ = LCELL(\U3|U2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U2|contador\(0),
	combout => \U3|U3|Equal0~combout\);

-- Location: CLKCTRL_G14
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

-- Location: IOIBUF_X9_Y0_N15
\PD[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(3),
	o => \PD[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\PD[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(1),
	o => \PD[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\PD[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(0),
	o => \PD[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\PD[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(2),
	o => \PD[2]~input_o\);

-- Location: LCCOMB_X32_Y24_N12
\U1|U1|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|Equal5~0_combout\ = (!\PD[1]~input_o\ & (!\PD[3]~input_o\ & (!\PD[0]~input_o\ & !\PD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PD[1]~input_o\,
	datab => \PD[3]~input_o\,
	datac => \PD[0]~input_o\,
	datad => \PD[2]~input_o\,
	combout => \U1|U1|Equal5~0_combout\);

-- Location: IOIBUF_X11_Y0_N29
\PD[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(4),
	o => \PD[4]~input_o\);

-- Location: FF_X32_Y24_N5
\U1|U1|prev_PD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PD[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PD\(4));

-- Location: FF_X32_Y24_N11
\U1|U1|prev_PD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PD[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PD\(1));

-- Location: FF_X32_Y24_N17
\U1|U1|prev_PD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PD[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PD\(2));

-- Location: FF_X32_Y24_N19
\U1|U1|prev_PD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PD[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PD\(3));

-- Location: FF_X32_Y24_N13
\U1|U1|prev_PD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PD[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PD\(0));

-- Location: LCCOMB_X32_Y24_N18
\U1|U1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|process_0~0_combout\ = (!\U1|U1|prev_PD\(1) & (!\U1|U1|prev_PD\(2) & (!\U1|U1|prev_PD\(3) & !\U1|U1|prev_PD\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|prev_PD\(1),
	datab => \U1|U1|prev_PD\(2),
	datac => \U1|U1|prev_PD\(3),
	datad => \U1|U1|prev_PD\(0),
	combout => \U1|U1|process_0~0_combout\);

-- Location: LCCOMB_X32_Y24_N4
\U1|U1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|process_0~1_combout\ = (!\U1|U1|prev_PD\(4) & (\U1|U1|process_0~0_combout\ & ((\PD[4]~input_o\) # (!\U1|U1|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Equal5~0_combout\,
	datab => \PD[4]~input_o\,
	datac => \U1|U1|prev_PD\(4),
	datad => \U1|U1|process_0~0_combout\,
	combout => \U1|U1|process_0~1_combout\);

-- Location: IOIBUF_X0_Y23_N8
\PS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(3),
	o => \PS[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\PB[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(3),
	o => \PB[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\PS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(4),
	o => \PS[4]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\PS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(0),
	o => \PS[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\PS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(2),
	o => \PS[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\PS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(1),
	o => \PS[1]~input_o\);

-- Location: LCCOMB_X32_Y24_N28
\U1|U1|nueva_pet~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~2_combout\ = (!\PS[0]~input_o\ & (!\PS[2]~input_o\ & (!\PS[3]~input_o\ & !\PS[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[0]~input_o\,
	datab => \PS[2]~input_o\,
	datac => \PS[3]~input_o\,
	datad => \PS[1]~input_o\,
	combout => \U1|U1|nueva_pet~2_combout\);

-- Location: FF_X32_Y24_N27
\U1|U1|prev_PS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PS[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PS\(4));

-- Location: LCCOMB_X32_Y24_N22
\U1|U1|prev_PS[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|prev_PS[1]~feeder_combout\ = \PS[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS[1]~input_o\,
	combout => \U1|U1|prev_PS[1]~feeder_combout\);

-- Location: FF_X32_Y24_N23
\U1|U1|prev_PS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|prev_PS[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PS\(1));

-- Location: LCCOMB_X32_Y24_N20
\U1|U1|prev_PS[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|prev_PS[0]~feeder_combout\ = \PS[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS[0]~input_o\,
	combout => \U1|U1|prev_PS[0]~feeder_combout\);

-- Location: FF_X32_Y24_N21
\U1|U1|prev_PS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|prev_PS[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PS\(0));

-- Location: FF_X32_Y24_N7
\U1|U1|prev_PS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PS[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PS\(3));

-- Location: LCCOMB_X32_Y24_N0
\U1|U1|prev_PS[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|prev_PS[2]~feeder_combout\ = \PS[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS[2]~input_o\,
	combout => \U1|U1|prev_PS[2]~feeder_combout\);

-- Location: FF_X32_Y24_N1
\U1|U1|prev_PS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|prev_PS[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PS\(2));

-- Location: LCCOMB_X32_Y24_N6
\U1|U1|nueva_pet~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~1_combout\ = (\U1|U1|prev_PS\(1)) # ((\U1|U1|prev_PS\(0)) # ((\U1|U1|prev_PS\(3)) # (\U1|U1|prev_PS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|prev_PS\(1),
	datab => \U1|U1|prev_PS\(0),
	datac => \U1|U1|prev_PS\(3),
	datad => \U1|U1|prev_PS\(2),
	combout => \U1|U1|nueva_pet~1_combout\);

-- Location: LCCOMB_X32_Y24_N26
\U1|U1|nueva_pet~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~3_combout\ = (\U1|U1|prev_PS\(4)) # ((\U1|U1|nueva_pet~1_combout\) # ((!\PS[4]~input_o\ & \U1|U1|nueva_pet~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[4]~input_o\,
	datab => \U1|U1|nueva_pet~2_combout\,
	datac => \U1|U1|prev_PS\(4),
	datad => \U1|U1|nueva_pet~1_combout\,
	combout => \U1|U1|nueva_pet~3_combout\);

-- Location: IOIBUF_X0_Y22_N15
\PB[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(0),
	o => \PB[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\PB[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(2),
	o => \PB[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\PB[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(1),
	o => \PB[1]~input_o\);

-- Location: LCCOMB_X31_Y24_N24
\U1|U1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|Equal3~0_combout\ = (!\PB[3]~input_o\ & (!\PB[0]~input_o\ & (!\PB[2]~input_o\ & !\PB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[3]~input_o\,
	datab => \PB[0]~input_o\,
	datac => \PB[2]~input_o\,
	datad => \PB[1]~input_o\,
	combout => \U1|U1|Equal3~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\PB[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(4),
	o => \PB[4]~input_o\);

-- Location: FF_X31_Y24_N15
\U1|U1|prev_PB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PB[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PB\(4));

-- Location: FF_X31_Y24_N13
\U1|U1|prev_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PB[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PB\(0));

-- Location: LCCOMB_X31_Y24_N28
\U1|U1|prev_PB[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|prev_PB[2]~feeder_combout\ = \PB[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB[2]~input_o\,
	combout => \U1|U1|prev_PB[2]~feeder_combout\);

-- Location: FF_X31_Y24_N29
\U1|U1|prev_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|prev_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PB\(2));

-- Location: FF_X31_Y24_N11
\U1|U1|prev_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	asdata => \PB[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PB\(3));

-- Location: LCCOMB_X31_Y24_N18
\U1|U1|prev_PB[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|prev_PB[1]~feeder_combout\ = \PB[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB[1]~input_o\,
	combout => \U1|U1|prev_PB[1]~feeder_combout\);

-- Location: FF_X31_Y24_N19
\U1|U1|prev_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|prev_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|prev_PB\(1));

-- Location: LCCOMB_X31_Y24_N10
\U1|U1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|process_0~2_combout\ = (!\U1|U1|prev_PB\(0) & (!\U1|U1|prev_PB\(2) & (!\U1|U1|prev_PB\(3) & !\U1|U1|prev_PB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|prev_PB\(0),
	datab => \U1|U1|prev_PB\(2),
	datac => \U1|U1|prev_PB\(3),
	datad => \U1|U1|prev_PB\(1),
	combout => \U1|U1|process_0~2_combout\);

-- Location: LCCOMB_X31_Y24_N14
\U1|U1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|process_0~3_combout\ = (!\U1|U1|prev_PB\(4) & (\U1|U1|process_0~2_combout\ & ((\PB[4]~input_o\) # (!\U1|U1|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|Equal3~0_combout\,
	datab => \PB[4]~input_o\,
	datac => \U1|U1|prev_PB\(4),
	datad => \U1|U1|process_0~2_combout\,
	combout => \U1|U1|process_0~3_combout\);

-- Location: LCCOMB_X32_Y24_N8
\U1|U1|nueva_pet~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~12_combout\ = (\U1|U1|process_0~3_combout\ & (((\PB[3]~input_o\)))) # (!\U1|U1|process_0~3_combout\ & (\PS[3]~input_o\ & ((!\U1|U1|nueva_pet~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[3]~input_o\,
	datab => \PB[3]~input_o\,
	datac => \U1|U1|nueva_pet~3_combout\,
	datad => \U1|U1|process_0~3_combout\,
	combout => \U1|U1|nueva_pet~12_combout\);

-- Location: LCCOMB_X37_Y23_N24
\U1|U1|nueva_pet~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~13_combout\ = (\U1|U1|process_0~1_combout\ & (\PD[3]~input_o\)) # (!\U1|U1|process_0~1_combout\ & ((\U1|U1|nueva_pet~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PD[3]~input_o\,
	datac => \U1|U1|process_0~1_combout\,
	datad => \U1|U1|nueva_pet~12_combout\,
	combout => \U1|U1|nueva_pet~13_combout\);

-- Location: FF_X37_Y23_N25
\U1|U1|nueva_pet[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|nueva_pet~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|nueva_pet\(3));

-- Location: LCCOMB_X31_Y24_N8
\U1|U1|nueva_pet~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~0_combout\ = (\U1|U1|process_0~3_combout\ & (\PB[4]~input_o\)) # (!\U1|U1|process_0~3_combout\ & ((\PS[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB[4]~input_o\,
	datac => \U1|U1|process_0~3_combout\,
	datad => \PS[4]~input_o\,
	combout => \U1|U1|nueva_pet~0_combout\);

-- Location: LCCOMB_X32_Y24_N2
\U1|U1|nueva_pet~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~4_combout\ = (\U1|U1|process_0~1_combout\) # ((\U1|U1|nueva_pet~3_combout\ & !\U1|U1|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|process_0~1_combout\,
	datac => \U1|U1|nueva_pet~3_combout\,
	datad => \U1|U1|process_0~3_combout\,
	combout => \U1|U1|nueva_pet~4_combout\);

-- Location: LCCOMB_X36_Y23_N22
\U1|U1|nueva_pet~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~5_combout\ = (\PD[4]~input_o\ & ((\U1|U1|process_0~1_combout\) # ((\U1|U1|nueva_pet~0_combout\ & !\U1|U1|nueva_pet~4_combout\)))) # (!\PD[4]~input_o\ & (((\U1|U1|nueva_pet~0_combout\ & !\U1|U1|nueva_pet~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PD[4]~input_o\,
	datab => \U1|U1|process_0~1_combout\,
	datac => \U1|U1|nueva_pet~0_combout\,
	datad => \U1|U1|nueva_pet~4_combout\,
	combout => \U1|U1|nueva_pet~5_combout\);

-- Location: FF_X36_Y23_N23
\U1|U1|nueva_pet[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|nueva_pet~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|nueva_pet\(4));

-- Location: LCCOMB_X31_Y24_N30
\U1|U1|nueva_pet~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~10_combout\ = (\U1|U1|process_0~3_combout\ & ((\PB[2]~input_o\))) # (!\U1|U1|process_0~3_combout\ & (\PS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[2]~input_o\,
	datac => \U1|U1|process_0~3_combout\,
	datad => \PB[2]~input_o\,
	combout => \U1|U1|nueva_pet~10_combout\);

-- Location: LCCOMB_X36_Y23_N12
\U1|U1|nueva_pet~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~11_combout\ = (\U1|U1|process_0~1_combout\ & ((\PD[2]~input_o\) # ((\U1|U1|nueva_pet~10_combout\ & !\U1|U1|nueva_pet~4_combout\)))) # (!\U1|U1|process_0~1_combout\ & (((\U1|U1|nueva_pet~10_combout\ & !\U1|U1|nueva_pet~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|process_0~1_combout\,
	datab => \PD[2]~input_o\,
	datac => \U1|U1|nueva_pet~10_combout\,
	datad => \U1|U1|nueva_pet~4_combout\,
	combout => \U1|U1|nueva_pet~11_combout\);

-- Location: FF_X36_Y23_N13
\U1|U1|nueva_pet[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|nueva_pet~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|nueva_pet\(2));

-- Location: LCCOMB_X32_Y24_N24
\U1|U1|nueva_pet~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~6_combout\ = (!\U1|U1|nueva_pet~4_combout\ & ((\U1|U1|process_0~3_combout\ & ((\PB[0]~input_o\))) # (!\U1|U1|process_0~3_combout\ & (\PS[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|process_0~3_combout\,
	datab => \PS[0]~input_o\,
	datac => \PB[0]~input_o\,
	datad => \U1|U1|nueva_pet~4_combout\,
	combout => \U1|U1|nueva_pet~6_combout\);

-- Location: LCCOMB_X36_Y23_N0
\U1|U1|nueva_pet~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~7_combout\ = (\U1|U1|nueva_pet~6_combout\) # ((\PD[0]~input_o\ & \U1|U1|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PD[0]~input_o\,
	datac => \U1|U1|process_0~1_combout\,
	datad => \U1|U1|nueva_pet~6_combout\,
	combout => \U1|U1|nueva_pet~7_combout\);

-- Location: FF_X36_Y23_N1
\U1|U1|nueva_pet[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|nueva_pet~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|nueva_pet\(0));

-- Location: LCCOMB_X32_Y24_N30
\U1|U1|nueva_pet~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~8_combout\ = (\U1|U1|process_0~3_combout\ & ((\PB[1]~input_o\))) # (!\U1|U1|process_0~3_combout\ & (\PS[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[1]~input_o\,
	datac => \PB[1]~input_o\,
	datad => \U1|U1|process_0~3_combout\,
	combout => \U1|U1|nueva_pet~8_combout\);

-- Location: LCCOMB_X36_Y23_N14
\U1|U1|nueva_pet~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|nueva_pet~9_combout\ = (\U1|U1|nueva_pet~4_combout\ & (\PD[1]~input_o\ & (\U1|U1|process_0~1_combout\))) # (!\U1|U1|nueva_pet~4_combout\ & ((\U1|U1|nueva_pet~8_combout\) # ((\PD[1]~input_o\ & \U1|U1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet~4_combout\,
	datab => \PD[1]~input_o\,
	datac => \U1|U1|process_0~1_combout\,
	datad => \U1|U1|nueva_pet~8_combout\,
	combout => \U1|U1|nueva_pet~9_combout\);

-- Location: FF_X36_Y23_N15
\U1|U1|nueva_pet[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~clkctrl_outclk\,
	d => \U1|U1|nueva_pet~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|nueva_pet\(1));

-- Location: LCCOMB_X36_Y23_N16
\U1|U1|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|Equal6~0_combout\ = (!\U1|U1|nueva_pet\(2) & (!\U1|U1|nueva_pet\(0) & (!\U1|U1|nueva_pet\(1) & !\U1|U1|nueva_pet\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(2),
	datab => \U1|U1|nueva_pet\(0),
	datac => \U1|U1|nueva_pet\(1),
	datad => \U1|U1|nueva_pet\(3),
	combout => \U1|U1|Equal6~0_combout\);

-- Location: LCCOMB_X36_Y23_N30
\U1|U1|pet2_reg[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet2_reg[0]~7_combout\ = (\U1|U1|pet2_reg[0]~2_combout\ & (((\U1|U1|pet2_reg\(0) & !\U3|U6|Equal0~3_combout\)))) # (!\U1|U1|pet2_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(0),
	datab => \U1|U1|pet2_reg[0]~2_combout\,
	datac => \U1|U1|pet2_reg\(0),
	datad => \U3|U6|Equal0~3_combout\,
	combout => \U1|U1|pet2_reg[0]~7_combout\);

-- Location: FF_X36_Y23_N31
\U1|U1|pet2_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet2_reg[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet2_reg\(0));

-- Location: LCCOMB_X36_Y23_N8
\U1|U1|pet2_reg[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet2_reg[2]~6_combout\ = (\U1|U1|pet2_reg[0]~2_combout\ & (((\U1|U1|pet2_reg\(2) & !\U3|U6|Equal0~3_combout\)))) # (!\U1|U1|pet2_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(2),
	datab => \U1|U1|pet2_reg[0]~2_combout\,
	datac => \U1|U1|pet2_reg\(2),
	datad => \U3|U6|Equal0~3_combout\,
	combout => \U1|U1|pet2_reg[2]~6_combout\);

-- Location: FF_X36_Y23_N9
\U1|U1|pet2_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet2_reg[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet2_reg\(2));

-- Location: LCCOMB_X36_Y23_N28
\U1|U1|pet2_reg[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet2_reg[1]~5_combout\ = (\U1|U1|pet2_reg[0]~2_combout\ & (((\U1|U1|pet2_reg\(1) & !\U3|U6|Equal0~3_combout\)))) # (!\U1|U1|pet2_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(1),
	datab => \U1|U1|pet2_reg[0]~2_combout\,
	datac => \U1|U1|pet2_reg\(1),
	datad => \U3|U6|Equal0~3_combout\,
	combout => \U1|U1|pet2_reg[1]~5_combout\);

-- Location: FF_X36_Y23_N29
\U1|U1|pet2_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet2_reg[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet2_reg\(1));

-- Location: LCCOMB_X36_Y23_N18
\U1|U3|code~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|code~2_combout\ = (!\U1|U1|pet2_reg\(3) & ((\U1|U1|pet2_reg\(2)) # ((\U1|U1|pet2_reg\(0) & !\U1|U1|pet2_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(0),
	datab => \U1|U1|pet2_reg\(2),
	datac => \U1|U1|pet2_reg\(3),
	datad => \U1|U1|pet2_reg\(1),
	combout => \U1|U3|code~2_combout\);

-- Location: LCCOMB_X32_Y23_N4
\U1|U1|pet1_reg[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet1_reg[3]~4_combout\ = (\U1|U1|pet1_reg[0]~2_combout\ & (((\U1|U1|pet1_reg\(3) & !\U3|U5|Equal0~2_combout\)))) # (!\U1|U1|pet1_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(3),
	datab => \U1|U1|pet1_reg[0]~2_combout\,
	datac => \U1|U1|pet1_reg\(3),
	datad => \U3|U5|Equal0~2_combout\,
	combout => \U1|U1|pet1_reg[3]~4_combout\);

-- Location: FF_X32_Y23_N5
\U1|U1|pet1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet1_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet1_reg\(3));

-- Location: LCCOMB_X35_Y23_N30
\U1|U3|code~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|code~0_combout\ = (\U1|U1|pet2_reg\(4)) # (\U1|U1|pet2_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|pet2_reg\(4),
	datad => \U1|U1|pet2_reg\(3),
	combout => \U1|U3|code~0_combout\);

-- Location: LCCOMB_X35_Y23_N0
\U1|U3|code~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|code~3_combout\ = (\U1|U1|pet2_reg\(4)) # (\U1|U3|code~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|pet2_reg\(4),
	datad => \U1|U3|code~2_combout\,
	combout => \U1|U3|code~3_combout\);

-- Location: LCCOMB_X35_Y23_N20
\U2|U1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add2~0_combout\ = (\U3|U4|piso\(0) & (\U1|U3|code~3_combout\ $ (GND))) # (!\U3|U4|piso\(0) & ((GND) # (!\U1|U3|code~3_combout\)))
-- \U2|U1|Add2~1\ = CARRY((!\U1|U3|code~3_combout\) # (!\U3|U4|piso\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(0),
	datab => \U1|U3|code~3_combout\,
	datad => VCC,
	combout => \U2|U1|Add2~0_combout\,
	cout => \U2|U1|Add2~1\);

-- Location: LCCOMB_X35_Y23_N22
\U2|U1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add2~2_combout\ = (\U1|U3|code~1_combout\ & ((\U3|U4|piso\(1) & (!\U2|U1|Add2~1\)) # (!\U3|U4|piso\(1) & ((\U2|U1|Add2~1\) # (GND))))) # (!\U1|U3|code~1_combout\ & ((\U3|U4|piso\(1) & (\U2|U1|Add2~1\ & VCC)) # (!\U3|U4|piso\(1) & 
-- (!\U2|U1|Add2~1\))))
-- \U2|U1|Add2~3\ = CARRY((\U1|U3|code~1_combout\ & ((!\U2|U1|Add2~1\) # (!\U3|U4|piso\(1)))) # (!\U1|U3|code~1_combout\ & (!\U3|U4|piso\(1) & !\U2|U1|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|code~1_combout\,
	datab => \U3|U4|piso\(1),
	datad => VCC,
	cin => \U2|U1|Add2~1\,
	combout => \U2|U1|Add2~2_combout\,
	cout => \U2|U1|Add2~3\);

-- Location: LCCOMB_X35_Y23_N24
\U2|U1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add2~4_combout\ = ((\U1|U3|code~0_combout\ $ (\U3|U4|piso\(2) $ (\U2|U1|Add2~3\)))) # (GND)
-- \U2|U1|Add2~5\ = CARRY((\U1|U3|code~0_combout\ & (\U3|U4|piso\(2) & !\U2|U1|Add2~3\)) # (!\U1|U3|code~0_combout\ & ((\U3|U4|piso\(2)) # (!\U2|U1|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|code~0_combout\,
	datab => \U3|U4|piso\(2),
	datad => VCC,
	cin => \U2|U1|Add2~3\,
	combout => \U2|U1|Add2~4_combout\,
	cout => \U2|U1|Add2~5\);

-- Location: LCCOMB_X35_Y23_N26
\U2|U1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add2~6_combout\ = \U2|U1|Add2~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|U1|Add2~5\,
	combout => \U2|U1|Add2~6_combout\);

-- Location: LCCOMB_X35_Y23_N6
\U2|U1|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add3~1_combout\ = \U2|U1|Add2~4_combout\ $ (((!\U2|U1|Add2~6_combout\ & ((\U2|U1|Add2~2_combout\) # (\U2|U1|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add2~2_combout\,
	datab => \U2|U1|Add2~0_combout\,
	datac => \U2|U1|Add2~6_combout\,
	datad => \U2|U1|Add2~4_combout\,
	combout => \U2|U1|Add3~1_combout\);

-- Location: LCCOMB_X35_Y23_N8
\U2|U1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add3~0_combout\ = (\U2|U1|Add2~2_combout\) # ((\U2|U1|Add2~0_combout\) # ((\U2|U1|Add2~6_combout\) # (\U2|U1|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add2~2_combout\,
	datab => \U2|U1|Add2~0_combout\,
	datac => \U2|U1|Add2~6_combout\,
	datad => \U2|U1|Add2~4_combout\,
	combout => \U2|U1|Add3~0_combout\);

-- Location: LCCOMB_X28_Y23_N14
\U1|U1|pet1_reg[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet1_reg[0]~7_combout\ = (\U1|U1|pet1_reg[0]~2_combout\ & (((\U1|U1|pet1_reg\(0) & !\U3|U5|Equal0~2_combout\)))) # (!\U1|U1|pet1_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(0),
	datab => \U1|U1|pet1_reg[0]~2_combout\,
	datac => \U1|U1|pet1_reg\(0),
	datad => \U3|U5|Equal0~2_combout\,
	combout => \U1|U1|pet1_reg[0]~7_combout\);

-- Location: FF_X28_Y23_N15
\U1|U1|pet1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet1_reg[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet1_reg\(0));

-- Location: LCCOMB_X36_Y23_N24
\U1|U1|pet1_reg[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet1_reg[1]~5_combout\ = (\U1|U1|pet1_reg[0]~2_combout\ & (((\U1|U1|pet1_reg\(1) & !\U3|U5|Equal0~2_combout\)))) # (!\U1|U1|pet1_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg[0]~2_combout\,
	datab => \U1|U1|nueva_pet\(1),
	datac => \U1|U1|pet1_reg\(1),
	datad => \U3|U5|Equal0~2_combout\,
	combout => \U1|U1|pet1_reg[1]~5_combout\);

-- Location: FF_X36_Y23_N25
\U1|U1|pet1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet1_reg[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet1_reg\(1));

-- Location: LCCOMB_X33_Y23_N2
\U1|U2|code~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|code~2_combout\ = (!\U1|U1|pet1_reg\(3) & ((\U1|U1|pet1_reg\(2)) # ((\U1|U1|pet1_reg\(0) & !\U1|U1|pet1_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(0),
	datab => \U1|U1|pet1_reg\(3),
	datac => \U1|U1|pet1_reg\(1),
	datad => \U1|U1|pet1_reg\(2),
	combout => \U1|U2|code~2_combout\);

-- Location: LCCOMB_X33_Y23_N4
\U1|U2|code~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|code~3_combout\ = (\U1|U1|pet1_reg\(4)) # (\U1|U2|code~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(4),
	datad => \U1|U2|code~2_combout\,
	combout => \U1|U2|code~3_combout\);

-- Location: LCCOMB_X31_Y23_N12
\U2|U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add0~0_combout\ = (\U1|U2|code~3_combout\ & (\U3|U4|piso\(0) $ (GND))) # (!\U1|U2|code~3_combout\ & ((GND) # (!\U3|U4|piso\(0))))
-- \U2|U1|Add0~1\ = CARRY((!\U3|U4|piso\(0)) # (!\U1|U2|code~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|code~3_combout\,
	datab => \U3|U4|piso\(0),
	datad => VCC,
	combout => \U2|U1|Add0~0_combout\,
	cout => \U2|U1|Add0~1\);

-- Location: LCCOMB_X31_Y23_N8
\U1|U2|code~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|code~0_combout\ = (\U1|U1|pet1_reg\(3)) # (\U1|U1|pet1_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U1|pet1_reg\(3),
	datad => \U1|U1|pet1_reg\(4),
	combout => \U1|U2|code~0_combout\);

-- Location: LCCOMB_X32_Y23_N26
\U1|U2|code~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|code~1_combout\ = (!\U1|U1|pet1_reg\(4) & (!\U1|U1|pet1_reg\(3) & ((\U1|U1|pet1_reg\(2)) # (\U1|U1|pet1_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(2),
	datab => \U1|U1|pet1_reg\(4),
	datac => \U1|U1|pet1_reg\(3),
	datad => \U1|U1|pet1_reg\(1),
	combout => \U1|U2|code~1_combout\);

-- Location: LCCOMB_X31_Y23_N14
\U2|U1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add0~2_combout\ = (\U3|U4|piso\(1) & ((\U1|U2|code~1_combout\ & (!\U2|U1|Add0~1\)) # (!\U1|U2|code~1_combout\ & (\U2|U1|Add0~1\ & VCC)))) # (!\U3|U4|piso\(1) & ((\U1|U2|code~1_combout\ & ((\U2|U1|Add0~1\) # (GND))) # (!\U1|U2|code~1_combout\ & 
-- (!\U2|U1|Add0~1\))))
-- \U2|U1|Add0~3\ = CARRY((\U3|U4|piso\(1) & (\U1|U2|code~1_combout\ & !\U2|U1|Add0~1\)) # (!\U3|U4|piso\(1) & ((\U1|U2|code~1_combout\) # (!\U2|U1|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(1),
	datab => \U1|U2|code~1_combout\,
	datad => VCC,
	cin => \U2|U1|Add0~1\,
	combout => \U2|U1|Add0~2_combout\,
	cout => \U2|U1|Add0~3\);

-- Location: LCCOMB_X31_Y23_N16
\U2|U1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add0~4_combout\ = ((\U1|U2|code~0_combout\ $ (\U3|U4|piso\(2) $ (\U2|U1|Add0~3\)))) # (GND)
-- \U2|U1|Add0~5\ = CARRY((\U1|U2|code~0_combout\ & (\U3|U4|piso\(2) & !\U2|U1|Add0~3\)) # (!\U1|U2|code~0_combout\ & ((\U3|U4|piso\(2)) # (!\U2|U1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|code~0_combout\,
	datab => \U3|U4|piso\(2),
	datad => VCC,
	cin => \U2|U1|Add0~3\,
	combout => \U2|U1|Add0~4_combout\,
	cout => \U2|U1|Add0~5\);

-- Location: LCCOMB_X31_Y23_N18
\U2|U1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add0~6_combout\ = \U2|U1|Add0~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|U1|Add0~5\,
	combout => \U2|U1|Add0~6_combout\);

-- Location: LCCOMB_X31_Y23_N4
\U2|U1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add1~0_combout\ = \U2|U1|Add0~4_combout\ $ (((!\U2|U1|Add0~6_combout\ & ((\U2|U1|Add0~0_combout\) # (\U2|U1|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add0~0_combout\,
	datab => \U2|U1|Add0~4_combout\,
	datac => \U2|U1|Add0~2_combout\,
	datad => \U2|U1|Add0~6_combout\,
	combout => \U2|U1|Add1~0_combout\);

-- Location: LCCOMB_X31_Y23_N2
\U2|U1|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add1~1_combout\ = (\U2|U1|Add0~0_combout\) # ((\U2|U1|Add0~4_combout\) # ((\U2|U1|Add0~2_combout\) # (\U2|U1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add0~0_combout\,
	datab => \U2|U1|Add0~4_combout\,
	datac => \U2|U1|Add0~2_combout\,
	datad => \U2|U1|Add0~6_combout\,
	combout => \U2|U1|Add1~1_combout\);

-- Location: LCCOMB_X31_Y23_N22
\U2|U1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan1~0_combout\ = (\U2|U1|Add3~0_combout\ & (((!\U2|U1|Add3~1_combout\ & \U2|U1|Add1~0_combout\)) # (!\U2|U1|Add1~1_combout\))) # (!\U2|U1|Add3~0_combout\ & (!\U2|U1|Add3~1_combout\ & (\U2|U1|Add1~0_combout\ & !\U2|U1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add3~1_combout\,
	datab => \U2|U1|Add3~0_combout\,
	datac => \U2|U1|Add1~0_combout\,
	datad => \U2|U1|Add1~1_combout\,
	combout => \U2|U1|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y23_N26
\U2|U1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan0~0_combout\ = (\U2|U1|Add3~1_combout\ & (\U2|U1|Add1~0_combout\ & (\U2|U1|Add3~0_combout\ $ (!\U2|U1|Add1~1_combout\)))) # (!\U2|U1|Add3~1_combout\ & (!\U2|U1|Add1~0_combout\ & (\U2|U1|Add3~0_combout\ $ (!\U2|U1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add3~1_combout\,
	datab => \U2|U1|Add3~0_combout\,
	datac => \U2|U1|Add1~0_combout\,
	datad => \U2|U1|Add1~1_combout\,
	combout => \U2|U1|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y23_N10
\U2|U1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add3~2_combout\ = \U2|U1|Add2~2_combout\ $ (((!\U2|U1|Add2~6_combout\ & \U2|U1|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add2~2_combout\,
	datac => \U2|U1|Add2~6_combout\,
	datad => \U2|U1|Add2~0_combout\,
	combout => \U2|U1|Add3~2_combout\);

-- Location: LCCOMB_X31_Y23_N10
\U2|U1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Add1~2_combout\ = \U2|U1|Add0~2_combout\ $ (((\U2|U1|Add0~0_combout\ & !\U2|U1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add0~0_combout\,
	datac => \U2|U1|Add0~2_combout\,
	datad => \U2|U1|Add0~6_combout\,
	combout => \U2|U1|Add1~2_combout\);

-- Location: LCCOMB_X31_Y23_N20
\U2|U1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan1~1_combout\ = (\U2|U1|Add3~2_combout\ & (\U2|U1|Add0~0_combout\ & (!\U2|U1|Add2~0_combout\ & \U2|U1|Add1~2_combout\))) # (!\U2|U1|Add3~2_combout\ & ((\U2|U1|Add1~2_combout\) # ((\U2|U1|Add0~0_combout\ & !\U2|U1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add0~0_combout\,
	datab => \U2|U1|Add3~2_combout\,
	datac => \U2|U1|Add2~0_combout\,
	datad => \U2|U1|Add1~2_combout\,
	combout => \U2|U1|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y23_N30
\U2|U1|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan1~2_combout\ = (\U2|U1|LessThan1~0_combout\) # ((\U2|U1|LessThan0~0_combout\ & \U2|U1|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|LessThan1~0_combout\,
	datac => \U2|U1|LessThan0~0_combout\,
	datad => \U2|U1|LessThan1~1_combout\,
	combout => \U2|U1|LessThan1~2_combout\);

-- Location: LCCOMB_X35_Y23_N12
\U2|U1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Equal1~2_combout\ = (!\U1|U3|code~1_combout\ & (!\U1|U3|code~2_combout\ & (!\U1|U1|pet2_reg\(4) & !\U1|U1|pet2_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|code~1_combout\,
	datab => \U1|U3|code~2_combout\,
	datac => \U1|U1|pet2_reg\(4),
	datad => \U1|U1|pet2_reg\(3),
	combout => \U2|U1|Equal1~2_combout\);

-- Location: LCCOMB_X31_Y23_N6
\U2|U1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan0~2_combout\ = (\U2|U1|Add3~2_combout\ & (((!\U2|U1|Add0~0_combout\ & \U2|U1|Add2~0_combout\)) # (!\U2|U1|Add1~2_combout\))) # (!\U2|U1|Add3~2_combout\ & (!\U2|U1|Add0~0_combout\ & (\U2|U1|Add2~0_combout\ & !\U2|U1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add0~0_combout\,
	datab => \U2|U1|Add3~2_combout\,
	datac => \U2|U1|Add2~0_combout\,
	datad => \U2|U1|Add1~2_combout\,
	combout => \U2|U1|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y23_N0
\U2|U1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan0~1_combout\ = (\U2|U1|Add3~0_combout\ & (\U2|U1|Add3~1_combout\ & (!\U2|U1|Add1~0_combout\ & \U2|U1|Add1~1_combout\))) # (!\U2|U1|Add3~0_combout\ & ((\U2|U1|Add1~1_combout\) # ((\U2|U1|Add3~1_combout\ & !\U2|U1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add3~1_combout\,
	datab => \U2|U1|Add3~0_combout\,
	datac => \U2|U1|Add1~0_combout\,
	datad => \U2|U1|Add1~1_combout\,
	combout => \U2|U1|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y23_N20
\U2|U1|eleccion[30]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[30]~10_combout\ = (!\U2|U1|Equal1~2_combout\ & (!\U2|U1|LessThan0~1_combout\ & ((!\U2|U1|LessThan0~0_combout\) # (!\U2|U1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Equal1~2_combout\,
	datab => \U2|U1|LessThan0~2_combout\,
	datac => \U2|U1|LessThan0~0_combout\,
	datad => \U2|U1|LessThan0~1_combout\,
	combout => \U2|U1|eleccion[30]~10_combout\);

-- Location: LCCOMB_X29_Y23_N8
\U2|U1|eleccion~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion~11_combout\ = (\U1|U1|pet1_reg[0]~0_combout\ & (((\U2|U1|LessThan1~2_combout\ & \U2|U1|eleccion[30]~10_combout\)) # (!\U1|U1|pet1_reg\(4)))) # (!\U1|U1|pet1_reg[0]~0_combout\ & (((\U2|U1|LessThan1~2_combout\ & 
-- \U2|U1|eleccion[30]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg[0]~0_combout\,
	datab => \U1|U1|pet1_reg\(4),
	datac => \U2|U1|LessThan1~2_combout\,
	datad => \U2|U1|eleccion[30]~10_combout\,
	combout => \U2|U1|eleccion~11_combout\);

-- Location: LCCOMB_X32_Y23_N8
\U2|U1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|Equal0~2_combout\ = (!\U1|U2|code~2_combout\ & (!\U1|U1|pet1_reg\(3) & (!\U1|U2|code~1_combout\ & !\U1|U1|pet1_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|code~2_combout\,
	datab => \U1|U1|pet1_reg\(3),
	datac => \U1|U2|code~1_combout\,
	datad => \U1|U1|pet1_reg\(4),
	combout => \U2|U1|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y23_N28
\U2|U1|eleccion[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[2]~15_combout\ = (\U2|U1|Equal0~2_combout\ & (!\U1|U1|pet2_reg\(4))) # (!\U2|U1|Equal0~2_combout\ & ((\U2|U1|eleccion[30]~10_combout\ & (!\U1|U1|pet2_reg\(4))) # (!\U2|U1|eleccion[30]~10_combout\ & ((!\U1|U1|pet1_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(4),
	datab => \U2|U1|Equal0~2_combout\,
	datac => \U1|U1|pet1_reg\(4),
	datad => \U2|U1|eleccion[30]~10_combout\,
	combout => \U2|U1|eleccion[2]~15_combout\);

-- Location: LCCOMB_X32_Y23_N30
\U2|U1|eleccion[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[2]~14_combout\ = (\U2|U1|Equal0~2_combout\ & (\U1|U1|pet2_reg\(3))) # (!\U2|U1|Equal0~2_combout\ & ((\U2|U1|eleccion[30]~10_combout\ & (\U1|U1|pet2_reg\(3))) # (!\U2|U1|eleccion[30]~10_combout\ & ((\U1|U1|pet1_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(3),
	datab => \U2|U1|Equal0~2_combout\,
	datac => \U1|U1|pet1_reg\(3),
	datad => \U2|U1|eleccion[30]~10_combout\,
	combout => \U2|U1|eleccion[2]~14_combout\);

-- Location: LCCOMB_X28_Y23_N30
\U2|U1|eleccion[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[2]~16_combout\ = (\U2|U1|eleccion[2]~14_combout\) # (!\U2|U1|eleccion[2]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U1|eleccion[2]~15_combout\,
	datad => \U2|U1|eleccion[2]~14_combout\,
	combout => \U2|U1|eleccion[2]~16_combout\);

-- Location: LCCOMB_X35_Y23_N16
\U2|U1|subir~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|subir~0_combout\ = (\U2|U1|Equal1~2_combout\ & (!\U2|U1|Equal0~2_combout\ & ((\U4|U8|capturado~q\) # (!\U4|U7|capturado~q\)))) # (!\U2|U1|Equal1~2_combout\ & ((\U4|U8|capturado~q\) # ((!\U4|U7|capturado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Equal1~2_combout\,
	datab => \U4|U8|capturado~q\,
	datac => \U2|U1|Equal0~2_combout\,
	datad => \U4|U7|capturado~q\,
	combout => \U2|U1|subir~0_combout\);

-- Location: LCCOMB_X35_Y23_N2
\U2|U1|subir~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|subir~1_combout\ = (!\anomalia~input_o\ & (\U2|U1|subir~0_combout\ & (!\U4|U2|capturado~q\ & !\U5|U2|AmayB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \U2|U1|subir~0_combout\,
	datac => \U4|U2|capturado~q\,
	datad => \U5|U2|AmayB~0_combout\,
	combout => \U2|U1|subir~1_combout\);

-- Location: LCCOMB_X35_Y23_N18
\U2|U1|eleccion[30]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[30]~17_combout\ = ((!\U2|U1|LessThan1~2_combout\ & (\U2|U1|eleccion[30]~10_combout\ & !\U2|U1|Equal0~2_combout\))) # (!\U2|U1|subir~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|LessThan1~2_combout\,
	datab => \U2|U1|eleccion[30]~10_combout\,
	datac => \U2|U1|Equal0~2_combout\,
	datad => \U2|U1|subir~1_combout\,
	combout => \U2|U1|eleccion[30]~17_combout\);

-- Location: CLKCTRL_G7
\U2|U1|eleccion[30]~17clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|U1|eleccion[30]~17clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|U1|eleccion[30]~17clkctrl_outclk\);

-- Location: LCCOMB_X28_Y23_N6
\U2|U1|eleccion[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion\(2) = (GLOBAL(\U2|U1|eleccion[30]~17clkctrl_outclk\) & (\U2|U1|eleccion\(2))) # (!GLOBAL(\U2|U1|eleccion[30]~17clkctrl_outclk\) & ((\U2|U1|eleccion[2]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|eleccion\(2),
	datac => \U2|U1|eleccion[2]~16_combout\,
	datad => \U2|U1|eleccion[30]~17clkctrl_outclk\,
	combout => \U2|U1|eleccion\(2));

-- Location: LCCOMB_X32_Y23_N24
\U2|U1|eleccion~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion~24_combout\ = (\U2|U1|eleccion[30]~10_combout\ & (((\U2|U1|eleccion\(2))))) # (!\U2|U1|eleccion[30]~10_combout\ & ((\U1|U1|pet1_reg\(4)) # ((\U1|U1|pet1_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(4),
	datab => \U1|U1|pet1_reg\(3),
	datac => \U2|U1|eleccion\(2),
	datad => \U2|U1|eleccion[30]~10_combout\,
	combout => \U2|U1|eleccion~24_combout\);

-- Location: LCCOMB_X29_Y23_N26
\U2|U1|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan4~0_combout\ = (!\U3|U4|piso\(2) & ((\U2|U1|eleccion~11_combout\ & (\U1|U3|code~0_combout\)) # (!\U2|U1|eleccion~11_combout\ & ((\U2|U1|eleccion~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|code~0_combout\,
	datab => \U3|U4|piso\(2),
	datac => \U2|U1|eleccion~11_combout\,
	datad => \U2|U1|eleccion~24_combout\,
	combout => \U2|U1|LessThan4~0_combout\);

-- Location: LCCOMB_X28_Y23_N26
\U2|U1|eleccion[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[1]~27_combout\ = (!\U1|U1|pet1_reg\(4) & (!\U1|U1|pet1_reg\(3) & ((\U1|U1|pet1_reg\(1)) # (\U1|U1|pet1_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(4),
	datab => \U1|U1|pet1_reg\(3),
	datac => \U1|U1|pet1_reg\(1),
	datad => \U1|U1|pet1_reg\(2),
	combout => \U2|U1|eleccion[1]~27_combout\);

-- Location: LCCOMB_X32_Y23_N14
\U2|U1|eleccion[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[1]~18_combout\ = (\U2|U1|Equal0~2_combout\ & (((\U1|U1|pet2_reg\(1))))) # (!\U2|U1|Equal0~2_combout\ & ((\U2|U1|eleccion[30]~10_combout\ & ((\U1|U1|pet2_reg\(1)))) # (!\U2|U1|eleccion[30]~10_combout\ & (\U1|U1|pet1_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(1),
	datab => \U2|U1|Equal0~2_combout\,
	datac => \U1|U1|pet2_reg\(1),
	datad => \U2|U1|eleccion[30]~10_combout\,
	combout => \U2|U1|eleccion[1]~18_combout\);

-- Location: LCCOMB_X33_Y23_N20
\U2|U1|eleccion[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[1]~28_combout\ = (!\U1|U1|pet2_reg\(4) & (!\U1|U1|pet2_reg\(3) & ((\U1|U1|pet2_reg\(2)) # (\U2|U1|eleccion[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(2),
	datab => \U1|U1|pet2_reg\(4),
	datac => \U1|U1|pet2_reg\(3),
	datad => \U2|U1|eleccion[1]~18_combout\,
	combout => \U2|U1|eleccion[1]~28_combout\);

-- Location: LCCOMB_X33_Y23_N16
\U2|U1|eleccion[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[1]~19_combout\ = (\U2|U1|eleccion[30]~10_combout\ & (((\U2|U1|eleccion[1]~28_combout\)))) # (!\U2|U1|eleccion[30]~10_combout\ & ((\U2|U1|Equal0~2_combout\ & ((\U2|U1|eleccion[1]~28_combout\))) # (!\U2|U1|Equal0~2_combout\ & 
-- (\U2|U1|eleccion[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|eleccion[1]~27_combout\,
	datab => \U2|U1|eleccion[30]~10_combout\,
	datac => \U2|U1|Equal0~2_combout\,
	datad => \U2|U1|eleccion[1]~28_combout\,
	combout => \U2|U1|eleccion[1]~19_combout\);

-- Location: LCCOMB_X33_Y23_N26
\U2|U1|eleccion[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion\(1) = (GLOBAL(\U2|U1|eleccion[30]~17clkctrl_outclk\) & (\U2|U1|eleccion\(1))) # (!GLOBAL(\U2|U1|eleccion[30]~17clkctrl_outclk\) & ((\U2|U1|eleccion[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|eleccion\(1),
	datac => \U2|U1|eleccion[30]~17clkctrl_outclk\,
	datad => \U2|U1|eleccion[1]~19_combout\,
	combout => \U2|U1|eleccion\(1));

-- Location: LCCOMB_X32_Y23_N16
\U2|U1|eleccion[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[1]~20_combout\ = (\U2|U1|Equal0~2_combout\) # (\U2|U1|eleccion[30]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|Equal0~2_combout\,
	datad => \U2|U1|eleccion[30]~10_combout\,
	combout => \U2|U1|eleccion[1]~20_combout\);

-- Location: LCCOMB_X32_Y23_N6
\U2|U1|eleccion[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[0]~22_combout\ = (\U2|U1|eleccion[1]~20_combout\ & ((\U1|U1|pet2_reg\(2)) # ((\U1|U1|pet2_reg\(0) & !\U2|U1|eleccion[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(0),
	datab => \U1|U1|pet2_reg\(2),
	datac => \U2|U1|eleccion[1]~18_combout\,
	datad => \U2|U1|eleccion[1]~20_combout\,
	combout => \U2|U1|eleccion[0]~22_combout\);

-- Location: LCCOMB_X32_Y23_N18
\U2|U1|eleccion[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[0]~21_combout\ = (!\U2|U1|eleccion[1]~20_combout\ & ((\U1|U1|pet1_reg\(2)) # ((\U1|U1|pet1_reg\(0) & !\U2|U1|eleccion[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(2),
	datab => \U1|U1|pet1_reg\(0),
	datac => \U2|U1|eleccion[1]~18_combout\,
	datad => \U2|U1|eleccion[1]~20_combout\,
	combout => \U2|U1|eleccion[0]~21_combout\);

-- Location: LCCOMB_X33_Y23_N6
\U2|U1|eleccion[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion[0]~23_combout\ = ((!\U2|U1|eleccion[2]~14_combout\ & ((\U2|U1|eleccion[0]~22_combout\) # (\U2|U1|eleccion[0]~21_combout\)))) # (!\U2|U1|eleccion[2]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|eleccion[2]~15_combout\,
	datab => \U2|U1|eleccion[2]~14_combout\,
	datac => \U2|U1|eleccion[0]~22_combout\,
	datad => \U2|U1|eleccion[0]~21_combout\,
	combout => \U2|U1|eleccion[0]~23_combout\);

-- Location: LCCOMB_X33_Y23_N18
\U2|U1|eleccion[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion\(0) = (GLOBAL(\U2|U1|eleccion[30]~17clkctrl_outclk\) & (\U2|U1|eleccion\(0))) # (!GLOBAL(\U2|U1|eleccion[30]~17clkctrl_outclk\) & ((\U2|U1|eleccion[0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|eleccion\(0),
	datac => \U2|U1|eleccion[30]~17clkctrl_outclk\,
	datad => \U2|U1|eleccion[0]~23_combout\,
	combout => \U2|U1|eleccion\(0));

-- Location: LCCOMB_X33_Y23_N14
\U2|U1|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan2~0_combout\ = (\U3|U4|piso\(1) & (\U3|U4|piso\(0) & (\U2|U1|eleccion\(1) & \U2|U1|eleccion\(0)))) # (!\U3|U4|piso\(1) & ((\U2|U1|eleccion\(1)) # ((\U3|U4|piso\(0) & \U2|U1|eleccion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(0),
	datab => \U3|U4|piso\(1),
	datac => \U2|U1|eleccion\(1),
	datad => \U2|U1|eleccion\(0),
	combout => \U2|U1|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y23_N28
\U2|U1|subir~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|subir~3_combout\ = (\U2|U1|subir~2_combout\ & ((\U2|U1|eleccion\(2) & ((\U2|U1|LessThan2~0_combout\) # (!\U3|U4|piso\(2)))) # (!\U2|U1|eleccion\(2) & (!\U3|U4|piso\(2) & \U2|U1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|eleccion\(2),
	datab => \U3|U4|piso\(2),
	datac => \U2|U1|LessThan2~0_combout\,
	datad => \U2|U1|subir~2_combout\,
	combout => \U2|U1|subir~3_combout\);

-- Location: LCCOMB_X30_Y23_N20
\U2|U1|subir~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|subir~4_combout\ = (\U2|U1|subir~1_combout\ & ((\U2|U1|LessThan4~0_combout\) # ((\U2|U1|subir~3_combout\) # (\U2|U1|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|LessThan4~0_combout\,
	datab => \U2|U1|subir~3_combout\,
	datac => \U2|U1|LessThan4~3_combout\,
	datad => \U2|U1|subir~1_combout\,
	combout => \U2|U1|subir~4_combout\);

-- Location: LCCOMB_X30_Y23_N2
\U3|U4|piso[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U4|piso[2]~6_combout\ = \U3|U4|piso\(2) $ (((\U3|U4|piso\(1) & (!\U3|U4|piso\(0) & \U2|U1|subir~4_combout\)) # (!\U3|U4|piso\(1) & (\U3|U4|piso\(0) & !\U2|U1|subir~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(1),
	datab => \U3|U4|piso\(0),
	datac => \U3|U4|piso\(2),
	datad => \U2|U1|subir~4_combout\,
	combout => \U3|U4|piso[2]~6_combout\);

-- Location: LCCOMB_X29_Y23_N18
\U2|U1|eleccion~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion~26_combout\ = (\U2|U1|eleccion~11_combout\ & ((\U1|U1|pet2_reg\(4)) # ((\U1|U1|pet2_reg\(3))))) # (!\U2|U1|eleccion~11_combout\ & (((\U2|U1|eleccion~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(4),
	datab => \U1|U1|pet2_reg\(3),
	datac => \U2|U1|eleccion~24_combout\,
	datad => \U2|U1|eleccion~11_combout\,
	combout => \U2|U1|eleccion~26_combout\);

-- Location: LCCOMB_X33_Y23_N10
\U2|U1|eleccion~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion~25_combout\ = (\U2|U1|eleccion[30]~10_combout\ & (((\U2|U1|eleccion\(0))))) # (!\U2|U1|eleccion[30]~10_combout\ & ((\U1|U1|pet1_reg\(4)) # ((\U1|U2|code~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(4),
	datab => \U2|U1|eleccion\(0),
	datac => \U1|U2|code~2_combout\,
	datad => \U2|U1|eleccion[30]~10_combout\,
	combout => \U2|U1|eleccion~25_combout\);

-- Location: LCCOMB_X30_Y23_N28
\U2|U1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan5~0_combout\ = (!\U3|U4|piso\(0) & ((\U2|U1|eleccion~11_combout\ & (!\U1|U3|code~3_combout\)) # (!\U2|U1|eleccion~11_combout\ & ((!\U2|U1|eleccion~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|code~3_combout\,
	datab => \U3|U4|piso\(0),
	datac => \U2|U1|eleccion~25_combout\,
	datad => \U2|U1|eleccion~11_combout\,
	combout => \U2|U1|LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y23_N0
\U2|U1|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan4~2_combout\ = \U3|U4|piso\(2) $ (((\U2|U1|eleccion~11_combout\ & (\U1|U3|code~0_combout\)) # (!\U2|U1|eleccion~11_combout\ & ((\U2|U1|eleccion~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|code~0_combout\,
	datab => \U3|U4|piso\(2),
	datac => \U2|U1|eleccion~24_combout\,
	datad => \U2|U1|eleccion~11_combout\,
	combout => \U2|U1|LessThan4~2_combout\);

-- Location: LCCOMB_X30_Y23_N18
\U2|U1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan5~1_combout\ = (!\U2|U1|LessThan4~2_combout\ & ((\U3|U4|piso\(1) & ((\U2|U1|LessThan5~0_combout\) # (!\U2|U1|eleccion~13_combout\))) # (!\U3|U4|piso\(1) & (\U2|U1|LessThan5~0_combout\ & !\U2|U1|eleccion~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(1),
	datab => \U2|U1|LessThan5~0_combout\,
	datac => \U2|U1|eleccion~13_combout\,
	datad => \U2|U1|LessThan4~2_combout\,
	combout => \U2|U1|LessThan5~1_combout\);

-- Location: LCCOMB_X30_Y23_N16
\U2|U1|LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan5~2_combout\ = (\U2|U1|LessThan5~1_combout\) # ((!\U2|U1|eleccion~26_combout\ & \U3|U4|piso\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|eleccion~26_combout\,
	datac => \U3|U4|piso\(2),
	datad => \U2|U1|LessThan5~1_combout\,
	combout => \U2|U1|LessThan5~2_combout\);

-- Location: LCCOMB_X30_Y23_N24
\U3|U4|piso[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U4|piso[2]~8_combout\ = (\U2|U1|subir~1_combout\ & ((\U2|U1|LessThan4~0_combout\) # ((\U2|U1|LessThan5~2_combout\) # (\U2|U1|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|LessThan4~0_combout\,
	datab => \U2|U1|LessThan5~2_combout\,
	datac => \U2|U1|LessThan4~3_combout\,
	datad => \U2|U1|subir~1_combout\,
	combout => \U3|U4|piso[2]~8_combout\);

-- Location: LCCOMB_X30_Y23_N22
\U3|U4|piso[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U4|piso[2]~7_combout\ = (\U3|U4|piso[2]~4_combout\ & ((\U3|U4|piso[2]~8_combout\ & (\U3|U4|piso[2]~6_combout\)) # (!\U3|U4|piso[2]~8_combout\ & ((\U3|U4|piso\(2)))))) # (!\U3|U4|piso[2]~4_combout\ & (((\U3|U4|piso\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso[2]~4_combout\,
	datab => \U3|U4|piso[2]~6_combout\,
	datac => \U3|U4|piso\(2),
	datad => \U3|U4|piso[2]~8_combout\,
	combout => \U3|U4|piso[2]~7_combout\);

-- Location: FF_X30_Y23_N23
\U3|U4|piso[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U3|Equal0~combout\,
	d => \U3|U4|piso[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U4|piso\(2));

-- Location: LCCOMB_X33_Y23_N30
\U3|U5|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U5|Equal0~1_combout\ = \U3|U4|piso\(2) $ (((\U1|U1|pet1_reg\(4)) # (\U1|U1|pet1_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(4),
	datac => \U1|U1|pet1_reg\(3),
	datad => \U3|U4|piso\(2),
	combout => \U3|U5|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y23_N0
\U3|U5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U5|Equal0~0_combout\ = \U3|U4|piso\(0) $ (((!\U1|U1|pet1_reg\(4) & !\U1|U2|code~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(4),
	datac => \U3|U4|piso\(0),
	datad => \U1|U2|code~2_combout\,
	combout => \U3|U5|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y23_N12
\U3|U5|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U5|Equal0~2_combout\ = (!\U3|U5|Equal0~1_combout\ & (!\U3|U5|Equal0~0_combout\ & (\U3|U4|piso\(1) $ (!\U1|U2|code~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U5|Equal0~1_combout\,
	datab => \U3|U4|piso\(1),
	datac => \U1|U2|code~1_combout\,
	datad => \U3|U5|Equal0~0_combout\,
	combout => \U3|U5|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y23_N12
\U1|U1|pet1_reg[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet1_reg[2]~6_combout\ = (\U1|U1|pet1_reg[0]~2_combout\ & (((\U1|U1|pet1_reg\(2) & !\U3|U5|Equal0~2_combout\)))) # (!\U1|U1|pet1_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(2),
	datab => \U1|U1|pet1_reg[0]~2_combout\,
	datac => \U1|U1|pet1_reg\(2),
	datad => \U3|U5|Equal0~2_combout\,
	combout => \U1|U1|pet1_reg[2]~6_combout\);

-- Location: FF_X32_Y23_N13
\U1|U1|pet1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet1_reg[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet1_reg\(2));

-- Location: LCCOMB_X32_Y23_N10
\U1|U1|pet1_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet1_reg[0]~0_combout\ = (!\U1|U1|pet1_reg\(2) & (!\U1|U1|pet1_reg\(3) & (!\U1|U1|pet1_reg\(0) & !\U1|U1|pet1_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet1_reg\(2),
	datab => \U1|U1|pet1_reg\(3),
	datac => \U1|U1|pet1_reg\(0),
	datad => \U1|U1|pet1_reg\(1),
	combout => \U1|U1|pet1_reg[0]~0_combout\);

-- Location: LCCOMB_X36_Y23_N4
\U1|U1|pet1_reg[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet1_reg[0]~2_combout\ = (\U1|U1|pet1_reg\(4)) # (((!\U1|U1|nueva_pet\(4) & \U1|U1|Equal6~0_combout\)) # (!\U1|U1|pet1_reg[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(4),
	datab => \U1|U1|pet1_reg\(4),
	datac => \U1|U1|pet1_reg[0]~0_combout\,
	datad => \U1|U1|Equal6~0_combout\,
	combout => \U1|U1|pet1_reg[0]~2_combout\);

-- Location: LCCOMB_X32_Y23_N2
\U1|U1|pet1_reg[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet1_reg[4]~3_combout\ = (\U1|U1|pet1_reg[0]~2_combout\ & (((\U1|U1|pet1_reg\(4) & !\U3|U5|Equal0~2_combout\)))) # (!\U1|U1|pet1_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(4),
	datab => \U1|U1|pet1_reg[0]~2_combout\,
	datac => \U1|U1|pet1_reg\(4),
	datad => \U3|U5|Equal0~2_combout\,
	combout => \U1|U1|pet1_reg[4]~3_combout\);

-- Location: FF_X32_Y23_N3
\U1|U1|pet1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet1_reg[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet1_reg\(4));

-- Location: LCCOMB_X32_Y23_N22
\U1|U1|pet1_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet1_reg[0]~1_combout\ = (!\U1|U1|pet1_reg\(4) & \U1|U1|pet1_reg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|pet1_reg\(4),
	datad => \U1|U1|pet1_reg[0]~0_combout\,
	combout => \U1|U1|pet1_reg[0]~1_combout\);

-- Location: LCCOMB_X31_Y23_N0
\U2|U1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan0~3_combout\ = (\U2|U1|LessThan0~1_combout\) # ((\U2|U1|LessThan0~0_combout\ & \U2|U1|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|LessThan0~0_combout\,
	datac => \U2|U1|LessThan0~1_combout\,
	datad => \U2|U1|LessThan0~2_combout\,
	combout => \U2|U1|LessThan0~3_combout\);

-- Location: LCCOMB_X31_Y23_N24
\U2|U1|subir~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|subir~2_combout\ = (!\U1|U1|pet2_reg[0]~1_combout\ & (!\U1|U1|pet1_reg[0]~1_combout\ & (!\U2|U1|LessThan1~2_combout\ & !\U2|U1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg[0]~1_combout\,
	datab => \U1|U1|pet1_reg[0]~1_combout\,
	datac => \U2|U1|LessThan1~2_combout\,
	datad => \U2|U1|LessThan0~3_combout\,
	combout => \U2|U1|subir~2_combout\);

-- Location: LCCOMB_X33_Y23_N8
\U2|U1|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan3~0_combout\ = (\U3|U4|piso\(1) & (((!\U3|U4|piso\(0) & !\U2|U1|eleccion\(0))) # (!\U2|U1|eleccion\(1)))) # (!\U3|U4|piso\(1) & (!\U3|U4|piso\(0) & (!\U2|U1|eleccion\(1) & !\U2|U1|eleccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(0),
	datab => \U3|U4|piso\(1),
	datac => \U2|U1|eleccion\(1),
	datad => \U2|U1|eleccion\(0),
	combout => \U2|U1|LessThan3~0_combout\);

-- Location: LCCOMB_X28_Y23_N24
\U2|U1|bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|bajar~0_combout\ = (\U3|U4|piso\(2) & (((!\U2|U1|LessThan2~0_combout\ & \U2|U1|LessThan3~0_combout\)) # (!\U2|U1|eleccion\(2)))) # (!\U3|U4|piso\(2) & (!\U2|U1|eleccion\(2) & (!\U2|U1|LessThan2~0_combout\ & \U2|U1|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(2),
	datab => \U2|U1|eleccion\(2),
	datac => \U2|U1|LessThan2~0_combout\,
	datad => \U2|U1|LessThan3~0_combout\,
	combout => \U2|U1|bajar~0_combout\);

-- Location: LCCOMB_X28_Y23_N28
\U2|U1|bajar~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|bajar~1_combout\ = (\U2|U1|subir~2_combout\ & \U2|U1|bajar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U1|subir~2_combout\,
	datad => \U2|U1|bajar~0_combout\,
	combout => \U2|U1|bajar~1_combout\);

-- Location: LCCOMB_X30_Y23_N14
\U2|U1|LessThan4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan4~4_combout\ = (\U2|U1|LessThan4~0_combout\) # (\U2|U1|LessThan4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|LessThan4~0_combout\,
	datac => \U2|U1|LessThan4~3_combout\,
	combout => \U2|U1|LessThan4~4_combout\);

-- Location: LCCOMB_X30_Y23_N10
\U2|U1|bajar~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|bajar~2_combout\ = ((!\U2|U1|bajar~1_combout\ & ((\U2|U1|LessThan4~4_combout\) # (!\U2|U1|LessThan5~2_combout\)))) # (!\U2|U1|subir~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|bajar~1_combout\,
	datab => \U2|U1|LessThan5~2_combout\,
	datac => \U2|U1|LessThan4~4_combout\,
	datad => \U2|U1|subir~1_combout\,
	combout => \U2|U1|bajar~2_combout\);

-- Location: LCCOMB_X30_Y23_N4
\U3|U4|piso[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U4|piso[0]~2_combout\ = \U3|U4|piso\(0) $ (((\U3|U4|piso[2]~8_combout\ & ((\U2|U1|subir~4_combout\) # (!\U2|U1|bajar~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|bajar~2_combout\,
	datab => \U2|U1|subir~4_combout\,
	datac => \U3|U4|piso\(0),
	datad => \U3|U4|piso[2]~8_combout\,
	combout => \U3|U4|piso[0]~2_combout\);

-- Location: FF_X30_Y23_N5
\U3|U4|piso[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U3|Equal0~combout\,
	d => \U3|U4|piso[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U4|piso\(0));

-- Location: LCCOMB_X35_Y23_N14
\U3|U6|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|Equal0~2_combout\ = \U3|U4|piso\(0) $ (((\U1|U3|code~2_combout\) # (\U1|U1|pet2_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|code~2_combout\,
	datac => \U1|U1|pet2_reg\(4),
	datad => \U3|U4|piso\(0),
	combout => \U3|U6|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y23_N6
\U3|U6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|Equal0~0_combout\ = \U3|U4|piso\(2) $ (((\U1|U1|pet2_reg\(3)) # (\U1|U1|pet2_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(3),
	datac => \U1|U1|pet2_reg\(4),
	datad => \U3|U4|piso\(2),
	combout => \U3|U6|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y23_N28
\U3|U6|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|Equal0~3_combout\ = (\U3|U6|Equal0~2_combout\ & (!\U3|U6|Equal0~0_combout\ & (\U3|U4|piso\(1) $ (!\U1|U3|code~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(1),
	datab => \U3|U6|Equal0~2_combout\,
	datac => \U1|U3|code~1_combout\,
	datad => \U3|U6|Equal0~0_combout\,
	combout => \U3|U6|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y23_N4
\U1|U1|pet2_reg[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet2_reg[4]~3_combout\ = (\U1|U1|pet2_reg[0]~2_combout\ & (((\U1|U1|pet2_reg\(4) & !\U3|U6|Equal0~3_combout\)))) # (!\U1|U1|pet2_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(4),
	datab => \U1|U1|pet2_reg[0]~2_combout\,
	datac => \U1|U1|pet2_reg\(4),
	datad => \U3|U6|Equal0~3_combout\,
	combout => \U1|U1|pet2_reg[4]~3_combout\);

-- Location: FF_X35_Y23_N5
\U1|U1|pet2_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet2_reg[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet2_reg\(4));

-- Location: LCCOMB_X37_Y23_N4
\U1|U1|pet2_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet2_reg[0]~0_combout\ = (!\U1|U1|pet2_reg\(3) & (!\U1|U1|pet2_reg\(0) & (!\U1|U1|pet2_reg\(1) & !\U1|U1|pet2_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(3),
	datab => \U1|U1|pet2_reg\(0),
	datac => \U1|U1|pet2_reg\(1),
	datad => \U1|U1|pet2_reg\(2),
	combout => \U1|U1|pet2_reg[0]~0_combout\);

-- Location: LCCOMB_X37_Y23_N10
\U1|U1|pet2_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet2_reg[0]~1_combout\ = (!\U1|U1|pet2_reg\(4) & \U1|U1|pet2_reg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|pet2_reg\(4),
	datac => \U1|U1|pet2_reg[0]~0_combout\,
	combout => \U1|U1|pet2_reg[0]~1_combout\);

-- Location: LCCOMB_X36_Y23_N2
\U1|U1|pet2_reg[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet2_reg[0]~2_combout\ = ((\U1|U1|pet1_reg[0]~1_combout\) # ((!\U1|U1|nueva_pet\(4) & \U1|U1|Equal6~0_combout\))) # (!\U1|U1|pet2_reg[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(4),
	datab => \U1|U1|Equal6~0_combout\,
	datac => \U1|U1|pet2_reg[0]~1_combout\,
	datad => \U1|U1|pet1_reg[0]~1_combout\,
	combout => \U1|U1|pet2_reg[0]~2_combout\);

-- Location: LCCOMB_X36_Y23_N26
\U1|U1|pet2_reg[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U1|pet2_reg[3]~4_combout\ = (\U1|U1|pet2_reg[0]~2_combout\ & (((\U1|U1|pet2_reg\(3) & !\U3|U6|Equal0~3_combout\)))) # (!\U1|U1|pet2_reg[0]~2_combout\ & (\U1|U1|nueva_pet\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|nueva_pet\(3),
	datab => \U1|U1|pet2_reg[0]~2_combout\,
	datac => \U1|U1|pet2_reg\(3),
	datad => \U3|U6|Equal0~3_combout\,
	combout => \U1|U1|pet2_reg[3]~4_combout\);

-- Location: FF_X36_Y23_N27
\U1|U1|pet2_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U1|U1|pet2_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|pet2_reg\(3));

-- Location: LCCOMB_X36_Y23_N20
\U1|U3|code~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|code~1_combout\ = (!\U1|U1|pet2_reg\(3) & (!\U1|U1|pet2_reg\(4) & ((\U1|U1|pet2_reg\(2)) # (\U1|U1|pet2_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(3),
	datab => \U1|U1|pet2_reg\(2),
	datac => \U1|U1|pet2_reg\(4),
	datad => \U1|U1|pet2_reg\(1),
	combout => \U1|U3|code~1_combout\);

-- Location: LCCOMB_X29_Y23_N12
\U2|U1|eleccion~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion~12_combout\ = (\U2|U1|eleccion[30]~10_combout\ & ((\U2|U1|eleccion\(1)))) # (!\U2|U1|eleccion[30]~10_combout\ & (\U1|U2|code~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|code~1_combout\,
	datac => \U2|U1|eleccion\(1),
	datad => \U2|U1|eleccion[30]~10_combout\,
	combout => \U2|U1|eleccion~12_combout\);

-- Location: LCCOMB_X29_Y23_N6
\U2|U1|eleccion~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|eleccion~13_combout\ = (\U2|U1|eleccion~11_combout\ & (\U1|U3|code~1_combout\)) # (!\U2|U1|eleccion~11_combout\ & ((\U2|U1|eleccion~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|code~1_combout\,
	datac => \U2|U1|eleccion~11_combout\,
	datad => \U2|U1|eleccion~12_combout\,
	combout => \U2|U1|eleccion~13_combout\);

-- Location: LCCOMB_X29_Y23_N4
\U2|U1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan4~1_combout\ = (\U3|U4|piso\(0) & ((\U2|U1|eleccion~11_combout\ & (\U1|U3|code~3_combout\)) # (!\U2|U1|eleccion~11_combout\ & ((\U2|U1|eleccion~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|code~3_combout\,
	datab => \U3|U4|piso\(0),
	datac => \U2|U1|eleccion~11_combout\,
	datad => \U2|U1|eleccion~25_combout\,
	combout => \U2|U1|LessThan4~1_combout\);

-- Location: LCCOMB_X30_Y23_N30
\U2|U1|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|U1|LessThan4~3_combout\ = (!\U2|U1|LessThan4~2_combout\ & ((\U3|U4|piso\(1) & (\U2|U1|eleccion~13_combout\ & \U2|U1|LessThan4~1_combout\)) # (!\U3|U4|piso\(1) & ((\U2|U1|eleccion~13_combout\) # (\U2|U1|LessThan4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(1),
	datab => \U2|U1|eleccion~13_combout\,
	datac => \U2|U1|LessThan4~1_combout\,
	datad => \U2|U1|LessThan4~2_combout\,
	combout => \U2|U1|LessThan4~3_combout\);

-- Location: LCCOMB_X30_Y23_N8
\U3|U4|piso[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U4|piso[2]~3_combout\ = (\U2|U1|LessThan4~0_combout\) # ((\U2|U1|bajar~1_combout\) # ((\U3|U4|piso\(2) & !\U2|U1|eleccion~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|LessThan4~0_combout\,
	datab => \U3|U4|piso\(2),
	datac => \U2|U1|bajar~1_combout\,
	datad => \U2|U1|eleccion~26_combout\,
	combout => \U3|U4|piso[2]~3_combout\);

-- Location: LCCOMB_X30_Y23_N6
\U3|U4|piso[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U4|piso[2]~4_combout\ = (\U2|U1|LessThan4~3_combout\) # ((\U2|U1|subir~3_combout\) # ((\U3|U4|piso[2]~3_combout\) # (\U2|U1|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|LessThan4~3_combout\,
	datab => \U2|U1|subir~3_combout\,
	datac => \U3|U4|piso[2]~3_combout\,
	datad => \U2|U1|LessThan5~1_combout\,
	combout => \U3|U4|piso[2]~4_combout\);

-- Location: LCCOMB_X30_Y23_N12
\U3|U4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U4|Add0~0_combout\ = \U3|U4|piso\(1) $ (\U3|U4|piso\(0) $ (!\U2|U1|subir~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U4|piso\(1),
	datac => \U3|U4|piso\(0),
	datad => \U2|U1|subir~4_combout\,
	combout => \U3|U4|Add0~0_combout\);

-- Location: LCCOMB_X30_Y23_N26
\U3|U4|piso[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U4|piso[1]~5_combout\ = (\U3|U4|piso[2]~4_combout\ & ((\U3|U4|piso[2]~8_combout\ & ((!\U3|U4|Add0~0_combout\))) # (!\U3|U4|piso[2]~8_combout\ & (\U3|U4|piso\(1))))) # (!\U3|U4|piso[2]~4_combout\ & (((\U3|U4|piso\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso[2]~4_combout\,
	datab => \U3|U4|piso[2]~8_combout\,
	datac => \U3|U4|piso\(1),
	datad => \U3|U4|Add0~0_combout\,
	combout => \U3|U4|piso[1]~5_combout\);

-- Location: FF_X30_Y23_N27
\U3|U4|piso[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U3|Equal0~combout\,
	d => \U3|U4|piso[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U4|piso\(1));

-- Location: LCCOMB_X36_Y23_N10
\U3|U6|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|U6|Equal0~1_combout\ = (!\U3|U6|Equal0~0_combout\ & (\U3|U4|piso\(0) $ (((\U1|U1|pet2_reg\(4)) # (\U1|U3|code~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U1|pet2_reg\(4),
	datab => \U1|U3|code~2_combout\,
	datac => \U3|U4|piso\(0),
	datad => \U3|U6|Equal0~0_combout\,
	combout => \U3|U6|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y23_N28
sllego : cycloneiii_lcell_comb
-- Equation(s):
-- \sllego~combout\ = (\U3|U5|Equal0~2_combout\) # ((\U3|U6|Equal0~1_combout\ & (\U3|U4|piso\(1) $ (!\U1|U3|code~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(1),
	datab => \U1|U3|code~1_combout\,
	datac => \U3|U6|Equal0~1_combout\,
	datad => \U3|U5|Equal0~2_combout\,
	combout => \sllego~combout\);

-- Location: FF_X33_Y23_N29
\U4|U2|llego_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sllego~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|llego_prev~q\);

-- Location: LCCOMB_X33_Y23_N22
\U4|U2|capturado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U2|capturado~0_combout\ = (!\U4|U1|clear_reg~q\ & ((\U4|U2|capturado~q\) # ((!\U4|U2|llego_prev~q\ & \sllego~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|clear_reg~q\,
	datab => \U4|U2|llego_prev~q\,
	datac => \U4|U2|capturado~q\,
	datad => \sllego~combout\,
	combout => \U4|U2|capturado~0_combout\);

-- Location: FF_X33_Y23_N23
\U4|U2|capturado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \U4|U2|capturado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U2|capturado~q\);

-- Location: LCCOMB_X29_Y23_N24
\U4|U1|reset2_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|reset2_reg~2_combout\ = (!\anomalia~input_o\ & (\U4|U1|reset2_reg~1_combout\ & !\U5|U2|AmayB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \U4|U1|reset2_reg~1_combout\,
	datad => \U5|U2|AmayB~0_combout\,
	combout => \U4|U1|reset2_reg~2_combout\);

-- Location: LCCOMB_X29_Y23_N16
\U4|U1|stage[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|stage[1]~1_combout\ = (\U4|U1|reset2_reg~1_combout\ & (((\U4|U1|stage\(1) & \U4|U1|reset2_reg~2_combout\)))) # (!\U4|U1|reset2_reg~1_combout\ & ((\U4|U1|stage[1]~0_combout\) # ((\U4|U1|stage\(1) & \U4|U1|reset2_reg~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|reset2_reg~1_combout\,
	datab => \U4|U1|stage[1]~0_combout\,
	datac => \U4|U1|stage\(1),
	datad => \U4|U1|reset2_reg~2_combout\,
	combout => \U4|U1|stage[1]~1_combout\);

-- Location: FF_X29_Y23_N17
\U4|U1|stage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U1|stage[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U1|stage\(1));

-- Location: LCCOMB_X29_Y23_N0
\U4|U1|reset2_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|reset2_reg~0_combout\ = (\U4|U1|stage\(1) & (!\U4|U1|stage\(0))) # (!\U4|U1|stage\(1) & (((\U4|U1|stage\(0) & !\U4|U7|capturado~q\)) # (!\U4|U2|capturado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|stage\(0),
	datab => \U4|U1|stage\(1),
	datac => \U4|U2|capturado~q\,
	datad => \U4|U7|capturado~q\,
	combout => \U4|U1|reset2_reg~0_combout\);

-- Location: LCCOMB_X29_Y23_N2
\U4|U1|reset2_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|reset2_reg~1_combout\ = (\U4|U1|reset2_reg~0_combout\ & (((!\U4|U2|capturado~q\) # (!\U4|U8|capturado~q\)) # (!\U4|U7|capturado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U7|capturado~q\,
	datab => \U4|U8|capturado~q\,
	datac => \U4|U2|capturado~q\,
	datad => \U4|U1|reset2_reg~0_combout\,
	combout => \U4|U1|reset2_reg~1_combout\);

-- Location: LCCOMB_X29_Y23_N14
\U4|U1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|process_0~0_combout\ = (!\U4|U1|stage\(0) & (!\U4|U1|stage\(1) & (!\anomalia~input_o\ & !\U5|U2|AmayB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|stage\(0),
	datab => \U4|U1|stage\(1),
	datac => \anomalia~input_o\,
	datad => \U5|U2|AmayB~0_combout\,
	combout => \U4|U1|process_0~0_combout\);

-- Location: LCCOMB_X29_Y23_N30
\U4|U1|stage[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|stage[0]~2_combout\ = (\U4|U1|reset2_reg~1_combout\ & (((\U4|U1|stage\(0) & \U4|U1|reset2_reg~2_combout\)))) # (!\U4|U1|reset2_reg~1_combout\ & ((\U4|U1|process_0~0_combout\) # ((\U4|U1|stage\(0) & \U4|U1|reset2_reg~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|reset2_reg~1_combout\,
	datab => \U4|U1|process_0~0_combout\,
	datac => \U4|U1|stage\(0),
	datad => \U4|U1|reset2_reg~2_combout\,
	combout => \U4|U1|stage[0]~2_combout\);

-- Location: FF_X29_Y23_N31
\U4|U1|stage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U1|stage[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U1|stage\(0));

-- Location: LCCOMB_X29_Y23_N28
\U4|U1|stage[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|stage[1]~0_combout\ = (\U4|U1|stage\(0) & (!\U4|U1|stage\(1) & (!\anomalia~input_o\ & !\U5|U2|AmayB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|stage\(0),
	datab => \U4|U1|stage\(1),
	datac => \anomalia~input_o\,
	datad => \U5|U2|AmayB~0_combout\,
	combout => \U4|U1|stage[1]~0_combout\);

-- Location: LCCOMB_X29_Y23_N22
\U4|U1|reset2_reg~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|reset2_reg~feeder_combout\ = \U4|U1|stage[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|U1|stage[1]~0_combout\,
	combout => \U4|U1|reset2_reg~feeder_combout\);

-- Location: FF_X29_Y23_N23
\U4|U1|reset2_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U1|reset2_reg~feeder_combout\,
	ena => \U4|U1|ALT_INV_reset2_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U1|reset2_reg~q\);

-- Location: FF_X30_Y24_N23
\U4|U4|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U4|Add0~4_combout\,
	clrn => \U4|U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U4|contador\(2));

-- Location: LCCOMB_X30_Y24_N6
\U4|U4|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|contador~1_combout\ = (\U4|U4|Add0~0_combout\ & (((\U4|U4|contador\(2)) # (!\U7|U3|Equal0~0_combout\)) # (!\U4|U4|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U4|contador\(1),
	datab => \U4|U4|contador\(2),
	datac => \U7|U3|Equal0~0_combout\,
	datad => \U4|U4|Add0~0_combout\,
	combout => \U4|U4|contador~1_combout\);

-- Location: FF_X30_Y24_N7
\U4|U4|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U4|contador~1_combout\,
	clrn => \U4|U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U4|contador\(0));

-- Location: LCCOMB_X30_Y24_N24
\U4|U4|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|Add0~6_combout\ = (\U4|U4|contador\(3) & (!\U4|U4|Add0~5\)) # (!\U4|U4|contador\(3) & ((\U4|U4|Add0~5\) # (GND)))
-- \U4|U4|Add0~7\ = CARRY((!\U4|U4|Add0~5\) # (!\U4|U4|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U4|contador\(3),
	datad => VCC,
	cin => \U4|U4|Add0~5\,
	combout => \U4|U4|Add0~6_combout\,
	cout => \U4|U4|Add0~7\);

-- Location: LCCOMB_X30_Y24_N0
\U4|U4|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|contador~0_combout\ = (\U4|U4|Add0~6_combout\ & (((\U4|U4|contador\(2)) # (!\U7|U3|Equal0~0_combout\)) # (!\U4|U4|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U4|contador\(1),
	datab => \U4|U4|contador\(2),
	datac => \U7|U3|Equal0~0_combout\,
	datad => \U4|U4|Add0~6_combout\,
	combout => \U4|U4|contador~0_combout\);

-- Location: FF_X30_Y24_N1
\U4|U4|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U4|contador~0_combout\,
	clrn => \U4|U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U4|contador\(3));

-- Location: LCCOMB_X30_Y24_N26
\U4|U4|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|Add0~8_combout\ = (\U4|U4|contador\(4) & (\U4|U4|Add0~7\ $ (GND))) # (!\U4|U4|contador\(4) & (!\U4|U4|Add0~7\ & VCC))
-- \U4|U4|Add0~9\ = CARRY((\U4|U4|contador\(4) & !\U4|U4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U4|contador\(4),
	datad => VCC,
	cin => \U4|U4|Add0~7\,
	combout => \U4|U4|Add0~8_combout\,
	cout => \U4|U4|Add0~9\);

-- Location: FF_X30_Y24_N27
\U4|U4|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U4|Add0~8_combout\,
	clrn => \U4|U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U4|contador\(4));

-- Location: LCCOMB_X30_Y24_N28
\U4|U4|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|Add0~10_combout\ = \U4|U4|Add0~9\ $ (\U4|U4|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U4|U4|contador\(5),
	cin => \U4|U4|Add0~9\,
	combout => \U4|U4|Add0~10_combout\);

-- Location: FF_X30_Y24_N29
\U4|U4|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U4|Add0~10_combout\,
	clrn => \U4|U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U4|contador\(5));

-- Location: LCCOMB_X30_Y24_N12
\U7|U3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|U3|Equal0~0_combout\ = (!\U4|U4|contador\(0) & (!\U4|U4|contador\(5) & (!\U4|U4|contador\(4) & \U4|U4|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U4|contador\(0),
	datab => \U4|U4|contador\(5),
	datac => \U4|U4|contador\(4),
	datad => \U4|U4|contador\(3),
	combout => \U7|U3|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y24_N30
\U4|U4|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U4|contador~2_combout\ = (\U4|U4|Add0~2_combout\ & (((\U4|U4|contador\(2)) # (!\U4|U4|contador\(1))) # (!\U7|U3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|U3|Equal0~0_combout\,
	datab => \U4|U4|contador\(2),
	datac => \U4|U4|contador\(1),
	datad => \U4|U4|Add0~2_combout\,
	combout => \U4|U4|contador~2_combout\);

-- Location: FF_X30_Y24_N31
\U4|U4|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U4|contador~2_combout\,
	clrn => \U4|U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U4|contador\(1));

-- Location: LCCOMB_X30_Y24_N16
\U7|U3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|U3|Equal0~1_combout\ = (\U4|U4|contador\(1) & (!\U4|U4|contador\(2) & \U7|U3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U4|contador\(1),
	datac => \U4|U4|contador\(2),
	datad => \U7|U3|Equal0~0_combout\,
	combout => \U7|U3|Equal0~1_combout\);

-- Location: FF_X30_Y24_N17
\U4|U8|llego_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U7|U3|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U8|llego_prev~q\);

-- Location: LCCOMB_X28_Y24_N30
\U4|U8|capturado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U8|capturado~0_combout\ = (!\U4|U1|clear_reg~q\ & ((\U4|U8|capturado~q\) # ((!\U4|U8|llego_prev~q\ & \U7|U3|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U8|llego_prev~q\,
	datab => \U4|U1|clear_reg~q\,
	datac => \U4|U8|capturado~q\,
	datad => \U7|U3|Equal0~1_combout\,
	combout => \U4|U8|capturado~0_combout\);

-- Location: FF_X28_Y24_N31
\U4|U8|capturado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \U4|U8|capturado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U8|capturado~q\);

-- Location: LCCOMB_X28_Y24_N26
\U5|U1|cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[0]~8_combout\ = (!\U5|U2|AmayB~0_combout\ & ((\U4|U8|capturado~q\) # (!\U4|U7|capturado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|U7|capturado~q\,
	datac => \U4|U8|capturado~q\,
	datad => \U5|U2|AmayB~0_combout\,
	combout => \U5|U1|cnt[0]~8_combout\);

-- Location: LCCOMB_X28_Y24_N12
\U5|U1|cnt[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[0]~7_combout\ = (\U5|U1|cnt\(0) & (\perEn~input_o\ $ ((!\perSal~input_o\)))) # (!\U5|U1|cnt\(0) & ((\perEn~input_o\ & (!\perSal~input_o\)) # (!\perEn~input_o\ & (\perSal~input_o\ & !\U7|U1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(0),
	datab => \perEn~input_o\,
	datac => \perSal~input_o\,
	datad => \U7|U1|LessThan0~0_combout\,
	combout => \U5|U1|cnt[0]~7_combout\);

-- Location: LCCOMB_X28_Y24_N0
\U5|U1|cnt[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[0]~9_combout\ = (\U5|U1|cnt[0]~8_combout\ & (((\U5|U1|cnt\(0))))) # (!\U5|U1|cnt[0]~8_combout\ & ((\anomalia~input_o\ & (\U5|U1|cnt\(0))) # (!\anomalia~input_o\ & ((\U5|U1|cnt[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt[0]~8_combout\,
	datab => \anomalia~input_o\,
	datac => \U5|U1|cnt\(0),
	datad => \U5|U1|cnt[0]~7_combout\,
	combout => \U5|U1|cnt[0]~9_combout\);

-- Location: FF_X28_Y24_N1
\U5|U1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U5|U1|cnt[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|cnt\(0));

-- Location: LCCOMB_X28_Y24_N14
\U5|U1|cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[1]~10_combout\ = \U5|U1|cnt\(1) $ (\U5|U1|cnt\(0) $ (((!\perSal~input_o\ & \perEn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(1),
	datab => \perSal~input_o\,
	datac => \U5|U1|cnt\(0),
	datad => \perEn~input_o\,
	combout => \U5|U1|cnt[1]~10_combout\);

-- Location: LCCOMB_X28_Y24_N28
\U5|U1|cnt[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[2]~1_combout\ = (\perSal~input_o\ & \perEn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \perSal~input_o\,
	datad => \perEn~input_o\,
	combout => \U5|U1|cnt[2]~1_combout\);

-- Location: LCCOMB_X28_Y24_N16
\U4|estadoPuerta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|estadoPuerta~1_combout\ = (!\U4|U8|capturado~q\ & \U4|U7|capturado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|U8|capturado~q\,
	datad => \U4|U7|capturado~q\,
	combout => \U4|estadoPuerta~1_combout\);

-- Location: LCCOMB_X28_Y24_N20
\U5|U1|cnt[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[2]~2_combout\ = (\U5|U1|cnt[2]~1_combout\) # ((\anomalia~input_o\) # ((!\U5|U2|AmayB~0_combout\ & !\U4|estadoPuerta~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt[2]~1_combout\,
	datab => \U5|U2|AmayB~0_combout\,
	datac => \anomalia~input_o\,
	datad => \U4|estadoPuerta~1_combout\,
	combout => \U5|U1|cnt[2]~2_combout\);

-- Location: LCCOMB_X28_Y24_N4
\U5|U1|cnt[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[1]~11_combout\ = (\U5|U1|cnt[2]~0_combout\ & (((\U5|U1|cnt\(1))))) # (!\U5|U1|cnt[2]~0_combout\ & ((\U5|U1|cnt[2]~2_combout\ & ((\U5|U1|cnt\(1)))) # (!\U5|U1|cnt[2]~2_combout\ & (!\U5|U1|cnt[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt[2]~0_combout\,
	datab => \U5|U1|cnt[1]~10_combout\,
	datac => \U5|U1|cnt\(1),
	datad => \U5|U1|cnt[2]~2_combout\,
	combout => \U5|U1|cnt[1]~11_combout\);

-- Location: FF_X28_Y24_N5
\U5|U1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U5|U1|cnt[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|cnt\(1));

-- Location: LCCOMB_X28_Y24_N2
\U5|U1|cnt[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[2]~5_combout\ = (\U5|U1|cnt\(0) & (!\perSal~input_o\ & (\perEn~input_o\ & \U5|U1|cnt\(1)))) # (!\U5|U1|cnt\(0) & (!\U5|U1|cnt\(1) & ((\perSal~input_o\) # (!\perEn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(0),
	datab => \perSal~input_o\,
	datac => \perEn~input_o\,
	datad => \U5|U1|cnt\(1),
	combout => \U5|U1|cnt[2]~5_combout\);

-- Location: LCCOMB_X28_Y24_N8
\U5|U1|cnt[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[2]~6_combout\ = \U5|U1|cnt\(2) $ (((!\U5|U1|cnt[2]~0_combout\ & (\U5|U1|cnt[2]~5_combout\ & !\U5|U1|cnt[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt[2]~0_combout\,
	datab => \U5|U1|cnt[2]~5_combout\,
	datac => \U5|U1|cnt\(2),
	datad => \U5|U1|cnt[2]~2_combout\,
	combout => \U5|U1|cnt[2]~6_combout\);

-- Location: FF_X28_Y24_N9
\U5|U1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U5|U1|cnt[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|cnt\(2));

-- Location: LCCOMB_X28_Y24_N10
\U7|U1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|U1|LessThan0~0_combout\ = (!\U5|U1|cnt\(3) & (!\U5|U1|cnt\(2) & (!\U5|U1|cnt\(0) & !\U5|U1|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(3),
	datab => \U5|U1|cnt\(2),
	datac => \U5|U1|cnt\(0),
	datad => \U5|U1|cnt\(1),
	combout => \U7|U1|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y24_N22
\U5|U1|cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[2]~0_combout\ = (!\perEn~input_o\ & ((\U7|U1|LessThan0~0_combout\) # (!\perSal~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \perEn~input_o\,
	datac => \perSal~input_o\,
	datad => \U7|U1|LessThan0~0_combout\,
	combout => \U5|U1|cnt[2]~0_combout\);

-- Location: LCCOMB_X27_Y24_N0
\U5|U1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|process_0~0_combout\ = (!\perSal~input_o\ & \perEn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \perSal~input_o\,
	datad => \perEn~input_o\,
	combout => \U5|U1|process_0~0_combout\);

-- Location: LCCOMB_X27_Y24_N6
\U5|U1|cnt[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[3]~3_combout\ = (\U5|U1|process_0~0_combout\ & (\U5|U1|cnt\(0) & (\U5|U1|cnt\(2) & \U5|U1|cnt\(1)))) # (!\U5|U1|process_0~0_combout\ & (!\U5|U1|cnt\(0) & (!\U5|U1|cnt\(2) & !\U5|U1|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|process_0~0_combout\,
	datab => \U5|U1|cnt\(0),
	datac => \U5|U1|cnt\(2),
	datad => \U5|U1|cnt\(1),
	combout => \U5|U1|cnt[3]~3_combout\);

-- Location: LCCOMB_X28_Y24_N6
\U5|U1|cnt[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U1|cnt[3]~4_combout\ = \U5|U1|cnt\(3) $ (((!\U5|U1|cnt[2]~0_combout\ & (\U5|U1|cnt[3]~3_combout\ & !\U5|U1|cnt[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt[2]~0_combout\,
	datab => \U5|U1|cnt[3]~3_combout\,
	datac => \U5|U1|cnt\(3),
	datad => \U5|U1|cnt[2]~2_combout\,
	combout => \U5|U1|cnt[3]~4_combout\);

-- Location: FF_X28_Y24_N7
\U5|U1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U6|out2~q\,
	d => \U5|U1|cnt[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|U1|cnt\(3));

-- Location: LCCOMB_X28_Y24_N24
\U5|U2|AmayB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|U2|AmayB~0_combout\ = (\U5|U1|cnt\(3) & ((\U5|U1|cnt\(2)) # ((\U5|U1|cnt\(1) & \U5|U1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(3),
	datab => \U5|U1|cnt\(1),
	datac => \U5|U1|cnt\(2),
	datad => \U5|U1|cnt\(0),
	combout => \U5|U2|AmayB~0_combout\);

-- Location: LCCOMB_X29_Y23_N20
\U4|U1|clear_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|clear_reg~0_combout\ = (!\U4|U1|stage\(0) & (\U4|U1|stage\(1) & (\U4|U8|capturado~q\ & \U4|U7|capturado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|stage\(0),
	datab => \U4|U1|stage\(1),
	datac => \U4|U8|capturado~q\,
	datad => \U4|U7|capturado~q\,
	combout => \U4|U1|clear_reg~0_combout\);

-- Location: LCCOMB_X29_Y23_N10
\U4|U1|clear_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U1|clear_reg~1_combout\ = (!\anomalia~input_o\ & (!\U5|U2|AmayB~0_combout\ & (\U4|U2|capturado~q\ & \U4|U1|clear_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \U5|U2|AmayB~0_combout\,
	datac => \U4|U2|capturado~q\,
	datad => \U4|U1|clear_reg~0_combout\,
	combout => \U4|U1|clear_reg~1_combout\);

-- Location: FF_X29_Y23_N11
\U4|U1|clear_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|U1|clear_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U1|clear_reg~q\);

-- Location: LCCOMB_X29_Y24_N12
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

-- Location: LCCOMB_X29_Y24_N10
\U4|U3|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|contador~1_combout\ = (\U4|U3|Add0~0_combout\ & (((\U4|U3|contador\(1)) # (!\U7|U2|Equal0~0_combout\)) # (!\U4|U3|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(2),
	datab => \U4|U3|contador\(1),
	datac => \U7|U2|Equal0~0_combout\,
	datad => \U4|U3|Add0~0_combout\,
	combout => \U4|U3|contador~1_combout\);

-- Location: FF_X29_Y23_N25
\U4|U1|reset1_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U4|U1|process_0~0_combout\,
	sload => VCC,
	ena => \U4|U1|ALT_INV_reset2_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U1|reset1_reg~q\);

-- Location: FF_X29_Y24_N11
\U4|U3|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U3|contador~1_combout\,
	clrn => \U4|U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(0));

-- Location: LCCOMB_X29_Y24_N14
\U4|U3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|Add0~2_combout\ = (\U4|U3|contador\(1) & (!\U4|U3|Add0~1\)) # (!\U4|U3|contador\(1) & ((\U4|U3|Add0~1\) # (GND)))
-- \U4|U3|Add0~3\ = CARRY((!\U4|U3|Add0~1\) # (!\U4|U3|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U3|contador\(1),
	datad => VCC,
	cin => \U4|U3|Add0~1\,
	combout => \U4|U3|Add0~2_combout\,
	cout => \U4|U3|Add0~3\);

-- Location: FF_X29_Y24_N15
\U4|U3|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U3|Add0~2_combout\,
	clrn => \U4|U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(1));

-- Location: LCCOMB_X29_Y24_N16
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

-- Location: LCCOMB_X29_Y24_N18
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

-- Location: FF_X29_Y24_N19
\U4|U3|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U3|Add0~6_combout\,
	clrn => \U4|U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(3));

-- Location: LCCOMB_X29_Y24_N20
\U4|U3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|Add0~8_combout\ = (\U4|U3|contador\(4) & (\U4|U3|Add0~7\ $ (GND))) # (!\U4|U3|contador\(4) & (!\U4|U3|Add0~7\ & VCC))
-- \U4|U3|Add0~9\ = CARRY((\U4|U3|contador\(4) & !\U4|U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|U3|contador\(4),
	datad => VCC,
	cin => \U4|U3|Add0~7\,
	combout => \U4|U3|Add0~8_combout\,
	cout => \U4|U3|Add0~9\);

-- Location: LCCOMB_X29_Y24_N4
\U4|U3|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|contador~0_combout\ = (\U4|U3|Add0~8_combout\ & (((\U4|U3|contador\(1)) # (!\U7|U2|Equal0~0_combout\)) # (!\U4|U3|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(2),
	datab => \U4|U3|contador\(1),
	datac => \U7|U2|Equal0~0_combout\,
	datad => \U4|U3|Add0~8_combout\,
	combout => \U4|U3|contador~0_combout\);

-- Location: FF_X29_Y24_N5
\U4|U3|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U3|contador~0_combout\,
	clrn => \U4|U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(4));

-- Location: LCCOMB_X29_Y24_N22
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

-- Location: FF_X29_Y24_N23
\U4|U3|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U3|Add0~10_combout\,
	clrn => \U4|U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(5));

-- Location: LCCOMB_X29_Y24_N0
\U7|U2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|U2|Equal0~0_combout\ = (!\U4|U3|contador\(5) & (!\U4|U3|contador\(0) & (\U4|U3|contador\(4) & !\U4|U3|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(5),
	datab => \U4|U3|contador\(0),
	datac => \U4|U3|contador\(4),
	datad => \U4|U3|contador\(3),
	combout => \U7|U2|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y24_N30
\U4|U3|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U3|contador~2_combout\ = (\U4|U3|Add0~4_combout\ & (((\U4|U3|contador\(1)) # (!\U4|U3|contador\(2))) # (!\U7|U2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|U2|Equal0~0_combout\,
	datab => \U4|U3|contador\(1),
	datac => \U4|U3|contador\(2),
	datad => \U4|U3|Add0~4_combout\,
	combout => \U4|U3|contador~2_combout\);

-- Location: FF_X29_Y24_N31
\U4|U3|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|U9|out2~clkctrl_outclk\,
	d => \U4|U3|contador~2_combout\,
	clrn => \U4|U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U3|contador\(2));

-- Location: LCCOMB_X29_Y24_N28
\U7|U2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|U2|Equal0~1_combout\ = (\U4|U3|contador\(2) & (!\U4|U3|contador\(1) & \U7|U2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U3|contador\(2),
	datac => \U4|U3|contador\(1),
	datad => \U7|U2|Equal0~0_combout\,
	combout => \U7|U2|Equal0~1_combout\);

-- Location: FF_X29_Y24_N29
\U4|U7|llego_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U7|U2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U7|llego_prev~q\);

-- Location: LCCOMB_X28_Y24_N18
\U4|U7|capturado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|U7|capturado~0_combout\ = (!\U4|U1|clear_reg~q\ & ((\U4|U7|capturado~q\) # ((!\U4|U7|llego_prev~q\ & \U7|U2|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U1|clear_reg~q\,
	datab => \U4|U7|llego_prev~q\,
	datac => \U4|U7|capturado~q\,
	datad => \U7|U2|Equal0~1_combout\,
	combout => \U4|U7|capturado~0_combout\);

-- Location: FF_X28_Y24_N19
\U4|U7|capturado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \U4|U7|capturado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|U7|capturado~q\);

-- Location: LCCOMB_X29_Y24_N24
\U4|estadoPuerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|estadoPuerta~0_combout\ = (!\anomalia~input_o\ & ((\U5|U2|AmayB~0_combout\) # ((\U4|U7|capturado~q\ & !\U4|U8|capturado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|U7|capturado~q\,
	datab => \U5|U2|AmayB~0_combout\,
	datac => \U4|U8|capturado~q\,
	datad => \anomalia~input_o\,
	combout => \U4|estadoPuerta~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\botonNotificacion~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botonNotificacion,
	o => \botonNotificacion~input_o\);

-- Location: LCCOMB_X29_Y24_N6
\U7|luz\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|luz~combout\ = ((!\anomalia~input_o\ & ((\U4|estadoPuerta~1_combout\) # (\U5|U2|AmayB~0_combout\)))) # (!\U7|U1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \U7|U1|LessThan0~0_combout\,
	datac => \U4|estadoPuerta~1_combout\,
	datad => \U5|U2|AmayB~0_combout\,
	combout => \U7|luz~combout\);

-- Location: LCCOMB_X29_Y24_N26
\alarmaSonora~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarmaSonora~0_combout\ = (\U5|U2|AmayB~0_combout\) # ((\U7|U3|Equal0~1_combout\) # ((\anomalia~input_o\) # (\U7|U2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U2|AmayB~0_combout\,
	datab => \U7|U3|Equal0~1_combout\,
	datac => \anomalia~input_o\,
	datad => \U7|U2|Equal0~1_combout\,
	combout => \alarmaSonora~0_combout\);

-- Location: LCCOMB_X27_Y27_N8
\H1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H1|Mux0~0_combout\ = (\U3|U4|piso\(2) & (\U3|U4|piso\(0))) # (!\U3|U4|piso\(2) & (!\U3|U4|piso\(0) & !\U3|U4|piso\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(2),
	datab => \U3|U4|piso\(0),
	datac => \U3|U4|piso\(1),
	combout => \H1|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y27_N22
\H1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H1|Mux1~0_combout\ = (\U3|U4|piso\(2) & (\U3|U4|piso\(0) $ (!\U3|U4|piso\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(2),
	datab => \U3|U4|piso\(0),
	datac => \U3|U4|piso\(1),
	combout => \H1|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y27_N4
\H1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H1|Mux2~0_combout\ = (!\U3|U4|piso\(2) & (\U3|U4|piso\(0) & \U3|U4|piso\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(2),
	datab => \U3|U4|piso\(0),
	datac => \U3|U4|piso\(1),
	combout => \H1|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y27_N2
\H1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H1|Mux3~0_combout\ = (\U3|U4|piso\(2) & (\U3|U4|piso\(0) $ (\U3|U4|piso\(1)))) # (!\U3|U4|piso\(2) & (!\U3|U4|piso\(0) & !\U3|U4|piso\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(2),
	datab => \U3|U4|piso\(0),
	datac => \U3|U4|piso\(1),
	combout => \H1|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y27_N0
\H1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H1|Mux4~0_combout\ = ((\U3|U4|piso\(2) & !\U3|U4|piso\(1))) # (!\U3|U4|piso\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(2),
	datab => \U3|U4|piso\(0),
	datac => \U3|U4|piso\(1),
	combout => \H1|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y27_N14
\H1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H1|Mux5~0_combout\ = (\U3|U4|piso\(2) & (!\U3|U4|piso\(0) & \U3|U4|piso\(1))) # (!\U3|U4|piso\(2) & ((\U3|U4|piso\(1)) # (!\U3|U4|piso\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(2),
	datab => \U3|U4|piso\(0),
	datac => \U3|U4|piso\(1),
	combout => \H1|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y27_N12
\H1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H1|Mux6~0_combout\ = (\U3|U4|piso\(2) & (!\U3|U4|piso\(0) & \U3|U4|piso\(1))) # (!\U3|U4|piso\(2) & ((!\U3|U4|piso\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U4|piso\(2),
	datab => \U3|U4|piso\(0),
	datac => \U3|U4|piso\(1),
	combout => \H1|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y27_N0
\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY(\U5|U1|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(1),
	datad => VCC,
	cout => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X29_Y27_N2
\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\U5|U1|cnt\(2) & !\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(2),
	datad => VCC,
	cin => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X29_Y27_N4
\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((\U5|U1|cnt\(3) & !\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|U1|cnt\(3),
	datad => VCC,
	cin => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X29_Y27_N6
\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY(!\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y27_N8
\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\ = CARRY(!\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	cout => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\);

-- Location: LCCOMB_X29_Y27_N10
\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = !\H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~9_cout\,
	combout => \H2|Div0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\);

-- Location: LCCOMB_X29_Y28_N4
\H2|Mod0|auto_generated|divider|divider|op_24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|op_24~0_combout\ = \U5|U1|cnt\(1) $ (VCC)
-- \H2|Mod0|auto_generated|divider|divider|op_24~1\ = CARRY(\U5|U1|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(1),
	datad => VCC,
	combout => \H2|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	cout => \H2|Mod0|auto_generated|divider|divider|op_24~1\);

-- Location: LCCOMB_X29_Y28_N6
\H2|Mod0|auto_generated|divider|divider|op_24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|op_24~2_combout\ = (\U5|U1|cnt\(2) & (\H2|Mod0|auto_generated|divider|divider|op_24~1\ & VCC)) # (!\U5|U1|cnt\(2) & (!\H2|Mod0|auto_generated|divider|divider|op_24~1\))
-- \H2|Mod0|auto_generated|divider|divider|op_24~3\ = CARRY((!\U5|U1|cnt\(2) & !\H2|Mod0|auto_generated|divider|divider|op_24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(2),
	datad => VCC,
	cin => \H2|Mod0|auto_generated|divider|divider|op_24~1\,
	combout => \H2|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	cout => \H2|Mod0|auto_generated|divider|divider|op_24~3\);

-- Location: LCCOMB_X29_Y28_N8
\H2|Mod0|auto_generated|divider|divider|op_24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|op_24~4_combout\ = (\U5|U1|cnt\(3) & (\H2|Mod0|auto_generated|divider|divider|op_24~3\ $ (GND))) # (!\U5|U1|cnt\(3) & (!\H2|Mod0|auto_generated|divider|divider|op_24~3\ & VCC))
-- \H2|Mod0|auto_generated|divider|divider|op_24~5\ = CARRY((\U5|U1|cnt\(3) & !\H2|Mod0|auto_generated|divider|divider|op_24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|U1|cnt\(3),
	datad => VCC,
	cin => \H2|Mod0|auto_generated|divider|divider|op_24~3\,
	combout => \H2|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	cout => \H2|Mod0|auto_generated|divider|divider|op_24~5\);

-- Location: LCCOMB_X29_Y28_N10
\H2|Mod0|auto_generated|divider|divider|op_24~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|op_24~7_cout\ = CARRY(!\H2|Mod0|auto_generated|divider|divider|op_24~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \H2|Mod0|auto_generated|divider|divider|op_24~5\,
	cout => \H2|Mod0|auto_generated|divider|divider|op_24~7_cout\);

-- Location: LCCOMB_X29_Y28_N12
\H2|Mod0|auto_generated|divider|divider|op_24~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|op_24~9_cout\ = CARRY(!\H2|Mod0|auto_generated|divider|divider|op_24~7_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \H2|Mod0|auto_generated|divider|divider|op_24~7_cout\,
	cout => \H2|Mod0|auto_generated|divider|divider|op_24~9_cout\);

-- Location: LCCOMB_X29_Y28_N14
\H2|Mod0|auto_generated|divider|divider|op_24~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|op_24~11_cout\ = CARRY(!\H2|Mod0|auto_generated|divider|divider|op_24~9_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \H2|Mod0|auto_generated|divider|divider|op_24~9_cout\,
	cout => \H2|Mod0|auto_generated|divider|divider|op_24~11_cout\);

-- Location: LCCOMB_X29_Y28_N16
\H2|Mod0|auto_generated|divider|divider|op_24~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|op_24~13_cout\ = CARRY(!\H2|Mod0|auto_generated|divider|divider|op_24~11_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \H2|Mod0|auto_generated|divider|divider|op_24~11_cout\,
	cout => \H2|Mod0|auto_generated|divider|divider|op_24~13_cout\);

-- Location: LCCOMB_X29_Y28_N18
\H2|Mod0|auto_generated|divider|divider|op_24~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|op_24~14_combout\ = !\H2|Mod0|auto_generated|divider|divider|op_24~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \H2|Mod0|auto_generated|divider|divider|op_24~13_cout\,
	combout => \H2|Mod0|auto_generated|divider|divider|op_24~14_combout\);

-- Location: LCCOMB_X29_Y28_N26
\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ = (\H2|Mod0|auto_generated|divider|divider|op_24~14_combout\ & (\U5|U1|cnt\(2))) # (!\H2|Mod0|auto_generated|divider|divider|op_24~14_combout\ & 
-- ((\H2|Mod0|auto_generated|divider|divider|op_24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(2),
	datab => \H2|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	datad => \H2|Mod0|auto_generated|divider|divider|op_24~2_combout\,
	combout => \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\);

-- Location: LCCOMB_X29_Y28_N24
\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\ = (\H2|Mod0|auto_generated|divider|divider|op_24~14_combout\ & (\U5|U1|cnt\(3))) # (!\H2|Mod0|auto_generated|divider|divider|op_24~14_combout\ & 
-- ((\H2|Mod0|auto_generated|divider|divider|op_24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|U1|cnt\(3),
	datac => \H2|Mod0|auto_generated|divider|divider|op_24~4_combout\,
	datad => \H2|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	combout => \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\);

-- Location: LCCOMB_X29_Y28_N20
\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\ = (\H2|Mod0|auto_generated|divider|divider|op_24~14_combout\ & (\U5|U1|cnt\(1))) # (!\H2|Mod0|auto_generated|divider|divider|op_24~14_combout\ & 
-- ((\H2|Mod0|auto_generated|divider|divider|op_24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|cnt\(1),
	datac => \H2|Mod0|auto_generated|divider|divider|op_24~0_combout\,
	datad => \H2|Mod0|auto_generated|divider|divider|op_24~14_combout\,
	combout => \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\);

-- Location: LCCOMB_X30_Y28_N24
\H4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H4|Mux0~0_combout\ = (\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\) # ((!\U5|U1|cnt\(0))))) # (!\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & 
-- ((\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\))) # (!\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\ & (\U5|U1|cnt\(0) & 
-- !\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\,
	datab => \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\,
	datac => \U5|U1|cnt\(0),
	datad => \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\,
	combout => \H4|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y28_N2
\H4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H4|Mux1~0_combout\ = (\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\) # (\U5|U1|cnt\(0) $ (\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\)))) # 
-- (!\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & (\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\,
	datab => \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\,
	datac => \U5|U1|cnt\(0),
	datad => \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\,
	combout => \H4|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y28_N0
\H4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H4|Mux2~0_combout\ = (\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & (\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\)) # (!\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & 
-- (\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\) # (!\U5|U1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\,
	datab => \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\,
	datac => \U5|U1|cnt\(0),
	datad => \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\,
	combout => \H4|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y28_N22
\H4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H4|Mux3~0_combout\ = (\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\) # (\U5|U1|cnt\(0) $ (!\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\)))) # 
-- (!\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\ & (\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\)) # 
-- (!\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\ & ((\U5|U1|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\,
	datab => \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\,
	datac => \U5|U1|cnt\(0),
	datad => \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\,
	combout => \H4|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y28_N20
\H4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H4|Mux4~0_combout\ = (\U5|U1|cnt\(0)) # ((\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\))) # (!\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\ & 
-- (\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\,
	datab => \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\,
	datac => \U5|U1|cnt\(0),
	datad => \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\,
	combout => \H4|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y28_N10
\H4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H4|Mux5~0_combout\ = (\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\) # ((\U5|U1|cnt\(0) & \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\)))) # 
-- (!\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & ((\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\) # ((!\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\ & \U5|U1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\,
	datab => \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\,
	datac => \U5|U1|cnt\(0),
	datad => \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\,
	combout => \H4|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y28_N12
\H4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \H4|Mux6~0_combout\ = (\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & (!\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\ & ((!\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\) # (!\U5|U1|cnt\(0))))) # 
-- (!\H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & (\H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\ $ (((\H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \H2|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\,
	datab => \H2|Mod0|auto_generated|divider|divider|StageOut[995]~2_combout\,
	datac => \U5|U1|cnt\(0),
	datad => \H2|Mod0|auto_generated|divider|divider|StageOut[993]~0_combout\,
	combout => \H4|Mux6~0_combout\);

ww_estadoPuerta <= \estadoPuerta~output_o\;

ww_subiendo <= \subiendo~output_o\;

ww_bajando <= \bajando~output_o\;

ww_notificacion <= \notificacion~output_o\;

ww_anomaliaEn <= \anomaliaEn~output_o\;

ww_luz <= \luz~output_o\;

ww_alarmaSonora <= \alarmaSonora~output_o\;

ww_a1 <= \a1~output_o\;

ww_b1 <= \b1~output_o\;

ww_c1 <= \c1~output_o\;

ww_d1 <= \d1~output_o\;

ww_e1 <= \e1~output_o\;

ww_f1 <= \f1~output_o\;

ww_g1 <= \g1~output_o\;

ww_a2 <= \a2~output_o\;

ww_b2 <= \b2~output_o\;

ww_c2 <= \c2~output_o\;

ww_d2 <= \d2~output_o\;

ww_e2 <= \e2~output_o\;

ww_f2 <= \f2~output_o\;

ww_g2 <= \g2~output_o\;

ww_a3 <= \a3~output_o\;

ww_b3 <= \b3~output_o\;

ww_c3 <= \c3~output_o\;

ww_d3 <= \d3~output_o\;

ww_e3 <= \e3~output_o\;

ww_f3 <= \f3~output_o\;

ww_g3 <= \g3~output_o\;
END structure;


