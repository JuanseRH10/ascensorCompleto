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

-- DATE "03/31/2025 00:50:47"

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

ENTITY 	contadorGenerico IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	valorRes : IN std_logic_vector(5 DOWNTO 0);
	cuenta : OUT std_logic_vector(5 DOWNTO 0)
	);
END contadorGenerico;

-- Design Ports Information
-- cuenta[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[4]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorRes[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorRes[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorRes[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorRes[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorRes[5]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorRes[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contadorGenerico IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_valorRes : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_cuenta : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cuenta[0]~output_o\ : std_logic;
SIGNAL \cuenta[1]~output_o\ : std_logic;
SIGNAL \cuenta[2]~output_o\ : std_logic;
SIGNAL \cuenta[3]~output_o\ : std_logic;
SIGNAL \cuenta[4]~output_o\ : std_logic;
SIGNAL \cuenta[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \valorRes[5]~input_o\ : std_logic;
SIGNAL \valorRes[4]~input_o\ : std_logic;
SIGNAL \contador[0]~7\ : std_logic;
SIGNAL \contador[1]~8_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \contador[1]~9\ : std_logic;
SIGNAL \contador[2]~10_combout\ : std_logic;
SIGNAL \contador[2]~11\ : std_logic;
SIGNAL \contador[3]~12_combout\ : std_logic;
SIGNAL \contador[3]~13\ : std_logic;
SIGNAL \contador[4]~14_combout\ : std_logic;
SIGNAL \contador[4]~15\ : std_logic;
SIGNAL \contador[5]~16_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \valorRes[1]~input_o\ : std_logic;
SIGNAL \valorRes[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \valorRes[2]~input_o\ : std_logic;
SIGNAL \valorRes[3]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL contador : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_reset <= reset;
ww_valorRes <= valorRes;
cuenta <= ww_cuenta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y5_N9
\cuenta[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(0),
	devoe => ww_devoe,
	o => \cuenta[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\cuenta[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(1),
	devoe => ww_devoe,
	o => \cuenta[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\cuenta[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(2),
	devoe => ww_devoe,
	o => \cuenta[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\cuenta[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(3),
	devoe => ww_devoe,
	o => \cuenta[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\cuenta[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(4),
	devoe => ww_devoe,
	o => \cuenta[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\cuenta[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(5),
	devoe => ww_devoe,
	o => \cuenta[5]~output_o\);

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

-- Location: LCCOMB_X1_Y6_N14
\contador[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~6_combout\ = contador(0) $ (VCC)
-- \contador[0]~7\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datad => VCC,
	combout => \contador[0]~6_combout\,
	cout => \contador[0]~7\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y5_N22
\valorRes[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valorRes(5),
	o => \valorRes[5]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\valorRes[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valorRes(4),
	o => \valorRes[4]~input_o\);

-- Location: LCCOMB_X1_Y6_N16
\contador[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~8_combout\ = (contador(1) & (!\contador[0]~7\)) # (!contador(1) & ((\contador[0]~7\) # (GND)))
-- \contador[1]~9\ = CARRY((!\contador[0]~7\) # (!contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datad => VCC,
	cin => \contador[0]~7\,
	combout => \contador[1]~8_combout\,
	cout => \contador[1]~9\);

-- Location: IOIBUF_X0_Y6_N8
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X1_Y6_N17
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[1]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~3_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X1_Y6_N18
\contador[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~10_combout\ = (contador(2) & (\contador[1]~9\ $ (GND))) # (!contador(2) & (!\contador[1]~9\ & VCC))
-- \contador[2]~11\ = CARRY((contador(2) & !\contador[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~9\,
	combout => \contador[2]~10_combout\,
	cout => \contador[2]~11\);

-- Location: FF_X1_Y6_N19
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[2]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~3_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X1_Y6_N20
\contador[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~12_combout\ = (contador(3) & (!\contador[2]~11\)) # (!contador(3) & ((\contador[2]~11\) # (GND)))
-- \contador[3]~13\ = CARRY((!\contador[2]~11\) # (!contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(3),
	datad => VCC,
	cin => \contador[2]~11\,
	combout => \contador[3]~12_combout\,
	cout => \contador[3]~13\);

-- Location: FF_X1_Y6_N21
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[3]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~3_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X1_Y6_N22
\contador[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[4]~14_combout\ = (contador(4) & (\contador[3]~13\ $ (GND))) # (!contador(4) & (!\contador[3]~13\ & VCC))
-- \contador[4]~15\ = CARRY((contador(4) & !\contador[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datad => VCC,
	cin => \contador[3]~13\,
	combout => \contador[4]~14_combout\,
	cout => \contador[4]~15\);

-- Location: FF_X1_Y6_N23
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[4]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~3_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X1_Y6_N24
\contador[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[5]~16_combout\ = \contador[4]~15\ $ (contador(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador(5),
	cin => \contador[4]~15\,
	combout => \contador[5]~16_combout\);

-- Location: FF_X1_Y6_N25
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[5]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~3_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X1_Y6_N8
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\valorRes[5]~input_o\ & (contador(5) & (\valorRes[4]~input_o\ $ (!contador(4))))) # (!\valorRes[5]~input_o\ & (!contador(5) & (\valorRes[4]~input_o\ $ (!contador(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valorRes[5]~input_o\,
	datab => \valorRes[4]~input_o\,
	datac => contador(4),
	datad => contador(5),
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X0_Y7_N22
\valorRes[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valorRes(1),
	o => \valorRes[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\valorRes[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valorRes(0),
	o => \valorRes[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\valorRes[1]~input_o\ & (contador(1) & (\valorRes[0]~input_o\ $ (!contador(0))))) # (!\valorRes[1]~input_o\ & (!contador(1) & (\valorRes[0]~input_o\ $ (!contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valorRes[1]~input_o\,
	datab => \valorRes[0]~input_o\,
	datac => contador(0),
	datad => contador(1),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y7_N8
\valorRes[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valorRes(2),
	o => \valorRes[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\valorRes[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valorRes(3),
	o => \valorRes[3]~input_o\);

-- Location: LCCOMB_X1_Y6_N6
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\valorRes[2]~input_o\ & (contador(2) & (\valorRes[3]~input_o\ $ (!contador(3))))) # (!\valorRes[2]~input_o\ & (!contador(2) & (\valorRes[3]~input_o\ $ (!contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valorRes[2]~input_o\,
	datab => contador(2),
	datac => \valorRes[3]~input_o\,
	datad => contador(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y6_N10
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: FF_X1_Y6_N15
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[0]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~3_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

ww_cuenta(0) <= \cuenta[0]~output_o\;

ww_cuenta(1) <= \cuenta[1]~output_o\;

ww_cuenta(2) <= \cuenta[2]~output_o\;

ww_cuenta(3) <= \cuenta[3]~output_o\;

ww_cuenta(4) <= \cuenta[4]~output_o\;

ww_cuenta(5) <= \cuenta[5]~output_o\;
END structure;


