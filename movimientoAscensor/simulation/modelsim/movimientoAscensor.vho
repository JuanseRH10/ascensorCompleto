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

-- DATE "03/30/2025 23:15:29"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	movimientoAscensor IS
    PORT (
	enable : IN std_logic;
	pet1 : IN std_logic_vector(2 DOWNTO 0);
	pet2 : IN std_logic_vector(2 DOWNTO 0);
	pisoActual : IN std_logic_vector(2 DOWNTO 0);
	subir : OUT std_logic;
	bajar : OUT std_logic;
	quieto : OUT std_logic
	);
END movimientoAscensor;

-- Design Ports Information
-- subir	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bajar	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quieto	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF movimientoAscensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_pet1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pet2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pisoActual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_subir : std_logic;
SIGNAL ww_bajar : std_logic;
SIGNAL ww_quieto : std_logic;
SIGNAL \eleccion[30]~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \subir~output_o\ : std_logic;
SIGNAL \bajar~output_o\ : std_logic;
SIGNAL \quieto~output_o\ : std_logic;
SIGNAL \pet2[2]~input_o\ : std_logic;
SIGNAL \pet1[0]~input_o\ : std_logic;
SIGNAL \pet1[2]~input_o\ : std_logic;
SIGNAL \pet1[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \pisoActual[0]~input_o\ : std_logic;
SIGNAL \pet2[0]~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \pisoActual[2]~input_o\ : std_logic;
SIGNAL \pisoActual[1]~input_o\ : std_logic;
SIGNAL \pet2[1]~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \subir~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \subir~1_combout\ : std_logic;
SIGNAL \eleccion[2]~8_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \eleccion[30]~0_combout\ : std_logic;
SIGNAL \eleccion[30]~9_combout\ : std_logic;
SIGNAL \eleccion[30]~9clkctrl_outclk\ : std_logic;
SIGNAL \eleccion~1_combout\ : std_logic;
SIGNAL \eleccion~2_combout\ : std_logic;
SIGNAL \eleccion~3_combout\ : std_logic;
SIGNAL \eleccion[0]~11_combout\ : std_logic;
SIGNAL \eleccion~6_combout\ : std_logic;
SIGNAL \eleccion~7_combout\ : std_logic;
SIGNAL \eleccion[1]~10_combout\ : std_logic;
SIGNAL \eleccion~4_combout\ : std_logic;
SIGNAL \eleccion~5_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \subir~2_combout\ : std_logic;
SIGNAL \subir~3_combout\ : std_logic;
SIGNAL \bajar~0_combout\ : std_logic;
SIGNAL \bajar~1_combout\ : std_logic;
SIGNAL \bajar~2_combout\ : std_logic;
SIGNAL \quieto~0_combout\ : std_logic;
SIGNAL eleccion : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_enable <= enable;
ww_pet1 <= pet1;
ww_pet2 <= pet2;
ww_pisoActual <= pisoActual;
subir <= ww_subir;
bajar <= ww_bajar;
quieto <= ww_quieto;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\eleccion[30]~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \eleccion[30]~9_combout\);

-- Location: IOOBUF_X0_Y9_N23
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

-- Location: IOOBUF_X14_Y0_N9
\bajar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bajar~2_combout\,
	devoe => ww_devoe,
	o => \bajar~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\quieto~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \quieto~0_combout\,
	devoe => ww_devoe,
	o => \quieto~output_o\);

-- Location: IOIBUF_X23_Y0_N1
\pet2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(2),
	o => \pet2[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\pet1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(0),
	o => \pet1[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
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

-- Location: LCCOMB_X17_Y9_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\pet1[0]~input_o\ & (!\pet1[2]~input_o\ & !\pet1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet1[0]~input_o\,
	datab => \pet1[2]~input_o\,
	datac => \pet1[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X19_Y0_N1
\pisoActual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pisoActual(0),
	o => \pisoActual[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\pet2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(0),
	o => \pet2[0]~input_o\);

-- Location: LCCOMB_X20_Y8_N6
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\pisoActual[0]~input_o\ & ((GND) # (!\pet2[0]~input_o\))) # (!\pisoActual[0]~input_o\ & (\pet2[0]~input_o\ $ (GND)))
-- \Add2~1\ = CARRY((\pisoActual[0]~input_o\) # (!\pet2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[0]~input_o\,
	datab => \pet2[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: IOIBUF_X14_Y0_N15
\pisoActual[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pisoActual(2),
	o => \pisoActual[2]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\pisoActual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pisoActual(1),
	o => \pisoActual[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\pet2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(1),
	o => \pet2[1]~input_o\);

-- Location: LCCOMB_X20_Y8_N8
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\pisoActual[1]~input_o\ & ((\pet2[1]~input_o\ & (!\Add2~1\)) # (!\pet2[1]~input_o\ & (\Add2~1\ & VCC)))) # (!\pisoActual[1]~input_o\ & ((\pet2[1]~input_o\ & ((\Add2~1\) # (GND))) # (!\pet2[1]~input_o\ & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\pisoActual[1]~input_o\ & (\pet2[1]~input_o\ & !\Add2~1\)) # (!\pisoActual[1]~input_o\ & ((\pet2[1]~input_o\) # (!\Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[1]~input_o\,
	datab => \pet2[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X20_Y8_N10
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\pet2[2]~input_o\ $ (\pisoActual[2]~input_o\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\pet2[2]~input_o\ & (\pisoActual[2]~input_o\ & !\Add2~3\)) # (!\pet2[2]~input_o\ & ((\pisoActual[2]~input_o\) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datab => \pisoActual[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X20_Y8_N12
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = \Add2~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~5\,
	combout => \Add2~6_combout\);

-- Location: LCCOMB_X20_Y8_N26
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = \Add2~4_combout\ $ (((!\Add2~6_combout\ & ((\Add2~0_combout\) # (\Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~6_combout\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X20_Y9_N16
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\pet1[0]~input_o\ & (\pisoActual[0]~input_o\ $ (VCC))) # (!\pet1[0]~input_o\ & ((\pisoActual[0]~input_o\) # (GND)))
-- \Add0~1\ = CARRY((\pisoActual[0]~input_o\) # (!\pet1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet1[0]~input_o\,
	datab => \pisoActual[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X20_Y9_N18
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\ & (!\Add0~1\)) # (!\pet1[1]~input_o\ & (\Add0~1\ & VCC)))) # (!\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\ & ((\Add0~1\) # (GND))) # (!\pet1[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\pisoActual[1]~input_o\ & (\pet1[1]~input_o\ & !\Add0~1\)) # (!\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[1]~input_o\,
	datab => \pet1[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X20_Y9_N20
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\pet1[2]~input_o\ $ (\pisoActual[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\pet1[2]~input_o\ & (\pisoActual[2]~input_o\ & !\Add0~3\)) # (!\pet1[2]~input_o\ & ((\pisoActual[2]~input_o\) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pet1[2]~input_o\,
	datab => \pisoActual[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X20_Y9_N22
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \Add0~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X20_Y8_N4
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\Add0~6_combout\) # ((\Add0~4_combout\) # ((\Add0~0_combout\) # (\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X20_Y9_N30
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \Add0~4_combout\ $ (((!\Add0~6_combout\ & ((\Add0~0_combout\) # (\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~2_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X20_Y8_N24
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Add2~0_combout\) # ((\Add2~4_combout\) # ((\Add2~2_combout\) # (\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~6_combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X20_Y8_N30
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\Add3~1_combout\ & (\Add1~0_combout\ & (\Add1~1_combout\ $ (!\Add3~0_combout\)))) # (!\Add3~1_combout\ & (!\Add1~0_combout\ & (\Add1~1_combout\ $ (!\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \Add1~1_combout\,
	datac => \Add1~0_combout\,
	datad => \Add3~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y9_N0
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\pet2[2]~input_o\ & (!\pet2[0]~input_o\ & !\pet2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datac => \pet2[0]~input_o\,
	datad => \pet2[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X20_Y8_N22
\subir~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \subir~0_combout\ = (\Add1~1_combout\ & (\Add3~0_combout\ & ((\Add1~0_combout\) # (!\Add3~1_combout\)))) # (!\Add1~1_combout\ & (((\Add1~0_combout\) # (\Add3~0_combout\)) # (!\Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \Add1~1_combout\,
	datac => \Add1~0_combout\,
	datad => \Add3~0_combout\,
	combout => \subir~0_combout\);

-- Location: LCCOMB_X20_Y8_N18
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = \Add0~2_combout\ $ (((!\Add0~6_combout\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X20_Y8_N16
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = \Add2~2_combout\ $ (((\Add2~0_combout\ & !\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~6_combout\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X20_Y8_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add1~2_combout\ & (\Add2~0_combout\ & (!\Add0~0_combout\ & \Add3~2_combout\))) # (!\Add1~2_combout\ & ((\Add3~2_combout\) # ((\Add2~0_combout\ & !\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add1~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Add3~2_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y8_N0
\subir~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \subir~1_combout\ = (!\Equal1~0_combout\ & (\subir~0_combout\ & ((!\LessThan0~0_combout\) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \subir~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \subir~1_combout\);

-- Location: LCCOMB_X17_Y9_N10
\eleccion[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion[2]~8_combout\ = (\Equal0~0_combout\ & (\pet2[2]~input_o\)) # (!\Equal0~0_combout\ & ((\subir~1_combout\ & (\pet2[2]~input_o\)) # (!\subir~1_combout\ & ((\pet1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \pet1[2]~input_o\,
	datad => \subir~1_combout\,
	combout => \eleccion[2]~8_combout\);

-- Location: LCCOMB_X20_Y8_N20
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\Add1~2_combout\ & (((!\Add2~0_combout\ & \Add0~0_combout\)) # (!\Add3~2_combout\))) # (!\Add1~2_combout\ & (!\Add2~0_combout\ & (\Add0~0_combout\ & !\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add1~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Add3~2_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X20_Y8_N2
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Add1~1_combout\ & (!\Add3~1_combout\ & (\Add1~0_combout\ & \Add3~0_combout\))) # (!\Add1~1_combout\ & ((\Add3~0_combout\) # ((!\Add3~1_combout\ & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \Add1~1_combout\,
	datac => \Add1~0_combout\,
	datad => \Add3~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X20_Y8_N14
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~1_combout\) # ((\LessThan1~2_combout\ & \LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~3_combout\);

-- Location: IOIBUF_X16_Y29_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X20_Y9_N28
\eleccion[30]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion[30]~0_combout\ = (\enable~input_o\ & ((!\Equal0~0_combout\) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \enable~input_o\,
	combout => \eleccion[30]~0_combout\);

-- Location: LCCOMB_X20_Y9_N2
\eleccion[30]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion[30]~9_combout\ = (\eleccion[30]~0_combout\ & ((\LessThan1~3_combout\) # ((\Equal0~0_combout\) # (!\subir~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \subir~1_combout\,
	datad => \eleccion[30]~0_combout\,
	combout => \eleccion[30]~9_combout\);

-- Location: CLKCTRL_G11
\eleccion[30]~9clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \eleccion[30]~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \eleccion[30]~9clkctrl_outclk\);

-- Location: LCCOMB_X17_Y9_N24
\eleccion[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- eleccion(2) = (GLOBAL(\eleccion[30]~9clkctrl_outclk\) & (\eleccion[2]~8_combout\)) # (!GLOBAL(\eleccion[30]~9clkctrl_outclk\) & ((eleccion(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eleccion[2]~8_combout\,
	datab => eleccion(2),
	datad => \eleccion[30]~9clkctrl_outclk\,
	combout => eleccion(2));

-- Location: LCCOMB_X17_Y9_N4
\eleccion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion~1_combout\ = (\subir~1_combout\ & (eleccion(2))) # (!\subir~1_combout\ & ((\pet1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => eleccion(2),
	datac => \pet1[2]~input_o\,
	datad => \subir~1_combout\,
	combout => \eleccion~1_combout\);

-- Location: LCCOMB_X17_Y9_N14
\eleccion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion~2_combout\ = (\Equal0~0_combout\) # ((\LessThan1~3_combout\ & \subir~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Equal0~0_combout\,
	datad => \subir~1_combout\,
	combout => \eleccion~2_combout\);

-- Location: LCCOMB_X17_Y9_N8
\eleccion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion~3_combout\ = (\eleccion~2_combout\ & ((\pet2[2]~input_o\))) # (!\eleccion~2_combout\ & (\eleccion~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eleccion~1_combout\,
	datac => \eleccion~2_combout\,
	datad => \pet2[2]~input_o\,
	combout => \eleccion~3_combout\);

-- Location: LCCOMB_X17_Y9_N22
\eleccion[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion[0]~11_combout\ = (\Equal0~0_combout\ & (((\pet2[0]~input_o\)))) # (!\Equal0~0_combout\ & ((\subir~1_combout\ & ((\pet2[0]~input_o\))) # (!\subir~1_combout\ & (\pet1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet1[0]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \pet2[0]~input_o\,
	datad => \subir~1_combout\,
	combout => \eleccion[0]~11_combout\);

-- Location: LCCOMB_X17_Y9_N28
\eleccion[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- eleccion(0) = (GLOBAL(\eleccion[30]~9clkctrl_outclk\) & ((\eleccion[0]~11_combout\))) # (!GLOBAL(\eleccion[30]~9clkctrl_outclk\) & (eleccion(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => eleccion(0),
	datac => \eleccion[0]~11_combout\,
	datad => \eleccion[30]~9clkctrl_outclk\,
	combout => eleccion(0));

-- Location: LCCOMB_X17_Y9_N6
\eleccion~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion~6_combout\ = (\subir~1_combout\ & (eleccion(0))) # (!\subir~1_combout\ & ((\pet1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => eleccion(0),
	datac => \pet1[0]~input_o\,
	datad => \subir~1_combout\,
	combout => \eleccion~6_combout\);

-- Location: LCCOMB_X17_Y9_N16
\eleccion~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion~7_combout\ = (\eleccion~2_combout\ & (\pet2[0]~input_o\)) # (!\eleccion~2_combout\ & ((\eleccion~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eleccion~2_combout\,
	datac => \pet2[0]~input_o\,
	datad => \eleccion~6_combout\,
	combout => \eleccion~7_combout\);

-- Location: LCCOMB_X17_Y9_N12
\eleccion[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion[1]~10_combout\ = (\Equal0~0_combout\ & (\pet2[1]~input_o\)) # (!\Equal0~0_combout\ & ((\subir~1_combout\ & (\pet2[1]~input_o\)) # (!\subir~1_combout\ & ((\pet1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[1]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \pet1[1]~input_o\,
	datad => \subir~1_combout\,
	combout => \eleccion[1]~10_combout\);

-- Location: LCCOMB_X17_Y9_N18
\eleccion[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- eleccion(1) = (GLOBAL(\eleccion[30]~9clkctrl_outclk\) & (\eleccion[1]~10_combout\)) # (!GLOBAL(\eleccion[30]~9clkctrl_outclk\) & ((eleccion(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eleccion[1]~10_combout\,
	datab => eleccion(1),
	datad => \eleccion[30]~9clkctrl_outclk\,
	combout => eleccion(1));

-- Location: LCCOMB_X17_Y9_N26
\eleccion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion~4_combout\ = (\subir~1_combout\ & (eleccion(1))) # (!\subir~1_combout\ & ((\pet1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => eleccion(1),
	datac => \pet1[1]~input_o\,
	datad => \subir~1_combout\,
	combout => \eleccion~4_combout\);

-- Location: LCCOMB_X17_Y9_N20
\eleccion~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eleccion~5_combout\ = (\eleccion~2_combout\ & ((\pet2[1]~input_o\))) # (!\eleccion~2_combout\ & (\eleccion~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eleccion~4_combout\,
	datac => \eleccion~2_combout\,
	datad => \pet2[1]~input_o\,
	combout => \eleccion~5_combout\);

-- Location: LCCOMB_X20_Y9_N12
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\eleccion~5_combout\ & (((\eleccion~7_combout\ & !\pisoActual[0]~input_o\)) # (!\pisoActual[1]~input_o\))) # (!\eleccion~5_combout\ & (\eleccion~7_combout\ & (!\pisoActual[1]~input_o\ & !\pisoActual[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eleccion~7_combout\,
	datab => \eleccion~5_combout\,
	datac => \pisoActual[1]~input_o\,
	datad => \pisoActual[0]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X20_Y9_N10
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\eleccion~3_combout\ & ((\LessThan2~0_combout\) # (!\pisoActual[2]~input_o\))) # (!\eleccion~3_combout\ & (!\pisoActual[2]~input_o\ & \LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eleccion~3_combout\,
	datab => \pisoActual[2]~input_o\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X20_Y9_N6
\subir~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \subir~2_combout\ = (!\LessThan1~3_combout\ & (!\Equal0~0_combout\ & \subir~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \subir~1_combout\,
	combout => \subir~2_combout\);

-- Location: LCCOMB_X20_Y9_N26
\subir~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \subir~3_combout\ = (\eleccion[30]~0_combout\ & ((\LessThan2~1_combout\) # (\subir~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \eleccion[30]~0_combout\,
	datad => \subir~2_combout\,
	combout => \subir~3_combout\);

-- Location: LCCOMB_X20_Y9_N14
\bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bajar~0_combout\ = (\eleccion~5_combout\ & (!\eleccion~7_combout\ & (\pisoActual[1]~input_o\ & \pisoActual[0]~input_o\))) # (!\eleccion~5_combout\ & ((\pisoActual[1]~input_o\) # ((!\eleccion~7_combout\ & \pisoActual[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eleccion~7_combout\,
	datab => \eleccion~5_combout\,
	datac => \pisoActual[1]~input_o\,
	datad => \pisoActual[0]~input_o\,
	combout => \bajar~0_combout\);

-- Location: LCCOMB_X20_Y9_N24
\bajar~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bajar~1_combout\ = (\pisoActual[2]~input_o\ & ((\bajar~0_combout\) # (!\eleccion~3_combout\))) # (!\pisoActual[2]~input_o\ & (\bajar~0_combout\ & !\eleccion~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pisoActual[2]~input_o\,
	datac => \bajar~0_combout\,
	datad => \eleccion~3_combout\,
	combout => \bajar~1_combout\);

-- Location: LCCOMB_X20_Y9_N8
\bajar~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bajar~2_combout\ = (!\LessThan2~1_combout\ & (\eleccion[30]~0_combout\ & \bajar~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \eleccion[30]~0_combout\,
	datad => \bajar~1_combout\,
	combout => \bajar~2_combout\);

-- Location: LCCOMB_X20_Y9_N4
\quieto~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \quieto~0_combout\ = ((!\LessThan2~1_combout\ & !\bajar~1_combout\)) # (!\eleccion[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \eleccion[30]~0_combout\,
	datad => \bajar~1_combout\,
	combout => \quieto~0_combout\);

ww_subir <= \subir~output_o\;

ww_bajar <= \bajar~output_o\;

ww_quieto <= \quieto~output_o\;
END structure;


