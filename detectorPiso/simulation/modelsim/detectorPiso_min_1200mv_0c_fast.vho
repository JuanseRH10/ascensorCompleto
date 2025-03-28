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

-- DATE "03/27/2025 14:31:28"

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

ENTITY 	detectorPiso IS
    PORT (
	subir : IN std_logic;
	bajar : IN std_logic;
	peticion1 : IN std_logic_vector(2 DOWNTO 0);
	peticion2 : IN std_logic_vector(2 DOWNTO 0);
	pisoActual : OUT std_logic_vector(2 DOWNTO 0);
	reset1 : OUT std_logic;
	reset2 : OUT std_logic
	);
END detectorPiso;

-- Design Ports Information
-- pisoActual[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- peticion1[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- peticion1[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- peticion1[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- peticion2[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- peticion2[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- peticion2[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- subir	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bajar	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF detectorPiso IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_subir : std_logic;
SIGNAL ww_bajar : std_logic;
SIGNAL ww_peticion1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_peticion2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pisoActual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset2 : std_logic;
SIGNAL \pisoActual[0]~output_o\ : std_logic;
SIGNAL \pisoActual[1]~output_o\ : std_logic;
SIGNAL \pisoActual[2]~output_o\ : std_logic;
SIGNAL \reset1~output_o\ : std_logic;
SIGNAL \reset2~output_o\ : std_logic;
SIGNAL \bajar~input_o\ : std_logic;
SIGNAL \subir~input_o\ : std_logic;
SIGNAL \nuevoPiso~7_combout\ : std_logic;
SIGNAL \nuevoPiso~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \nuevoPiso~5_combout\ : std_logic;
SIGNAL \nuevoPiso~6_combout\ : std_logic;
SIGNAL \nuevoPiso~3_combout\ : std_logic;
SIGNAL \nuevoPiso~4_combout\ : std_logic;
SIGNAL \peticion1[2]~input_o\ : std_logic;
SIGNAL \peticion1[1]~input_o\ : std_logic;
SIGNAL \peticion1[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \peticion2[1]~input_o\ : std_logic;
SIGNAL \peticion2[0]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \peticion2[2]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;

BEGIN

ww_subir <= subir;
ww_bajar <= bajar;
ww_peticion1 <= peticion1;
ww_peticion2 <= peticion2;
pisoActual <= ww_pisoActual;
reset1 <= ww_reset1;
reset2 <= ww_reset2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y23_N9
\pisoActual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nuevoPiso~4_combout\,
	devoe => ww_devoe,
	o => \pisoActual[0]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\pisoActual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nuevoPiso~6_combout\,
	devoe => ww_devoe,
	o => \pisoActual[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\pisoActual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nuevoPiso~8_combout\,
	devoe => ww_devoe,
	o => \pisoActual[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\reset1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \reset1~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\reset2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~1_combout\,
	devoe => ww_devoe,
	o => \reset2~output_o\);

-- Location: IOIBUF_X16_Y0_N29
\bajar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bajar,
	o => \bajar~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\subir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_subir,
	o => \subir~input_o\);

-- Location: LCCOMB_X1_Y10_N2
\nuevoPiso~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevoPiso~7_combout\ = (\subir~input_o\ & ((\nuevoPiso~6_combout\))) # (!\subir~input_o\ & (\bajar~input_o\ & !\nuevoPiso~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subir~input_o\,
	datac => \bajar~input_o\,
	datad => \nuevoPiso~6_combout\,
	combout => \nuevoPiso~7_combout\);

-- Location: LCCOMB_X1_Y10_N12
\nuevoPiso~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevoPiso~8_combout\ = (\nuevoPiso~8_combout\ & ((\nuevoPiso~6_combout\) # ((\nuevoPiso~4_combout\) # (!\nuevoPiso~7_combout\)))) # (!\nuevoPiso~8_combout\ & (\nuevoPiso~6_combout\ & (\nuevoPiso~4_combout\ & \nuevoPiso~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevoPiso~8_combout\,
	datab => \nuevoPiso~6_combout\,
	datac => \nuevoPiso~4_combout\,
	datad => \nuevoPiso~7_combout\,
	combout => \nuevoPiso~8_combout\);

-- Location: LCCOMB_X1_Y10_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\nuevoPiso~8_combout\ & ((\nuevoPiso~6_combout\) # (\nuevoPiso~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevoPiso~8_combout\,
	datab => \nuevoPiso~6_combout\,
	datad => \nuevoPiso~4_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y10_N6
\nuevoPiso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevoPiso~5_combout\ = (\subir~input_o\ & (((!\LessThan0~0_combout\ & \nuevoPiso~4_combout\)))) # (!\subir~input_o\ & (\bajar~input_o\ & ((!\nuevoPiso~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bajar~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \subir~input_o\,
	datad => \nuevoPiso~4_combout\,
	combout => \nuevoPiso~5_combout\);

-- Location: LCCOMB_X1_Y10_N16
\nuevoPiso~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevoPiso~6_combout\ = (\nuevoPiso~5_combout\ & (!\nuevoPiso~6_combout\ & ((\subir~input_o\) # (\nuevoPiso~8_combout\)))) # (!\nuevoPiso~5_combout\ & (\nuevoPiso~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevoPiso~5_combout\,
	datab => \nuevoPiso~6_combout\,
	datac => \subir~input_o\,
	datad => \nuevoPiso~8_combout\,
	combout => \nuevoPiso~6_combout\);

-- Location: LCCOMB_X1_Y10_N26
\nuevoPiso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevoPiso~3_combout\ = (\bajar~input_o\ & ((\nuevoPiso~6_combout\) # (\nuevoPiso~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nuevoPiso~6_combout\,
	datac => \bajar~input_o\,
	datad => \nuevoPiso~8_combout\,
	combout => \nuevoPiso~3_combout\);

-- Location: LCCOMB_X1_Y10_N20
\nuevoPiso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevoPiso~4_combout\ = \nuevoPiso~4_combout\ $ (((\subir~input_o\ & ((!\LessThan0~0_combout\))) # (!\subir~input_o\ & (\nuevoPiso~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevoPiso~3_combout\,
	datab => \LessThan0~0_combout\,
	datac => \subir~input_o\,
	datad => \nuevoPiso~4_combout\,
	combout => \nuevoPiso~4_combout\);

-- Location: IOIBUF_X0_Y26_N1
\peticion1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_peticion1(2),
	o => \peticion1[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\peticion1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_peticion1(1),
	o => \peticion1[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\peticion1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_peticion1(0),
	o => \peticion1[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\peticion1[1]~input_o\ & (\nuevoPiso~6_combout\ & (\peticion1[0]~input_o\ $ (!\nuevoPiso~4_combout\)))) # (!\peticion1[1]~input_o\ & (!\nuevoPiso~6_combout\ & (\peticion1[0]~input_o\ $ (!\nuevoPiso~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \peticion1[1]~input_o\,
	datab => \nuevoPiso~6_combout\,
	datac => \peticion1[0]~input_o\,
	datad => \nuevoPiso~4_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y10_N10
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (\peticion1[2]~input_o\ $ (!\nuevoPiso~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \peticion1[2]~input_o\,
	datab => \Equal0~0_combout\,
	datad => \nuevoPiso~8_combout\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X0_Y10_N22
\peticion2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_peticion2(1),
	o => \peticion2[1]~input_o\);

-- Location: IOIBUF_X41_Y11_N1
\peticion2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_peticion2(0),
	o => \peticion2[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N28
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\peticion2[1]~input_o\ & (\nuevoPiso~6_combout\ & (\peticion2[0]~input_o\ $ (!\nuevoPiso~4_combout\)))) # (!\peticion2[1]~input_o\ & (!\nuevoPiso~6_combout\ & (\peticion2[0]~input_o\ $ (!\nuevoPiso~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \peticion2[1]~input_o\,
	datab => \nuevoPiso~6_combout\,
	datac => \peticion2[0]~input_o\,
	datad => \nuevoPiso~4_combout\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y12_N22
\peticion2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_peticion2(2),
	o => \peticion2[2]~input_o\);

-- Location: LCCOMB_X1_Y10_N30
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\ & (\peticion2[2]~input_o\ $ (!\nuevoPiso~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \peticion2[2]~input_o\,
	datad => \nuevoPiso~8_combout\,
	combout => \Equal1~1_combout\);

ww_pisoActual(0) <= \pisoActual[0]~output_o\;

ww_pisoActual(1) <= \pisoActual[1]~output_o\;

ww_pisoActual(2) <= \pisoActual[2]~output_o\;

ww_reset1 <= \reset1~output_o\;

ww_reset2 <= \reset2~output_o\;
END structure;


