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

-- DATE "03/27/2025 09:30:26"

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

ENTITY 	detectorSenal IS
    PORT (
	clk : IN std_logic;
	datos : IN std_logic_vector(2 DOWNTO 0);
	reset1 : IN std_logic;
	reset2 : IN std_logic;
	q1 : OUT std_logic_vector(2 DOWNTO 0);
	q2 : OUT std_logic_vector(2 DOWNTO 0)
	);
END detectorSenal;

-- Design Ports Information
-- q1[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF detectorSenal IS
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
SIGNAL ww_datos : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset2 : std_logic;
SIGNAL ww_q1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_q2 : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg2[2]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q1[0]~output_o\ : std_logic;
SIGNAL \q1[1]~output_o\ : std_logic;
SIGNAL \q1[2]~output_o\ : std_logic;
SIGNAL \q2[0]~output_o\ : std_logic;
SIGNAL \q2[1]~output_o\ : std_logic;
SIGNAL \q2[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \datos[0]~input_o\ : std_logic;
SIGNAL \reset1~input_o\ : std_logic;
SIGNAL \reset1~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset2~input_o\ : std_logic;
SIGNAL \datos[1]~input_o\ : std_logic;
SIGNAL \datosPrev[0]~0_combout\ : std_logic;
SIGNAL \datosPrev[1]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \datos[2]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \primero~0_combout\ : std_logic;
SIGNAL \primero~q\ : std_logic;
SIGNAL \reg1[0]~0_combout\ : std_logic;
SIGNAL \reg1[1]~feeder_combout\ : std_logic;
SIGNAL \reg1[2]~feeder_combout\ : std_logic;
SIGNAL \reg2[2]~0_combout\ : std_logic;
SIGNAL \reg2[2]~0clkctrl_outclk\ : std_logic;
SIGNAL \reg2[0]~1_combout\ : std_logic;
SIGNAL \reg2[1]~feeder_combout\ : std_logic;
SIGNAL \reg2[2]~feeder_combout\ : std_logic;
SIGNAL reg2 : std_logic_vector(2 DOWNTO 0);
SIGNAL reg1 : std_logic_vector(2 DOWNTO 0);
SIGNAL datosPrev : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset1~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reg2[2]~0clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_datos <= datos;
ww_reset1 <= reset1;
ww_reset2 <= reset2;
q1 <= ww_q1;
q2 <= ww_q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reg2[2]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reg2[2]~0_combout\);

\reset1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset1~input_o\);
\ALT_INV_reset1~inputclkctrl_outclk\ <= NOT \reset1~inputclkctrl_outclk\;
\ALT_INV_reg2[2]~0clkctrl_outclk\ <= NOT \reg2[2]~0clkctrl_outclk\;

-- Location: IOOBUF_X0_Y12_N2
\q1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg1(0),
	devoe => ww_devoe,
	o => \q1[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\q1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg1(1),
	devoe => ww_devoe,
	o => \q1[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\q1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg1(2),
	devoe => ww_devoe,
	o => \q1[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\q2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2(0),
	devoe => ww_devoe,
	o => \q2[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\q2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2(1),
	devoe => ww_devoe,
	o => \q2[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\q2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2(2),
	devoe => ww_devoe,
	o => \q2[2]~output_o\);

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

-- Location: IOIBUF_X0_Y13_N8
\datos[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(0),
	o => \datos[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\reset1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset1,
	o => \reset1~input_o\);

-- Location: CLKCTRL_G2
\reset1~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset1~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y13_N15
\reset2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset2,
	o => \reset2~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\datos[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(1),
	o => \datos[1]~input_o\);

-- Location: LCCOMB_X1_Y13_N16
\datosPrev[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datosPrev[0]~0_combout\ = (!\reset2~input_o\ & !\reset1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset2~input_o\,
	datad => \reset1~input_o\,
	combout => \datosPrev[0]~0_combout\);

-- Location: FF_X2_Y13_N29
\datosPrev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos[0]~input_o\,
	sload => VCC,
	ena => \datosPrev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datosPrev(0));

-- Location: LCCOMB_X2_Y13_N6
\datosPrev[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \datosPrev[1]~feeder_combout\ = \datos[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos[1]~input_o\,
	combout => \datosPrev[1]~feeder_combout\);

-- Location: FF_X2_Y13_N7
\datosPrev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datosPrev[1]~feeder_combout\,
	ena => \datosPrev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datosPrev(1));

-- Location: LCCOMB_X2_Y13_N28
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\datos[1]~input_o\ & (datosPrev(1) & (\datos[0]~input_o\ $ (!datosPrev(0))))) # (!\datos[1]~input_o\ & (!datosPrev(1) & (\datos[0]~input_o\ $ (!datosPrev(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos[1]~input_o\,
	datab => \datos[0]~input_o\,
	datac => datosPrev(0),
	datad => datosPrev(1),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y13_N22
\datos[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos(2),
	o => \datos[2]~input_o\);

-- Location: FF_X1_Y13_N15
\datosPrev[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos[2]~input_o\,
	sload => VCC,
	ena => \datosPrev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datosPrev(2));

-- Location: LCCOMB_X1_Y13_N14
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = \datos[2]~input_o\ $ (datosPrev(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos[2]~input_o\,
	datac => datosPrev(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X3_Y13_N8
\primero~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \primero~0_combout\ = (\primero~q\) # ((!\reset2~input_o\ & ((\Equal0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset2~input_o\,
	datab => \Equal0~0_combout\,
	datac => \primero~q\,
	datad => \Equal0~1_combout\,
	combout => \primero~0_combout\);

-- Location: FF_X3_Y13_N9
primero : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \primero~0_combout\,
	clrn => \ALT_INV_reset1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \primero~q\);

-- Location: LCCOMB_X2_Y13_N26
\reg1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg1[0]~0_combout\ = (!\reset2~input_o\ & (!\primero~q\ & ((\Equal0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset2~input_o\,
	datab => \Equal0~0_combout\,
	datac => \primero~q\,
	datad => \Equal0~1_combout\,
	combout => \reg1[0]~0_combout\);

-- Location: FF_X2_Y13_N25
\reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos[0]~input_o\,
	clrn => \ALT_INV_reset1~inputclkctrl_outclk\,
	sload => VCC,
	ena => \reg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(0));

-- Location: LCCOMB_X2_Y13_N30
\reg1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg1[1]~feeder_combout\ = \datos[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos[1]~input_o\,
	combout => \reg1[1]~feeder_combout\);

-- Location: FF_X2_Y13_N31
\reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[1]~feeder_combout\,
	clrn => \ALT_INV_reset1~inputclkctrl_outclk\,
	ena => \reg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(1));

-- Location: LCCOMB_X2_Y13_N8
\reg1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg1[2]~feeder_combout\ = \datos[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos[2]~input_o\,
	combout => \reg1[2]~feeder_combout\);

-- Location: FF_X2_Y13_N9
\reg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[2]~feeder_combout\,
	clrn => \ALT_INV_reset1~inputclkctrl_outclk\,
	ena => \reg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(2));

-- Location: LCCOMB_X1_Y13_N0
\reg2[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg2[2]~0_combout\ = (\reset2~input_o\ & !\reset1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset2~input_o\,
	datad => \reset1~input_o\,
	combout => \reg2[2]~0_combout\);

-- Location: CLKCTRL_G1
\reg2[2]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reg2[2]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reg2[2]~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y13_N2
\reg2[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg2[0]~1_combout\ = (!\reset1~input_o\ & (\primero~q\ & ((\Equal0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset1~input_o\,
	datab => \Equal0~1_combout\,
	datac => \primero~q\,
	datad => \Equal0~0_combout\,
	combout => \reg2[0]~1_combout\);

-- Location: FF_X1_Y13_N9
\reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datos[0]~input_o\,
	clrn => \ALT_INV_reg2[2]~0clkctrl_outclk\,
	sload => VCC,
	ena => \reg2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(0));

-- Location: LCCOMB_X1_Y13_N30
\reg2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg2[1]~feeder_combout\ = \datos[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos[1]~input_o\,
	combout => \reg2[1]~feeder_combout\);

-- Location: FF_X1_Y13_N31
\reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[1]~feeder_combout\,
	clrn => \ALT_INV_reg2[2]~0clkctrl_outclk\,
	ena => \reg2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(1));

-- Location: LCCOMB_X1_Y13_N20
\reg2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg2[2]~feeder_combout\ = \datos[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos[2]~input_o\,
	combout => \reg2[2]~feeder_combout\);

-- Location: FF_X1_Y13_N21
\reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[2]~feeder_combout\,
	clrn => \ALT_INV_reg2[2]~0clkctrl_outclk\,
	ena => \reg2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(2));

ww_q1(0) <= \q1[0]~output_o\;

ww_q1(1) <= \q1[1]~output_o\;

ww_q1(2) <= \q1[2]~output_o\;

ww_q2(0) <= \q2[0]~output_o\;

ww_q2(1) <= \q2[1]~output_o\;

ww_q2(2) <= \q2[2]~output_o\;
END structure;


