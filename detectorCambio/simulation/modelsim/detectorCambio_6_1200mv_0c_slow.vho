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

-- DATE "03/27/2025 13:33:46"

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

ENTITY 	detectorCambio IS
    PORT (
	clk : IN std_logic;
	reset1 : IN std_logic;
	reset2 : IN std_logic;
	clear : IN std_logic;
	salida : OUT std_logic
	);
END detectorCambio;

-- Design Ports Information
-- salida	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF detectorCambio IS
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
SIGNAL ww_clear : std_logic;
SIGNAL ww_salida : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \salida~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \reset2~input_o\ : std_logic;
SIGNAL \reset1~input_o\ : std_logic;
SIGNAL \reset2Prev~q\ : std_logic;
SIGNAL \reset1Prev~feeder_combout\ : std_logic;
SIGNAL \reset1Prev~q\ : std_logic;
SIGNAL \detecta~0_combout\ : std_logic;
SIGNAL \detecta~1_combout\ : std_logic;
SIGNAL \detecta~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset1 <= reset1;
ww_reset2 <= reset2;
ww_clear <= clear;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X9_Y29_N30
\salida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \detecta~q\,
	devoe => ww_devoe,
	o => \salida~output_o\);

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

-- Location: IOIBUF_X9_Y29_N1
\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X9_Y29_N15
\reset2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset2,
	o => \reset2~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\reset1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset1,
	o => \reset1~input_o\);

-- Location: FF_X9_Y28_N1
reset2Prev : dffeas
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
	q => \reset2Prev~q\);

-- Location: LCCOMB_X9_Y28_N2
\reset1Prev~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reset1Prev~feeder_combout\ = \reset1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset1~input_o\,
	combout => \reset1Prev~feeder_combout\);

-- Location: FF_X9_Y28_N3
reset1Prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reset1Prev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset1Prev~q\);

-- Location: LCCOMB_X9_Y28_N0
\detecta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \detecta~0_combout\ = (\reset2~input_o\ & (((\reset1~input_o\ & !\reset1Prev~q\)) # (!\reset2Prev~q\))) # (!\reset2~input_o\ & (\reset1~input_o\ & ((!\reset1Prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset2~input_o\,
	datab => \reset1~input_o\,
	datac => \reset2Prev~q\,
	datad => \reset1Prev~q\,
	combout => \detecta~0_combout\);

-- Location: LCCOMB_X9_Y28_N12
\detecta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \detecta~1_combout\ = (!\clear~input_o\ & ((\detecta~q\) # (\detecta~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \detecta~q\,
	datad => \detecta~0_combout\,
	combout => \detecta~1_combout\);

-- Location: FF_X9_Y28_N13
detecta : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \detecta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detecta~q\);

ww_salida <= \salida~output_o\;
END structure;


