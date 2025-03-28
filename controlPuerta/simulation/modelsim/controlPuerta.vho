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

-- DATE "03/27/2025 14:11:47"

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

ENTITY 	controlPuerta IS
    PORT (
	reset1 : IN std_logic;
	reset2 : IN std_logic;
	clk : IN std_logic;
	abrir : OUT std_logic;
	cerrar : OUT std_logic
	);
END controlPuerta;

-- Design Ports Information
-- abrir	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlPuerta IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_abrir : std_logic;
SIGNAL ww_cerrar : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|out2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \abrir~output_o\ : std_logic;
SIGNAL \cerrar~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|Add1~0_combout\ : std_logic;
SIGNAL \U2|Add1~1\ : std_logic;
SIGNAL \U2|Add1~2_combout\ : std_logic;
SIGNAL \U2|Add1~3\ : std_logic;
SIGNAL \U2|Add1~4_combout\ : std_logic;
SIGNAL \U2|Add1~5\ : std_logic;
SIGNAL \U2|Add1~6_combout\ : std_logic;
SIGNAL \U2|Add1~7\ : std_logic;
SIGNAL \U2|Add1~8_combout\ : std_logic;
SIGNAL \U2|count2~10_combout\ : std_logic;
SIGNAL \U2|Add1~9\ : std_logic;
SIGNAL \U2|Add1~10_combout\ : std_logic;
SIGNAL \U2|Add1~11\ : std_logic;
SIGNAL \U2|Add1~13\ : std_logic;
SIGNAL \U2|Add1~14_combout\ : std_logic;
SIGNAL \U2|Add1~15\ : std_logic;
SIGNAL \U2|Add1~16_combout\ : std_logic;
SIGNAL \U2|Add1~17\ : std_logic;
SIGNAL \U2|Add1~18_combout\ : std_logic;
SIGNAL \U2|Add1~19\ : std_logic;
SIGNAL \U2|Add1~20_combout\ : std_logic;
SIGNAL \U2|Add1~21\ : std_logic;
SIGNAL \U2|Add1~22_combout\ : std_logic;
SIGNAL \U2|count2~1_combout\ : std_logic;
SIGNAL \U2|Add1~23\ : std_logic;
SIGNAL \U2|Add1~24_combout\ : std_logic;
SIGNAL \U2|count2~2_combout\ : std_logic;
SIGNAL \U2|Add1~25\ : std_logic;
SIGNAL \U2|Add1~26_combout\ : std_logic;
SIGNAL \U2|count2~3_combout\ : std_logic;
SIGNAL \U2|Add1~27\ : std_logic;
SIGNAL \U2|Add1~28_combout\ : std_logic;
SIGNAL \U2|count2~4_combout\ : std_logic;
SIGNAL \U2|Add1~29\ : std_logic;
SIGNAL \U2|Add1~30_combout\ : std_logic;
SIGNAL \U2|Add1~31\ : std_logic;
SIGNAL \U2|Add1~33\ : std_logic;
SIGNAL \U2|Add1~34_combout\ : std_logic;
SIGNAL \U2|Add1~35\ : std_logic;
SIGNAL \U2|Add1~36_combout\ : std_logic;
SIGNAL \U2|Equal1~6_combout\ : std_logic;
SIGNAL \U2|count2~9_combout\ : std_logic;
SIGNAL \U2|Add1~43\ : std_logic;
SIGNAL \U2|Add1~44_combout\ : std_logic;
SIGNAL \U2|Add1~45\ : std_logic;
SIGNAL \U2|Add1~46_combout\ : std_logic;
SIGNAL \U2|count2~6_combout\ : std_logic;
SIGNAL \U2|count2~7_combout\ : std_logic;
SIGNAL \U2|Add1~37\ : std_logic;
SIGNAL \U2|Add1~38_combout\ : std_logic;
SIGNAL \U2|count2~8_combout\ : std_logic;
SIGNAL \U2|Add1~39\ : std_logic;
SIGNAL \U2|Add1~40_combout\ : std_logic;
SIGNAL \U2|count2~11_combout\ : std_logic;
SIGNAL \U2|Add1~41\ : std_logic;
SIGNAL \U2|Add1~42_combout\ : std_logic;
SIGNAL \U2|Equal1~8_combout\ : std_logic;
SIGNAL \U2|count2~12_combout\ : std_logic;
SIGNAL \U2|Add1~47\ : std_logic;
SIGNAL \U2|Add1~48_combout\ : std_logic;
SIGNAL \U2|Equal1~7_combout\ : std_logic;
SIGNAL \U2|count2~0_combout\ : std_logic;
SIGNAL \U2|Add1~12_combout\ : std_logic;
SIGNAL \U2|Equal1~1_combout\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|Equal1~3_combout\ : std_logic;
SIGNAL \U2|Equal1~2_combout\ : std_logic;
SIGNAL \U2|Equal1~4_combout\ : std_logic;
SIGNAL \U2|count2~5_combout\ : std_logic;
SIGNAL \U2|Add1~32_combout\ : std_logic;
SIGNAL \U2|Equal1~5_combout\ : std_logic;
SIGNAL \U2|out2~0_combout\ : std_logic;
SIGNAL \U2|out2~feeder_combout\ : std_logic;
SIGNAL \U2|out2~q\ : std_logic;
SIGNAL \U2|out2~clkctrl_outclk\ : std_logic;
SIGNAL \U3|Add0~0_combout\ : std_logic;
SIGNAL \U3|Add0~1\ : std_logic;
SIGNAL \U3|Add0~2_combout\ : std_logic;
SIGNAL \reset2~input_o\ : std_logic;
SIGNAL \reset1~input_o\ : std_logic;
SIGNAL \U1|reset2Prev~q\ : std_logic;
SIGNAL \U1|reset1Prev~q\ : std_logic;
SIGNAL \U1|detecta~0_combout\ : std_logic;
SIGNAL \U5|Equal0~3_combout\ : std_logic;
SIGNAL \U1|detecta~1_combout\ : std_logic;
SIGNAL \U1|detecta~q\ : std_logic;
SIGNAL \U3|Add0~3\ : std_logic;
SIGNAL \U3|Add0~5\ : std_logic;
SIGNAL \U3|Add0~6_combout\ : std_logic;
SIGNAL \U3|contador~0_combout\ : std_logic;
SIGNAL \U3|Add0~7\ : std_logic;
SIGNAL \U3|Add0~8_combout\ : std_logic;
SIGNAL \U3|contador~3_combout\ : std_logic;
SIGNAL \U5|Equal0~2_combout\ : std_logic;
SIGNAL \U3|Add0~4_combout\ : std_logic;
SIGNAL \U3|contador~1_combout\ : std_logic;
SIGNAL \U3|Add0~9\ : std_logic;
SIGNAL \U3|Add0~10_combout\ : std_logic;
SIGNAL \U3|contador~2_combout\ : std_logic;
SIGNAL \U5|Equal0~0_combout\ : std_logic;
SIGNAL \U5|Equal0~1_combout\ : std_logic;
SIGNAL \U4|Equal0~0_combout\ : std_logic;
SIGNAL \U4|Equal0~1_combout\ : std_logic;
SIGNAL \U2|count2\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \U3|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U5|ALT_INV_Equal0~1_combout\ : std_logic;

BEGIN

ww_reset1 <= reset1;
ww_reset2 <= reset2;
ww_clk <= clk;
abrir <= ww_abrir;
cerrar <= ww_cerrar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\U2|out2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|out2~q\);
\U5|ALT_INV_Equal0~1_combout\ <= NOT \U5|Equal0~1_combout\;

-- Location: IOOBUF_X23_Y29_N23
\abrir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \abrir~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\cerrar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \cerrar~output_o\);

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

-- Location: FF_X39_Y5_N17
\U2|count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(4));

-- Location: LCCOMB_X39_Y5_N8
\U2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~0_combout\ = \U2|count2\(0) $ (VCC)
-- \U2|Add1~1\ = CARRY(\U2|count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(0),
	datad => VCC,
	combout => \U2|Add1~0_combout\,
	cout => \U2|Add1~1\);

-- Location: FF_X39_Y5_N9
\U2|count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(0));

-- Location: LCCOMB_X39_Y5_N10
\U2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~2_combout\ = (\U2|count2\(1) & (!\U2|Add1~1\)) # (!\U2|count2\(1) & ((\U2|Add1~1\) # (GND)))
-- \U2|Add1~3\ = CARRY((!\U2|Add1~1\) # (!\U2|count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(1),
	datad => VCC,
	cin => \U2|Add1~1\,
	combout => \U2|Add1~2_combout\,
	cout => \U2|Add1~3\);

-- Location: FF_X39_Y5_N11
\U2|count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(1));

-- Location: LCCOMB_X39_Y5_N12
\U2|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~4_combout\ = (\U2|count2\(2) & (\U2|Add1~3\ $ (GND))) # (!\U2|count2\(2) & (!\U2|Add1~3\ & VCC))
-- \U2|Add1~5\ = CARRY((\U2|count2\(2) & !\U2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(2),
	datad => VCC,
	cin => \U2|Add1~3\,
	combout => \U2|Add1~4_combout\,
	cout => \U2|Add1~5\);

-- Location: FF_X39_Y5_N13
\U2|count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(2));

-- Location: LCCOMB_X39_Y5_N14
\U2|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~6_combout\ = (\U2|count2\(3) & (!\U2|Add1~5\)) # (!\U2|count2\(3) & ((\U2|Add1~5\) # (GND)))
-- \U2|Add1~7\ = CARRY((!\U2|Add1~5\) # (!\U2|count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(3),
	datad => VCC,
	cin => \U2|Add1~5\,
	combout => \U2|Add1~6_combout\,
	cout => \U2|Add1~7\);

-- Location: FF_X39_Y5_N15
\U2|count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(3));

-- Location: LCCOMB_X39_Y5_N16
\U2|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~8_combout\ = (\U2|count2\(4) & (\U2|Add1~7\ $ (GND))) # (!\U2|count2\(4) & (!\U2|Add1~7\ & VCC))
-- \U2|Add1~9\ = CARRY((\U2|count2\(4) & !\U2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(4),
	datad => VCC,
	cin => \U2|Add1~7\,
	combout => \U2|Add1~8_combout\,
	cout => \U2|Add1~9\);

-- Location: LCCOMB_X40_Y4_N6
\U2|count2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~10_combout\ = (\U2|Add1~42_combout\ & (((!\U2|Equal1~7_combout\) # (!\U2|Equal1~4_combout\)) # (!\U2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~5_combout\,
	datab => \U2|Equal1~4_combout\,
	datac => \U2|Add1~42_combout\,
	datad => \U2|Equal1~7_combout\,
	combout => \U2|count2~10_combout\);

-- Location: FF_X40_Y4_N7
\U2|count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(21));

-- Location: LCCOMB_X39_Y5_N18
\U2|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~10_combout\ = (\U2|count2\(5) & (!\U2|Add1~9\)) # (!\U2|count2\(5) & ((\U2|Add1~9\) # (GND)))
-- \U2|Add1~11\ = CARRY((!\U2|Add1~9\) # (!\U2|count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(5),
	datad => VCC,
	cin => \U2|Add1~9\,
	combout => \U2|Add1~10_combout\,
	cout => \U2|Add1~11\);

-- Location: FF_X39_Y5_N19
\U2|count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(5));

-- Location: LCCOMB_X39_Y5_N20
\U2|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~12_combout\ = (\U2|count2\(6) & (\U2|Add1~11\ $ (GND))) # (!\U2|count2\(6) & (!\U2|Add1~11\ & VCC))
-- \U2|Add1~13\ = CARRY((\U2|count2\(6) & !\U2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(6),
	datad => VCC,
	cin => \U2|Add1~11\,
	combout => \U2|Add1~12_combout\,
	cout => \U2|Add1~13\);

-- Location: LCCOMB_X39_Y5_N22
\U2|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~14_combout\ = (\U2|count2\(7) & (!\U2|Add1~13\)) # (!\U2|count2\(7) & ((\U2|Add1~13\) # (GND)))
-- \U2|Add1~15\ = CARRY((!\U2|Add1~13\) # (!\U2|count2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(7),
	datad => VCC,
	cin => \U2|Add1~13\,
	combout => \U2|Add1~14_combout\,
	cout => \U2|Add1~15\);

-- Location: FF_X39_Y5_N23
\U2|count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(7));

-- Location: LCCOMB_X39_Y5_N24
\U2|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~16_combout\ = (\U2|count2\(8) & (\U2|Add1~15\ $ (GND))) # (!\U2|count2\(8) & (!\U2|Add1~15\ & VCC))
-- \U2|Add1~17\ = CARRY((\U2|count2\(8) & !\U2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(8),
	datad => VCC,
	cin => \U2|Add1~15\,
	combout => \U2|Add1~16_combout\,
	cout => \U2|Add1~17\);

-- Location: FF_X39_Y5_N25
\U2|count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(8));

-- Location: LCCOMB_X39_Y5_N26
\U2|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~18_combout\ = (\U2|count2\(9) & (!\U2|Add1~17\)) # (!\U2|count2\(9) & ((\U2|Add1~17\) # (GND)))
-- \U2|Add1~19\ = CARRY((!\U2|Add1~17\) # (!\U2|count2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(9),
	datad => VCC,
	cin => \U2|Add1~17\,
	combout => \U2|Add1~18_combout\,
	cout => \U2|Add1~19\);

-- Location: FF_X39_Y5_N27
\U2|count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(9));

-- Location: LCCOMB_X39_Y5_N28
\U2|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~20_combout\ = (\U2|count2\(10) & (\U2|Add1~19\ $ (GND))) # (!\U2|count2\(10) & (!\U2|Add1~19\ & VCC))
-- \U2|Add1~21\ = CARRY((\U2|count2\(10) & !\U2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(10),
	datad => VCC,
	cin => \U2|Add1~19\,
	combout => \U2|Add1~20_combout\,
	cout => \U2|Add1~21\);

-- Location: FF_X39_Y5_N29
\U2|count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(10));

-- Location: LCCOMB_X39_Y5_N30
\U2|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~22_combout\ = (\U2|count2\(11) & (!\U2|Add1~21\)) # (!\U2|count2\(11) & ((\U2|Add1~21\) # (GND)))
-- \U2|Add1~23\ = CARRY((!\U2|Add1~21\) # (!\U2|count2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(11),
	datad => VCC,
	cin => \U2|Add1~21\,
	combout => \U2|Add1~22_combout\,
	cout => \U2|Add1~23\);

-- Location: LCCOMB_X39_Y5_N0
\U2|count2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~1_combout\ = (\U2|Add1~22_combout\ & (((!\U2|Equal1~7_combout\) # (!\U2|Equal1~4_combout\)) # (!\U2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~22_combout\,
	datab => \U2|Equal1~5_combout\,
	datac => \U2|Equal1~4_combout\,
	datad => \U2|Equal1~7_combout\,
	combout => \U2|count2~1_combout\);

-- Location: FF_X39_Y5_N1
\U2|count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(11));

-- Location: LCCOMB_X39_Y4_N0
\U2|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~24_combout\ = (\U2|count2\(12) & (\U2|Add1~23\ $ (GND))) # (!\U2|count2\(12) & (!\U2|Add1~23\ & VCC))
-- \U2|Add1~25\ = CARRY((\U2|count2\(12) & !\U2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(12),
	datad => VCC,
	cin => \U2|Add1~23\,
	combout => \U2|Add1~24_combout\,
	cout => \U2|Add1~25\);

-- Location: LCCOMB_X39_Y4_N26
\U2|count2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~2_combout\ = (\U2|Add1~24_combout\ & (((!\U2|Equal1~5_combout\) # (!\U2|Equal1~7_combout\)) # (!\U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~24_combout\,
	datab => \U2|Equal1~4_combout\,
	datac => \U2|Equal1~7_combout\,
	datad => \U2|Equal1~5_combout\,
	combout => \U2|count2~2_combout\);

-- Location: FF_X39_Y4_N27
\U2|count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(12));

-- Location: LCCOMB_X39_Y4_N2
\U2|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~26_combout\ = (\U2|count2\(13) & (!\U2|Add1~25\)) # (!\U2|count2\(13) & ((\U2|Add1~25\) # (GND)))
-- \U2|Add1~27\ = CARRY((!\U2|Add1~25\) # (!\U2|count2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(13),
	datad => VCC,
	cin => \U2|Add1~25\,
	combout => \U2|Add1~26_combout\,
	cout => \U2|Add1~27\);

-- Location: LCCOMB_X39_Y4_N28
\U2|count2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~3_combout\ = (\U2|Add1~26_combout\ & (((!\U2|Equal1~5_combout\) # (!\U2|Equal1~7_combout\)) # (!\U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~26_combout\,
	datab => \U2|Equal1~4_combout\,
	datac => \U2|Equal1~7_combout\,
	datad => \U2|Equal1~5_combout\,
	combout => \U2|count2~3_combout\);

-- Location: FF_X39_Y4_N29
\U2|count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(13));

-- Location: LCCOMB_X39_Y4_N4
\U2|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~28_combout\ = (\U2|count2\(14) & (\U2|Add1~27\ $ (GND))) # (!\U2|count2\(14) & (!\U2|Add1~27\ & VCC))
-- \U2|Add1~29\ = CARRY((\U2|count2\(14) & !\U2|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(14),
	datad => VCC,
	cin => \U2|Add1~27\,
	combout => \U2|Add1~28_combout\,
	cout => \U2|Add1~29\);

-- Location: LCCOMB_X39_Y4_N30
\U2|count2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~4_combout\ = (\U2|Add1~28_combout\ & (((!\U2|Equal1~5_combout\) # (!\U2|Equal1~7_combout\)) # (!\U2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~28_combout\,
	datab => \U2|Equal1~4_combout\,
	datac => \U2|Equal1~7_combout\,
	datad => \U2|Equal1~5_combout\,
	combout => \U2|count2~4_combout\);

-- Location: FF_X39_Y4_N31
\U2|count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(14));

-- Location: LCCOMB_X39_Y4_N6
\U2|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~30_combout\ = (\U2|count2\(15) & (!\U2|Add1~29\)) # (!\U2|count2\(15) & ((\U2|Add1~29\) # (GND)))
-- \U2|Add1~31\ = CARRY((!\U2|Add1~29\) # (!\U2|count2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(15),
	datad => VCC,
	cin => \U2|Add1~29\,
	combout => \U2|Add1~30_combout\,
	cout => \U2|Add1~31\);

-- Location: FF_X39_Y4_N7
\U2|count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(15));

-- Location: LCCOMB_X39_Y4_N8
\U2|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~32_combout\ = (\U2|count2\(16) & (\U2|Add1~31\ $ (GND))) # (!\U2|count2\(16) & (!\U2|Add1~31\ & VCC))
-- \U2|Add1~33\ = CARRY((\U2|count2\(16) & !\U2|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(16),
	datad => VCC,
	cin => \U2|Add1~31\,
	combout => \U2|Add1~32_combout\,
	cout => \U2|Add1~33\);

-- Location: LCCOMB_X39_Y4_N10
\U2|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~34_combout\ = (\U2|count2\(17) & (!\U2|Add1~33\)) # (!\U2|count2\(17) & ((\U2|Add1~33\) # (GND)))
-- \U2|Add1~35\ = CARRY((!\U2|Add1~33\) # (!\U2|count2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(17),
	datad => VCC,
	cin => \U2|Add1~33\,
	combout => \U2|Add1~34_combout\,
	cout => \U2|Add1~35\);

-- Location: FF_X39_Y4_N11
\U2|count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(17));

-- Location: LCCOMB_X39_Y4_N12
\U2|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~36_combout\ = (\U2|count2\(18) & (\U2|Add1~35\ $ (GND))) # (!\U2|count2\(18) & (!\U2|Add1~35\ & VCC))
-- \U2|Add1~37\ = CARRY((\U2|count2\(18) & !\U2|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(18),
	datad => VCC,
	cin => \U2|Add1~35\,
	combout => \U2|Add1~36_combout\,
	cout => \U2|Add1~37\);

-- Location: LCCOMB_X40_Y4_N28
\U2|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~6_combout\ = (\U2|Add1~40_combout\ & \U2|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add1~40_combout\,
	datad => \U2|Add1~42_combout\,
	combout => \U2|Equal1~6_combout\);

-- Location: LCCOMB_X40_Y4_N20
\U2|count2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~9_combout\ = (\U2|Add1~44_combout\ & (((!\U2|Equal1~7_combout\) # (!\U2|Equal1~4_combout\)) # (!\U2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~5_combout\,
	datab => \U2|Equal1~4_combout\,
	datac => \U2|Add1~44_combout\,
	datad => \U2|Equal1~7_combout\,
	combout => \U2|count2~9_combout\);

-- Location: FF_X40_Y4_N21
\U2|count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(22));

-- Location: LCCOMB_X39_Y4_N18
\U2|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~42_combout\ = (\U2|count2\(21) & (!\U2|Add1~41\)) # (!\U2|count2\(21) & ((\U2|Add1~41\) # (GND)))
-- \U2|Add1~43\ = CARRY((!\U2|Add1~41\) # (!\U2|count2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(21),
	datad => VCC,
	cin => \U2|Add1~41\,
	combout => \U2|Add1~42_combout\,
	cout => \U2|Add1~43\);

-- Location: LCCOMB_X39_Y4_N20
\U2|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~44_combout\ = (\U2|count2\(22) & (\U2|Add1~43\ $ (GND))) # (!\U2|count2\(22) & (!\U2|Add1~43\ & VCC))
-- \U2|Add1~45\ = CARRY((\U2|count2\(22) & !\U2|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(22),
	datad => VCC,
	cin => \U2|Add1~43\,
	combout => \U2|Add1~44_combout\,
	cout => \U2|Add1~45\);

-- Location: FF_X39_Y4_N23
\U2|count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(23));

-- Location: LCCOMB_X39_Y4_N22
\U2|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~46_combout\ = (\U2|count2\(23) & (!\U2|Add1~45\)) # (!\U2|count2\(23) & ((\U2|Add1~45\) # (GND)))
-- \U2|Add1~47\ = CARRY((!\U2|Add1~45\) # (!\U2|count2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count2\(23),
	datad => VCC,
	cin => \U2|Add1~45\,
	combout => \U2|Add1~46_combout\,
	cout => \U2|Add1~47\);

-- Location: LCCOMB_X40_Y4_N14
\U2|count2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~6_combout\ = (\U2|Add1~44_combout\ & (\U2|Add1~48_combout\ & (!\U2|Add1~46_combout\ & \U2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~44_combout\,
	datab => \U2|Add1~48_combout\,
	datac => \U2|Add1~46_combout\,
	datad => \U2|Equal1~5_combout\,
	combout => \U2|count2~6_combout\);

-- Location: LCCOMB_X40_Y4_N26
\U2|count2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~7_combout\ = (\U2|Add1~36_combout\ & (((!\U2|Equal1~4_combout\) # (!\U2|count2~6_combout\)) # (!\U2|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~36_combout\,
	datab => \U2|Equal1~6_combout\,
	datac => \U2|count2~6_combout\,
	datad => \U2|Equal1~4_combout\,
	combout => \U2|count2~7_combout\);

-- Location: FF_X40_Y4_N27
\U2|count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(18));

-- Location: LCCOMB_X39_Y4_N14
\U2|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~38_combout\ = (\U2|count2\(19) & (!\U2|Add1~37\)) # (!\U2|count2\(19) & ((\U2|Add1~37\) # (GND)))
-- \U2|Add1~39\ = CARRY((!\U2|Add1~37\) # (!\U2|count2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(19),
	datad => VCC,
	cin => \U2|Add1~37\,
	combout => \U2|Add1~38_combout\,
	cout => \U2|Add1~39\);

-- Location: LCCOMB_X40_Y4_N10
\U2|count2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~8_combout\ = (\U2|Add1~38_combout\ & (((!\U2|Equal1~7_combout\) # (!\U2|Equal1~4_combout\)) # (!\U2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~5_combout\,
	datab => \U2|Equal1~4_combout\,
	datac => \U2|Add1~38_combout\,
	datad => \U2|Equal1~7_combout\,
	combout => \U2|count2~8_combout\);

-- Location: FF_X40_Y4_N11
\U2|count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(19));

-- Location: LCCOMB_X39_Y4_N16
\U2|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~40_combout\ = (\U2|count2\(20) & (\U2|Add1~39\ $ (GND))) # (!\U2|count2\(20) & (!\U2|Add1~39\ & VCC))
-- \U2|Add1~41\ = CARRY((\U2|count2\(20) & !\U2|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count2\(20),
	datad => VCC,
	cin => \U2|Add1~39\,
	combout => \U2|Add1~40_combout\,
	cout => \U2|Add1~41\);

-- Location: LCCOMB_X40_Y4_N8
\U2|count2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~11_combout\ = (\U2|Add1~40_combout\ & (((!\U2|Equal1~7_combout\) # (!\U2|Equal1~4_combout\)) # (!\U2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~5_combout\,
	datab => \U2|Equal1~4_combout\,
	datac => \U2|Add1~40_combout\,
	datad => \U2|Equal1~7_combout\,
	combout => \U2|count2~11_combout\);

-- Location: FF_X40_Y4_N9
\U2|count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(20));

-- Location: LCCOMB_X40_Y4_N30
\U2|Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~8_combout\ = (\U2|Add1~42_combout\ & (\U2|Add1~44_combout\ & (\U2|Add1~40_combout\ & !\U2|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~42_combout\,
	datab => \U2|Add1~44_combout\,
	datac => \U2|Add1~40_combout\,
	datad => \U2|Add1~46_combout\,
	combout => \U2|Equal1~8_combout\);

-- Location: LCCOMB_X40_Y4_N24
\U2|count2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~12_combout\ = (\U2|Add1~48_combout\ & (((!\U2|Equal1~4_combout\) # (!\U2|Equal1~8_combout\)) # (!\U2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~48_combout\,
	datab => \U2|Equal1~5_combout\,
	datac => \U2|Equal1~8_combout\,
	datad => \U2|Equal1~4_combout\,
	combout => \U2|count2~12_combout\);

-- Location: FF_X40_Y4_N25
\U2|count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(24));

-- Location: LCCOMB_X39_Y4_N24
\U2|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~48_combout\ = \U2|Add1~47\ $ (!\U2|count2\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|count2\(24),
	cin => \U2|Add1~47\,
	combout => \U2|Add1~48_combout\);

-- Location: LCCOMB_X40_Y4_N0
\U2|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~7_combout\ = (\U2|Add1~48_combout\ & (\U2|Add1~44_combout\ & (!\U2|Add1~46_combout\ & \U2|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~48_combout\,
	datab => \U2|Add1~44_combout\,
	datac => \U2|Add1~46_combout\,
	datad => \U2|Equal1~6_combout\,
	combout => \U2|Equal1~7_combout\);

-- Location: LCCOMB_X39_Y5_N4
\U2|count2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~0_combout\ = (\U2|Add1~12_combout\ & (((!\U2|Equal1~7_combout\) # (!\U2|Equal1~4_combout\)) # (!\U2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~12_combout\,
	datab => \U2|Equal1~5_combout\,
	datac => \U2|Equal1~4_combout\,
	datad => \U2|Equal1~7_combout\,
	combout => \U2|count2~0_combout\);

-- Location: FF_X39_Y5_N5
\U2|count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(6));

-- Location: LCCOMB_X39_Y5_N2
\U2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~1_combout\ = (!\U2|Add1~8_combout\ & (\U2|Add1~12_combout\ & (!\U2|Add1~10_combout\ & !\U2|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~8_combout\,
	datab => \U2|Add1~12_combout\,
	datac => \U2|Add1~10_combout\,
	datad => \U2|Add1~14_combout\,
	combout => \U2|Equal1~1_combout\);

-- Location: LCCOMB_X40_Y5_N8
\U2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = (!\U2|Add1~2_combout\ & (!\U2|Add1~0_combout\ & (!\U2|Add1~4_combout\ & !\U2|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~2_combout\,
	datab => \U2|Add1~0_combout\,
	datac => \U2|Add1~4_combout\,
	datad => \U2|Add1~6_combout\,
	combout => \U2|Equal1~0_combout\);

-- Location: LCCOMB_X40_Y4_N22
\U2|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~3_combout\ = (\U2|Add1~24_combout\ & (\U2|Add1~28_combout\ & (!\U2|Add1~30_combout\ & \U2|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~24_combout\,
	datab => \U2|Add1~28_combout\,
	datac => \U2|Add1~30_combout\,
	datad => \U2|Add1~26_combout\,
	combout => \U2|Equal1~3_combout\);

-- Location: LCCOMB_X39_Y5_N6
\U2|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~2_combout\ = (!\U2|Add1~18_combout\ & (!\U2|Add1~16_combout\ & (\U2|Add1~22_combout\ & !\U2|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~18_combout\,
	datab => \U2|Add1~16_combout\,
	datac => \U2|Add1~22_combout\,
	datad => \U2|Add1~20_combout\,
	combout => \U2|Equal1~2_combout\);

-- Location: LCCOMB_X40_Y4_N16
\U2|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~4_combout\ = (\U2|Equal1~1_combout\ & (\U2|Equal1~0_combout\ & (\U2|Equal1~3_combout\ & \U2|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~1_combout\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|Equal1~3_combout\,
	datad => \U2|Equal1~2_combout\,
	combout => \U2|Equal1~4_combout\);

-- Location: LCCOMB_X40_Y4_N4
\U2|count2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count2~5_combout\ = (\U2|Add1~32_combout\ & (((!\U2|Equal1~7_combout\) # (!\U2|Equal1~4_combout\)) # (!\U2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~5_combout\,
	datab => \U2|Equal1~4_combout\,
	datac => \U2|Add1~32_combout\,
	datad => \U2|Equal1~7_combout\,
	combout => \U2|count2~5_combout\);

-- Location: FF_X40_Y4_N5
\U2|count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count2\(16));

-- Location: LCCOMB_X40_Y4_N2
\U2|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~5_combout\ = (\U2|Add1~32_combout\ & (\U2|Add1~36_combout\ & (!\U2|Add1~34_combout\ & \U2|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~32_combout\,
	datab => \U2|Add1~36_combout\,
	datac => \U2|Add1~34_combout\,
	datad => \U2|Add1~38_combout\,
	combout => \U2|Equal1~5_combout\);

-- Location: LCCOMB_X40_Y4_N18
\U2|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|out2~0_combout\ = \U2|out2~q\ $ (((\U2|Equal1~5_combout\ & (\U2|Equal1~4_combout\ & \U2|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~5_combout\,
	datab => \U2|Equal1~4_combout\,
	datac => \U2|out2~q\,
	datad => \U2|Equal1~7_combout\,
	combout => \U2|out2~0_combout\);

-- Location: LCCOMB_X40_Y4_N12
\U2|out2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|out2~feeder_combout\ = \U2|out2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|out2~0_combout\,
	combout => \U2|out2~feeder_combout\);

-- Location: FF_X40_Y4_N13
\U2|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|out2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|out2~q\);

-- Location: CLKCTRL_G6
\U2|out2~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|out2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|out2~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y28_N14
\U3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~0_combout\ = \U3|contador\(0) $ (VCC)
-- \U3|Add0~1\ = CARRY(\U3|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|contador\(0),
	datad => VCC,
	combout => \U3|Add0~0_combout\,
	cout => \U3|Add0~1\);

-- Location: LCCOMB_X23_Y28_N16
\U3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~2_combout\ = (\U3|contador\(1) & (!\U3|Add0~1\)) # (!\U3|contador\(1) & ((\U3|Add0~1\) # (GND)))
-- \U3|Add0~3\ = CARRY((!\U3|Add0~1\) # (!\U3|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|contador\(1),
	datad => VCC,
	cin => \U3|Add0~1\,
	combout => \U3|Add0~2_combout\,
	cout => \U3|Add0~3\);

-- Location: IOIBUF_X23_Y29_N29
\reset2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset2,
	o => \reset2~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\reset1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset1,
	o => \reset1~input_o\);

-- Location: FF_X23_Y28_N11
\U1|reset2Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|reset2Prev~q\);

-- Location: FF_X23_Y28_N9
\U1|reset1Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|reset1Prev~q\);

-- Location: LCCOMB_X23_Y28_N10
\U1|detecta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|detecta~0_combout\ = (\reset2~input_o\ & (((\reset1~input_o\ & !\U1|reset1Prev~q\)) # (!\U1|reset2Prev~q\))) # (!\reset2~input_o\ & (\reset1~input_o\ & ((!\U1|reset1Prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset2~input_o\,
	datab => \reset1~input_o\,
	datac => \U1|reset2Prev~q\,
	datad => \U1|reset1Prev~q\,
	combout => \U1|detecta~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\U5|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Equal0~3_combout\ = (!\U3|contador\(3) & \U3|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|contador\(3),
	datad => \U3|contador\(2),
	combout => \U5|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y28_N26
\U1|detecta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|detecta~1_combout\ = (\U1|detecta~0_combout\ & (((!\U5|Equal0~2_combout\)) # (!\U5|Equal0~3_combout\))) # (!\U1|detecta~0_combout\ & (\U1|detecta~q\ & ((!\U5|Equal0~2_combout\) # (!\U5|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|detecta~0_combout\,
	datab => \U5|Equal0~3_combout\,
	datac => \U1|detecta~q\,
	datad => \U5|Equal0~2_combout\,
	combout => \U1|detecta~1_combout\);

-- Location: FF_X23_Y28_N27
\U1|detecta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|detecta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|detecta~q\);

-- Location: FF_X23_Y28_N17
\U3|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|out2~clkctrl_outclk\,
	d => \U3|Add0~2_combout\,
	clrn => \U5|ALT_INV_Equal0~1_combout\,
	ena => \U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(1));

-- Location: LCCOMB_X23_Y28_N18
\U3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~4_combout\ = (\U3|contador\(2) & (\U3|Add0~3\ $ (GND))) # (!\U3|contador\(2) & (!\U3|Add0~3\ & VCC))
-- \U3|Add0~5\ = CARRY((\U3|contador\(2) & !\U3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(2),
	datad => VCC,
	cin => \U3|Add0~3\,
	combout => \U3|Add0~4_combout\,
	cout => \U3|Add0~5\);

-- Location: LCCOMB_X23_Y28_N20
\U3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~6_combout\ = (\U3|contador\(3) & (!\U3|Add0~5\)) # (!\U3|contador\(3) & ((\U3|Add0~5\) # (GND)))
-- \U3|Add0~7\ = CARRY((!\U3|Add0~5\) # (!\U3|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|contador\(3),
	datad => VCC,
	cin => \U3|Add0~5\,
	combout => \U3|Add0~6_combout\,
	cout => \U3|Add0~7\);

-- Location: LCCOMB_X23_Y28_N4
\U3|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|contador~0_combout\ = (\U3|Add0~6_combout\ & ((\U3|contador\(2)) # ((!\U3|contador\(3)) # (!\U5|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(2),
	datab => \U5|Equal0~2_combout\,
	datac => \U3|contador\(3),
	datad => \U3|Add0~6_combout\,
	combout => \U3|contador~0_combout\);

-- Location: FF_X23_Y28_N5
\U3|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|out2~clkctrl_outclk\,
	d => \U3|contador~0_combout\,
	clrn => \U5|ALT_INV_Equal0~1_combout\,
	ena => \U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(3));

-- Location: LCCOMB_X23_Y28_N22
\U3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~8_combout\ = (\U3|contador\(4) & (\U3|Add0~7\ $ (GND))) # (!\U3|contador\(4) & (!\U3|Add0~7\ & VCC))
-- \U3|Add0~9\ = CARRY((\U3|contador\(4) & !\U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|contador\(4),
	datad => VCC,
	cin => \U3|Add0~7\,
	combout => \U3|Add0~8_combout\,
	cout => \U3|Add0~9\);

-- Location: LCCOMB_X23_Y28_N2
\U3|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|contador~3_combout\ = (\U3|Add0~8_combout\ & ((\U3|contador\(2)) # ((!\U5|Equal0~2_combout\) # (!\U3|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(2),
	datab => \U3|contador\(3),
	datac => \U3|Add0~8_combout\,
	datad => \U5|Equal0~2_combout\,
	combout => \U3|contador~3_combout\);

-- Location: FF_X23_Y28_N3
\U3|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|out2~clkctrl_outclk\,
	d => \U3|contador~3_combout\,
	clrn => \U5|ALT_INV_Equal0~1_combout\,
	ena => \U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(4));

-- Location: LCCOMB_X23_Y28_N28
\U5|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Equal0~2_combout\ = (\U3|contador\(5) & (\U3|contador\(4) & (\U3|contador\(0) & \U3|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(5),
	datab => \U3|contador\(4),
	datac => \U3|contador\(0),
	datad => \U3|contador\(1),
	combout => \U5|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y28_N30
\U3|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|contador~1_combout\ = (\U3|Add0~4_combout\ & (((\U3|contador\(2)) # (!\U3|contador\(3))) # (!\U5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Equal0~2_combout\,
	datab => \U3|contador\(3),
	datac => \U3|contador\(2),
	datad => \U3|Add0~4_combout\,
	combout => \U3|contador~1_combout\);

-- Location: FF_X23_Y28_N31
\U3|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|out2~clkctrl_outclk\,
	d => \U3|contador~1_combout\,
	clrn => \U5|ALT_INV_Equal0~1_combout\,
	ena => \U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(2));

-- Location: LCCOMB_X23_Y28_N24
\U3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~10_combout\ = \U3|Add0~9\ $ (\U3|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3|contador\(5),
	cin => \U3|Add0~9\,
	combout => \U3|Add0~10_combout\);

-- Location: LCCOMB_X23_Y28_N12
\U3|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|contador~2_combout\ = (\U3|Add0~10_combout\ & ((\U3|contador\(2)) # ((!\U3|contador\(3)) # (!\U5|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(2),
	datab => \U5|Equal0~2_combout\,
	datac => \U3|contador\(3),
	datad => \U3|Add0~10_combout\,
	combout => \U3|contador~2_combout\);

-- Location: FF_X23_Y28_N13
\U3|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|out2~clkctrl_outclk\,
	d => \U3|contador~2_combout\,
	clrn => \U5|ALT_INV_Equal0~1_combout\,
	ena => \U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(5));

-- Location: LCCOMB_X23_Y28_N0
\U5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Equal0~0_combout\ = (!\U3|contador\(3) & (\U3|contador\(2) & \U3|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|contador\(3),
	datac => \U3|contador\(2),
	datad => \U3|contador\(4),
	combout => \U5|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y28_N6
\U5|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Equal0~1_combout\ = (\U3|contador\(5) & (\U3|contador\(1) & (\U3|contador\(0) & \U5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(5),
	datab => \U3|contador\(1),
	datac => \U3|contador\(0),
	datad => \U5|Equal0~0_combout\,
	combout => \U5|Equal0~1_combout\);

-- Location: FF_X23_Y28_N15
\U3|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|out2~clkctrl_outclk\,
	d => \U3|Add0~0_combout\,
	clrn => \U5|ALT_INV_Equal0~1_combout\,
	ena => \U1|detecta~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(0));

-- Location: LCCOMB_X24_Y28_N0
\U4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Equal0~0_combout\ = (\U3|contador\(3) & (!\U3|contador\(5) & (!\U3|contador\(2) & !\U3|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(3),
	datab => \U3|contador\(5),
	datac => \U3|contador\(2),
	datad => \U3|contador\(4),
	combout => \U4|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\U4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Equal0~1_combout\ = (!\U3|contador\(0) & (\U3|contador\(1) & \U4|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(0),
	datac => \U3|contador\(1),
	datad => \U4|Equal0~0_combout\,
	combout => \U4|Equal0~1_combout\);

ww_abrir <= \abrir~output_o\;

ww_cerrar <= \cerrar~output_o\;
END structure;


