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

-- DATE "03/31/2025 01:18:53"

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

ENTITY 	detectorPiso IS
    PORT (
	clk : IN std_logic;
	subir : IN std_logic;
	bajar : IN std_logic;
	quieto : IN std_logic;
	pet1 : IN std_logic_vector(2 DOWNTO 0);
	pet2 : IN std_logic_vector(2 DOWNTO 0);
	pisoActual : OUT std_logic_vector(2 DOWNTO 0);
	reset1 : OUT std_logic;
	reset2 : OUT std_logic
	);
END detectorPiso;

-- Design Ports Information
-- pisoActual[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- subir	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bajar	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quieto	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF detectorPiso IS
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
SIGNAL ww_subir : std_logic;
SIGNAL ww_bajar : std_logic;
SIGNAL ww_quieto : std_logic;
SIGNAL ww_pet1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pet2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pisoActual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset2 : std_logic;
SIGNAL \U3|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pisoActual[0]~output_o\ : std_logic;
SIGNAL \pisoActual[1]~output_o\ : std_logic;
SIGNAL \pisoActual[2]~output_o\ : std_logic;
SIGNAL \reset1~output_o\ : std_logic;
SIGNAL \reset2~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \U2|contador~0_combout\ : std_logic;
SIGNAL \U2|contador[1]~feeder_combout\ : std_logic;
SIGNAL \U2|contador~1_combout\ : std_logic;
SIGNAL \U2|contador[0]~feeder_combout\ : std_logic;
SIGNAL \U3|Equal0~combout\ : std_logic;
SIGNAL \U3|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \subir~input_o\ : std_logic;
SIGNAL \quieto~input_o\ : std_logic;
SIGNAL \bajar~input_o\ : std_logic;
SIGNAL \U4|piso[0]~0_combout\ : std_logic;
SIGNAL \U4|Add0~0_combout\ : std_logic;
SIGNAL \U4|piso[0]~1_combout\ : std_logic;
SIGNAL \U4|Add0~1_combout\ : std_logic;
SIGNAL \pet1[2]~input_o\ : std_logic;
SIGNAL \pet1[1]~input_o\ : std_logic;
SIGNAL \pet1[0]~input_o\ : std_logic;
SIGNAL \U5|Equal0~0_combout\ : std_logic;
SIGNAL \U5|Equal0~1_combout\ : std_logic;
SIGNAL \pet2[1]~input_o\ : std_logic;
SIGNAL \pet2[0]~input_o\ : std_logic;
SIGNAL \U6|Equal0~0_combout\ : std_logic;
SIGNAL \pet2[2]~input_o\ : std_logic;
SIGNAL \U6|Equal0~1_combout\ : std_logic;
SIGNAL \U2|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|piso\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U4|ALT_INV_piso\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_subir <= subir;
ww_bajar <= bajar;
ww_quieto <= quieto;
ww_pet1 <= pet1;
ww_pet2 <= pet2;
pisoActual <= ww_pisoActual;
reset1 <= ww_reset1;
reset2 <= ww_reset2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U3|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|Equal0~combout\);
\U4|ALT_INV_piso\(0) <= NOT \U4|piso\(0);

-- Location: IOOBUF_X0_Y9_N2
\pisoActual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_piso\(0),
	devoe => ww_devoe,
	o => \pisoActual[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\pisoActual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|piso\(1),
	devoe => ww_devoe,
	o => \pisoActual[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\pisoActual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|piso\(2),
	devoe => ww_devoe,
	o => \pisoActual[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\reset1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \reset1~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\reset2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \reset2~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X1_Y13_N18
\U2|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador~0_combout\ = (\U2|contador\(0) & !\U2|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|contador\(0),
	datad => \U2|contador\(1),
	combout => \U2|contador~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\U2|contador[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[1]~feeder_combout\ = \U2|contador~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|contador~0_combout\,
	combout => \U2|contador[1]~feeder_combout\);

-- Location: FF_X1_Y13_N21
\U2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \U2|contador[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(1));

-- Location: LCCOMB_X1_Y13_N28
\U2|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador~1_combout\ = (!\U2|contador\(0) & !\U2|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|contador\(0),
	datad => \U2|contador\(1),
	combout => \U2|contador~1_combout\);

-- Location: LCCOMB_X1_Y13_N30
\U2|contador[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[0]~feeder_combout\ = \U2|contador~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|contador~1_combout\,
	combout => \U2|contador[0]~feeder_combout\);

-- Location: FF_X1_Y13_N31
\U2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \U2|contador[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(0));

-- Location: LCCOMB_X1_Y13_N0
\U3|Equal0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~combout\ = LCELL((!\U2|contador\(0) & \U2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|contador\(0),
	datad => \U2|contador\(1),
	combout => \U3|Equal0~combout\);

-- Location: CLKCTRL_G1
\U3|Equal0~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|Equal0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|Equal0~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y9_N15
\subir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_subir,
	o => \subir~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\quieto~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_quieto,
	o => \quieto~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\bajar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bajar,
	o => \bajar~input_o\);

-- Location: LCCOMB_X1_Y8_N20
\U4|piso[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|piso[0]~0_combout\ = \U4|piso\(0) $ (((!\quieto~input_o\ & ((\subir~input_o\) # (\bajar~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subir~input_o\,
	datab => \quieto~input_o\,
	datac => \U4|piso\(0),
	datad => \bajar~input_o\,
	combout => \U4|piso[0]~0_combout\);

-- Location: FF_X1_Y8_N21
\U4|piso[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|Equal0~clkctrl_outclk\,
	d => \U4|piso[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|piso\(0));

-- Location: LCCOMB_X1_Y8_N18
\U4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Add0~0_combout\ = \subir~input_o\ $ (\U4|piso\(1) $ (\U4|piso\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subir~input_o\,
	datac => \U4|piso\(1),
	datad => \U4|piso\(0),
	combout => \U4|Add0~0_combout\);

-- Location: LCCOMB_X1_Y8_N24
\U4|piso[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|piso[0]~1_combout\ = (!\quieto~input_o\ & ((\bajar~input_o\) # (\subir~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bajar~input_o\,
	datac => \subir~input_o\,
	datad => \quieto~input_o\,
	combout => \U4|piso[0]~1_combout\);

-- Location: FF_X1_Y8_N19
\U4|piso[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|Equal0~clkctrl_outclk\,
	d => \U4|Add0~0_combout\,
	ena => \U4|piso[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|piso\(1));

-- Location: LCCOMB_X1_Y8_N16
\U4|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Add0~1_combout\ = \U4|piso\(2) $ (((\subir~input_o\ & (\U4|piso\(1) & !\U4|piso\(0))) # (!\subir~input_o\ & (!\U4|piso\(1) & \U4|piso\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subir~input_o\,
	datab => \U4|piso\(1),
	datac => \U4|piso\(2),
	datad => \U4|piso\(0),
	combout => \U4|Add0~1_combout\);

-- Location: FF_X1_Y8_N17
\U4|piso[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|Equal0~clkctrl_outclk\,
	d => \U4|Add0~1_combout\,
	ena => \U4|piso[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|piso\(2));

-- Location: IOIBUF_X0_Y7_N22
\pet1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(2),
	o => \pet1[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\pet1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(1),
	o => \pet1[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\pet1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(0),
	o => \pet1[0]~input_o\);

-- Location: LCCOMB_X1_Y8_N30
\U5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Equal0~0_combout\ = (\pet1[1]~input_o\ & (\U4|piso\(1) & (\pet1[0]~input_o\ $ (\U4|piso\(0))))) # (!\pet1[1]~input_o\ & (!\U4|piso\(1) & (\pet1[0]~input_o\ $ (\U4|piso\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet1[1]~input_o\,
	datab => \U4|piso\(1),
	datac => \pet1[0]~input_o\,
	datad => \U4|piso\(0),
	combout => \U5|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y7_N16
\U5|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Equal0~1_combout\ = (\U5|Equal0~0_combout\ & (\pet1[2]~input_o\ $ (!\U4|piso\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet1[2]~input_o\,
	datab => \U5|Equal0~0_combout\,
	datac => \U4|piso\(2),
	combout => \U5|Equal0~1_combout\);

-- Location: IOIBUF_X0_Y8_N8
\pet2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(1),
	o => \pet2[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\pet2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(0),
	o => \pet2[0]~input_o\);

-- Location: LCCOMB_X1_Y8_N28
\U6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal0~0_combout\ = (\pet2[1]~input_o\ & (\U4|piso\(1) & (\pet2[0]~input_o\ $ (\U4|piso\(0))))) # (!\pet2[1]~input_o\ & (!\U4|piso\(1) & (\pet2[0]~input_o\ $ (\U4|piso\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[1]~input_o\,
	datab => \U4|piso\(1),
	datac => \pet2[0]~input_o\,
	datad => \U4|piso\(0),
	combout => \U6|Equal0~0_combout\);

-- Location: IOIBUF_X0_Y7_N15
\pet2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(2),
	o => \pet2[2]~input_o\);

-- Location: LCCOMB_X1_Y8_N14
\U6|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|Equal0~1_combout\ = (\U6|Equal0~0_combout\ & (\U4|piso\(2) $ (!\pet2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|piso\(2),
	datab => \U6|Equal0~0_combout\,
	datad => \pet2[2]~input_o\,
	combout => \U6|Equal0~1_combout\);

ww_pisoActual(0) <= \pisoActual[0]~output_o\;

ww_pisoActual(1) <= \pisoActual[1]~output_o\;

ww_pisoActual(2) <= \pisoActual[2]~output_o\;

ww_reset1 <= \reset1~output_o\;

ww_reset2 <= \reset2~output_o\;
END structure;


