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

-- DATE "03/30/2025 21:25:32"

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

ENTITY 	registrosBotones IS
    PORT (
	clk : IN std_logic;
	reset1 : IN std_logic;
	reset2 : IN std_logic;
	PS : IN std_logic_vector(4 DOWNTO 0);
	PB : IN std_logic_vector(4 DOWNTO 0);
	PD : IN std_logic_vector(4 DOWNTO 0);
	pet1 : OUT std_logic_vector(2 DOWNTO 0);
	pet2 : OUT std_logic_vector(2 DOWNTO 0)
	);
END registrosBotones;

-- Design Ports Information
-- pet1[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registrosBotones IS
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
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset2 : std_logic;
SIGNAL ww_PS : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PB : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pet1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pet2 : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pet1[0]~output_o\ : std_logic;
SIGNAL \pet1[1]~output_o\ : std_logic;
SIGNAL \pet1[2]~output_o\ : std_logic;
SIGNAL \pet2[0]~output_o\ : std_logic;
SIGNAL \pet2[1]~output_o\ : std_logic;
SIGNAL \pet2[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \PD[0]~input_o\ : std_logic;
SIGNAL \PD[3]~input_o\ : std_logic;
SIGNAL \PD[1]~input_o\ : std_logic;
SIGNAL \PD[2]~input_o\ : std_logic;
SIGNAL \U1|Equal5~0_combout\ : std_logic;
SIGNAL \PD[4]~input_o\ : std_logic;
SIGNAL \U1|prev_PD[2]~feeder_combout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|process_0~1_combout\ : std_logic;
SIGNAL \PS[4]~input_o\ : std_logic;
SIGNAL \PB[4]~input_o\ : std_logic;
SIGNAL \PB[1]~input_o\ : std_logic;
SIGNAL \PB[3]~input_o\ : std_logic;
SIGNAL \PB[0]~input_o\ : std_logic;
SIGNAL \PB[2]~input_o\ : std_logic;
SIGNAL \U1|Equal3~0_combout\ : std_logic;
SIGNAL \U1|prev_PB[2]~feeder_combout\ : std_logic;
SIGNAL \U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|process_0~3_combout\ : std_logic;
SIGNAL \U1|nueva_pet~0_combout\ : std_logic;
SIGNAL \PS[1]~input_o\ : std_logic;
SIGNAL \PS[2]~input_o\ : std_logic;
SIGNAL \PS[3]~input_o\ : std_logic;
SIGNAL \PS[0]~input_o\ : std_logic;
SIGNAL \U1|nueva_pet~2_combout\ : std_logic;
SIGNAL \U1|prev_PS[1]~feeder_combout\ : std_logic;
SIGNAL \U1|prev_PS[0]~feeder_combout\ : std_logic;
SIGNAL \U1|prev_PS[2]~feeder_combout\ : std_logic;
SIGNAL \U1|nueva_pet~1_combout\ : std_logic;
SIGNAL \U1|nueva_pet~3_combout\ : std_logic;
SIGNAL \U1|nueva_pet~4_combout\ : std_logic;
SIGNAL \U1|nueva_pet~5_combout\ : std_logic;
SIGNAL \reset1~input_o\ : std_logic;
SIGNAL \U1|nueva_pet~10_combout\ : std_logic;
SIGNAL \U1|nueva_pet~11_combout\ : std_logic;
SIGNAL \U1|pet1_reg[2]~2_combout\ : std_logic;
SIGNAL \U1|nueva_pet~8_combout\ : std_logic;
SIGNAL \U1|nueva_pet~9_combout\ : std_logic;
SIGNAL \U1|pet1_reg[1]~4_combout\ : std_logic;
SIGNAL \U1|nueva_pet~6_combout\ : std_logic;
SIGNAL \U1|nueva_pet~7_combout\ : std_logic;
SIGNAL \U1|pet1_reg[0]~3_combout\ : std_logic;
SIGNAL \U1|nueva_pet~12_combout\ : std_logic;
SIGNAL \U1|nueva_pet~13_combout\ : std_logic;
SIGNAL \U1|pet1_reg[3]~5_combout\ : std_logic;
SIGNAL \U2|code~3_combout\ : std_logic;
SIGNAL \U1|Equal7~0_combout\ : std_logic;
SIGNAL \U1|Equal6~0_combout\ : std_logic;
SIGNAL \U1|pet1_reg[0]~0_combout\ : std_logic;
SIGNAL \U1|pet1_reg[4]~1_combout\ : std_logic;
SIGNAL \U2|code~0_combout\ : std_logic;
SIGNAL \U2|code~1_combout\ : std_logic;
SIGNAL \U2|code~2_combout\ : std_logic;
SIGNAL \reset2~input_o\ : std_logic;
SIGNAL \U1|pet2_reg[0]~4_combout\ : std_logic;
SIGNAL \U1|pet2_reg[2]~3_combout\ : std_logic;
SIGNAL \U1|pet2_reg[4]~2_combout\ : std_logic;
SIGNAL \U1|pet2_reg[3]~6_combout\ : std_logic;
SIGNAL \U3|code~3_combout\ : std_logic;
SIGNAL \U1|pet2_reg[0]~0_combout\ : std_logic;
SIGNAL \U1|pet2_reg[0]~1_combout\ : std_logic;
SIGNAL \U1|pet2_reg[1]~5_combout\ : std_logic;
SIGNAL \U3|code~0_combout\ : std_logic;
SIGNAL \U3|code~1_combout\ : std_logic;
SIGNAL \U3|code~2_combout\ : std_logic;
SIGNAL \U1|prev_PS\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|prev_PD\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|prev_PB\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|pet2_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|pet1_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|nueva_pet\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U3|ALT_INV_code~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_code~3_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset1 <= reset1;
ww_reset2 <= reset2;
ww_PS <= PS;
ww_PB <= PB;
ww_PD <= PD;
pet1 <= ww_pet1;
pet2 <= ww_pet2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\U3|ALT_INV_code~3_combout\ <= NOT \U3|code~3_combout\;
\U2|ALT_INV_code~3_combout\ <= NOT \U2|code~3_combout\;

-- Location: IOOBUF_X23_Y0_N30
\pet1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|code~1_combout\,
	devoe => ww_devoe,
	o => \pet1[0]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\pet1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|code~2_combout\,
	devoe => ww_devoe,
	o => \pet1[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\pet1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_code~3_combout\,
	devoe => ww_devoe,
	o => \pet1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\pet2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|code~1_combout\,
	devoe => ww_devoe,
	o => \pet2[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\pet2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|code~2_combout\,
	devoe => ww_devoe,
	o => \pet2[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\pet2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_code~3_combout\,
	devoe => ww_devoe,
	o => \pet2[2]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X26_Y29_N15
\PD[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(0),
	o => \PD[0]~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\PD[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(3),
	o => \PD[3]~input_o\);

-- Location: IOIBUF_X21_Y29_N15
\PD[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(1),
	o => \PD[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N29
\PD[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(2),
	o => \PD[2]~input_o\);

-- Location: LCCOMB_X23_Y25_N12
\U1|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal5~0_combout\ = (!\PD[0]~input_o\ & (!\PD[3]~input_o\ & (!\PD[1]~input_o\ & !\PD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PD[0]~input_o\,
	datab => \PD[3]~input_o\,
	datac => \PD[1]~input_o\,
	datad => \PD[2]~input_o\,
	combout => \U1|Equal5~0_combout\);

-- Location: IOIBUF_X23_Y29_N1
\PD[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(4),
	o => \PD[4]~input_o\);

-- Location: FF_X23_Y25_N15
\U1|prev_PD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PD[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PD\(4));

-- Location: FF_X23_Y25_N27
\U1|prev_PD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PD[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PD\(1));

-- Location: LCCOMB_X23_Y25_N24
\U1|prev_PD[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|prev_PD[2]~feeder_combout\ = \PD[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PD[2]~input_o\,
	combout => \U1|prev_PD[2]~feeder_combout\);

-- Location: FF_X23_Y25_N25
\U1|prev_PD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|prev_PD[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PD\(2));

-- Location: FF_X23_Y25_N19
\U1|prev_PD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PD[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PD\(3));

-- Location: FF_X23_Y25_N17
\U1|prev_PD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PD[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PD\(0));

-- Location: LCCOMB_X23_Y25_N18
\U1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = (!\U1|prev_PD\(1) & (!\U1|prev_PD\(2) & (!\U1|prev_PD\(3) & !\U1|prev_PD\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|prev_PD\(1),
	datab => \U1|prev_PD\(2),
	datac => \U1|prev_PD\(3),
	datad => \U1|prev_PD\(0),
	combout => \U1|process_0~0_combout\);

-- Location: LCCOMB_X23_Y25_N14
\U1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~1_combout\ = (!\U1|prev_PD\(4) & (\U1|process_0~0_combout\ & ((\PD[4]~input_o\) # (!\U1|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal5~0_combout\,
	datab => \PD[4]~input_o\,
	datac => \U1|prev_PD\(4),
	datad => \U1|process_0~0_combout\,
	combout => \U1|process_0~1_combout\);

-- Location: IOIBUF_X21_Y29_N29
\PS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(4),
	o => \PS[4]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\PB[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(4),
	o => \PB[4]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\PB[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(1),
	o => \PB[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\PB[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(3),
	o => \PB[3]~input_o\);

-- Location: IOIBUF_X23_Y29_N15
\PB[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(0),
	o => \PB[0]~input_o\);

-- Location: IOIBUF_X26_Y29_N29
\PB[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(2),
	o => \PB[2]~input_o\);

-- Location: LCCOMB_X23_Y25_N4
\U1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal3~0_combout\ = (!\PB[1]~input_o\ & (!\PB[3]~input_o\ & (!\PB[0]~input_o\ & !\PB[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[1]~input_o\,
	datab => \PB[3]~input_o\,
	datac => \PB[0]~input_o\,
	datad => \PB[2]~input_o\,
	combout => \U1|Equal3~0_combout\);

-- Location: FF_X23_Y25_N7
\U1|prev_PB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PB[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PB\(4));

-- Location: FF_X23_Y25_N11
\U1|prev_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PB[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PB\(1));

-- Location: LCCOMB_X23_Y25_N0
\U1|prev_PB[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|prev_PB[2]~feeder_combout\ = \PB[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB[2]~input_o\,
	combout => \U1|prev_PB[2]~feeder_combout\);

-- Location: FF_X23_Y25_N1
\U1|prev_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|prev_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PB\(2));

-- Location: FF_X23_Y25_N3
\U1|prev_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PB[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PB\(3));

-- Location: FF_X23_Y25_N29
\U1|prev_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PB[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PB\(0));

-- Location: LCCOMB_X23_Y25_N2
\U1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~2_combout\ = (!\U1|prev_PB\(1) & (!\U1|prev_PB\(2) & (!\U1|prev_PB\(3) & !\U1|prev_PB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|prev_PB\(1),
	datab => \U1|prev_PB\(2),
	datac => \U1|prev_PB\(3),
	datad => \U1|prev_PB\(0),
	combout => \U1|process_0~2_combout\);

-- Location: LCCOMB_X23_Y25_N6
\U1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~3_combout\ = (!\U1|prev_PB\(4) & (\U1|process_0~2_combout\ & ((\PB[4]~input_o\) # (!\U1|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[4]~input_o\,
	datab => \U1|Equal3~0_combout\,
	datac => \U1|prev_PB\(4),
	datad => \U1|process_0~2_combout\,
	combout => \U1|process_0~3_combout\);

-- Location: LCCOMB_X23_Y25_N8
\U1|nueva_pet~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~0_combout\ = (\U1|process_0~3_combout\ & ((\PB[4]~input_o\))) # (!\U1|process_0~3_combout\ & (\PS[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[4]~input_o\,
	datab => \PB[4]~input_o\,
	datad => \U1|process_0~3_combout\,
	combout => \U1|nueva_pet~0_combout\);

-- Location: IOIBUF_X28_Y29_N1
\PS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(1),
	o => \PS[1]~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\PS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(2),
	o => \PS[2]~input_o\);

-- Location: IOIBUF_X26_Y29_N8
\PS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(3),
	o => \PS[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\PS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(0),
	o => \PS[0]~input_o\);

-- Location: LCCOMB_X24_Y25_N12
\U1|nueva_pet~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~2_combout\ = (!\PS[1]~input_o\ & (!\PS[2]~input_o\ & (!\PS[3]~input_o\ & !\PS[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[1]~input_o\,
	datab => \PS[2]~input_o\,
	datac => \PS[3]~input_o\,
	datad => \PS[0]~input_o\,
	combout => \U1|nueva_pet~2_combout\);

-- Location: FF_X24_Y25_N23
\U1|prev_PS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PS[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PS\(4));

-- Location: LCCOMB_X24_Y25_N10
\U1|prev_PS[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|prev_PS[1]~feeder_combout\ = \PS[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS[1]~input_o\,
	combout => \U1|prev_PS[1]~feeder_combout\);

-- Location: FF_X24_Y25_N11
\U1|prev_PS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|prev_PS[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PS\(1));

-- Location: LCCOMB_X24_Y25_N16
\U1|prev_PS[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|prev_PS[0]~feeder_combout\ = \PS[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS[0]~input_o\,
	combout => \U1|prev_PS[0]~feeder_combout\);

-- Location: FF_X24_Y25_N17
\U1|prev_PS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|prev_PS[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PS\(0));

-- Location: FF_X24_Y25_N3
\U1|prev_PS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PS[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PS\(3));

-- Location: LCCOMB_X24_Y25_N0
\U1|prev_PS[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|prev_PS[2]~feeder_combout\ = \PS[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS[2]~input_o\,
	combout => \U1|prev_PS[2]~feeder_combout\);

-- Location: FF_X24_Y25_N1
\U1|prev_PS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|prev_PS[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|prev_PS\(2));

-- Location: LCCOMB_X24_Y25_N2
\U1|nueva_pet~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~1_combout\ = (\U1|prev_PS\(1)) # ((\U1|prev_PS\(0)) # ((\U1|prev_PS\(3)) # (\U1|prev_PS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|prev_PS\(1),
	datab => \U1|prev_PS\(0),
	datac => \U1|prev_PS\(3),
	datad => \U1|prev_PS\(2),
	combout => \U1|nueva_pet~1_combout\);

-- Location: LCCOMB_X24_Y25_N22
\U1|nueva_pet~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~3_combout\ = (\U1|prev_PS\(4)) # ((\U1|nueva_pet~1_combout\) # ((\U1|nueva_pet~2_combout\ & !\PS[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet~2_combout\,
	datab => \PS[4]~input_o\,
	datac => \U1|prev_PS\(4),
	datad => \U1|nueva_pet~1_combout\,
	combout => \U1|nueva_pet~3_combout\);

-- Location: LCCOMB_X24_Y25_N26
\U1|nueva_pet~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~4_combout\ = (\U1|process_0~1_combout\) # ((\U1|nueva_pet~3_combout\ & !\U1|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet~3_combout\,
	datac => \U1|process_0~3_combout\,
	datad => \U1|process_0~1_combout\,
	combout => \U1|nueva_pet~4_combout\);

-- Location: LCCOMB_X23_Y25_N20
\U1|nueva_pet~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~5_combout\ = (\U1|process_0~1_combout\ & ((\PD[4]~input_o\) # ((\U1|nueva_pet~0_combout\ & !\U1|nueva_pet~4_combout\)))) # (!\U1|process_0~1_combout\ & (((\U1|nueva_pet~0_combout\ & !\U1|nueva_pet~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~1_combout\,
	datab => \PD[4]~input_o\,
	datac => \U1|nueva_pet~0_combout\,
	datad => \U1|nueva_pet~4_combout\,
	combout => \U1|nueva_pet~5_combout\);

-- Location: FF_X23_Y25_N21
\U1|nueva_pet[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|nueva_pet~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|nueva_pet\(4));

-- Location: IOIBUF_X21_Y29_N22
\reset1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset1,
	o => \reset1~input_o\);

-- Location: LCCOMB_X24_Y25_N28
\U1|nueva_pet~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~10_combout\ = (\U1|process_0~3_combout\ & ((\PB[2]~input_o\))) # (!\U1|process_0~3_combout\ & (\PS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[2]~input_o\,
	datab => \PB[2]~input_o\,
	datac => \U1|process_0~3_combout\,
	combout => \U1|nueva_pet~10_combout\);

-- Location: LCCOMB_X24_Y25_N20
\U1|nueva_pet~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~11_combout\ = (\U1|process_0~1_combout\ & ((\PD[2]~input_o\) # ((!\U1|nueva_pet~4_combout\ & \U1|nueva_pet~10_combout\)))) # (!\U1|process_0~1_combout\ & (((!\U1|nueva_pet~4_combout\ & \U1|nueva_pet~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~1_combout\,
	datab => \PD[2]~input_o\,
	datac => \U1|nueva_pet~4_combout\,
	datad => \U1|nueva_pet~10_combout\,
	combout => \U1|nueva_pet~11_combout\);

-- Location: FF_X24_Y25_N21
\U1|nueva_pet[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|nueva_pet~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|nueva_pet\(2));

-- Location: LCCOMB_X24_Y23_N22
\U1|pet1_reg[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet1_reg[2]~2_combout\ = (\reset1~input_o\ & (\U1|nueva_pet\(2) & ((!\U1|pet1_reg[0]~0_combout\)))) # (!\reset1~input_o\ & ((\U1|pet1_reg\(2)) # ((\U1|nueva_pet\(2) & !\U1|pet1_reg[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset1~input_o\,
	datab => \U1|nueva_pet\(2),
	datac => \U1|pet1_reg\(2),
	datad => \U1|pet1_reg[0]~0_combout\,
	combout => \U1|pet1_reg[2]~2_combout\);

-- Location: FF_X24_Y23_N23
\U1|pet1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet1_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet1_reg\(2));

-- Location: LCCOMB_X24_Y25_N6
\U1|nueva_pet~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~8_combout\ = (\U1|process_0~3_combout\ & ((\PB[1]~input_o\))) # (!\U1|process_0~3_combout\ & (\PS[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[1]~input_o\,
	datac => \U1|process_0~3_combout\,
	datad => \PB[1]~input_o\,
	combout => \U1|nueva_pet~8_combout\);

-- Location: LCCOMB_X24_Y25_N18
\U1|nueva_pet~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~9_combout\ = (\U1|process_0~1_combout\ & ((\PD[1]~input_o\) # ((!\U1|nueva_pet~4_combout\ & \U1|nueva_pet~8_combout\)))) # (!\U1|process_0~1_combout\ & (((!\U1|nueva_pet~4_combout\ & \U1|nueva_pet~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~1_combout\,
	datab => \PD[1]~input_o\,
	datac => \U1|nueva_pet~4_combout\,
	datad => \U1|nueva_pet~8_combout\,
	combout => \U1|nueva_pet~9_combout\);

-- Location: FF_X24_Y25_N19
\U1|nueva_pet[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|nueva_pet~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|nueva_pet\(1));

-- Location: LCCOMB_X24_Y23_N0
\U1|pet1_reg[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet1_reg[1]~4_combout\ = (\U1|nueva_pet\(1) & (((!\reset1~input_o\ & \U1|pet1_reg\(1))) # (!\U1|pet1_reg[0]~0_combout\))) # (!\U1|nueva_pet\(1) & (!\reset1~input_o\ & (\U1|pet1_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(1),
	datab => \reset1~input_o\,
	datac => \U1|pet1_reg\(1),
	datad => \U1|pet1_reg[0]~0_combout\,
	combout => \U1|pet1_reg[1]~4_combout\);

-- Location: FF_X24_Y23_N1
\U1|pet1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet1_reg[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet1_reg\(1));

-- Location: LCCOMB_X24_Y25_N24
\U1|nueva_pet~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~6_combout\ = (\U1|process_0~3_combout\ & ((\PB[0]~input_o\))) # (!\U1|process_0~3_combout\ & (\PS[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[0]~input_o\,
	datab => \PB[0]~input_o\,
	datac => \U1|process_0~3_combout\,
	combout => \U1|nueva_pet~6_combout\);

-- Location: LCCOMB_X24_Y25_N8
\U1|nueva_pet~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~7_combout\ = (\U1|process_0~1_combout\ & ((\PD[0]~input_o\) # ((!\U1|nueva_pet~4_combout\ & \U1|nueva_pet~6_combout\)))) # (!\U1|process_0~1_combout\ & (((!\U1|nueva_pet~4_combout\ & \U1|nueva_pet~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~1_combout\,
	datab => \PD[0]~input_o\,
	datac => \U1|nueva_pet~4_combout\,
	datad => \U1|nueva_pet~6_combout\,
	combout => \U1|nueva_pet~7_combout\);

-- Location: FF_X24_Y25_N9
\U1|nueva_pet[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|nueva_pet~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|nueva_pet\(0));

-- Location: LCCOMB_X23_Y23_N4
\U1|pet1_reg[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet1_reg[0]~3_combout\ = (\reset1~input_o\ & (\U1|nueva_pet\(0) & ((!\U1|pet1_reg[0]~0_combout\)))) # (!\reset1~input_o\ & ((\U1|pet1_reg\(0)) # ((\U1|nueva_pet\(0) & !\U1|pet1_reg[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset1~input_o\,
	datab => \U1|nueva_pet\(0),
	datac => \U1|pet1_reg\(0),
	datad => \U1|pet1_reg[0]~0_combout\,
	combout => \U1|pet1_reg[0]~3_combout\);

-- Location: FF_X23_Y23_N5
\U1|pet1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet1_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet1_reg\(0));

-- Location: LCCOMB_X23_Y25_N22
\U1|nueva_pet~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~12_combout\ = (\U1|process_0~3_combout\ & (\PB[3]~input_o\)) # (!\U1|process_0~3_combout\ & ((\PS[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~3_combout\,
	datab => \PB[3]~input_o\,
	datad => \PS[3]~input_o\,
	combout => \U1|nueva_pet~12_combout\);

-- Location: LCCOMB_X23_Y25_N30
\U1|nueva_pet~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|nueva_pet~13_combout\ = (\U1|process_0~1_combout\ & ((\PD[3]~input_o\) # ((\U1|nueva_pet~12_combout\ & !\U1|nueva_pet~4_combout\)))) # (!\U1|process_0~1_combout\ & (((\U1|nueva_pet~12_combout\ & !\U1|nueva_pet~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~1_combout\,
	datab => \PD[3]~input_o\,
	datac => \U1|nueva_pet~12_combout\,
	datad => \U1|nueva_pet~4_combout\,
	combout => \U1|nueva_pet~13_combout\);

-- Location: FF_X23_Y25_N31
\U1|nueva_pet[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|nueva_pet~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|nueva_pet\(3));

-- Location: LCCOMB_X24_Y23_N26
\U1|pet1_reg[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet1_reg[3]~5_combout\ = (\U1|nueva_pet\(3) & (((!\reset1~input_o\ & \U1|pet1_reg\(3))) # (!\U1|pet1_reg[0]~0_combout\))) # (!\U1|nueva_pet\(3) & (!\reset1~input_o\ & (\U1|pet1_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(3),
	datab => \reset1~input_o\,
	datac => \U1|pet1_reg\(3),
	datad => \U1|pet1_reg[0]~0_combout\,
	combout => \U1|pet1_reg[3]~5_combout\);

-- Location: FF_X24_Y23_N27
\U1|pet1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet1_reg[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet1_reg\(3));

-- Location: LCCOMB_X24_Y23_N24
\U2|code~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|code~3_combout\ = (!\U1|pet1_reg\(3) & !\U1|pet1_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pet1_reg\(3),
	datad => \U1|pet1_reg\(4),
	combout => \U2|code~3_combout\);

-- Location: LCCOMB_X24_Y23_N4
\U1|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal7~0_combout\ = (!\U1|pet1_reg\(2) & (!\U1|pet1_reg\(1) & (!\U1|pet1_reg\(0) & \U2|code~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pet1_reg\(2),
	datab => \U1|pet1_reg\(1),
	datac => \U1|pet1_reg\(0),
	datad => \U2|code~3_combout\,
	combout => \U1|Equal7~0_combout\);

-- Location: LCCOMB_X24_Y23_N10
\U1|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal6~0_combout\ = (!\U1|nueva_pet\(0) & (!\U1|nueva_pet\(2) & (!\U1|nueva_pet\(3) & !\U1|nueva_pet\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(0),
	datab => \U1|nueva_pet\(2),
	datac => \U1|nueva_pet\(3),
	datad => \U1|nueva_pet\(1),
	combout => \U1|Equal6~0_combout\);

-- Location: LCCOMB_X24_Y23_N6
\U1|pet1_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet1_reg[0]~0_combout\ = ((!\U1|nueva_pet\(4) & \U1|Equal6~0_combout\)) # (!\U1|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(4),
	datac => \U1|Equal7~0_combout\,
	datad => \U1|Equal6~0_combout\,
	combout => \U1|pet1_reg[0]~0_combout\);

-- Location: LCCOMB_X24_Y23_N12
\U1|pet1_reg[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet1_reg[4]~1_combout\ = (\U1|nueva_pet\(4) & (((!\reset1~input_o\ & \U1|pet1_reg\(4))) # (!\U1|pet1_reg[0]~0_combout\))) # (!\U1|nueva_pet\(4) & (!\reset1~input_o\ & (\U1|pet1_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(4),
	datab => \reset1~input_o\,
	datac => \U1|pet1_reg\(4),
	datad => \U1|pet1_reg[0]~0_combout\,
	combout => \U1|pet1_reg[4]~1_combout\);

-- Location: FF_X24_Y23_N13
\U1|pet1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet1_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet1_reg\(4));

-- Location: LCCOMB_X24_Y22_N0
\U2|code~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|code~0_combout\ = (!\U1|pet1_reg\(3) & ((\U1|pet1_reg\(2)) # ((!\U1|pet1_reg\(1) & \U1|pet1_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pet1_reg\(2),
	datab => \U1|pet1_reg\(1),
	datac => \U1|pet1_reg\(3),
	datad => \U1|pet1_reg\(0),
	combout => \U2|code~0_combout\);

-- Location: LCCOMB_X24_Y22_N26
\U2|code~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|code~1_combout\ = (\U1|pet1_reg\(4)) # (\U2|code~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pet1_reg\(4),
	datad => \U2|code~0_combout\,
	combout => \U2|code~1_combout\);

-- Location: LCCOMB_X24_Y22_N4
\U2|code~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|code~2_combout\ = (!\U1|pet1_reg\(4) & (!\U1|pet1_reg\(3) & ((\U1|pet1_reg\(1)) # (\U1|pet1_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pet1_reg\(4),
	datab => \U1|pet1_reg\(1),
	datac => \U1|pet1_reg\(3),
	datad => \U1|pet1_reg\(2),
	combout => \U2|code~2_combout\);

-- Location: IOIBUF_X23_Y0_N8
\reset2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset2,
	o => \reset2~input_o\);

-- Location: LCCOMB_X24_Y23_N30
\U1|pet2_reg[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet2_reg[0]~4_combout\ = (\U1|nueva_pet\(0) & (((!\reset2~input_o\ & \U1|pet2_reg\(0))) # (!\U1|pet2_reg[0]~1_combout\))) # (!\U1|nueva_pet\(0) & (!\reset2~input_o\ & (\U1|pet2_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(0),
	datab => \reset2~input_o\,
	datac => \U1|pet2_reg\(0),
	datad => \U1|pet2_reg[0]~1_combout\,
	combout => \U1|pet2_reg[0]~4_combout\);

-- Location: FF_X24_Y23_N31
\U1|pet2_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet2_reg[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet2_reg\(0));

-- Location: LCCOMB_X24_Y23_N16
\U1|pet2_reg[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet2_reg[2]~3_combout\ = (\reset2~input_o\ & (\U1|nueva_pet\(2) & ((!\U1|pet2_reg[0]~1_combout\)))) # (!\reset2~input_o\ & ((\U1|pet2_reg\(2)) # ((\U1|nueva_pet\(2) & !\U1|pet2_reg[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset2~input_o\,
	datab => \U1|nueva_pet\(2),
	datac => \U1|pet2_reg\(2),
	datad => \U1|pet2_reg[0]~1_combout\,
	combout => \U1|pet2_reg[2]~3_combout\);

-- Location: FF_X24_Y23_N17
\U1|pet2_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet2_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet2_reg\(2));

-- Location: LCCOMB_X24_Y23_N14
\U1|pet2_reg[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet2_reg[4]~2_combout\ = (\U1|nueva_pet\(4) & (((!\reset2~input_o\ & \U1|pet2_reg\(4))) # (!\U1|pet2_reg[0]~1_combout\))) # (!\U1|nueva_pet\(4) & (!\reset2~input_o\ & (\U1|pet2_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(4),
	datab => \reset2~input_o\,
	datac => \U1|pet2_reg\(4),
	datad => \U1|pet2_reg[0]~1_combout\,
	combout => \U1|pet2_reg[4]~2_combout\);

-- Location: FF_X24_Y23_N15
\U1|pet2_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet2_reg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet2_reg\(4));

-- Location: LCCOMB_X24_Y23_N2
\U1|pet2_reg[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet2_reg[3]~6_combout\ = (\U1|nueva_pet\(3) & (((!\reset2~input_o\ & \U1|pet2_reg\(3))) # (!\U1|pet2_reg[0]~1_combout\))) # (!\U1|nueva_pet\(3) & (!\reset2~input_o\ & (\U1|pet2_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(3),
	datab => \reset2~input_o\,
	datac => \U1|pet2_reg\(3),
	datad => \U1|pet2_reg[0]~1_combout\,
	combout => \U1|pet2_reg[3]~6_combout\);

-- Location: FF_X24_Y23_N3
\U1|pet2_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet2_reg[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet2_reg\(3));

-- Location: LCCOMB_X24_Y23_N28
\U3|code~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|code~3_combout\ = (!\U1|pet2_reg\(4) & !\U1|pet2_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pet2_reg\(4),
	datad => \U1|pet2_reg\(3),
	combout => \U3|code~3_combout\);

-- Location: LCCOMB_X24_Y23_N8
\U1|pet2_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet2_reg[0]~0_combout\ = (\U1|pet2_reg\(0)) # ((\U1|pet2_reg\(1)) # ((\U1|pet2_reg\(2)) # (!\U3|code~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pet2_reg\(0),
	datab => \U1|pet2_reg\(1),
	datac => \U1|pet2_reg\(2),
	datad => \U3|code~3_combout\,
	combout => \U1|pet2_reg[0]~0_combout\);

-- Location: LCCOMB_X24_Y23_N18
\U1|pet2_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet2_reg[0]~1_combout\ = (\U1|Equal7~0_combout\) # ((\U1|pet2_reg[0]~0_combout\) # ((!\U1|nueva_pet\(4) & \U1|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(4),
	datab => \U1|Equal7~0_combout\,
	datac => \U1|pet2_reg[0]~0_combout\,
	datad => \U1|Equal6~0_combout\,
	combout => \U1|pet2_reg[0]~1_combout\);

-- Location: LCCOMB_X24_Y23_N20
\U1|pet2_reg[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|pet2_reg[1]~5_combout\ = (\U1|nueva_pet\(1) & (((!\reset2~input_o\ & \U1|pet2_reg\(1))) # (!\U1|pet2_reg[0]~1_combout\))) # (!\U1|nueva_pet\(1) & (!\reset2~input_o\ & (\U1|pet2_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|nueva_pet\(1),
	datab => \reset2~input_o\,
	datac => \U1|pet2_reg\(1),
	datad => \U1|pet2_reg[0]~1_combout\,
	combout => \U1|pet2_reg[1]~5_combout\);

-- Location: FF_X24_Y23_N21
\U1|pet2_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|pet2_reg[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pet2_reg\(1));

-- Location: LCCOMB_X23_Y23_N2
\U3|code~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|code~0_combout\ = (!\U1|pet2_reg\(3) & ((\U1|pet2_reg\(2)) # ((!\U1|pet2_reg\(1) & \U1|pet2_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pet2_reg\(1),
	datab => \U1|pet2_reg\(0),
	datac => \U1|pet2_reg\(2),
	datad => \U1|pet2_reg\(3),
	combout => \U3|code~0_combout\);

-- Location: LCCOMB_X23_Y23_N12
\U3|code~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|code~1_combout\ = (\U3|code~0_combout\) # (\U1|pet2_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|code~0_combout\,
	datac => \U1|pet2_reg\(4),
	combout => \U3|code~1_combout\);

-- Location: LCCOMB_X23_Y23_N10
\U3|code~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|code~2_combout\ = (!\U1|pet2_reg\(4) & (!\U1|pet2_reg\(3) & ((\U1|pet2_reg\(1)) # (\U1|pet2_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pet2_reg\(1),
	datab => \U1|pet2_reg\(4),
	datac => \U1|pet2_reg\(2),
	datad => \U1|pet2_reg\(3),
	combout => \U3|code~2_combout\);

ww_pet1(0) <= \pet1[0]~output_o\;

ww_pet1(1) <= \pet1[1]~output_o\;

ww_pet1(2) <= \pet1[2]~output_o\;

ww_pet2(0) <= \pet2[0]~output_o\;

ww_pet2(1) <= \pet2[1]~output_o\;

ww_pet2(2) <= \pet2[2]~output_o\;
END structure;


