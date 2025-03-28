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

-- DATE "03/27/2025 09:42:06"

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

ENTITY 	codificador IS
    PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I5 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	code : OUT std_logic_vector(2 DOWNTO 0);
	valido : OUT std_logic
	);
END codificador;

-- Design Ports Information
-- code[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valido	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I7	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I5	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I6	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I4	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF codificador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I4 : std_logic;
SIGNAL ww_I5 : std_logic;
SIGNAL ww_I6 : std_logic;
SIGNAL ww_I7 : std_logic;
SIGNAL ww_code : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_valido : std_logic;
SIGNAL \code[0]~output_o\ : std_logic;
SIGNAL \code[1]~output_o\ : std_logic;
SIGNAL \code[2]~output_o\ : std_logic;
SIGNAL \valido~output_o\ : std_logic;
SIGNAL \I6~input_o\ : std_logic;
SIGNAL \I4~input_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \code~0_combout\ : std_logic;
SIGNAL \I7~input_o\ : std_logic;
SIGNAL \I5~input_o\ : std_logic;
SIGNAL \code~1_combout\ : std_logic;
SIGNAL \code~2_combout\ : std_logic;
SIGNAL \code~3_combout\ : std_logic;
SIGNAL \valido~0_combout\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \valido~1_combout\ : std_logic;
SIGNAL \valido~2_combout\ : std_logic;
SIGNAL \ALT_INV_valido~0_combout\ : std_logic;

BEGIN

ww_I0 <= I0;
ww_I1 <= I1;
ww_I2 <= I2;
ww_I3 <= I3;
ww_I4 <= I4;
ww_I5 <= I5;
ww_I6 <= I6;
ww_I7 <= I7;
code <= ww_code;
valido <= ww_valido;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_valido~0_combout\ <= NOT \valido~0_combout\;

-- Location: IOOBUF_X0_Y22_N9
\code[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \code~1_combout\,
	devoe => ww_devoe,
	o => \code[0]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\code[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \code~3_combout\,
	devoe => ww_devoe,
	o => \code[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\code[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_valido~0_combout\,
	devoe => ww_devoe,
	o => \code[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\valido~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valido~2_combout\,
	devoe => ww_devoe,
	o => \valido~output_o\);

-- Location: IOIBUF_X0_Y12_N15
\I6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I6,
	o => \I6~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\I4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I4,
	o => \I4~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\I3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\I1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\I2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: LCCOMB_X1_Y12_N0
\code~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \code~0_combout\ = (!\I4~input_o\ & ((\I3~input_o\) # ((\I1~input_o\ & !\I2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4~input_o\,
	datab => \I3~input_o\,
	datac => \I1~input_o\,
	datad => \I2~input_o\,
	combout => \code~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\I7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I7,
	o => \I7~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\I5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I5,
	o => \I5~input_o\);

-- Location: LCCOMB_X1_Y12_N2
\code~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \code~1_combout\ = (\I7~input_o\) # ((!\I6~input_o\ & ((\code~0_combout\) # (\I5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I6~input_o\,
	datab => \code~0_combout\,
	datac => \I7~input_o\,
	datad => \I5~input_o\,
	combout => \code~1_combout\);

-- Location: LCCOMB_X1_Y12_N12
\code~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \code~2_combout\ = (!\I4~input_o\ & (!\I5~input_o\ & ((\I3~input_o\) # (\I2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3~input_o\,
	datab => \I2~input_o\,
	datac => \I4~input_o\,
	datad => \I5~input_o\,
	combout => \code~2_combout\);

-- Location: LCCOMB_X1_Y12_N6
\code~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \code~3_combout\ = (\I6~input_o\) # ((\I7~input_o\) # (\code~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I6~input_o\,
	datab => \I7~input_o\,
	datad => \code~2_combout\,
	combout => \code~3_combout\);

-- Location: LCCOMB_X1_Y12_N16
\valido~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valido~0_combout\ = (!\I6~input_o\ & (!\I7~input_o\ & (!\I4~input_o\ & !\I5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I6~input_o\,
	datab => \I7~input_o\,
	datac => \I4~input_o\,
	datad => \I5~input_o\,
	combout => \valido~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\I0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LCCOMB_X1_Y12_N26
\valido~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valido~1_combout\ = (\I1~input_o\) # ((\I3~input_o\) # ((\I0~input_o\) # (\I2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1~input_o\,
	datab => \I3~input_o\,
	datac => \I0~input_o\,
	datad => \I2~input_o\,
	combout => \valido~1_combout\);

-- Location: LCCOMB_X1_Y12_N4
\valido~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valido~2_combout\ = (\valido~1_combout\) # (!\valido~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valido~1_combout\,
	datad => \valido~0_combout\,
	combout => \valido~2_combout\);

ww_code(0) <= \code[0]~output_o\;

ww_code(1) <= \code[1]~output_o\;

ww_code(2) <= \code[2]~output_o\;

ww_valido <= \valido~output_o\;
END structure;


