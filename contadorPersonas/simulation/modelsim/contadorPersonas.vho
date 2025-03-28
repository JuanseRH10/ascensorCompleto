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

-- DATE "03/27/2025 17:39:55"

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

ENTITY 	contadorPersonas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	personaEntra : IN std_logic;
	personaSale : IN std_logic;
	cuenta : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END contadorPersonas;

-- Design Ports Information
-- cuenta[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personaEntra	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personaSale	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contadorPersonas IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_personaEntra : std_logic;
SIGNAL ww_personaSale : std_logic;
SIGNAL ww_cuenta : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cuenta[0]~output_o\ : std_logic;
SIGNAL \cuenta[1]~output_o\ : std_logic;
SIGNAL \cuenta[2]~output_o\ : std_logic;
SIGNAL \cuenta[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \personaEntra~input_o\ : std_logic;
SIGNAL \personaSale~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \cnt[1]~1_combout\ : std_logic;
SIGNAL \cnt[1]~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cnt[2]~3_combout\ : std_logic;
SIGNAL \cnt[2]~4_combout\ : std_logic;
SIGNAL \cnt[3]~5_combout\ : std_logic;
SIGNAL \cnt[3]~6_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_personaEntra <= personaEntra;
ww_personaSale <= personaSale;
cuenta <= ww_cuenta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y26_N23
\cuenta[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(0),
	devoe => ww_devoe,
	o => \cuenta[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\cuenta[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(1),
	devoe => ww_devoe,
	o => \cuenta[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\cuenta[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(2),
	devoe => ww_devoe,
	o => \cuenta[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\cuenta[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt(3),
	devoe => ww_devoe,
	o => \cuenta[3]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X0_Y21_N8
\personaEntra~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personaEntra,
	o => \personaEntra~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\personaSale~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personaSale,
	o => \personaSale~input_o\);

-- Location: LCCOMB_X1_Y26_N4
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\personaEntra~input_o\ & !\personaSale~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \personaEntra~input_o\,
	datad => \personaSale~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X1_Y26_N10
\cnt[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[1]~1_combout\ = (\personaSale~input_o\ & ((\personaEntra~input_o\) # (!\LessThan0~0_combout\))) # (!\personaSale~input_o\ & (!\personaEntra~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \personaSale~input_o\,
	datac => \personaEntra~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \cnt[1]~1_combout\);

-- Location: LCCOMB_X1_Y26_N30
\cnt[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[1]~2_combout\ = cnt(1) $ (((!\cnt[1]~1_combout\ & (\process_0~0_combout\ $ (!cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => cnt(0),
	datac => cnt(1),
	datad => \cnt[1]~1_combout\,
	combout => \cnt[1]~2_combout\);

-- Location: IOIBUF_X0_Y24_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y26_N31
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[1]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X1_Y26_N26
\cnt[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~3_combout\ = (\personaEntra~input_o\ & ((\personaSale~input_o\) # ((!cnt(1)) # (!cnt(0))))) # (!\personaEntra~input_o\ & (((cnt(0)) # (cnt(1))) # (!\personaSale~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \personaEntra~input_o\,
	datab => \personaSale~input_o\,
	datac => cnt(0),
	datad => cnt(1),
	combout => \cnt[2]~3_combout\);

-- Location: LCCOMB_X1_Y26_N12
\cnt[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[2]~4_combout\ = cnt(2) $ (((!\cnt[2]~3_combout\ & ((cnt(1)) # (\LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~3_combout\,
	datab => cnt(1),
	datac => cnt(2),
	datad => \LessThan0~0_combout\,
	combout => \cnt[2]~4_combout\);

-- Location: FF_X1_Y26_N13
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[2]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X1_Y26_N20
\cnt[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[3]~5_combout\ = (cnt(2) & (\process_0~0_combout\ & (cnt(0) & cnt(1)))) # (!cnt(2) & (!\process_0~0_combout\ & (!cnt(0) & !cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datab => \process_0~0_combout\,
	datac => cnt(0),
	datad => cnt(1),
	combout => \cnt[3]~5_combout\);

-- Location: LCCOMB_X1_Y26_N18
\cnt[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[3]~6_combout\ = cnt(3) $ (((\cnt[3]~5_combout\ & !\cnt[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[3]~5_combout\,
	datac => cnt(3),
	datad => \cnt[1]~1_combout\,
	combout => \cnt[3]~6_combout\);

-- Location: FF_X1_Y26_N19
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[3]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X1_Y26_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (cnt(1)) # ((cnt(3)) # ((cnt(0)) # (cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(3),
	datac => cnt(0),
	datad => cnt(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y26_N8
\cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (\personaEntra~input_o\ & (\personaSale~input_o\ $ ((!cnt(0))))) # (!\personaEntra~input_o\ & ((\personaSale~input_o\ & (!cnt(0) & \LessThan0~0_combout\)) # (!\personaSale~input_o\ & (cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \personaEntra~input_o\,
	datab => \personaSale~input_o\,
	datac => cnt(0),
	datad => \LessThan0~0_combout\,
	combout => \cnt~0_combout\);

-- Location: FF_X1_Y26_N9
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

ww_cuenta(0) <= \cuenta[0]~output_o\;

ww_cuenta(1) <= \cuenta[1]~output_o\;

ww_cuenta(2) <= \cuenta[2]~output_o\;

ww_cuenta(3) <= \cuenta[3]~output_o\;
END structure;


