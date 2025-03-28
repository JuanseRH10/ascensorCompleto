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

-- DATE "03/19/2025 22:00:45"

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

ENTITY 	sensorPersonas IS
    PORT (
	clk : IN std_logic;
	sensorA : IN std_logic;
	sensorB : IN std_logic;
	personaEntra : OUT std_logic;
	personaSale : OUT std_logic
	);
END sensorPersonas;

-- Design Ports Information
-- personaEntra	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personaSale	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorB	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorA	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sensorPersonas IS
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
SIGNAL ww_sensorA : std_logic;
SIGNAL ww_sensorB : std_logic;
SIGNAL ww_personaEntra : std_logic;
SIGNAL ww_personaSale : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \personaEntra~output_o\ : std_logic;
SIGNAL \personaSale~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sensorB~input_o\ : std_logic;
SIGNAL \primeroA~0_combout\ : std_logic;
SIGNAL \primeroA~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \personaEntra~reg0_q\ : std_logic;
SIGNAL \sensorA~input_o\ : std_logic;
SIGNAL \primeroB~0_combout\ : std_logic;
SIGNAL \primeroB~q\ : std_logic;
SIGNAL \personaSale~0_combout\ : std_logic;
SIGNAL \personaSale~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sensorA <= sensorA;
ww_sensorB <= sensorB;
personaEntra <= ww_personaEntra;
personaSale <= ww_personaSale;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y2_N2
\personaEntra~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \personaEntra~reg0_q\,
	devoe => ww_devoe,
	o => \personaEntra~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\personaSale~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \personaSale~reg0_q\,
	devoe => ww_devoe,
	o => \personaSale~output_o\);

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

-- Location: IOIBUF_X0_Y2_N15
\sensorB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensorB,
	o => \sensorB~input_o\);

-- Location: LCCOMB_X1_Y2_N16
\primeroA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \primeroA~0_combout\ = (\primeroA~q\) # (!\sensorB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorB~input_o\,
	datac => \primeroA~q\,
	combout => \primeroA~0_combout\);

-- Location: FF_X1_Y2_N17
primeroA : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \primeroA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \primeroA~q\);

-- Location: LCCOMB_X1_Y2_N28
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\sensorB~input_o\ & \primeroA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorB~input_o\,
	datad => \primeroA~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X1_Y2_N29
\personaEntra~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \personaEntra~reg0_q\);

-- Location: IOIBUF_X0_Y2_N22
\sensorA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensorA,
	o => \sensorA~input_o\);

-- Location: LCCOMB_X1_Y2_N22
\primeroB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \primeroB~0_combout\ = (\primeroB~q\) # ((\sensorB~input_o\ & !\sensorA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorB~input_o\,
	datac => \primeroB~q\,
	datad => \sensorA~input_o\,
	combout => \primeroB~0_combout\);

-- Location: FF_X1_Y2_N23
primeroB : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \primeroB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \primeroB~q\);

-- Location: LCCOMB_X1_Y2_N14
\personaSale~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \personaSale~0_combout\ = (\sensorA~input_o\ & (\primeroB~q\ & ((!\primeroA~q\) # (!\sensorB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorB~input_o\,
	datab => \sensorA~input_o\,
	datac => \primeroB~q\,
	datad => \primeroA~q\,
	combout => \personaSale~0_combout\);

-- Location: FF_X1_Y2_N15
\personaSale~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \personaSale~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \personaSale~reg0_q\);

ww_personaEntra <= \personaEntra~output_o\;

ww_personaSale <= \personaSale~output_o\;
END structure;


