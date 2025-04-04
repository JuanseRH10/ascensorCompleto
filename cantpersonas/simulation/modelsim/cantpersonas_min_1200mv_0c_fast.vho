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

-- DATE "03/31/2025 12:43:58"

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

ENTITY 	cantpersonas IS
    PORT (
	clk : IN std_logic;
	perEn : IN std_logic;
	perSal : IN std_logic;
	estadoPuerta : IN std_logic;
	sobreCarga : OUT std_logic;
	cantPer : OUT std_logic_vector(3 DOWNTO 0)
	);
END cantpersonas;

-- Design Ports Information
-- sobreCarga	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cantPer[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cantPer[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cantPer[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cantPer[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- perEn	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- perSal	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoPuerta	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cantpersonas IS
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
SIGNAL ww_perEn : std_logic;
SIGNAL ww_perSal : std_logic;
SIGNAL ww_estadoPuerta : std_logic;
SIGNAL ww_sobreCarga : std_logic;
SIGNAL ww_cantPer : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sobreCarga~output_o\ : std_logic;
SIGNAL \cantPer[0]~output_o\ : std_logic;
SIGNAL \cantPer[1]~output_o\ : std_logic;
SIGNAL \cantPer[2]~output_o\ : std_logic;
SIGNAL \cantPer[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \perSal~input_o\ : std_logic;
SIGNAL \perEn~input_o\ : std_logic;
SIGNAL \estadoPuerta~input_o\ : std_logic;
SIGNAL \U1|cnt[0]~7_combout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|cnt[3]~0_combout\ : std_logic;
SIGNAL \U1|cnt[3]~1_combout\ : std_logic;
SIGNAL \U1|cnt[3]~2_combout\ : std_logic;
SIGNAL \U1|cnt[3]~3_combout\ : std_logic;
SIGNAL \U1|cnt[0]~6_combout\ : std_logic;
SIGNAL \U1|cnt[0]~8_combout\ : std_logic;
SIGNAL \U1|cnt[1]~9_combout\ : std_logic;
SIGNAL \U1|cnt[2]~4_combout\ : std_logic;
SIGNAL \U1|cnt[2]~5_combout\ : std_logic;
SIGNAL \U2|AmayB~0_combout\ : std_logic;
SIGNAL \U1|cnt\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_perEn <= perEn;
ww_perSal <= perSal;
ww_estadoPuerta <= estadoPuerta;
sobreCarga <= ww_sobreCarga;
cantPer <= ww_cantPer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y9_N9
\sobreCarga~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|AmayB~0_combout\,
	devoe => ww_devoe,
	o => \sobreCarga~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\cantPer[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cnt\(0),
	devoe => ww_devoe,
	o => \cantPer[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\cantPer[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cnt\(1),
	devoe => ww_devoe,
	o => \cantPer[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\cantPer[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cnt\(2),
	devoe => ww_devoe,
	o => \cantPer[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\cantPer[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|cnt\(3),
	devoe => ww_devoe,
	o => \cantPer[3]~output_o\);

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

-- Location: IOIBUF_X0_Y10_N15
\perSal~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_perSal,
	o => \perSal~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\perEn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_perEn,
	o => \perEn~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\estadoPuerta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estadoPuerta,
	o => \estadoPuerta~input_o\);

-- Location: LCCOMB_X1_Y9_N18
\U1|cnt[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[0]~7_combout\ = (\estadoPuerta~input_o\ & (\perEn~input_o\ $ (\perSal~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoPuerta~input_o\,
	datac => \perEn~input_o\,
	datad => \perSal~input_o\,
	combout => \U1|cnt[0]~7_combout\);

-- Location: LCCOMB_X1_Y9_N26
\U1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = (\perEn~input_o\ & !\perSal~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \perEn~input_o\,
	datad => \perSal~input_o\,
	combout => \U1|process_0~0_combout\);

-- Location: LCCOMB_X1_Y9_N8
\U1|cnt[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[3]~0_combout\ = (\U1|process_0~0_combout\ & (\U1|cnt\(2) & (\U1|cnt\(1) & \U1|cnt\(0)))) # (!\U1|process_0~0_combout\ & (!\U1|cnt\(2) & (!\U1|cnt\(1) & !\U1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~0_combout\,
	datab => \U1|cnt\(2),
	datac => \U1|cnt\(1),
	datad => \U1|cnt\(0),
	combout => \U1|cnt[3]~0_combout\);

-- Location: LCCOMB_X1_Y9_N10
\U1|cnt[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[3]~1_combout\ = (\U1|cnt\(1)) # ((\U1|cnt\(3)) # ((\U1|cnt\(2)) # (\U1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(1),
	datab => \U1|cnt\(3),
	datac => \U1|cnt\(2),
	datad => \U1|cnt\(0),
	combout => \U1|cnt[3]~1_combout\);

-- Location: LCCOMB_X1_Y9_N12
\U1|cnt[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[3]~2_combout\ = (\estadoPuerta~input_o\ & ((\perSal~input_o\ & (!\perEn~input_o\ & \U1|cnt[3]~1_combout\)) # (!\perSal~input_o\ & (\perEn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoPuerta~input_o\,
	datab => \perSal~input_o\,
	datac => \perEn~input_o\,
	datad => \U1|cnt[3]~1_combout\,
	combout => \U1|cnt[3]~2_combout\);

-- Location: LCCOMB_X1_Y9_N24
\U1|cnt[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[3]~3_combout\ = \U1|cnt\(3) $ (((\U1|cnt[3]~0_combout\ & \U1|cnt[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt[3]~0_combout\,
	datac => \U1|cnt\(3),
	datad => \U1|cnt[3]~2_combout\,
	combout => \U1|cnt[3]~3_combout\);

-- Location: FF_X1_Y9_N25
\U1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|cnt[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(3));

-- Location: LCCOMB_X1_Y9_N20
\U1|cnt[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[0]~6_combout\ = (\U1|cnt\(2)) # ((\U1|cnt\(1)) # (\U1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(2),
	datac => \U1|cnt\(1),
	datad => \U1|cnt\(3),
	combout => \U1|cnt[0]~6_combout\);

-- Location: LCCOMB_X1_Y9_N28
\U1|cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[0]~8_combout\ = (\U1|cnt[0]~7_combout\ & (!\U1|cnt\(0) & ((\perEn~input_o\) # (\U1|cnt[0]~6_combout\)))) # (!\U1|cnt[0]~7_combout\ & (((\U1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt[0]~7_combout\,
	datab => \perEn~input_o\,
	datac => \U1|cnt\(0),
	datad => \U1|cnt[0]~6_combout\,
	combout => \U1|cnt[0]~8_combout\);

-- Location: FF_X1_Y9_N29
\U1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|cnt[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(0));

-- Location: LCCOMB_X1_Y9_N30
\U1|cnt[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[1]~9_combout\ = \U1|cnt\(1) $ (((\U1|cnt[3]~2_combout\ & (\U1|cnt\(0) $ (!\U1|process_0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(0),
	datab => \U1|process_0~0_combout\,
	datac => \U1|cnt\(1),
	datad => \U1|cnt[3]~2_combout\,
	combout => \U1|cnt[1]~9_combout\);

-- Location: FF_X1_Y9_N31
\U1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|cnt[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(1));

-- Location: LCCOMB_X1_Y9_N22
\U1|cnt[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[2]~4_combout\ = (\U1|cnt\(1) & (!\perSal~input_o\ & (\perEn~input_o\ & \U1|cnt\(0)))) # (!\U1|cnt\(1) & (!\U1|cnt\(0) & ((\perSal~input_o\) # (!\perEn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \perSal~input_o\,
	datab => \perEn~input_o\,
	datac => \U1|cnt\(1),
	datad => \U1|cnt\(0),
	combout => \U1|cnt[2]~4_combout\);

-- Location: LCCOMB_X1_Y9_N14
\U1|cnt[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|cnt[2]~5_combout\ = \U1|cnt\(2) $ (((\U1|cnt[2]~4_combout\ & \U1|cnt[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt[2]~4_combout\,
	datac => \U1|cnt\(2),
	datad => \U1|cnt[3]~2_combout\,
	combout => \U1|cnt[2]~5_combout\);

-- Location: FF_X1_Y9_N15
\U1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|cnt[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(2));

-- Location: LCCOMB_X1_Y9_N16
\U2|AmayB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|AmayB~0_combout\ = (\U1|cnt\(3) & ((\U1|cnt\(2)) # ((\U1|cnt\(1) & \U1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(2),
	datab => \U1|cnt\(3),
	datac => \U1|cnt\(1),
	datad => \U1|cnt\(0),
	combout => \U2|AmayB~0_combout\);

ww_sobreCarga <= \sobreCarga~output_o\;

ww_cantPer(0) <= \cantPer[0]~output_o\;

ww_cantPer(1) <= \cantPer[1]~output_o\;

ww_cantPer(2) <= \cantPer[2]~output_o\;

ww_cantPer(3) <= \cantPer[3]~output_o\;
END structure;


