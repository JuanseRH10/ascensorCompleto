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

-- DATE "03/31/2025 09:23:25"

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

ENTITY 	controlPuerta IS
    PORT (
	clk : IN std_logic;
	llego : IN std_logic;
	anomalia : IN std_logic;
	sobreCarga : IN std_logic;
	cambiandoEstado : OUT std_logic;
	estadoPuerta : OUT std_logic
	);
END controlPuerta;

-- Design Ports Information
-- cambiandoEstado	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoPuerta	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobreCarga	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomalia	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llego	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlPuerta IS
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
SIGNAL ww_cambiandoEstado : std_logic;
SIGNAL ww_estadoPuerta : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cambiandoEstado~output_o\ : std_logic;
SIGNAL \estadoPuerta~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \llego~input_o\ : std_logic;
SIGNAL \U2|llego_prev~q\ : std_logic;
SIGNAL \U3|Add0~0_combout\ : std_logic;
SIGNAL \U3|contador~1_combout\ : std_logic;
SIGNAL \anomalia~input_o\ : std_logic;
SIGNAL \sobreCarga~input_o\ : std_logic;
SIGNAL \U4|Add0~0_combout\ : std_logic;
SIGNAL \U1|stage[1]~3_combout\ : std_logic;
SIGNAL \U1|reset2_reg~feeder_combout\ : std_logic;
SIGNAL \U1|reset2_reg~q\ : std_logic;
SIGNAL \U4|Add0~1\ : std_logic;
SIGNAL \U4|Add0~3\ : std_logic;
SIGNAL \U4|Add0~5\ : std_logic;
SIGNAL \U4|Add0~6_combout\ : std_logic;
SIGNAL \U4|contador~1_combout\ : std_logic;
SIGNAL \U4|Add0~7\ : std_logic;
SIGNAL \U4|Add0~8_combout\ : std_logic;
SIGNAL \U4|Add0~9\ : std_logic;
SIGNAL \U4|Add0~10_combout\ : std_logic;
SIGNAL \U4|contador~0_combout\ : std_logic;
SIGNAL \U6|Equal0~0_combout\ : std_logic;
SIGNAL \U4|Add0~2_combout\ : std_logic;
SIGNAL \U4|contador~3_combout\ : std_logic;
SIGNAL \U4|Add0~4_combout\ : std_logic;
SIGNAL \U4|contador~2_combout\ : std_logic;
SIGNAL \U6|Equal0~1_combout\ : std_logic;
SIGNAL \U8|llego_prev~q\ : std_logic;
SIGNAL \U8|capturado~0_combout\ : std_logic;
SIGNAL \U8|capturado~q\ : std_logic;
SIGNAL \U1|stage[1]~0_combout\ : std_logic;
SIGNAL \U1|stage[1]~2_combout\ : std_logic;
SIGNAL \U1|stage[0]~6_combout\ : std_logic;
SIGNAL \U1|stage[1]~1_combout\ : std_logic;
SIGNAL \U1|stage[1]~4_combout\ : std_logic;
SIGNAL \U1|stage[1]~5_combout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|reset1_reg~q\ : std_logic;
SIGNAL \U3|Add0~5\ : std_logic;
SIGNAL \U3|Add0~6_combout\ : std_logic;
SIGNAL \U3|contador~0_combout\ : std_logic;
SIGNAL \U3|Add0~7\ : std_logic;
SIGNAL \U3|Add0~8_combout\ : std_logic;
SIGNAL \U3|Add0~9\ : std_logic;
SIGNAL \U3|Add0~10_combout\ : std_logic;
SIGNAL \U5|Equal0~0_combout\ : std_logic;
SIGNAL \U3|Add0~1\ : std_logic;
SIGNAL \U3|Add0~2_combout\ : std_logic;
SIGNAL \U3|contador~2_combout\ : std_logic;
SIGNAL \U3|Add0~3\ : std_logic;
SIGNAL \U3|Add0~4_combout\ : std_logic;
SIGNAL \U5|Equal0~1_combout\ : std_logic;
SIGNAL \U7|llego_prev~feeder_combout\ : std_logic;
SIGNAL \U7|llego_prev~q\ : std_logic;
SIGNAL \U7|capturado~0_combout\ : std_logic;
SIGNAL \U7|capturado~q\ : std_logic;
SIGNAL \U1|clear_reg~0_combout\ : std_logic;
SIGNAL \U1|clear_reg~1_combout\ : std_logic;
SIGNAL \U1|clear_reg~q\ : std_logic;
SIGNAL \U2|capturado~0_combout\ : std_logic;
SIGNAL \U2|capturado~q\ : std_logic;
SIGNAL \estadoPuerta~0_combout\ : std_logic;
SIGNAL \U4|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U1|stage\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U1|ALT_INV_stage[1]~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_llego <= llego;
ww_anomalia <= anomalia;
ww_sobreCarga <= sobreCarga;
cambiandoEstado <= ww_cambiandoEstado;
estadoPuerta <= ww_estadoPuerta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\U1|ALT_INV_stage[1]~2_combout\ <= NOT \U1|stage[1]~2_combout\;

-- Location: IOOBUF_X41_Y10_N2
\cambiandoEstado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|capturado~q\,
	devoe => ww_devoe,
	o => \cambiandoEstado~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\estadoPuerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoPuerta~0_combout\,
	devoe => ww_devoe,
	o => \estadoPuerta~output_o\);

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

-- Location: IOIBUF_X41_Y10_N15
\llego~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llego,
	o => \llego~input_o\);

-- Location: FF_X33_Y10_N31
\U2|llego_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \llego~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|llego_prev~q\);

-- Location: LCCOMB_X32_Y10_N6
\U3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~0_combout\ = \U3|contador\(0) $ (VCC)
-- \U3|Add0~1\ = CARRY(\U3|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(0),
	datad => VCC,
	combout => \U3|Add0~0_combout\,
	cout => \U3|Add0~1\);

-- Location: LCCOMB_X32_Y10_N26
\U3|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|contador~1_combout\ = (\U3|Add0~0_combout\ & (((\U3|contador\(2)) # (!\U5|Equal0~0_combout\)) # (!\U3|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add0~0_combout\,
	datab => \U3|contador\(1),
	datac => \U3|contador\(2),
	datad => \U5|Equal0~0_combout\,
	combout => \U3|contador~1_combout\);

-- Location: IOIBUF_X41_Y10_N8
\anomalia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_anomalia,
	o => \anomalia~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\sobreCarga~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sobreCarga,
	o => \sobreCarga~input_o\);

-- Location: LCCOMB_X31_Y10_N14
\U4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Add0~0_combout\ = \U4|contador\(0) $ (VCC)
-- \U4|Add0~1\ = CARRY(\U4|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|contador\(0),
	datad => VCC,
	combout => \U4|Add0~0_combout\,
	cout => \U4|Add0~1\);

-- Location: LCCOMB_X33_Y10_N2
\U1|stage[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|stage[1]~3_combout\ = (!\anomalia~input_o\ & (!\sobreCarga~input_o\ & (!\U1|stage\(1) & \U1|stage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \sobreCarga~input_o\,
	datac => \U1|stage\(1),
	datad => \U1|stage\(0),
	combout => \U1|stage[1]~3_combout\);

-- Location: LCCOMB_X31_Y10_N10
\U1|reset2_reg~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|reset2_reg~feeder_combout\ = \U1|stage[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|stage[1]~3_combout\,
	combout => \U1|reset2_reg~feeder_combout\);

-- Location: FF_X31_Y10_N11
\U1|reset2_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|reset2_reg~feeder_combout\,
	ena => \U1|ALT_INV_stage[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|reset2_reg~q\);

-- Location: FF_X31_Y10_N15
\U4|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|Add0~0_combout\,
	clrn => \U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|contador\(0));

-- Location: LCCOMB_X31_Y10_N16
\U4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Add0~2_combout\ = (\U4|contador\(1) & (!\U4|Add0~1\)) # (!\U4|contador\(1) & ((\U4|Add0~1\) # (GND)))
-- \U4|Add0~3\ = CARRY((!\U4|Add0~1\) # (!\U4|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|contador\(1),
	datad => VCC,
	cin => \U4|Add0~1\,
	combout => \U4|Add0~2_combout\,
	cout => \U4|Add0~3\);

-- Location: LCCOMB_X31_Y10_N18
\U4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Add0~4_combout\ = (\U4|contador\(2) & (\U4|Add0~3\ $ (GND))) # (!\U4|contador\(2) & (!\U4|Add0~3\ & VCC))
-- \U4|Add0~5\ = CARRY((\U4|contador\(2) & !\U4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|contador\(2),
	datad => VCC,
	cin => \U4|Add0~3\,
	combout => \U4|Add0~4_combout\,
	cout => \U4|Add0~5\);

-- Location: LCCOMB_X31_Y10_N20
\U4|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Add0~6_combout\ = (\U4|contador\(3) & (!\U4|Add0~5\)) # (!\U4|contador\(3) & ((\U4|Add0~5\) # (GND)))
-- \U4|Add0~7\ = CARRY((!\U4|Add0~5\) # (!\U4|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|contador\(3),
	datad => VCC,
	cin => \U4|Add0~5\,
	combout => \U4|Add0~6_combout\,
	cout => \U4|Add0~7\);

-- Location: LCCOMB_X31_Y10_N28
\U4|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|contador~1_combout\ = (\U4|Add0~6_combout\ & (((\U4|contador\(1)) # (!\U6|Equal0~0_combout\)) # (!\U4|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|contador\(2),
	datab => \U6|Equal0~0_combout\,
	datac => \U4|contador\(1),
	datad => \U4|Add0~6_combout\,
	combout => \U4|contador~1_combout\);

-- Location: FF_X31_Y10_N29
\U4|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|contador~1_combout\,
	clrn => \U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|contador\(3));

-- Location: LCCOMB_X31_Y10_N22
\U4|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Add0~8_combout\ = (\U4|contador\(4) & (\U4|Add0~7\ $ (GND))) # (!\U4|contador\(4) & (!\U4|Add0~7\ & VCC))
-- \U4|Add0~9\ = CARRY((\U4|contador\(4) & !\U4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|contador\(4),
	datad => VCC,
	cin => \U4|Add0~7\,
	combout => \U4|Add0~8_combout\,
	cout => \U4|Add0~9\);

-- Location: FF_X31_Y10_N23
\U4|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|Add0~8_combout\,
	clrn => \U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|contador\(4));

-- Location: LCCOMB_X31_Y10_N24
\U4|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Add0~10_combout\ = \U4|Add0~9\ $ (\U4|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U4|contador\(5),
	cin => \U4|Add0~9\,
	combout => \U4|Add0~10_combout\);

-- Location: LCCOMB_X31_Y10_N6
\U4|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|contador~0_combout\ = (\U4|Add0~10_combout\ & (((\U4|contador\(1)) # (!\U6|Equal0~0_combout\)) # (!\U4|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|contador\(2),
	datab => \U6|Equal0~0_combout\,
	datac => \U4|contador\(1),
	datad => \U4|Add0~10_combout\,
	combout => \U4|contador~0_combout\);

-- Location: FF_X31_Y10_N7
\U4|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|contador~0_combout\,
	clrn => \U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|contador\(5));

-- Location: LCCOMB_X31_Y10_N2
\U6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal0~0_combout\ = (\U4|contador\(5) & (\U4|contador\(0) & (!\U4|contador\(4) & \U4|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|contador\(5),
	datab => \U4|contador\(0),
	datac => \U4|contador\(4),
	datad => \U4|contador\(3),
	combout => \U6|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y10_N26
\U4|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|contador~3_combout\ = (\U4|Add0~2_combout\ & (((\U4|contador\(1)) # (!\U6|Equal0~0_combout\)) # (!\U4|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|contador\(2),
	datab => \U6|Equal0~0_combout\,
	datac => \U4|contador\(1),
	datad => \U4|Add0~2_combout\,
	combout => \U4|contador~3_combout\);

-- Location: FF_X31_Y10_N27
\U4|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|contador~3_combout\,
	clrn => \U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|contador\(1));

-- Location: LCCOMB_X31_Y10_N12
\U4|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|contador~2_combout\ = (\U4|Add0~4_combout\ & ((\U4|contador\(1)) # ((!\U4|contador\(2)) # (!\U6|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|contador\(1),
	datab => \U6|Equal0~0_combout\,
	datac => \U4|contador\(2),
	datad => \U4|Add0~4_combout\,
	combout => \U4|contador~2_combout\);

-- Location: FF_X31_Y10_N13
\U4|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4|contador~2_combout\,
	clrn => \U1|reset2_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|contador\(2));

-- Location: LCCOMB_X31_Y10_N4
\U6|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal0~1_combout\ = (\U4|contador\(2) & (!\U4|contador\(1) & \U6|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|contador\(2),
	datac => \U4|contador\(1),
	datad => \U6|Equal0~0_combout\,
	combout => \U6|Equal0~1_combout\);

-- Location: FF_X31_Y10_N17
\U8|llego_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U6|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|llego_prev~q\);

-- Location: LCCOMB_X31_Y10_N8
\U8|capturado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U8|capturado~0_combout\ = (!\U1|clear_reg~q\ & ((\U8|capturado~q\) # ((\U6|Equal0~1_combout\ & !\U8|llego_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|clear_reg~q\,
	datab => \U6|Equal0~1_combout\,
	datac => \U8|capturado~q\,
	datad => \U8|llego_prev~q\,
	combout => \U8|capturado~0_combout\);

-- Location: FF_X31_Y10_N9
\U8|capturado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U8|capturado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U8|capturado~q\);

-- Location: LCCOMB_X32_Y10_N2
\U1|stage[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|stage[1]~0_combout\ = (!\U1|stage\(0) & (\U1|stage\(1) & ((!\U8|capturado~q\) # (!\U7|capturado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|stage\(0),
	datab => \U1|stage\(1),
	datac => \U7|capturado~q\,
	datad => \U8|capturado~q\,
	combout => \U1|stage[1]~0_combout\);

-- Location: LCCOMB_X32_Y10_N18
\U1|stage[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|stage[1]~2_combout\ = (!\anomalia~input_o\ & (!\sobreCarga~input_o\ & ((\U1|stage[1]~1_combout\) # (\U1|stage[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \sobreCarga~input_o\,
	datac => \U1|stage[1]~1_combout\,
	datad => \U1|stage[1]~0_combout\,
	combout => \U1|stage[1]~2_combout\);

-- Location: LCCOMB_X32_Y10_N30
\U1|stage[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|stage[0]~6_combout\ = (\U1|process_0~0_combout\ & ((\U2|capturado~q\) # ((\U1|stage[1]~2_combout\ & \U1|stage\(0))))) # (!\U1|process_0~0_combout\ & (\U1|stage[1]~2_combout\ & (\U1|stage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~0_combout\,
	datab => \U1|stage[1]~2_combout\,
	datac => \U1|stage\(0),
	datad => \U2|capturado~q\,
	combout => \U1|stage[0]~6_combout\);

-- Location: FF_X32_Y10_N31
\U1|stage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|stage[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|stage\(0));

-- Location: LCCOMB_X32_Y10_N4
\U1|stage[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|stage[1]~1_combout\ = (\U1|stage\(0) & (!\U1|stage\(1) & ((!\U2|capturado~q\) # (!\U7|capturado~q\)))) # (!\U1|stage\(0) & (((!\U2|capturado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|stage\(0),
	datab => \U7|capturado~q\,
	datac => \U2|capturado~q\,
	datad => \U1|stage\(1),
	combout => \U1|stage[1]~1_combout\);

-- Location: LCCOMB_X32_Y10_N0
\U1|stage[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|stage[1]~4_combout\ = (\U1|stage[1]~1_combout\) # (\U1|stage[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|stage[1]~1_combout\,
	datad => \U1|stage[1]~0_combout\,
	combout => \U1|stage[1]~4_combout\);

-- Location: LCCOMB_X32_Y10_N24
\U1|stage[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|stage[1]~5_combout\ = (\U1|stage[1]~4_combout\ & (\U1|stage[1]~2_combout\ & (\U1|stage\(1)))) # (!\U1|stage[1]~4_combout\ & ((\U1|stage[1]~3_combout\) # ((\U1|stage[1]~2_combout\ & \U1|stage\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|stage[1]~4_combout\,
	datab => \U1|stage[1]~2_combout\,
	datac => \U1|stage\(1),
	datad => \U1|stage[1]~3_combout\,
	combout => \U1|stage[1]~5_combout\);

-- Location: FF_X32_Y10_N25
\U1|stage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|stage[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|stage\(1));

-- Location: LCCOMB_X33_Y10_N20
\U1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = (!\anomalia~input_o\ & (!\sobreCarga~input_o\ & (!\U1|stage\(1) & !\U1|stage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \sobreCarga~input_o\,
	datac => \U1|stage\(1),
	datad => \U1|stage\(0),
	combout => \U1|process_0~0_combout\);

-- Location: FF_X32_Y10_N1
\U1|reset1_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|process_0~0_combout\,
	sload => VCC,
	ena => \U1|ALT_INV_stage[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|reset1_reg~q\);

-- Location: FF_X32_Y10_N27
\U3|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|contador~1_combout\,
	clrn => \U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(0));

-- Location: LCCOMB_X32_Y10_N10
\U3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~4_combout\ = (\U3|contador\(2) & (\U3|Add0~3\ $ (GND))) # (!\U3|contador\(2) & (!\U3|Add0~3\ & VCC))
-- \U3|Add0~5\ = CARRY((\U3|contador\(2) & !\U3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(2),
	datad => VCC,
	cin => \U3|Add0~3\,
	combout => \U3|Add0~4_combout\,
	cout => \U3|Add0~5\);

-- Location: LCCOMB_X32_Y10_N12
\U3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~6_combout\ = (\U3|contador\(3) & (!\U3|Add0~5\)) # (!\U3|contador\(3) & ((\U3|Add0~5\) # (GND)))
-- \U3|Add0~7\ = CARRY((!\U3|Add0~5\) # (!\U3|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(3),
	datad => VCC,
	cin => \U3|Add0~5\,
	combout => \U3|Add0~6_combout\,
	cout => \U3|Add0~7\);

-- Location: LCCOMB_X32_Y10_N20
\U3|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|contador~0_combout\ = (\U3|Add0~6_combout\ & ((\U3|contador\(2)) # ((!\U3|contador\(1)) # (!\U5|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(2),
	datab => \U5|Equal0~0_combout\,
	datac => \U3|contador\(1),
	datad => \U3|Add0~6_combout\,
	combout => \U3|contador~0_combout\);

-- Location: FF_X32_Y10_N21
\U3|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|contador~0_combout\,
	clrn => \U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(3));

-- Location: LCCOMB_X32_Y10_N14
\U3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~8_combout\ = (\U3|contador\(4) & (\U3|Add0~7\ $ (GND))) # (!\U3|contador\(4) & (!\U3|Add0~7\ & VCC))
-- \U3|Add0~9\ = CARRY((\U3|contador\(4) & !\U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(4),
	datad => VCC,
	cin => \U3|Add0~7\,
	combout => \U3|Add0~8_combout\,
	cout => \U3|Add0~9\);

-- Location: FF_X32_Y10_N15
\U3|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|Add0~8_combout\,
	clrn => \U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(4));

-- Location: LCCOMB_X32_Y10_N16
\U3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~10_combout\ = \U3|Add0~9\ $ (\U3|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U3|contador\(5),
	cin => \U3|Add0~9\,
	combout => \U3|Add0~10_combout\);

-- Location: FF_X32_Y10_N17
\U3|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|Add0~10_combout\,
	clrn => \U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(5));

-- Location: LCCOMB_X32_Y10_N28
\U5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Equal0~0_combout\ = (!\U3|contador\(0) & (!\U3|contador\(5) & (!\U3|contador\(4) & \U3|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(0),
	datab => \U3|contador\(5),
	datac => \U3|contador\(4),
	datad => \U3|contador\(3),
	combout => \U5|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y10_N8
\U3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Add0~2_combout\ = (\U3|contador\(1) & (!\U3|Add0~1\)) # (!\U3|contador\(1) & ((\U3|Add0~1\) # (GND)))
-- \U3|Add0~3\ = CARRY((!\U3|Add0~1\) # (!\U3|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|contador\(1),
	datad => VCC,
	cin => \U3|Add0~1\,
	combout => \U3|Add0~2_combout\,
	cout => \U3|Add0~3\);

-- Location: LCCOMB_X32_Y10_N22
\U3|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|contador~2_combout\ = (\U3|Add0~2_combout\ & ((\U3|contador\(2)) # ((!\U3|contador\(1)) # (!\U5|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(2),
	datab => \U5|Equal0~0_combout\,
	datac => \U3|contador\(1),
	datad => \U3|Add0~2_combout\,
	combout => \U3|contador~2_combout\);

-- Location: FF_X32_Y10_N23
\U3|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|contador~2_combout\,
	clrn => \U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(1));

-- Location: FF_X32_Y10_N11
\U3|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3|Add0~4_combout\,
	clrn => \U1|reset1_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|contador\(2));

-- Location: LCCOMB_X33_Y10_N18
\U5|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Equal0~1_combout\ = (!\U3|contador\(2) & (\U3|contador\(1) & \U5|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|contador\(2),
	datab => \U3|contador\(1),
	datad => \U5|Equal0~0_combout\,
	combout => \U5|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y10_N8
\U7|llego_prev~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|llego_prev~feeder_combout\ = \U5|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|Equal0~1_combout\,
	combout => \U7|llego_prev~feeder_combout\);

-- Location: FF_X33_Y10_N9
\U7|llego_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U7|llego_prev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|llego_prev~q\);

-- Location: LCCOMB_X33_Y10_N10
\U7|capturado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|capturado~0_combout\ = (!\U1|clear_reg~q\ & ((\U7|capturado~q\) # ((!\U7|llego_prev~q\ & \U5|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|capturado~q\,
	datab => \U1|clear_reg~q\,
	datac => \U7|llego_prev~q\,
	datad => \U5|Equal0~1_combout\,
	combout => \U7|capturado~0_combout\);

-- Location: FF_X32_Y10_N3
\U7|capturado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U7|capturado~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|capturado~q\);

-- Location: LCCOMB_X33_Y10_N24
\U1|clear_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|clear_reg~0_combout\ = (!\anomalia~input_o\ & (\U1|stage\(1) & (!\sobreCarga~input_o\ & !\U1|stage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \U1|stage\(1),
	datac => \sobreCarga~input_o\,
	datad => \U1|stage\(0),
	combout => \U1|clear_reg~0_combout\);

-- Location: LCCOMB_X33_Y10_N16
\U1|clear_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|clear_reg~1_combout\ = (\U7|capturado~q\ & (\U2|capturado~q\ & (\U8|capturado~q\ & \U1|clear_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|capturado~q\,
	datab => \U2|capturado~q\,
	datac => \U8|capturado~q\,
	datad => \U1|clear_reg~0_combout\,
	combout => \U1|clear_reg~1_combout\);

-- Location: FF_X33_Y10_N17
\U1|clear_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|clear_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|clear_reg~q\);

-- Location: LCCOMB_X33_Y10_N30
\U2|capturado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|capturado~0_combout\ = (!\U1|clear_reg~q\ & ((\U2|capturado~q\) # ((\llego~input_o\ & !\U2|llego_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \llego~input_o\,
	datab => \U2|capturado~q\,
	datac => \U2|llego_prev~q\,
	datad => \U1|clear_reg~q\,
	combout => \U2|capturado~0_combout\);

-- Location: FF_X32_Y10_N5
\U2|capturado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|capturado~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|capturado~q\);

-- Location: LCCOMB_X33_Y10_N28
\estadoPuerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estadoPuerta~0_combout\ = (!\anomalia~input_o\ & ((\sobreCarga~input_o\) # ((\U7|capturado~q\ & !\U8|capturado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|capturado~q\,
	datab => \U8|capturado~q\,
	datac => \sobreCarga~input_o\,
	datad => \anomalia~input_o\,
	combout => \estadoPuerta~0_combout\);

ww_cambiandoEstado <= \cambiandoEstado~output_o\;

ww_estadoPuerta <= \estadoPuerta~output_o\;
END structure;


