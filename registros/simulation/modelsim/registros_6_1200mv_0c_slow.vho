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

-- DATE "03/27/2025 11:03:59"

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

ENTITY 	registros IS
    PORT (
	clk : IN std_logic;
	PS : IN std_logic_vector(4 DOWNTO 0);
	PB : IN std_logic_vector(4 DOWNTO 0);
	PD : IN std_logic_vector(4 DOWNTO 0);
	reset1 : IN std_logic;
	reset2 : IN std_logic;
	pet1 : OUT std_logic_vector(2 DOWNTO 0);
	pet2 : OUT std_logic_vector(2 DOWNTO 0)
	);
END registros;

-- Design Ports Information
-- pet1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PD[4]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registros IS
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
SIGNAL ww_PS : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PB : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset2 : std_logic;
SIGNAL ww_pet1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pet2 : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|reg2[2]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pet1[0]~output_o\ : std_logic;
SIGNAL \pet1[1]~output_o\ : std_logic;
SIGNAL \pet1[2]~output_o\ : std_logic;
SIGNAL \pet2[0]~output_o\ : std_logic;
SIGNAL \pet2[1]~output_o\ : std_logic;
SIGNAL \pet2[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \PS[3]~input_o\ : std_logic;
SIGNAL \PD[3]~input_o\ : std_logic;
SIGNAL \PB[3]~input_o\ : std_logic;
SIGNAL \U1|code~0_combout\ : std_logic;
SIGNAL \PB[4]~input_o\ : std_logic;
SIGNAL \PS[4]~input_o\ : std_logic;
SIGNAL \PD[4]~input_o\ : std_logic;
SIGNAL \U1|code~4_combout\ : std_logic;
SIGNAL \PB[1]~input_o\ : std_logic;
SIGNAL \PD[1]~input_o\ : std_logic;
SIGNAL \PS[1]~input_o\ : std_logic;
SIGNAL \U1|code~1_combout\ : std_logic;
SIGNAL \PD[0]~input_o\ : std_logic;
SIGNAL \PS[0]~input_o\ : std_logic;
SIGNAL \PB[0]~input_o\ : std_logic;
SIGNAL \U1|code~2_combout\ : std_logic;
SIGNAL \PD[2]~input_o\ : std_logic;
SIGNAL \PB[2]~input_o\ : std_logic;
SIGNAL \PS[2]~input_o\ : std_logic;
SIGNAL \U1|code~3_combout\ : std_logic;
SIGNAL \U1|code~5_combout\ : std_logic;
SIGNAL \reset1~input_o\ : std_logic;
SIGNAL \reset1~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset2~input_o\ : std_logic;
SIGNAL \U1|code~6_combout\ : std_logic;
SIGNAL \U2|datosPrev[0]~0_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U1|code~7_combout\ : std_logic;
SIGNAL \U2|Equal0~1_combout\ : std_logic;
SIGNAL \U2|primero~0_combout\ : std_logic;
SIGNAL \U2|primero~q\ : std_logic;
SIGNAL \U2|reg1[0]~0_combout\ : std_logic;
SIGNAL \U2|reg1[1]~feeder_combout\ : std_logic;
SIGNAL \U2|reg2[2]~0_combout\ : std_logic;
SIGNAL \U2|reg2[2]~0clkctrl_outclk\ : std_logic;
SIGNAL \U2|reg2[0]~1_combout\ : std_logic;
SIGNAL \U2|reg2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U2|reg1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U2|datosPrev\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset1~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|ALT_INV_reg2[2]~0clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_PS <= PS;
ww_PB <= PB;
ww_PD <= PD;
ww_reset1 <= reset1;
ww_reset2 <= reset2;
pet1 <= ww_pet1;
pet2 <= ww_pet2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\U2|reg2[2]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|reg2[2]~0_combout\);

\reset1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset1~input_o\);
\ALT_INV_reset1~inputclkctrl_outclk\ <= NOT \reset1~inputclkctrl_outclk\;
\U2|ALT_INV_reg2[2]~0clkctrl_outclk\ <= NOT \U2|reg2[2]~0clkctrl_outclk\;

-- Location: IOOBUF_X26_Y29_N23
\pet1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|reg1\(0),
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
	i => \U2|reg1\(1),
	devoe => ww_devoe,
	o => \pet1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\pet1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|reg1\(2),
	devoe => ww_devoe,
	o => \pet1[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\pet2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|reg2\(0),
	devoe => ww_devoe,
	o => \pet2[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\pet2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|reg2\(1),
	devoe => ww_devoe,
	o => \pet2[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\pet2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|reg2\(2),
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

-- Location: IOIBUF_X28_Y29_N15
\PS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(3),
	o => \PS[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\PD[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(3),
	o => \PD[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\PB[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(3),
	o => \PB[3]~input_o\);

-- Location: LCCOMB_X28_Y28_N4
\U1|code~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|code~0_combout\ = (!\PS[3]~input_o\ & (!\PD[3]~input_o\ & !\PB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS[3]~input_o\,
	datac => \PD[3]~input_o\,
	datad => \PB[3]~input_o\,
	combout => \U1|code~0_combout\);

-- Location: IOIBUF_X28_Y29_N22
\PB[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(4),
	o => \PB[4]~input_o\);

-- Location: IOIBUF_X30_Y29_N15
\PS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(4),
	o => \PS[4]~input_o\);

-- Location: IOIBUF_X30_Y29_N29
\PD[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(4),
	o => \PD[4]~input_o\);

-- Location: LCCOMB_X27_Y28_N16
\U1|code~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|code~4_combout\ = (!\PB[4]~input_o\ & (!\PS[4]~input_o\ & !\PD[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB[4]~input_o\,
	datac => \PS[4]~input_o\,
	datad => \PD[4]~input_o\,
	combout => \U1|code~4_combout\);

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

-- Location: IOIBUF_X23_Y29_N15
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
\PS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(1),
	o => \PS[1]~input_o\);

-- Location: LCCOMB_X23_Y28_N24
\U1|code~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|code~1_combout\ = (!\PB[1]~input_o\ & (!\PD[1]~input_o\ & !\PS[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[1]~input_o\,
	datac => \PD[1]~input_o\,
	datad => \PS[1]~input_o\,
	combout => \U1|code~1_combout\);

-- Location: IOIBUF_X26_Y29_N29
\PD[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(0),
	o => \PD[0]~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\PS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(0),
	o => \PS[0]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\PB[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(0),
	o => \PB[0]~input_o\);

-- Location: LCCOMB_X27_Y28_N22
\U1|code~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|code~2_combout\ = (\U1|code~1_combout\ & ((\PD[0]~input_o\) # ((\PS[0]~input_o\) # (\PB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|code~1_combout\,
	datab => \PD[0]~input_o\,
	datac => \PS[0]~input_o\,
	datad => \PB[0]~input_o\,
	combout => \U1|code~2_combout\);

-- Location: IOIBUF_X30_Y29_N8
\PD[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PD(2),
	o => \PD[2]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\PB[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(2),
	o => \PB[2]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\PS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS(2),
	o => \PS[2]~input_o\);

-- Location: LCCOMB_X31_Y28_N16
\U1|code~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|code~3_combout\ = (!\PD[2]~input_o\ & (!\PB[2]~input_o\ & !\PS[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PD[2]~input_o\,
	datac => \PB[2]~input_o\,
	datad => \PS[2]~input_o\,
	combout => \U1|code~3_combout\);

-- Location: LCCOMB_X27_Y28_N14
\U1|code~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|code~5_combout\ = ((\U1|code~0_combout\ & ((\U1|code~2_combout\) # (!\U1|code~3_combout\)))) # (!\U1|code~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|code~0_combout\,
	datab => \U1|code~4_combout\,
	datac => \U1|code~2_combout\,
	datad => \U1|code~3_combout\,
	combout => \U1|code~5_combout\);

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

-- Location: IOIBUF_X26_Y29_N15
\reset2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset2,
	o => \reset2~input_o\);

-- Location: LCCOMB_X27_Y28_N20
\U1|code~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|code~6_combout\ = ((\PB[4]~input_o\) # ((\PS[4]~input_o\) # (\PD[4]~input_o\))) # (!\U1|code~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|code~0_combout\,
	datab => \PB[4]~input_o\,
	datac => \PS[4]~input_o\,
	datad => \PD[4]~input_o\,
	combout => \U1|code~6_combout\);

-- Location: LCCOMB_X27_Y28_N30
\U2|datosPrev[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|datosPrev[0]~0_combout\ = (!\reset1~input_o\ & !\reset2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset1~input_o\,
	datad => \reset2~input_o\,
	combout => \U2|datosPrev[0]~0_combout\);

-- Location: FF_X27_Y28_N19
\U2|datosPrev[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|code~6_combout\,
	sload => VCC,
	ena => \U2|datosPrev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|datosPrev\(2));

-- Location: FF_X27_Y28_N1
\U2|datosPrev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|code~5_combout\,
	sload => VCC,
	ena => \U2|datosPrev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|datosPrev\(0));

-- Location: LCCOMB_X27_Y28_N18
\U2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = (\U1|code~5_combout\ & (\U2|datosPrev\(0) & (\U1|code~6_combout\ $ (!\U2|datosPrev\(2))))) # (!\U1|code~5_combout\ & (!\U2|datosPrev\(0) & (\U1|code~6_combout\ $ (!\U2|datosPrev\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|code~5_combout\,
	datab => \U1|code~6_combout\,
	datac => \U2|datosPrev\(2),
	datad => \U2|datosPrev\(0),
	combout => \U2|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y28_N28
\U1|code~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|code~7_combout\ = (\U1|code~0_combout\ & (\U1|code~4_combout\ & ((!\U1|code~3_combout\) # (!\U1|code~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|code~0_combout\,
	datab => \U1|code~4_combout\,
	datac => \U1|code~1_combout\,
	datad => \U1|code~3_combout\,
	combout => \U1|code~7_combout\);

-- Location: FF_X27_Y28_N11
\U2|datosPrev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|code~7_combout\,
	sload => VCC,
	ena => \U2|datosPrev[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|datosPrev\(1));

-- Location: LCCOMB_X27_Y28_N10
\U2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~1_combout\ = \U2|datosPrev\(1) $ (((!\U1|code~6_combout\ & ((!\U1|code~3_combout\) # (!\U1|code~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|code~1_combout\,
	datab => \U1|code~6_combout\,
	datac => \U2|datosPrev\(1),
	datad => \U1|code~3_combout\,
	combout => \U2|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y28_N14
\U2|primero~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|primero~0_combout\ = (\U2|primero~q\) # ((!\reset2~input_o\ & ((\U2|Equal0~1_combout\) # (!\U2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset2~input_o\,
	datab => \U2|Equal0~0_combout\,
	datac => \U2|primero~q\,
	datad => \U2|Equal0~1_combout\,
	combout => \U2|primero~0_combout\);

-- Location: FF_X26_Y28_N15
\U2|primero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|primero~0_combout\,
	clrn => \ALT_INV_reset1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|primero~q\);

-- Location: LCCOMB_X26_Y28_N12
\U2|reg1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|reg1[0]~0_combout\ = (!\reset2~input_o\ & (!\U2|primero~q\ & ((\U2|Equal0~1_combout\) # (!\U2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset2~input_o\,
	datab => \U2|primero~q\,
	datac => \U2|Equal0~1_combout\,
	datad => \U2|Equal0~0_combout\,
	combout => \U2|reg1[0]~0_combout\);

-- Location: FF_X26_Y28_N1
\U2|reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|code~5_combout\,
	clrn => \ALT_INV_reset1~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U2|reg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|reg1\(0));

-- Location: LCCOMB_X26_Y28_N22
\U2|reg1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|reg1[1]~feeder_combout\ = \U1|code~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|code~7_combout\,
	combout => \U2|reg1[1]~feeder_combout\);

-- Location: FF_X26_Y28_N23
\U2|reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|reg1[1]~feeder_combout\,
	clrn => \ALT_INV_reset1~inputclkctrl_outclk\,
	ena => \U2|reg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|reg1\(1));

-- Location: FF_X26_Y28_N21
\U2|reg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|code~6_combout\,
	clrn => \ALT_INV_reset1~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U2|reg1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|reg1\(2));

-- Location: LCCOMB_X27_Y28_N2
\U2|reg2[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|reg2[2]~0_combout\ = (!\reset1~input_o\ & \reset2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset1~input_o\,
	datad => \reset2~input_o\,
	combout => \U2|reg2[2]~0_combout\);

-- Location: CLKCTRL_G11
\U2|reg2[2]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|reg2[2]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|reg2[2]~0clkctrl_outclk\);

-- Location: LCCOMB_X27_Y28_N24
\U2|reg2[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|reg2[0]~1_combout\ = (\U2|primero~q\ & (!\reset1~input_o\ & ((\U2|Equal0~1_combout\) # (!\U2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|primero~q\,
	datab => \reset1~input_o\,
	datac => \U2|Equal0~1_combout\,
	datad => \U2|Equal0~0_combout\,
	combout => \U2|reg2[0]~1_combout\);

-- Location: FF_X27_Y28_N9
\U2|reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|code~5_combout\,
	clrn => \U2|ALT_INV_reg2[2]~0clkctrl_outclk\,
	sload => VCC,
	ena => \U2|reg2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|reg2\(0));

-- Location: FF_X27_Y28_N27
\U2|reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|code~7_combout\,
	clrn => \U2|ALT_INV_reg2[2]~0clkctrl_outclk\,
	sload => VCC,
	ena => \U2|reg2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|reg2\(1));

-- Location: FF_X27_Y28_N13
\U2|reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|code~6_combout\,
	clrn => \U2|ALT_INV_reg2[2]~0clkctrl_outclk\,
	sload => VCC,
	ena => \U2|reg2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|reg2\(2));

ww_pet1(0) <= \pet1[0]~output_o\;

ww_pet1(1) <= \pet1[1]~output_o\;

ww_pet1(2) <= \pet1[2]~output_o\;

ww_pet2(0) <= \pet2[0]~output_o\;

ww_pet2(1) <= \pet2[1]~output_o\;

ww_pet2(2) <= \pet2[2]~output_o\;
END structure;


