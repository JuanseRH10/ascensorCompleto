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

-- DATE "03/30/2025 19:51:22"

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

ENTITY 	detectorBoton IS
    PORT (
	clk : IN std_logic;
	reset1 : IN std_logic;
	reset2 : IN std_logic;
	PS : IN std_logic_vector(4 DOWNTO 0);
	PB : IN std_logic_vector(4 DOWNTO 0);
	PD : IN std_logic_vector(4 DOWNTO 0);
	pet1 : OUT std_logic_vector(4 DOWNTO 0);
	pet2 : OUT std_logic_vector(4 DOWNTO 0)
	);
END detectorBoton;

-- Design Ports Information
-- pet1[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF detectorBoton IS
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
SIGNAL ww_pet1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pet2 : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pet1[0]~output_o\ : std_logic;
SIGNAL \pet1[1]~output_o\ : std_logic;
SIGNAL \pet1[2]~output_o\ : std_logic;
SIGNAL \pet1[3]~output_o\ : std_logic;
SIGNAL \pet1[4]~output_o\ : std_logic;
SIGNAL \pet2[0]~output_o\ : std_logic;
SIGNAL \pet2[1]~output_o\ : std_logic;
SIGNAL \pet2[2]~output_o\ : std_logic;
SIGNAL \pet2[3]~output_o\ : std_logic;
SIGNAL \pet2[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \PD[2]~input_o\ : std_logic;
SIGNAL \PD[3]~input_o\ : std_logic;
SIGNAL \PD[1]~input_o\ : std_logic;
SIGNAL \PD[0]~input_o\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \PD[4]~input_o\ : std_logic;
SIGNAL \prev_PD[0]~feeder_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \PS[0]~input_o\ : std_logic;
SIGNAL \PB[0]~input_o\ : std_logic;
SIGNAL \PB[4]~input_o\ : std_logic;
SIGNAL \PB[2]~input_o\ : std_logic;
SIGNAL \PB[3]~input_o\ : std_logic;
SIGNAL \PB[1]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \prev_PB[2]~feeder_combout\ : std_logic;
SIGNAL \prev_PB[0]~feeder_combout\ : std_logic;
SIGNAL \prev_PB[1]~feeder_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \nueva_pet~0_combout\ : std_logic;
SIGNAL \PS[3]~input_o\ : std_logic;
SIGNAL \PS[1]~input_o\ : std_logic;
SIGNAL \PS[2]~input_o\ : std_logic;
SIGNAL \nueva_pet~2_combout\ : std_logic;
SIGNAL \PS[4]~input_o\ : std_logic;
SIGNAL \prev_PS[2]~feeder_combout\ : std_logic;
SIGNAL \nueva_pet~1_combout\ : std_logic;
SIGNAL \nueva_pet~3_combout\ : std_logic;
SIGNAL \nueva_pet~4_combout\ : std_logic;
SIGNAL \nueva_pet~5_combout\ : std_logic;
SIGNAL \reset1~input_o\ : std_logic;
SIGNAL \nueva_pet~12_combout\ : std_logic;
SIGNAL \nueva_pet~13_combout\ : std_logic;
SIGNAL \pet1_reg[4]~5_combout\ : std_logic;
SIGNAL \nueva_pet~8_combout\ : std_logic;
SIGNAL \nueva_pet~9_combout\ : std_logic;
SIGNAL \pet1_reg[2]~3_combout\ : std_logic;
SIGNAL \nueva_pet~6_combout\ : std_logic;
SIGNAL \nueva_pet~7_combout\ : std_logic;
SIGNAL \pet1_reg[1]~2_combout\ : std_logic;
SIGNAL \nueva_pet~10_combout\ : std_logic;
SIGNAL \nueva_pet~11_combout\ : std_logic;
SIGNAL \pet1_reg[3]~4_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \pet1_reg[0]~0_combout\ : std_logic;
SIGNAL \pet1_reg[0]~1_combout\ : std_logic;
SIGNAL \reset2~input_o\ : std_logic;
SIGNAL \pet2_reg[4]~7_combout\ : std_logic;
SIGNAL \pet2_reg[2]~5_combout\ : std_logic;
SIGNAL \pet2_reg[1]~4_combout\ : std_logic;
SIGNAL \pet2_reg[3]~6_combout\ : std_logic;
SIGNAL \pet2_reg[0]~1_combout\ : std_logic;
SIGNAL \pet2_reg[0]~0_combout\ : std_logic;
SIGNAL \pet2_reg[0]~2_combout\ : std_logic;
SIGNAL \pet2_reg[0]~3_combout\ : std_logic;
SIGNAL prev_PS : std_logic_vector(4 DOWNTO 0);
SIGNAL prev_PD : std_logic_vector(4 DOWNTO 0);
SIGNAL prev_PB : std_logic_vector(4 DOWNTO 0);
SIGNAL pet2_reg : std_logic_vector(4 DOWNTO 0);
SIGNAL pet1_reg : std_logic_vector(4 DOWNTO 0);
SIGNAL nueva_pet : std_logic_vector(4 DOWNTO 0);

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

-- Location: IOOBUF_X16_Y29_N23
\pet1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pet1_reg(0),
	devoe => ww_devoe,
	o => \pet1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\pet1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pet1_reg(1),
	devoe => ww_devoe,
	o => \pet1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\pet1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pet1_reg(2),
	devoe => ww_devoe,
	o => \pet1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\pet1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pet1_reg(3),
	devoe => ww_devoe,
	o => \pet1[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\pet1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pet1_reg(4),
	devoe => ww_devoe,
	o => \pet1[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\pet2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pet2_reg(0),
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
	i => pet2_reg(1),
	devoe => ww_devoe,
	o => \pet2[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\pet2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pet2_reg(2),
	devoe => ww_devoe,
	o => \pet2[2]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\pet2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pet2_reg(3),
	devoe => ww_devoe,
	o => \pet2[3]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\pet2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pet2_reg(4),
	devoe => ww_devoe,
	o => \pet2[4]~output_o\);

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

-- Location: IOIBUF_X23_Y29_N1
\PD[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(2),
	o => \PD[2]~input_o\);

-- Location: IOIBUF_X26_Y29_N15
\PD[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(3),
	o => \PD[3]~input_o\);

-- Location: IOIBUF_X26_Y29_N8
\PD[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(1),
	o => \PD[1]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\PD[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(0),
	o => \PD[0]~input_o\);

-- Location: LCCOMB_X24_Y28_N30
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\PD[2]~input_o\ & (!\PD[3]~input_o\ & (!\PD[1]~input_o\ & !\PD[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PD[2]~input_o\,
	datab => \PD[3]~input_o\,
	datac => \PD[1]~input_o\,
	datad => \PD[0]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: IOIBUF_X28_Y29_N1
\PD[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(4),
	o => \PD[4]~input_o\);

-- Location: FF_X24_Y28_N9
\prev_PD[4]\ : dffeas
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
	q => prev_PD(4));

-- Location: FF_X24_Y28_N31
\prev_PD[1]\ : dffeas
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
	q => prev_PD(1));

-- Location: FF_X24_Y28_N1
\prev_PD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PD[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_PD(2));

-- Location: FF_X24_Y28_N3
\prev_PD[3]\ : dffeas
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
	q => prev_PD(3));

-- Location: LCCOMB_X24_Y28_N20
\prev_PD[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_PD[0]~feeder_combout\ = \PD[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PD[0]~input_o\,
	combout => \prev_PD[0]~feeder_combout\);

-- Location: FF_X24_Y28_N21
\prev_PD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_PD[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_PD(0));

-- Location: LCCOMB_X24_Y28_N2
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!prev_PD(1) & (!prev_PD(2) & (!prev_PD(3) & !prev_PD(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_PD(1),
	datab => prev_PD(2),
	datac => prev_PD(3),
	datad => prev_PD(0),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X24_Y28_N8
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!prev_PD(4) & (\process_0~0_combout\ & ((\PD[4]~input_o\) # (!\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \PD[4]~input_o\,
	datac => prev_PD(4),
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

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

-- Location: IOIBUF_X26_Y29_N1
\PB[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(4),
	o => \PB[4]~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\PB[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(2),
	o => \PB[2]~input_o\);

-- Location: IOIBUF_X16_Y29_N29
\PB[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(3),
	o => \PB[3]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\PB[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(1),
	o => \PB[1]~input_o\);

-- Location: LCCOMB_X23_Y28_N14
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\PB[2]~input_o\ & (!\PB[0]~input_o\ & (!\PB[3]~input_o\ & !\PB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[2]~input_o\,
	datab => \PB[0]~input_o\,
	datac => \PB[3]~input_o\,
	datad => \PB[1]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: FF_X23_Y28_N9
\prev_PB[4]\ : dffeas
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
	q => prev_PB(4));

-- Location: LCCOMB_X23_Y28_N10
\prev_PB[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_PB[2]~feeder_combout\ = \PB[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB[2]~input_o\,
	combout => \prev_PB[2]~feeder_combout\);

-- Location: FF_X23_Y28_N11
\prev_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_PB(2));

-- Location: LCCOMB_X23_Y28_N2
\prev_PB[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_PB[0]~feeder_combout\ = \PB[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB[0]~input_o\,
	combout => \prev_PB[0]~feeder_combout\);

-- Location: FF_X23_Y28_N3
\prev_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_PB(0));

-- Location: FF_X23_Y28_N29
\prev_PB[3]\ : dffeas
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
	q => prev_PB(3));

-- Location: LCCOMB_X23_Y28_N24
\prev_PB[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_PB[1]~feeder_combout\ = \PB[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB[1]~input_o\,
	combout => \prev_PB[1]~feeder_combout\);

-- Location: FF_X23_Y28_N25
\prev_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_PB(1));

-- Location: LCCOMB_X23_Y28_N28
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!prev_PB(2) & (!prev_PB(0) & (!prev_PB(3) & !prev_PB(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_PB(2),
	datab => prev_PB(0),
	datac => prev_PB(3),
	datad => prev_PB(1),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X23_Y28_N8
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!prev_PB(4) & (\process_0~2_combout\ & ((\PB[4]~input_o\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[4]~input_o\,
	datab => \Equal3~0_combout\,
	datac => prev_PB(4),
	datad => \process_0~2_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X24_Y28_N14
\nueva_pet~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~0_combout\ = (\process_0~3_combout\ & ((\PB[0]~input_o\))) # (!\process_0~3_combout\ & (\PS[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[0]~input_o\,
	datab => \PB[0]~input_o\,
	datad => \process_0~3_combout\,
	combout => \nueva_pet~0_combout\);

-- Location: IOIBUF_X23_Y29_N29
\PS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(3),
	o => \PS[3]~input_o\);

-- Location: IOIBUF_X26_Y29_N29
\PS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(1),
	o => \PS[1]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\PS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(2),
	o => \PS[2]~input_o\);

-- Location: LCCOMB_X24_Y28_N28
\nueva_pet~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~2_combout\ = (!\PS[0]~input_o\ & (!\PS[3]~input_o\ & (!\PS[1]~input_o\ & !\PS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[0]~input_o\,
	datab => \PS[3]~input_o\,
	datac => \PS[1]~input_o\,
	datad => \PS[2]~input_o\,
	combout => \nueva_pet~2_combout\);

-- Location: IOIBUF_X28_Y29_N8
\PS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(4),
	o => \PS[4]~input_o\);

-- Location: FF_X24_Y28_N25
\prev_PS[4]\ : dffeas
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
	q => prev_PS(4));

-- Location: FF_X24_Y28_N13
\prev_PS[3]\ : dffeas
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
	q => prev_PS(3));

-- Location: FF_X24_Y28_N29
\prev_PS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PS[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_PS(1));

-- Location: FF_X24_Y28_N7
\prev_PS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PS[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_PS(0));

-- Location: LCCOMB_X24_Y28_N10
\prev_PS[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_PS[2]~feeder_combout\ = \PS[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS[2]~input_o\,
	combout => \prev_PS[2]~feeder_combout\);

-- Location: FF_X24_Y28_N11
\prev_PS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_PS[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_PS(2));

-- Location: LCCOMB_X24_Y28_N6
\nueva_pet~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~1_combout\ = (prev_PS(3)) # ((prev_PS(1)) # ((prev_PS(0)) # (prev_PS(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_PS(3),
	datab => prev_PS(1),
	datac => prev_PS(0),
	datad => prev_PS(2),
	combout => \nueva_pet~1_combout\);

-- Location: LCCOMB_X24_Y28_N24
\nueva_pet~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~3_combout\ = (prev_PS(4)) # ((\nueva_pet~1_combout\) # ((\nueva_pet~2_combout\ & !\PS[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nueva_pet~2_combout\,
	datab => \PS[4]~input_o\,
	datac => prev_PS(4),
	datad => \nueva_pet~1_combout\,
	combout => \nueva_pet~3_combout\);

-- Location: LCCOMB_X24_Y28_N18
\nueva_pet~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~4_combout\ = (\process_0~1_combout\) # ((\nueva_pet~3_combout\ & !\process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nueva_pet~3_combout\,
	datac => \process_0~1_combout\,
	datad => \process_0~3_combout\,
	combout => \nueva_pet~4_combout\);

-- Location: LCCOMB_X24_Y28_N16
\nueva_pet~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~5_combout\ = (\process_0~1_combout\ & ((\PD[0]~input_o\) # ((\nueva_pet~0_combout\ & !\nueva_pet~4_combout\)))) # (!\process_0~1_combout\ & (((\nueva_pet~0_combout\ & !\nueva_pet~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \PD[0]~input_o\,
	datac => \nueva_pet~0_combout\,
	datad => \nueva_pet~4_combout\,
	combout => \nueva_pet~5_combout\);

-- Location: FF_X24_Y28_N17
\nueva_pet[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nueva_pet~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nueva_pet(0));

-- Location: IOIBUF_X30_Y29_N22
\reset1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset1,
	o => \reset1~input_o\);

-- Location: LCCOMB_X24_Y28_N4
\nueva_pet~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~12_combout\ = (\process_0~3_combout\ & ((\PB[4]~input_o\))) # (!\process_0~3_combout\ & (\PS[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS[4]~input_o\,
	datac => \PB[4]~input_o\,
	datad => \process_0~3_combout\,
	combout => \nueva_pet~12_combout\);

-- Location: LCCOMB_X24_Y28_N22
\nueva_pet~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~13_combout\ = (\PD[4]~input_o\ & ((\process_0~1_combout\) # ((\nueva_pet~12_combout\ & !\nueva_pet~4_combout\)))) # (!\PD[4]~input_o\ & (((\nueva_pet~12_combout\ & !\nueva_pet~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PD[4]~input_o\,
	datab => \process_0~1_combout\,
	datac => \nueva_pet~12_combout\,
	datad => \nueva_pet~4_combout\,
	combout => \nueva_pet~13_combout\);

-- Location: FF_X24_Y28_N23
\nueva_pet[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nueva_pet~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nueva_pet(4));

-- Location: LCCOMB_X22_Y28_N0
\pet1_reg[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet1_reg[4]~5_combout\ = (nueva_pet(4) & (((!\reset1~input_o\ & pet1_reg(4))) # (!\pet1_reg[0]~0_combout\))) # (!nueva_pet(4) & (!\reset1~input_o\ & (pet1_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(4),
	datab => \reset1~input_o\,
	datac => pet1_reg(4),
	datad => \pet1_reg[0]~0_combout\,
	combout => \pet1_reg[4]~5_combout\);

-- Location: FF_X22_Y28_N1
\pet1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet1_reg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet1_reg(4));

-- Location: LCCOMB_X23_Y28_N4
\nueva_pet~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~8_combout\ = (\process_0~3_combout\ & (\PB[2]~input_o\)) # (!\process_0~3_combout\ & ((\PS[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB[2]~input_o\,
	datac => \PS[2]~input_o\,
	datad => \process_0~3_combout\,
	combout => \nueva_pet~8_combout\);

-- Location: LCCOMB_X23_Y28_N6
\nueva_pet~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~9_combout\ = (\PD[2]~input_o\ & ((\process_0~1_combout\) # ((\nueva_pet~8_combout\ & !\nueva_pet~4_combout\)))) # (!\PD[2]~input_o\ & (((\nueva_pet~8_combout\ & !\nueva_pet~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PD[2]~input_o\,
	datab => \process_0~1_combout\,
	datac => \nueva_pet~8_combout\,
	datad => \nueva_pet~4_combout\,
	combout => \nueva_pet~9_combout\);

-- Location: FF_X23_Y28_N7
\nueva_pet[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nueva_pet~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nueva_pet(2));

-- Location: LCCOMB_X22_Y28_N12
\pet1_reg[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet1_reg[2]~3_combout\ = (nueva_pet(2) & (((!\reset1~input_o\ & pet1_reg(2))) # (!\pet1_reg[0]~0_combout\))) # (!nueva_pet(2) & (!\reset1~input_o\ & (pet1_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(2),
	datab => \reset1~input_o\,
	datac => pet1_reg(2),
	datad => \pet1_reg[0]~0_combout\,
	combout => \pet1_reg[2]~3_combout\);

-- Location: FF_X22_Y28_N13
\pet1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet1_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet1_reg(2));

-- Location: LCCOMB_X23_Y28_N22
\nueva_pet~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~6_combout\ = (\process_0~3_combout\ & ((\PB[1]~input_o\))) # (!\process_0~3_combout\ & (\PS[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[1]~input_o\,
	datab => \PB[1]~input_o\,
	datac => \process_0~3_combout\,
	combout => \nueva_pet~6_combout\);

-- Location: LCCOMB_X23_Y28_N16
\nueva_pet~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~7_combout\ = (\PD[1]~input_o\ & ((\process_0~1_combout\) # ((\nueva_pet~6_combout\ & !\nueva_pet~4_combout\)))) # (!\PD[1]~input_o\ & (((\nueva_pet~6_combout\ & !\nueva_pet~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PD[1]~input_o\,
	datab => \process_0~1_combout\,
	datac => \nueva_pet~6_combout\,
	datad => \nueva_pet~4_combout\,
	combout => \nueva_pet~7_combout\);

-- Location: FF_X23_Y28_N17
\nueva_pet[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nueva_pet~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nueva_pet(1));

-- Location: LCCOMB_X22_Y28_N14
\pet1_reg[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet1_reg[1]~2_combout\ = (nueva_pet(1) & (((!\reset1~input_o\ & pet1_reg(1))) # (!\pet1_reg[0]~0_combout\))) # (!nueva_pet(1) & (!\reset1~input_o\ & (pet1_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(1),
	datab => \reset1~input_o\,
	datac => pet1_reg(1),
	datad => \pet1_reg[0]~0_combout\,
	combout => \pet1_reg[1]~2_combout\);

-- Location: FF_X22_Y28_N15
\pet1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet1_reg[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet1_reg(1));

-- Location: LCCOMB_X23_Y28_N30
\nueva_pet~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~10_combout\ = (\process_0~3_combout\ & ((\PB[3]~input_o\))) # (!\process_0~3_combout\ & (\PS[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS[3]~input_o\,
	datac => \PB[3]~input_o\,
	datad => \process_0~3_combout\,
	combout => \nueva_pet~10_combout\);

-- Location: LCCOMB_X23_Y28_N20
\nueva_pet~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nueva_pet~11_combout\ = (\PD[3]~input_o\ & ((\process_0~1_combout\) # ((\nueva_pet~10_combout\ & !\nueva_pet~4_combout\)))) # (!\PD[3]~input_o\ & (((\nueva_pet~10_combout\ & !\nueva_pet~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PD[3]~input_o\,
	datab => \process_0~1_combout\,
	datac => \nueva_pet~10_combout\,
	datad => \nueva_pet~4_combout\,
	combout => \nueva_pet~11_combout\);

-- Location: FF_X23_Y28_N21
\nueva_pet[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nueva_pet~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nueva_pet(3));

-- Location: LCCOMB_X22_Y28_N26
\pet1_reg[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet1_reg[3]~4_combout\ = (nueva_pet(3) & (((!\reset1~input_o\ & pet1_reg(3))) # (!\pet1_reg[0]~0_combout\))) # (!nueva_pet(3) & (!\reset1~input_o\ & (pet1_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(3),
	datab => \reset1~input_o\,
	datac => pet1_reg(3),
	datad => \pet1_reg[0]~0_combout\,
	combout => \pet1_reg[3]~4_combout\);

-- Location: FF_X22_Y28_N27
\pet1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet1_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet1_reg(3));

-- Location: LCCOMB_X22_Y28_N22
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!pet1_reg(2) & (!pet1_reg(1) & (!pet1_reg(3) & !pet1_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pet1_reg(2),
	datab => pet1_reg(1),
	datac => pet1_reg(3),
	datad => pet1_reg(0),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X22_Y28_N28
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!nueva_pet(2) & (!nueva_pet(1) & (!nueva_pet(3) & !nueva_pet(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(2),
	datab => nueva_pet(1),
	datac => nueva_pet(3),
	datad => nueva_pet(0),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X22_Y28_N20
\pet1_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet1_reg[0]~0_combout\ = (pet1_reg(4)) # (((!nueva_pet(4) & \Equal6~0_combout\)) # (!\Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(4),
	datab => pet1_reg(4),
	datac => \Equal7~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \pet1_reg[0]~0_combout\);

-- Location: LCCOMB_X22_Y28_N24
\pet1_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet1_reg[0]~1_combout\ = (nueva_pet(0) & (((!\reset1~input_o\ & pet1_reg(0))) # (!\pet1_reg[0]~0_combout\))) # (!nueva_pet(0) & (!\reset1~input_o\ & (pet1_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(0),
	datab => \reset1~input_o\,
	datac => pet1_reg(0),
	datad => \pet1_reg[0]~0_combout\,
	combout => \pet1_reg[0]~1_combout\);

-- Location: FF_X22_Y28_N25
\pet1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet1_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet1_reg(0));

-- Location: IOIBUF_X26_Y29_N22
\reset2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset2,
	o => \reset2~input_o\);

-- Location: LCCOMB_X22_Y28_N10
\pet2_reg[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet2_reg[4]~7_combout\ = (nueva_pet(4) & (((!\reset2~input_o\ & pet2_reg(4))) # (!\pet2_reg[0]~2_combout\))) # (!nueva_pet(4) & (!\reset2~input_o\ & (pet2_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(4),
	datab => \reset2~input_o\,
	datac => pet2_reg(4),
	datad => \pet2_reg[0]~2_combout\,
	combout => \pet2_reg[4]~7_combout\);

-- Location: FF_X22_Y28_N11
\pet2_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet2_reg[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet2_reg(4));

-- Location: LCCOMB_X22_Y28_N30
\pet2_reg[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet2_reg[2]~5_combout\ = (nueva_pet(2) & (((!\reset2~input_o\ & pet2_reg(2))) # (!\pet2_reg[0]~2_combout\))) # (!nueva_pet(2) & (!\reset2~input_o\ & (pet2_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(2),
	datab => \reset2~input_o\,
	datac => pet2_reg(2),
	datad => \pet2_reg[0]~2_combout\,
	combout => \pet2_reg[2]~5_combout\);

-- Location: FF_X22_Y28_N31
\pet2_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet2_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet2_reg(2));

-- Location: LCCOMB_X22_Y28_N4
\pet2_reg[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet2_reg[1]~4_combout\ = (\reset2~input_o\ & (nueva_pet(1) & ((!\pet2_reg[0]~2_combout\)))) # (!\reset2~input_o\ & ((pet2_reg(1)) # ((nueva_pet(1) & !\pet2_reg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset2~input_o\,
	datab => nueva_pet(1),
	datac => pet2_reg(1),
	datad => \pet2_reg[0]~2_combout\,
	combout => \pet2_reg[1]~4_combout\);

-- Location: FF_X22_Y28_N5
\pet2_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet2_reg[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet2_reg(1));

-- Location: LCCOMB_X22_Y28_N16
\pet2_reg[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet2_reg[3]~6_combout\ = (nueva_pet(3) & (((!\reset2~input_o\ & pet2_reg(3))) # (!\pet2_reg[0]~2_combout\))) # (!nueva_pet(3) & (!\reset2~input_o\ & (pet2_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(3),
	datab => \reset2~input_o\,
	datac => pet2_reg(3),
	datad => \pet2_reg[0]~2_combout\,
	combout => \pet2_reg[3]~6_combout\);

-- Location: FF_X22_Y28_N17
\pet2_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet2_reg[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet2_reg(3));

-- Location: LCCOMB_X22_Y28_N8
\pet2_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet2_reg[0]~1_combout\ = (pet2_reg(2)) # ((pet2_reg(0)) # ((pet2_reg(1)) # (pet2_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pet2_reg(2),
	datab => pet2_reg(0),
	datac => pet2_reg(1),
	datad => pet2_reg(3),
	combout => \pet2_reg[0]~1_combout\);

-- Location: LCCOMB_X22_Y28_N6
\pet2_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet2_reg[0]~0_combout\ = (nueva_pet(4) & (!pet1_reg(4) & (\Equal7~0_combout\))) # (!nueva_pet(4) & ((\Equal6~0_combout\) # ((!pet1_reg(4) & \Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(4),
	datab => pet1_reg(4),
	datac => \Equal7~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \pet2_reg[0]~0_combout\);

-- Location: LCCOMB_X22_Y28_N18
\pet2_reg[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet2_reg[0]~2_combout\ = (pet2_reg(4)) # ((\pet2_reg[0]~1_combout\) # (\pet2_reg[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pet2_reg(4),
	datac => \pet2_reg[0]~1_combout\,
	datad => \pet2_reg[0]~0_combout\,
	combout => \pet2_reg[0]~2_combout\);

-- Location: LCCOMB_X22_Y28_N2
\pet2_reg[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pet2_reg[0]~3_combout\ = (nueva_pet(0) & (((!\reset2~input_o\ & pet2_reg(0))) # (!\pet2_reg[0]~2_combout\))) # (!nueva_pet(0) & (!\reset2~input_o\ & (pet2_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nueva_pet(0),
	datab => \reset2~input_o\,
	datac => pet2_reg(0),
	datad => \pet2_reg[0]~2_combout\,
	combout => \pet2_reg[0]~3_combout\);

-- Location: FF_X22_Y28_N3
\pet2_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pet2_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pet2_reg(0));

ww_pet1(0) <= \pet1[0]~output_o\;

ww_pet1(1) <= \pet1[1]~output_o\;

ww_pet1(2) <= \pet1[2]~output_o\;

ww_pet1(3) <= \pet1[3]~output_o\;

ww_pet1(4) <= \pet1[4]~output_o\;

ww_pet2(0) <= \pet2[0]~output_o\;

ww_pet2(1) <= \pet2[1]~output_o\;

ww_pet2(2) <= \pet2[2]~output_o\;

ww_pet2(3) <= \pet2[3]~output_o\;

ww_pet2(4) <= \pet2[4]~output_o\;
END structure;


