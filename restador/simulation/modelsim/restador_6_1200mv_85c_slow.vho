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

-- DATE "02/27/2025 11:17:02"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	restador IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	sig : OUT std_logic;
	mag : OUT std_logic_vector(3 DOWNTO 0)
	);
END restador;

-- Design Ports Information
-- sig	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mag[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF restador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sig : std_logic;
SIGNAL ww_mag : std_logic_vector(3 DOWNTO 0);
SIGNAL \sig~output_o\ : std_logic;
SIGNAL \mag[0]~output_o\ : std_logic;
SIGNAL \mag[1]~output_o\ : std_logic;
SIGNAL \mag[2]~output_o\ : std_logic;
SIGNAL \mag[3]~output_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \D1[0]~1\ : std_logic;
SIGNAL \D1[1]~3\ : std_logic;
SIGNAL \D1[2]~5\ : std_logic;
SIGNAL \D1[3]~7\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \D2[0]~0_combout\ : std_logic;
SIGNAL \D1[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \D1[1]~2_combout\ : std_logic;
SIGNAL \D2[0]~1\ : std_logic;
SIGNAL \D2[1]~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \D1[2]~4_combout\ : std_logic;
SIGNAL \D2[1]~3\ : std_logic;
SIGNAL \D2[2]~4_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \D2[2]~5\ : std_logic;
SIGNAL \D2[3]~6_combout\ : std_logic;
SIGNAL \D1[3]~6_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
sig <= ww_sig;
mag <= ww_mag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;

-- Location: IOOBUF_X14_Y29_N9
\sig~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \sig~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\mag[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \mag[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\mag[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~1_combout\,
	devoe => ww_devoe,
	o => \mag[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\mag[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \mag[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\mag[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~3_combout\,
	devoe => ww_devoe,
	o => \mag[3]~output_o\);

-- Location: IOIBUF_X0_Y9_N1
\x[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\y[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\y[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\x[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\x[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\y[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\y[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\x[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X1_Y11_N0
\D1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1[0]~0_combout\ = (\y[0]~input_o\ & (\x[0]~input_o\ $ (VCC))) # (!\y[0]~input_o\ & ((\x[0]~input_o\) # (GND)))
-- \D1[0]~1\ = CARRY((\x[0]~input_o\) # (!\y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \x[0]~input_o\,
	datad => VCC,
	combout => \D1[0]~0_combout\,
	cout => \D1[0]~1\);

-- Location: LCCOMB_X1_Y11_N2
\D1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1[1]~2_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\ & (!\D1[0]~1\)) # (!\y[1]~input_o\ & (\D1[0]~1\ & VCC)))) # (!\x[1]~input_o\ & ((\y[1]~input_o\ & ((\D1[0]~1\) # (GND))) # (!\y[1]~input_o\ & (!\D1[0]~1\))))
-- \D1[1]~3\ = CARRY((\x[1]~input_o\ & (\y[1]~input_o\ & !\D1[0]~1\)) # (!\x[1]~input_o\ & ((\y[1]~input_o\) # (!\D1[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datad => VCC,
	cin => \D1[0]~1\,
	combout => \D1[1]~2_combout\,
	cout => \D1[1]~3\);

-- Location: LCCOMB_X1_Y11_N4
\D1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1[2]~4_combout\ = ((\y[2]~input_o\ $ (\x[2]~input_o\ $ (\D1[1]~3\)))) # (GND)
-- \D1[2]~5\ = CARRY((\y[2]~input_o\ & (\x[2]~input_o\ & !\D1[1]~3\)) # (!\y[2]~input_o\ & ((\x[2]~input_o\) # (!\D1[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \x[2]~input_o\,
	datad => VCC,
	cin => \D1[1]~3\,
	combout => \D1[2]~4_combout\,
	cout => \D1[2]~5\);

-- Location: LCCOMB_X1_Y11_N6
\D1[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1[3]~6_combout\ = (\x[3]~input_o\ & ((\y[3]~input_o\ & (!\D1[2]~5\)) # (!\y[3]~input_o\ & (\D1[2]~5\ & VCC)))) # (!\x[3]~input_o\ & ((\y[3]~input_o\ & ((\D1[2]~5\) # (GND))) # (!\y[3]~input_o\ & (!\D1[2]~5\))))
-- \D1[3]~7\ = CARRY((\x[3]~input_o\ & (\y[3]~input_o\ & !\D1[2]~5\)) # (!\x[3]~input_o\ & ((\y[3]~input_o\) # (!\D1[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \y[3]~input_o\,
	datad => VCC,
	cin => \D1[2]~5\,
	combout => \D1[3]~6_combout\,
	cout => \D1[3]~7\);

-- Location: LCCOMB_X1_Y11_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = !\D1[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \D1[3]~7\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\D2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2[0]~0_combout\ = (\y[0]~input_o\ & ((GND) # (!\x[0]~input_o\))) # (!\y[0]~input_o\ & (\x[0]~input_o\ $ (GND)))
-- \D2[0]~1\ = CARRY((\y[0]~input_o\) # (!\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \x[0]~input_o\,
	datad => VCC,
	combout => \D2[0]~0_combout\,
	cout => \D2[0]~1\);

-- Location: LCCOMB_X1_Y11_N26
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~0_combout\ & ((\D1[0]~0_combout\))) # (!\Add0~0_combout\ & (\D2[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[0]~0_combout\,
	datab => \D1[0]~0_combout\,
	datad => \Add0~0_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X1_Y11_N12
\D2[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2[1]~2_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\ & (!\D2[0]~1\)) # (!\y[1]~input_o\ & ((\D2[0]~1\) # (GND))))) # (!\x[1]~input_o\ & ((\y[1]~input_o\ & (\D2[0]~1\ & VCC)) # (!\y[1]~input_o\ & (!\D2[0]~1\))))
-- \D2[1]~3\ = CARRY((\x[1]~input_o\ & ((!\D2[0]~1\) # (!\y[1]~input_o\))) # (!\x[1]~input_o\ & (!\y[1]~input_o\ & !\D2[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datad => VCC,
	cin => \D2[0]~1\,
	combout => \D2[1]~2_combout\,
	cout => \D2[1]~3\);

-- Location: LCCOMB_X1_Y11_N28
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\Add0~0_combout\ & (\D1[1]~2_combout\)) # (!\Add0~0_combout\ & ((\D2[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \D1[1]~2_combout\,
	datad => \D2[1]~2_combout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X1_Y11_N14
\D2[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2[2]~4_combout\ = ((\y[2]~input_o\ $ (\x[2]~input_o\ $ (\D2[1]~3\)))) # (GND)
-- \D2[2]~5\ = CARRY((\y[2]~input_o\ & ((!\D2[1]~3\) # (!\x[2]~input_o\))) # (!\y[2]~input_o\ & (!\x[2]~input_o\ & !\D2[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \x[2]~input_o\,
	datad => VCC,
	cin => \D2[1]~3\,
	combout => \D2[2]~4_combout\,
	cout => \D2[2]~5\);

-- Location: LCCOMB_X1_Y11_N22
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~0_combout\ & (\D1[2]~4_combout\)) # (!\Add0~0_combout\ & ((\D2[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1[2]~4_combout\,
	datac => \D2[2]~4_combout\,
	datad => \Add0~0_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X1_Y11_N16
\D2[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2[3]~6_combout\ = \x[3]~input_o\ $ (\D2[2]~5\ $ (!\y[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x[3]~input_o\,
	datad => \y[3]~input_o\,
	cin => \D2[2]~5\,
	combout => \D2[3]~6_combout\);

-- Location: LCCOMB_X1_Y11_N24
\Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\Add0~0_combout\ & ((\D1[3]~6_combout\))) # (!\Add0~0_combout\ & (\D2[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \D2[3]~6_combout\,
	datad => \D1[3]~6_combout\,
	combout => \Add1~3_combout\);

ww_sig <= \sig~output_o\;

ww_mag(0) <= \mag[0]~output_o\;

ww_mag(1) <= \mag[1]~output_o\;

ww_mag(2) <= \mag[2]~output_o\;

ww_mag(3) <= \mag[3]~output_o\;
END structure;


