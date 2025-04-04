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

-- DATE "03/31/2025 08:33:22"

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

ENTITY 	controlContadores IS
    PORT (
	clk : IN std_logic;
	llego : IN std_logic;
	anomalia : IN std_logic;
	sobreCarga : IN std_logic;
	llegoa10 : IN std_logic;
	llegoa45 : IN std_logic;
	reset1 : OUT std_logic;
	reset2 : OUT std_logic;
	clear : OUT std_logic
	);
END controlContadores;

-- Design Ports Information
-- reset1	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llego	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomalia	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobreCarga	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llegoa45	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llegoa10	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlContadores IS
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
SIGNAL ww_llego : std_logic;
SIGNAL ww_anomalia : std_logic;
SIGNAL ww_sobreCarga : std_logic;
SIGNAL ww_llegoa10 : std_logic;
SIGNAL ww_llegoa45 : std_logic;
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset2 : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset1~output_o\ : std_logic;
SIGNAL \reset2~output_o\ : std_logic;
SIGNAL \clear~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \anomalia~input_o\ : std_logic;
SIGNAL \sobreCarga~input_o\ : std_logic;
SIGNAL \caso[1]~0_combout\ : std_logic;
SIGNAL \llego~input_o\ : std_logic;
SIGNAL \clear_reg~0_combout\ : std_logic;
SIGNAL \llegoa10~input_o\ : std_logic;
SIGNAL \llegoa45~input_o\ : std_logic;
SIGNAL \caso[0]~1_combout\ : std_logic;
SIGNAL \caso[1]~4_combout\ : std_logic;
SIGNAL \caso[1]~5_combout\ : std_logic;
SIGNAL \caso[0]~2_combout\ : std_logic;
SIGNAL \caso[0]~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \clear_reg~1_combout\ : std_logic;
SIGNAL \clear_reg~q\ : std_logic;
SIGNAL caso : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_llego <= llego;
ww_anomalia <= anomalia;
ww_sobreCarga <= sobreCarga;
ww_llegoa10 <= llegoa10;
ww_llegoa45 <= llegoa45;
reset1 <= ww_reset1;
reset2 <= ww_reset2;
clear <= ww_clear;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X0_Y5_N2
\reset1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \reset1~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\reset2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \reset2~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\clear~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_reg~q\,
	devoe => ww_devoe,
	o => \clear~output_o\);

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

-- Location: IOIBUF_X0_Y4_N1
\anomalia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_anomalia,
	o => \anomalia~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\sobreCarga~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sobreCarga,
	o => \sobreCarga~input_o\);

-- Location: LCCOMB_X1_Y5_N28
\caso[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \caso[1]~0_combout\ = (!\anomalia~input_o\ & !\sobreCarga~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \anomalia~input_o\,
	datad => \sobreCarga~input_o\,
	combout => \caso[1]~0_combout\);

-- Location: IOIBUF_X0_Y5_N15
\llego~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llego,
	o => \llego~input_o\);

-- Location: LCCOMB_X1_Y5_N22
\clear_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_reg~0_combout\ = (!\sobreCarga~input_o\ & (!\anomalia~input_o\ & \llego~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sobreCarga~input_o\,
	datab => \anomalia~input_o\,
	datac => \llego~input_o\,
	combout => \clear_reg~0_combout\);

-- Location: IOIBUF_X0_Y6_N8
\llegoa10~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llegoa10,
	o => \llegoa10~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\llegoa45~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llegoa45,
	o => \llegoa45~input_o\);

-- Location: LCCOMB_X1_Y5_N2
\caso[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \caso[0]~1_combout\ = (\llegoa10~input_o\ & (!\llegoa45~input_o\ & (caso(1) & !caso(0)))) # (!\llegoa10~input_o\ & ((caso(1) $ (caso(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \llegoa10~input_o\,
	datab => \llegoa45~input_o\,
	datac => caso(1),
	datad => caso(0),
	combout => \caso[0]~1_combout\);

-- Location: LCCOMB_X1_Y5_N6
\caso[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \caso[1]~4_combout\ = (\llego~input_o\ & (!caso(1) & caso(0))) # (!\llego~input_o\ & (caso(1) & !caso(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \llego~input_o\,
	datac => caso(1),
	datad => caso(0),
	combout => \caso[1]~4_combout\);

-- Location: LCCOMB_X1_Y5_N30
\caso[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \caso[1]~5_combout\ = (\caso[1]~0_combout\ & ((\caso[0]~1_combout\ & (caso(1))) # (!\caso[0]~1_combout\ & ((\caso[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caso[1]~0_combout\,
	datab => \caso[0]~1_combout\,
	datac => caso(1),
	datad => \caso[1]~4_combout\,
	combout => \caso[1]~5_combout\);

-- Location: FF_X1_Y5_N31
\caso[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caso[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => caso(1));

-- Location: LCCOMB_X1_Y5_N24
\caso[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \caso[0]~2_combout\ = (caso(0) & (!\caso[0]~1_combout\ & ((\llego~input_o\) # (caso(1))))) # (!caso(0) & (((caso(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => caso(0),
	datab => \llego~input_o\,
	datac => caso(1),
	datad => \caso[0]~1_combout\,
	combout => \caso[0]~2_combout\);

-- Location: LCCOMB_X1_Y5_N12
\caso[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \caso[0]~3_combout\ = (!\caso[0]~2_combout\ & ((caso(0) & (\caso[1]~0_combout\)) # (!caso(0) & ((\clear_reg~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \caso[1]~0_combout\,
	datab => \clear_reg~0_combout\,
	datac => caso(0),
	datad => \caso[0]~2_combout\,
	combout => \caso[0]~3_combout\);

-- Location: FF_X1_Y5_N13
\caso[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \caso[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => caso(0));

-- Location: LCCOMB_X1_Y5_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (caso(0) & !caso(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => caso(0),
	datac => caso(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y5_N26
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (caso(1) & !caso(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => caso(1),
	datad => caso(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y5_N20
\clear_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_reg~1_combout\ = (\llegoa10~input_o\ & (\clear_reg~0_combout\ & (\Equal1~0_combout\ & \llegoa45~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \llegoa10~input_o\,
	datab => \clear_reg~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \llegoa45~input_o\,
	combout => \clear_reg~1_combout\);

-- Location: FF_X1_Y5_N21
clear_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clear_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_reg~q\);

ww_reset1 <= \reset1~output_o\;

ww_reset2 <= \reset2~output_o\;

ww_clear <= \clear~output_o\;
END structure;


