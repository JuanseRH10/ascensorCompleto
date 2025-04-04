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

-- DATE "03/31/2025 05:36:34"

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

ENTITY 	capturarLlego IS
    PORT (
	clk : IN std_logic;
	clear : IN std_logic;
	llego : IN std_logic;
	llego_capturado : OUT std_logic
	);
END capturarLlego;

-- Design Ports Information
-- llego_capturado	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llego	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF capturarLlego IS
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
SIGNAL ww_clear : std_logic;
SIGNAL ww_llego : std_logic;
SIGNAL ww_llego_capturado : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \llego_capturado~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \llego~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \llego_prev~feeder_combout\ : std_logic;
SIGNAL \llego_prev~q\ : std_logic;
SIGNAL \capturado~0_combout\ : std_logic;
SIGNAL \capturado~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clear <= clear;
ww_llego <= llego;
llego_capturado <= ww_llego_capturado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y22_N16
\llego_capturado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \capturado~q\,
	devoe => ww_devoe,
	o => \llego_capturado~output_o\);

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

-- Location: IOIBUF_X0_Y22_N8
\llego~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llego,
	o => \llego~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: LCCOMB_X1_Y22_N2
\llego_prev~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llego_prev~feeder_combout\ = \llego~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llego~input_o\,
	combout => \llego_prev~feeder_combout\);

-- Location: FF_X1_Y22_N3
llego_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \llego_prev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \llego_prev~q\);

-- Location: LCCOMB_X1_Y22_N16
\capturado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \capturado~0_combout\ = (!\clear~input_o\ & ((\capturado~q\) # ((\llego~input_o\ & !\llego_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \llego~input_o\,
	datab => \clear~input_o\,
	datac => \capturado~q\,
	datad => \llego_prev~q\,
	combout => \capturado~0_combout\);

-- Location: FF_X1_Y22_N17
capturado : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capturado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capturado~q\);

ww_llego_capturado <= \llego_capturado~output_o\;
END structure;


