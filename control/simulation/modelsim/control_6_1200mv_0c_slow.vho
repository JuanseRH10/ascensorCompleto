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

-- DATE "03/27/2025 15:25:11"

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

ENTITY 	control IS
    PORT (
	clk : IN std_logic;
	pisoActual : IN std_logic_vector(2 DOWNTO 0);
	pet1 : IN std_logic_vector(2 DOWNTO 0);
	pet2 : IN std_logic_vector(2 DOWNTO 0);
	sensor1 : IN std_logic;
	sensor2 : IN std_logic;
	subir : OUT std_logic;
	bajar : OUT std_logic
	);
END control;

-- Design Ports Information
-- subir	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bajar	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor1	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor2	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control IS
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
SIGNAL ww_pisoActual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pet1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pet2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sensor1 : std_logic;
SIGNAL ww_sensor2 : std_logic;
SIGNAL ww_subir : std_logic;
SIGNAL ww_bajar : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \subir~output_o\ : std_logic;
SIGNAL \bajar~output_o\ : std_logic;
SIGNAL \pisoActual[0]~input_o\ : std_logic;
SIGNAL \pet2[0]~input_o\ : std_logic;
SIGNAL \U2|D1[0]~0_combout\ : std_logic;
SIGNAL \U2|D2[0]~0_combout\ : std_logic;
SIGNAL \pet2[2]~input_o\ : std_logic;
SIGNAL \pisoActual[2]~input_o\ : std_logic;
SIGNAL \pisoActual[1]~input_o\ : std_logic;
SIGNAL \pet2[1]~input_o\ : std_logic;
SIGNAL \U2|D1[0]~1\ : std_logic;
SIGNAL \U2|D1[1]~3\ : std_logic;
SIGNAL \U2|D1[2]~5\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|Add1~2_combout\ : std_logic;
SIGNAL \pet1[0]~input_o\ : std_logic;
SIGNAL \U1|D1[0]~0_combout\ : std_logic;
SIGNAL \U1|D2[0]~0_combout\ : std_logic;
SIGNAL \pet1[2]~input_o\ : std_logic;
SIGNAL \pet1[1]~input_o\ : std_logic;
SIGNAL \U1|D1[0]~1\ : std_logic;
SIGNAL \U1|D1[1]~3\ : std_logic;
SIGNAL \U1|D1[2]~5\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \U2|D2[0]~1\ : std_logic;
SIGNAL \U2|D2[1]~3\ : std_logic;
SIGNAL \U2|D2[2]~4_combout\ : std_logic;
SIGNAL \U2|D1[2]~4_combout\ : std_logic;
SIGNAL \U2|Add1~1_combout\ : std_logic;
SIGNAL \U1|D1[2]~4_combout\ : std_logic;
SIGNAL \U1|D2[0]~1\ : std_logic;
SIGNAL \U1|D2[1]~3\ : std_logic;
SIGNAL \U1|D2[2]~4_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U2|D2[1]~2_combout\ : std_logic;
SIGNAL \U2|D1[1]~2_combout\ : std_logic;
SIGNAL \U2|Add1~0_combout\ : std_logic;
SIGNAL \U1|D2[1]~2_combout\ : std_logic;
SIGNAL \U1|D1[1]~2_combout\ : std_logic;
SIGNAL \U1|Add1~1_combout\ : std_logic;
SIGNAL \U3|Equal0~0_combout\ : std_logic;
SIGNAL \U3|Equal0~1_combout\ : std_logic;
SIGNAL \U4|Equal0~0_combout\ : std_logic;
SIGNAL \orsube~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sensor1~input_o\ : std_logic;
SIGNAL \sensor2~input_o\ : std_logic;
SIGNAL \U6|sensorAprev~q\ : std_logic;
SIGNAL \U6|primeroA~2_combout\ : std_logic;
SIGNAL \U6|sensorBprev~q\ : std_logic;
SIGNAL \U6|primeroA~0_combout\ : std_logic;
SIGNAL \U6|primeroA~1_combout\ : std_logic;
SIGNAL \U6|primeroA~3_combout\ : std_logic;
SIGNAL \U6|primeroA~q\ : std_logic;
SIGNAL \U6|primeroB~0_combout\ : std_logic;
SIGNAL \U6|primeroB~1_combout\ : std_logic;
SIGNAL \U6|primeroB~q\ : std_logic;
SIGNAL \U6|process_0~0_combout\ : std_logic;
SIGNAL \U6|personaSale~0_combout\ : std_logic;
SIGNAL \U6|personaSale~q\ : std_logic;
SIGNAL \U6|personaEntra~feeder_combout\ : std_logic;
SIGNAL \U6|personaEntra~q\ : std_logic;
SIGNAL \U7|process_0~0_combout\ : std_logic;
SIGNAL \U7|cnt[3]~0_combout\ : std_logic;
SIGNAL \U7|cnt[1]~6_combout\ : std_logic;
SIGNAL \U7|cnt[2]~3_combout\ : std_logic;
SIGNAL \U7|cnt[2]~4_combout\ : std_logic;
SIGNAL \U7|cnt[3]~1_combout\ : std_logic;
SIGNAL \U7|cnt[3]~2_combout\ : std_logic;
SIGNAL \U7|LessThan0~0_combout\ : std_logic;
SIGNAL \U7|cnt~5_combout\ : std_logic;
SIGNAL \U8|AmayB~0_combout\ : std_logic;
SIGNAL \subir~0_combout\ : std_logic;
SIGNAL \U5|Equal0~0_combout\ : std_logic;
SIGNAL \subir~1_combout\ : std_logic;
SIGNAL \subir~2_combout\ : std_logic;
SIGNAL \U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|LessThan0~1_combout\ : std_logic;
SIGNAL \subir~3_combout\ : std_logic;
SIGNAL \bajar~0_combout\ : std_logic;
SIGNAL \bajar~1_combout\ : std_logic;
SIGNAL \bajar~2_combout\ : std_logic;
SIGNAL \bajar~3_combout\ : std_logic;
SIGNAL \U7|cnt\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_pisoActual <= pisoActual;
ww_pet1 <= pet1;
ww_pet2 <= pet2;
ww_sensor1 <= sensor1;
ww_sensor2 <= sensor2;
subir <= ww_subir;
bajar <= ww_bajar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X5_Y0_N23
\subir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subir~3_combout\,
	devoe => ww_devoe,
	o => \subir~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\bajar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bajar~3_combout\,
	devoe => ww_devoe,
	o => \bajar~output_o\);

-- Location: IOIBUF_X3_Y0_N22
\pisoActual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pisoActual(0),
	o => \pisoActual[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\pet2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(0),
	o => \pet2[0]~input_o\);

-- Location: LCCOMB_X2_Y1_N18
\U2|D1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|D1[0]~0_combout\ = (\pisoActual[0]~input_o\ & ((GND) # (!\pet2[0]~input_o\))) # (!\pisoActual[0]~input_o\ & (\pet2[0]~input_o\ $ (GND)))
-- \U2|D1[0]~1\ = CARRY((\pisoActual[0]~input_o\) # (!\pet2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[0]~input_o\,
	datab => \pet2[0]~input_o\,
	datad => VCC,
	combout => \U2|D1[0]~0_combout\,
	cout => \U2|D1[0]~1\);

-- Location: LCCOMB_X2_Y1_N0
\U2|D2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|D2[0]~0_combout\ = (\pisoActual[0]~input_o\ & (\pet2[0]~input_o\ $ (VCC))) # (!\pisoActual[0]~input_o\ & ((\pet2[0]~input_o\) # (GND)))
-- \U2|D2[0]~1\ = CARRY((\pet2[0]~input_o\) # (!\pisoActual[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[0]~input_o\,
	datab => \pet2[0]~input_o\,
	datad => VCC,
	combout => \U2|D2[0]~0_combout\,
	cout => \U2|D2[0]~1\);

-- Location: IOIBUF_X1_Y0_N15
\pet2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(2),
	o => \pet2[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\pisoActual[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pisoActual(2),
	o => \pisoActual[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\pisoActual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pisoActual(1),
	o => \pisoActual[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\pet2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(1),
	o => \pet2[1]~input_o\);

-- Location: LCCOMB_X2_Y1_N20
\U2|D1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|D1[1]~2_combout\ = (\pisoActual[1]~input_o\ & ((\pet2[1]~input_o\ & (!\U2|D1[0]~1\)) # (!\pet2[1]~input_o\ & (\U2|D1[0]~1\ & VCC)))) # (!\pisoActual[1]~input_o\ & ((\pet2[1]~input_o\ & ((\U2|D1[0]~1\) # (GND))) # (!\pet2[1]~input_o\ & 
-- (!\U2|D1[0]~1\))))
-- \U2|D1[1]~3\ = CARRY((\pisoActual[1]~input_o\ & (\pet2[1]~input_o\ & !\U2|D1[0]~1\)) # (!\pisoActual[1]~input_o\ & ((\pet2[1]~input_o\) # (!\U2|D1[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[1]~input_o\,
	datab => \pet2[1]~input_o\,
	datad => VCC,
	cin => \U2|D1[0]~1\,
	combout => \U2|D1[1]~2_combout\,
	cout => \U2|D1[1]~3\);

-- Location: LCCOMB_X2_Y1_N22
\U2|D1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|D1[2]~4_combout\ = ((\pet2[2]~input_o\ $ (\pisoActual[2]~input_o\ $ (\U2|D1[1]~3\)))) # (GND)
-- \U2|D1[2]~5\ = CARRY((\pet2[2]~input_o\ & (\pisoActual[2]~input_o\ & !\U2|D1[1]~3\)) # (!\pet2[2]~input_o\ & ((\pisoActual[2]~input_o\) # (!\U2|D1[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datab => \pisoActual[2]~input_o\,
	datad => VCC,
	cin => \U2|D1[1]~3\,
	combout => \U2|D1[2]~4_combout\,
	cout => \U2|D1[2]~5\);

-- Location: LCCOMB_X2_Y1_N24
\U2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|D1[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|D1[2]~5\,
	combout => \U2|Add0~0_combout\);

-- Location: LCCOMB_X2_Y1_N12
\U2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~2_combout\ = (\U2|Add0~0_combout\ & (\U2|D1[0]~0_combout\)) # (!\U2|Add0~0_combout\ & ((\U2|D2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|D1[0]~0_combout\,
	datac => \U2|D2[0]~0_combout\,
	datad => \U2|Add0~0_combout\,
	combout => \U2|Add1~2_combout\);

-- Location: IOIBUF_X3_Y0_N8
\pet1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(0),
	o => \pet1[0]~input_o\);

-- Location: LCCOMB_X3_Y1_N6
\U1|D1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D1[0]~0_combout\ = (\pisoActual[0]~input_o\ & ((GND) # (!\pet1[0]~input_o\))) # (!\pisoActual[0]~input_o\ & (\pet1[0]~input_o\ $ (GND)))
-- \U1|D1[0]~1\ = CARRY((\pisoActual[0]~input_o\) # (!\pet1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[0]~input_o\,
	datab => \pet1[0]~input_o\,
	datad => VCC,
	combout => \U1|D1[0]~0_combout\,
	cout => \U1|D1[0]~1\);

-- Location: LCCOMB_X3_Y1_N20
\U1|D2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D2[0]~0_combout\ = (\pisoActual[0]~input_o\ & (\pet1[0]~input_o\ $ (VCC))) # (!\pisoActual[0]~input_o\ & ((\pet1[0]~input_o\) # (GND)))
-- \U1|D2[0]~1\ = CARRY((\pet1[0]~input_o\) # (!\pisoActual[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[0]~input_o\,
	datab => \pet1[0]~input_o\,
	datad => VCC,
	combout => \U1|D2[0]~0_combout\,
	cout => \U1|D2[0]~1\);

-- Location: IOIBUF_X3_Y0_N15
\pet1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(2),
	o => \pet1[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\pet1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(1),
	o => \pet1[1]~input_o\);

-- Location: LCCOMB_X3_Y1_N8
\U1|D1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D1[1]~2_combout\ = (\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\ & (!\U1|D1[0]~1\)) # (!\pet1[1]~input_o\ & (\U1|D1[0]~1\ & VCC)))) # (!\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\ & ((\U1|D1[0]~1\) # (GND))) # (!\pet1[1]~input_o\ & 
-- (!\U1|D1[0]~1\))))
-- \U1|D1[1]~3\ = CARRY((\pisoActual[1]~input_o\ & (\pet1[1]~input_o\ & !\U1|D1[0]~1\)) # (!\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\) # (!\U1|D1[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[1]~input_o\,
	datab => \pet1[1]~input_o\,
	datad => VCC,
	cin => \U1|D1[0]~1\,
	combout => \U1|D1[1]~2_combout\,
	cout => \U1|D1[1]~3\);

-- Location: LCCOMB_X3_Y1_N10
\U1|D1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D1[2]~4_combout\ = ((\pisoActual[2]~input_o\ $ (\pet1[2]~input_o\ $ (\U1|D1[1]~3\)))) # (GND)
-- \U1|D1[2]~5\ = CARRY((\pisoActual[2]~input_o\ & ((!\U1|D1[1]~3\) # (!\pet1[2]~input_o\))) # (!\pisoActual[2]~input_o\ & (!\pet1[2]~input_o\ & !\U1|D1[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[2]~input_o\,
	datab => \pet1[2]~input_o\,
	datad => VCC,
	cin => \U1|D1[1]~3\,
	combout => \U1|D1[2]~4_combout\,
	cout => \U1|D1[2]~5\);

-- Location: LCCOMB_X3_Y1_N12
\U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|D1[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U1|D1[2]~5\,
	combout => \U1|Add0~0_combout\);

-- Location: LCCOMB_X3_Y1_N4
\U1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = (\U1|Add0~0_combout\ & (\U1|D1[0]~0_combout\)) # (!\U1|Add0~0_combout\ & ((\U1|D2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D1[0]~0_combout\,
	datab => \U1|D2[0]~0_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \U1|Add1~2_combout\);

-- Location: LCCOMB_X2_Y1_N2
\U2|D2[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|D2[1]~2_combout\ = (\pisoActual[1]~input_o\ & ((\pet2[1]~input_o\ & (!\U2|D2[0]~1\)) # (!\pet2[1]~input_o\ & ((\U2|D2[0]~1\) # (GND))))) # (!\pisoActual[1]~input_o\ & ((\pet2[1]~input_o\ & (\U2|D2[0]~1\ & VCC)) # (!\pet2[1]~input_o\ & 
-- (!\U2|D2[0]~1\))))
-- \U2|D2[1]~3\ = CARRY((\pisoActual[1]~input_o\ & ((!\U2|D2[0]~1\) # (!\pet2[1]~input_o\))) # (!\pisoActual[1]~input_o\ & (!\pet2[1]~input_o\ & !\U2|D2[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[1]~input_o\,
	datab => \pet2[1]~input_o\,
	datad => VCC,
	cin => \U2|D2[0]~1\,
	combout => \U2|D2[1]~2_combout\,
	cout => \U2|D2[1]~3\);

-- Location: LCCOMB_X2_Y1_N4
\U2|D2[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|D2[2]~4_combout\ = \pet2[2]~input_o\ $ (\pisoActual[2]~input_o\ $ (\U2|D2[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datab => \pisoActual[2]~input_o\,
	cin => \U2|D2[1]~3\,
	combout => \U2|D2[2]~4_combout\);

-- Location: LCCOMB_X2_Y1_N14
\U2|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~1_combout\ = (\U2|Add0~0_combout\ & ((\U2|D1[2]~4_combout\))) # (!\U2|Add0~0_combout\ & (\U2|D2[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|D2[2]~4_combout\,
	datac => \U2|D1[2]~4_combout\,
	datad => \U2|Add0~0_combout\,
	combout => \U2|Add1~1_combout\);

-- Location: LCCOMB_X3_Y1_N22
\U1|D2[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D2[1]~2_combout\ = (\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\ & (!\U1|D2[0]~1\)) # (!\pet1[1]~input_o\ & ((\U1|D2[0]~1\) # (GND))))) # (!\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\ & (\U1|D2[0]~1\ & VCC)) # (!\pet1[1]~input_o\ & 
-- (!\U1|D2[0]~1\))))
-- \U1|D2[1]~3\ = CARRY((\pisoActual[1]~input_o\ & ((!\U1|D2[0]~1\) # (!\pet1[1]~input_o\))) # (!\pisoActual[1]~input_o\ & (!\pet1[1]~input_o\ & !\U1|D2[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[1]~input_o\,
	datab => \pet1[1]~input_o\,
	datad => VCC,
	cin => \U1|D2[0]~1\,
	combout => \U1|D2[1]~2_combout\,
	cout => \U1|D2[1]~3\);

-- Location: LCCOMB_X3_Y1_N24
\U1|D2[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D2[2]~4_combout\ = \pisoActual[2]~input_o\ $ (\pet1[2]~input_o\ $ (\U1|D2[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[2]~input_o\,
	datab => \pet1[2]~input_o\,
	cin => \U1|D2[1]~3\,
	combout => \U1|D2[2]~4_combout\);

-- Location: LCCOMB_X3_Y1_N18
\U1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = (\U1|Add0~0_combout\ & (\U1|D1[2]~4_combout\)) # (!\U1|Add0~0_combout\ & ((\U1|D2[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D1[2]~4_combout\,
	datab => \U1|D2[2]~4_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \U1|Add1~0_combout\);

-- Location: LCCOMB_X2_Y1_N16
\U2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~0_combout\ = (\U2|Add0~0_combout\ & ((\U2|D1[1]~2_combout\))) # (!\U2|Add0~0_combout\ & (\U2|D2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|D2[1]~2_combout\,
	datac => \U2|D1[1]~2_combout\,
	datad => \U2|Add0~0_combout\,
	combout => \U2|Add1~0_combout\);

-- Location: LCCOMB_X3_Y1_N0
\U1|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~1_combout\ = (\U1|Add0~0_combout\ & ((\U1|D1[1]~2_combout\))) # (!\U1|Add0~0_combout\ & (\U1|D2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D2[1]~2_combout\,
	datac => \U1|D1[1]~2_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \U1|Add1~1_combout\);

-- Location: LCCOMB_X3_Y1_N2
\U3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~0_combout\ = (\U2|Add1~1_combout\ & (\U1|Add1~0_combout\ & (\U2|Add1~0_combout\ $ (!\U1|Add1~1_combout\)))) # (!\U2|Add1~1_combout\ & (!\U1|Add1~0_combout\ & (\U2|Add1~0_combout\ $ (!\U1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~1_combout\,
	datab => \U1|Add1~0_combout\,
	datac => \U2|Add1~0_combout\,
	datad => \U1|Add1~1_combout\,
	combout => \U3|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y1_N14
\U3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~1_combout\ = (\U3|Equal0~0_combout\ & (\U2|Add1~2_combout\ $ (!\U1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~2_combout\,
	datac => \U1|Add1~2_combout\,
	datad => \U3|Equal0~0_combout\,
	combout => \U3|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y1_N16
\U4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Equal0~0_combout\ = (!\pet1[2]~input_o\ & (!\pet1[0]~input_o\ & !\pet1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pet1[2]~input_o\,
	datac => \pet1[0]~input_o\,
	datad => \pet1[1]~input_o\,
	combout => \U4|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y1_N6
\orsube~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \orsube~0_combout\ = (\U2|Add0~0_combout\) # ((!\pet2[2]~input_o\ & (!\pet2[0]~input_o\ & !\pet2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datab => \pet2[0]~input_o\,
	datac => \pet2[1]~input_o\,
	datad => \U2|Add0~0_combout\,
	combout => \orsube~0_combout\);

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

-- Location: IOIBUF_X41_Y27_N1
\sensor1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor1,
	o => \sensor1~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\sensor2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor2,
	o => \sensor2~input_o\);

-- Location: FF_X36_Y27_N3
\U6|sensorAprev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sensor1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|sensorAprev~q\);

-- Location: LCCOMB_X36_Y27_N4
\U6|primeroA~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|primeroA~2_combout\ = (\U6|primeroA~q\) # ((\sensor1~input_o\ & (!\U6|sensorAprev~q\ & !\U6|primeroB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor1~input_o\,
	datab => \U6|primeroA~q\,
	datac => \U6|sensorAprev~q\,
	datad => \U6|primeroB~q\,
	combout => \U6|primeroA~2_combout\);

-- Location: FF_X36_Y27_N31
\U6|sensorBprev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sensor2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|sensorBprev~q\);

-- Location: LCCOMB_X36_Y27_N18
\U6|primeroA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|primeroA~0_combout\ = (\sensor1~input_o\ & (((\U6|sensorAprev~q\) # (!\U6|primeroB~q\)))) # (!\sensor1~input_o\ & (\sensor2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor1~input_o\,
	datab => \sensor2~input_o\,
	datac => \U6|primeroB~q\,
	datad => \U6|sensorAprev~q\,
	combout => \U6|primeroA~0_combout\);

-- Location: LCCOMB_X36_Y27_N12
\U6|primeroA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|primeroA~1_combout\ = (\U6|primeroA~0_combout\ & (((\U6|sensorBprev~q\) # (!\U6|primeroA~q\)) # (!\sensor2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor2~input_o\,
	datab => \U6|primeroA~q\,
	datac => \U6|sensorBprev~q\,
	datad => \U6|primeroA~0_combout\,
	combout => \U6|primeroA~1_combout\);

-- Location: LCCOMB_X36_Y27_N0
\U6|primeroA~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|primeroA~3_combout\ = (\U6|primeroA~2_combout\ & \U6|primeroA~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|primeroA~2_combout\,
	datad => \U6|primeroA~1_combout\,
	combout => \U6|primeroA~3_combout\);

-- Location: FF_X36_Y27_N1
\U6|primeroA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U6|primeroA~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|primeroA~q\);

-- Location: LCCOMB_X36_Y27_N26
\U6|primeroB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|primeroB~0_combout\ = (\U6|primeroB~q\) # ((\sensor2~input_o\ & (!\U6|primeroA~q\ & !\U6|sensorBprev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor2~input_o\,
	datab => \U6|primeroA~q\,
	datac => \U6|sensorBprev~q\,
	datad => \U6|primeroB~q\,
	combout => \U6|primeroB~0_combout\);

-- Location: LCCOMB_X36_Y27_N8
\U6|primeroB~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|primeroB~1_combout\ = (\U6|primeroB~0_combout\ & \U6|primeroA~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|primeroB~0_combout\,
	datad => \U6|primeroA~1_combout\,
	combout => \U6|primeroB~1_combout\);

-- Location: FF_X36_Y27_N9
\U6|primeroB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U6|primeroB~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|primeroB~q\);

-- Location: LCCOMB_X36_Y27_N28
\U6|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|process_0~0_combout\ = (\sensor2~input_o\ & (!\U6|sensorBprev~q\ & \U6|primeroA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor2~input_o\,
	datac => \U6|sensorBprev~q\,
	datad => \U6|primeroA~q\,
	combout => \U6|process_0~0_combout\);

-- Location: LCCOMB_X35_Y27_N22
\U6|personaSale~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|personaSale~0_combout\ = (\sensor1~input_o\ & (\U6|primeroB~q\ & (!\U6|sensorAprev~q\ & !\U6|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor1~input_o\,
	datab => \U6|primeroB~q\,
	datac => \U6|sensorAprev~q\,
	datad => \U6|process_0~0_combout\,
	combout => \U6|personaSale~0_combout\);

-- Location: FF_X35_Y27_N23
\U6|personaSale\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U6|personaSale~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|personaSale~q\);

-- Location: LCCOMB_X35_Y27_N12
\U6|personaEntra~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|personaEntra~feeder_combout\ = \U6|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|process_0~0_combout\,
	combout => \U6|personaEntra~feeder_combout\);

-- Location: FF_X35_Y27_N13
\U6|personaEntra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U6|personaEntra~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|personaEntra~q\);

-- Location: LCCOMB_X35_Y27_N10
\U7|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|process_0~0_combout\ = (!\U6|personaSale~q\ & \U6|personaEntra~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|personaSale~q\,
	datad => \U6|personaEntra~q\,
	combout => \U7|process_0~0_combout\);

-- Location: LCCOMB_X35_Y27_N24
\U7|cnt[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|cnt[3]~0_combout\ = (\U6|personaEntra~q\ & (\U6|personaSale~q\)) # (!\U6|personaEntra~q\ & ((!\U7|LessThan0~0_combout\) # (!\U6|personaSale~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|personaEntra~q\,
	datac => \U6|personaSale~q\,
	datad => \U7|LessThan0~0_combout\,
	combout => \U7|cnt[3]~0_combout\);

-- Location: LCCOMB_X35_Y27_N6
\U7|cnt[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|cnt[1]~6_combout\ = \U7|cnt\(1) $ (((!\U7|cnt[3]~0_combout\ & (\U7|process_0~0_combout\ $ (!\U7|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|process_0~0_combout\,
	datab => \U7|cnt\(0),
	datac => \U7|cnt\(1),
	datad => \U7|cnt[3]~0_combout\,
	combout => \U7|cnt[1]~6_combout\);

-- Location: FF_X35_Y27_N7
\U7|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U7|cnt[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|cnt\(1));

-- Location: LCCOMB_X35_Y27_N26
\U7|cnt[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|cnt[2]~3_combout\ = (\U7|cnt\(0) & (\U6|personaEntra~q\ & (!\U6|personaSale~q\ & \U7|cnt\(1)))) # (!\U7|cnt\(0) & (!\U7|cnt\(1) & ((\U6|personaSale~q\) # (!\U6|personaEntra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|personaEntra~q\,
	datab => \U7|cnt\(0),
	datac => \U6|personaSale~q\,
	datad => \U7|cnt\(1),
	combout => \U7|cnt[2]~3_combout\);

-- Location: LCCOMB_X35_Y27_N14
\U7|cnt[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|cnt[2]~4_combout\ = \U7|cnt\(2) $ (((\U7|cnt[2]~3_combout\ & !\U7|cnt[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|cnt[2]~3_combout\,
	datac => \U7|cnt\(2),
	datad => \U7|cnt[3]~0_combout\,
	combout => \U7|cnt[2]~4_combout\);

-- Location: FF_X35_Y27_N15
\U7|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U7|cnt[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|cnt\(2));

-- Location: LCCOMB_X35_Y27_N28
\U7|cnt[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|cnt[3]~1_combout\ = (\U7|cnt\(0) & (\U7|cnt\(2) & (\U7|cnt\(1) & \U7|process_0~0_combout\))) # (!\U7|cnt\(0) & (!\U7|cnt\(2) & (!\U7|cnt\(1) & !\U7|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|cnt\(0),
	datab => \U7|cnt\(2),
	datac => \U7|cnt\(1),
	datad => \U7|process_0~0_combout\,
	combout => \U7|cnt[3]~1_combout\);

-- Location: LCCOMB_X35_Y27_N8
\U7|cnt[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|cnt[3]~2_combout\ = \U7|cnt\(3) $ (((\U7|cnt[3]~1_combout\ & !\U7|cnt[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U7|cnt[3]~1_combout\,
	datac => \U7|cnt\(3),
	datad => \U7|cnt[3]~0_combout\,
	combout => \U7|cnt[3]~2_combout\);

-- Location: FF_X35_Y27_N9
\U7|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U7|cnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|cnt\(3));

-- Location: LCCOMB_X35_Y27_N18
\U7|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|LessThan0~0_combout\ = (\U7|cnt\(1)) # ((\U7|cnt\(3)) # ((\U7|cnt\(2)) # (\U7|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|cnt\(1),
	datab => \U7|cnt\(3),
	datac => \U7|cnt\(2),
	datad => \U7|cnt\(0),
	combout => \U7|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y27_N16
\U7|cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|cnt~5_combout\ = (\U6|personaSale~q\ & ((\U6|personaEntra~q\ & (\U7|cnt\(0))) # (!\U6|personaEntra~q\ & (!\U7|cnt\(0) & \U7|LessThan0~0_combout\)))) # (!\U6|personaSale~q\ & (\U6|personaEntra~q\ $ ((\U7|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|personaSale~q\,
	datab => \U6|personaEntra~q\,
	datac => \U7|cnt\(0),
	datad => \U7|LessThan0~0_combout\,
	combout => \U7|cnt~5_combout\);

-- Location: FF_X35_Y27_N17
\U7|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U7|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|cnt\(0));

-- Location: LCCOMB_X35_Y27_N4
\U8|AmayB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U8|AmayB~0_combout\ = (\U7|cnt\(3) & ((\U7|cnt\(2)) # ((\U7|cnt\(0) & \U7|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|cnt\(0),
	datab => \U7|cnt\(1),
	datac => \U7|cnt\(3),
	datad => \U7|cnt\(2),
	combout => \U8|AmayB~0_combout\);

-- Location: LCCOMB_X4_Y1_N0
\subir~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \subir~0_combout\ = (!\U8|AmayB~0_combout\ & ((\U4|Equal0~0_combout\ & (!\orsube~0_combout\)) # (!\U4|Equal0~0_combout\ & ((!\U1|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal0~0_combout\,
	datab => \orsube~0_combout\,
	datac => \U8|AmayB~0_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \subir~0_combout\);

-- Location: LCCOMB_X2_Y1_N10
\U5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Equal0~0_combout\ = (!\pet2[2]~input_o\ & (!\pet2[0]~input_o\ & !\pet2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datab => \pet2[0]~input_o\,
	datac => \pet2[1]~input_o\,
	combout => \U5|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y1_N6
\subir~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \subir~1_combout\ = (\U5|Equal0~0_combout\ & (!\U4|Equal0~0_combout\ & ((!\U1|Add0~0_combout\)))) # (!\U5|Equal0~0_combout\ & (((!\U2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal0~0_combout\,
	datab => \U5|Equal0~0_combout\,
	datac => \U2|Add0~0_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \subir~1_combout\);

-- Location: LCCOMB_X4_Y1_N12
\subir~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \subir~2_combout\ = (\U3|Equal0~1_combout\ & (\subir~0_combout\)) # (!\U3|Equal0~1_combout\ & (((!\U8|AmayB~0_combout\ & \subir~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal0~1_combout\,
	datab => \subir~0_combout\,
	datac => \U8|AmayB~0_combout\,
	datad => \subir~1_combout\,
	combout => \subir~2_combout\);

-- Location: LCCOMB_X3_Y1_N26
\U3|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~0_combout\ = (\U2|Add1~1_combout\ & (\U1|Add1~0_combout\ & (!\U2|Add1~0_combout\ & \U1|Add1~1_combout\))) # (!\U2|Add1~1_combout\ & ((\U1|Add1~0_combout\) # ((!\U2|Add1~0_combout\ & \U1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~1_combout\,
	datab => \U1|Add1~0_combout\,
	datac => \U2|Add1~0_combout\,
	datad => \U1|Add1~1_combout\,
	combout => \U3|LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y1_N28
\U3|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~1_combout\ = (\U3|LessThan0~0_combout\) # ((!\U2|Add1~2_combout\ & (\U1|Add1~2_combout\ & \U3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~2_combout\,
	datab => \U1|Add1~2_combout\,
	datac => \U3|LessThan0~0_combout\,
	datad => \U3|Equal0~0_combout\,
	combout => \U3|LessThan0~1_combout\);

-- Location: LCCOMB_X4_Y1_N30
\subir~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \subir~3_combout\ = (\subir~2_combout\) # ((!\U3|LessThan0~1_combout\ & (!\U8|AmayB~0_combout\ & !\U3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subir~2_combout\,
	datab => \U3|LessThan0~1_combout\,
	datac => \U8|AmayB~0_combout\,
	datad => \U3|Equal0~1_combout\,
	combout => \subir~3_combout\);

-- Location: LCCOMB_X4_Y1_N28
\bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bajar~0_combout\ = (\U2|Add0~0_combout\ & ((\U4|Equal0~0_combout\) # (\U3|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal0~0_combout\,
	datab => \U3|LessThan0~1_combout\,
	datac => \U2|Add0~0_combout\,
	combout => \bajar~0_combout\);

-- Location: LCCOMB_X4_Y1_N10
\bajar~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bajar~1_combout\ = (\U4|Equal0~0_combout\ & (\U5|Equal0~0_combout\)) # (!\U4|Equal0~0_combout\ & (!\U5|Equal0~0_combout\ & \U3|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal0~0_combout\,
	datac => \U5|Equal0~0_combout\,
	datad => \U3|Equal0~1_combout\,
	combout => \bajar~1_combout\);

-- Location: LCCOMB_X4_Y1_N20
\bajar~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bajar~2_combout\ = (\U5|Equal0~0_combout\ & (\U1|Add0~0_combout\ & ((!\bajar~1_combout\)))) # (!\U5|Equal0~0_combout\ & ((\bajar~1_combout\ & (\U1|Add0~0_combout\)) # (!\bajar~1_combout\ & ((\bajar~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~0_combout\,
	datab => \bajar~0_combout\,
	datac => \U5|Equal0~0_combout\,
	datad => \bajar~1_combout\,
	combout => \bajar~2_combout\);

-- Location: LCCOMB_X4_Y1_N26
\bajar~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bajar~3_combout\ = (\bajar~2_combout\ & !\U8|AmayB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bajar~2_combout\,
	datac => \U8|AmayB~0_combout\,
	combout => \bajar~3_combout\);

ww_subir <= \subir~output_o\;

ww_bajar <= \bajar~output_o\;
END structure;


