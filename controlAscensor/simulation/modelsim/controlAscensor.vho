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

-- DATE "03/30/2025 23:36:22"

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

ENTITY 	controlAscensor IS
    PORT (
	pisoActual : IN std_logic_vector(2 DOWNTO 0);
	pet1 : IN std_logic_vector(2 DOWNTO 0);
	pet2 : IN std_logic_vector(2 DOWNTO 0);
	sobreCarga : IN std_logic;
	estadoPuerta : IN std_logic;
	anomalia : IN std_logic;
	cambiandoEstado : IN std_logic;
	subir : OUT std_logic;
	bajar : OUT std_logic;
	quieto : OUT std_logic
	);
END controlAscensor;

-- Design Ports Information
-- subir	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bajar	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quieto	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobreCarga	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoPuerta	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomalia	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambiandoEstado	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[2]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet2[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet1[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlAscensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pisoActual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pet1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pet2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sobreCarga : std_logic;
SIGNAL ww_estadoPuerta : std_logic;
SIGNAL ww_anomalia : std_logic;
SIGNAL ww_cambiandoEstado : std_logic;
SIGNAL ww_subir : std_logic;
SIGNAL ww_bajar : std_logic;
SIGNAL ww_quieto : std_logic;
SIGNAL \U1|eleccion[30]~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \subir~output_o\ : std_logic;
SIGNAL \bajar~output_o\ : std_logic;
SIGNAL \quieto~output_o\ : std_logic;
SIGNAL \pet2[1]~input_o\ : std_logic;
SIGNAL \pet2[0]~input_o\ : std_logic;
SIGNAL \pet2[2]~input_o\ : std_logic;
SIGNAL \U1|Equal1~0_combout\ : std_logic;
SIGNAL \pet1[2]~input_o\ : std_logic;
SIGNAL \pisoActual[2]~input_o\ : std_logic;
SIGNAL \pisoActual[1]~input_o\ : std_logic;
SIGNAL \pet1[1]~input_o\ : std_logic;
SIGNAL \pet1[0]~input_o\ : std_logic;
SIGNAL \pisoActual[0]~input_o\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|Add2~1\ : std_logic;
SIGNAL \U1|Add2~3\ : std_logic;
SIGNAL \U1|Add2~4_combout\ : std_logic;
SIGNAL \U1|Add2~5\ : std_logic;
SIGNAL \U1|Add2~6_combout\ : std_logic;
SIGNAL \U1|Add2~2_combout\ : std_logic;
SIGNAL \U1|Add2~0_combout\ : std_logic;
SIGNAL \U1|Add3~0_combout\ : std_logic;
SIGNAL \U1|Add1~1_combout\ : std_logic;
SIGNAL \U1|Add3~1_combout\ : std_logic;
SIGNAL \U1|subir~0_combout\ : std_logic;
SIGNAL \U1|Add3~2_combout\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|subir~1_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|LessThan1~2_combout\ : std_logic;
SIGNAL \U1|LessThan1~1_combout\ : std_logic;
SIGNAL \U1|LessThan1~3_combout\ : std_logic;
SIGNAL \U1|subir~2_combout\ : std_logic;
SIGNAL \sobreCarga~input_o\ : std_logic;
SIGNAL \estadoPuerta~input_o\ : std_logic;
SIGNAL \cambiandoEstado~input_o\ : std_logic;
SIGNAL \anomalia~input_o\ : std_logic;
SIGNAL \U1|eleccion[30]~0_combout\ : std_logic;
SIGNAL \U1|eleccion[30]~1_combout\ : std_logic;
SIGNAL \U1|eleccion~3_combout\ : std_logic;
SIGNAL \U1|eleccion[2]~9_combout\ : std_logic;
SIGNAL \U1|eleccion[30]~10_combout\ : std_logic;
SIGNAL \U1|eleccion[30]~10clkctrl_outclk\ : std_logic;
SIGNAL \U1|eleccion~2_combout\ : std_logic;
SIGNAL \U1|eleccion~4_combout\ : std_logic;
SIGNAL \U1|eleccion[1]~11_combout\ : std_logic;
SIGNAL \U1|eleccion~5_combout\ : std_logic;
SIGNAL \U1|eleccion~6_combout\ : std_logic;
SIGNAL \U1|eleccion[0]~12_combout\ : std_logic;
SIGNAL \U1|eleccion~7_combout\ : std_logic;
SIGNAL \U1|eleccion~8_combout\ : std_logic;
SIGNAL \U1|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|LessThan2~1_combout\ : std_logic;
SIGNAL \U1|subir~3_combout\ : std_logic;
SIGNAL \U1|bajar~0_combout\ : std_logic;
SIGNAL \U1|bajar~1_combout\ : std_logic;
SIGNAL \U1|bajar~2_combout\ : std_logic;
SIGNAL \U1|quieto~0_combout\ : std_logic;
SIGNAL \U1|eleccion\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_pisoActual <= pisoActual;
ww_pet1 <= pet1;
ww_pet2 <= pet2;
ww_sobreCarga <= sobreCarga;
ww_estadoPuerta <= estadoPuerta;
ww_anomalia <= anomalia;
ww_cambiandoEstado <= cambiandoEstado;
subir <= ww_subir;
bajar <= ww_bajar;
quieto <= ww_quieto;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|eleccion[30]~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|eleccion[30]~10_combout\);

-- Location: IOOBUF_X16_Y29_N2
\subir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|subir~3_combout\,
	devoe => ww_devoe,
	o => \subir~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\bajar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|bajar~2_combout\,
	devoe => ww_devoe,
	o => \bajar~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\quieto~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|quieto~0_combout\,
	devoe => ww_devoe,
	o => \quieto~output_o\);

-- Location: IOIBUF_X0_Y2_N1
\pet2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(1),
	o => \pet2[1]~input_o\);

-- Location: IOIBUF_X16_Y29_N22
\pet2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(0),
	o => \pet2[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\pet2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet2(2),
	o => \pet2[2]~input_o\);

-- Location: LCCOMB_X14_Y11_N0
\U1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal1~0_combout\ = (!\pet2[1]~input_o\ & (!\pet2[0]~input_o\ & !\pet2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[1]~input_o\,
	datab => \pet2[0]~input_o\,
	datac => \pet2[2]~input_o\,
	combout => \U1|Equal1~0_combout\);

-- Location: IOIBUF_X23_Y29_N15
\pet1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(2),
	o => \pet1[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\pisoActual[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pisoActual(2),
	o => \pisoActual[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\pisoActual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pisoActual(1),
	o => \pisoActual[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\pet1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(1),
	o => \pet1[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\pet1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pet1(0),
	o => \pet1[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\pisoActual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pisoActual(0),
	o => \pisoActual[0]~input_o\);

-- Location: LCCOMB_X28_Y12_N16
\U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = (\pet1[0]~input_o\ & (\pisoActual[0]~input_o\ $ (VCC))) # (!\pet1[0]~input_o\ & ((\pisoActual[0]~input_o\) # (GND)))
-- \U1|Add0~1\ = CARRY((\pisoActual[0]~input_o\) # (!\pet1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet1[0]~input_o\,
	datab => \pisoActual[0]~input_o\,
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X28_Y12_N18
\U1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\ & (!\U1|Add0~1\)) # (!\pet1[1]~input_o\ & (\U1|Add0~1\ & VCC)))) # (!\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\ & ((\U1|Add0~1\) # (GND))) # (!\pet1[1]~input_o\ & (!\U1|Add0~1\))))
-- \U1|Add0~3\ = CARRY((\pisoActual[1]~input_o\ & (\pet1[1]~input_o\ & !\U1|Add0~1\)) # (!\pisoActual[1]~input_o\ & ((\pet1[1]~input_o\) # (!\U1|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[1]~input_o\,
	datab => \pet1[1]~input_o\,
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: LCCOMB_X28_Y12_N20
\U1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = ((\pet1[2]~input_o\ $ (\pisoActual[2]~input_o\ $ (\U1|Add0~3\)))) # (GND)
-- \U1|Add0~5\ = CARRY((\pet1[2]~input_o\ & (\pisoActual[2]~input_o\ & !\U1|Add0~3\)) # (!\pet1[2]~input_o\ & ((\pisoActual[2]~input_o\) # (!\U1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pet1[2]~input_o\,
	datab => \pisoActual[2]~input_o\,
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: LCCOMB_X28_Y12_N22
\U1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = \U1|Add0~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\);

-- Location: LCCOMB_X28_Y12_N12
\U1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = \U1|Add0~4_combout\ $ (((!\U1|Add0~6_combout\ & ((\U1|Add0~2_combout\) # (\U1|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~4_combout\,
	datab => \U1|Add0~2_combout\,
	datac => \U1|Add0~6_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \U1|Add1~0_combout\);

-- Location: LCCOMB_X14_Y11_N6
\U1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~0_combout\ = (\pisoActual[0]~input_o\ & ((GND) # (!\pet2[0]~input_o\))) # (!\pisoActual[0]~input_o\ & (\pet2[0]~input_o\ $ (GND)))
-- \U1|Add2~1\ = CARRY((\pisoActual[0]~input_o\) # (!\pet2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[0]~input_o\,
	datab => \pet2[0]~input_o\,
	datad => VCC,
	combout => \U1|Add2~0_combout\,
	cout => \U1|Add2~1\);

-- Location: LCCOMB_X14_Y11_N8
\U1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~2_combout\ = (\pet2[1]~input_o\ & ((\pisoActual[1]~input_o\ & (!\U1|Add2~1\)) # (!\pisoActual[1]~input_o\ & ((\U1|Add2~1\) # (GND))))) # (!\pet2[1]~input_o\ & ((\pisoActual[1]~input_o\ & (\U1|Add2~1\ & VCC)) # (!\pisoActual[1]~input_o\ & 
-- (!\U1|Add2~1\))))
-- \U1|Add2~3\ = CARRY((\pet2[1]~input_o\ & ((!\U1|Add2~1\) # (!\pisoActual[1]~input_o\))) # (!\pet2[1]~input_o\ & (!\pisoActual[1]~input_o\ & !\U1|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[1]~input_o\,
	datab => \pisoActual[1]~input_o\,
	datad => VCC,
	cin => \U1|Add2~1\,
	combout => \U1|Add2~2_combout\,
	cout => \U1|Add2~3\);

-- Location: LCCOMB_X14_Y11_N10
\U1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~4_combout\ = ((\pet2[2]~input_o\ $ (\pisoActual[2]~input_o\ $ (\U1|Add2~3\)))) # (GND)
-- \U1|Add2~5\ = CARRY((\pet2[2]~input_o\ & (\pisoActual[2]~input_o\ & !\U1|Add2~3\)) # (!\pet2[2]~input_o\ & ((\pisoActual[2]~input_o\) # (!\U1|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datab => \pisoActual[2]~input_o\,
	datad => VCC,
	cin => \U1|Add2~3\,
	combout => \U1|Add2~4_combout\,
	cout => \U1|Add2~5\);

-- Location: LCCOMB_X14_Y11_N12
\U1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add2~6_combout\ = \U1|Add2~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U1|Add2~5\,
	combout => \U1|Add2~6_combout\);

-- Location: LCCOMB_X14_Y11_N2
\U1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~0_combout\ = (\U1|Add2~4_combout\) # ((\U1|Add2~6_combout\) # ((\U1|Add2~2_combout\) # (\U1|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~4_combout\,
	datab => \U1|Add2~6_combout\,
	datac => \U1|Add2~2_combout\,
	datad => \U1|Add2~0_combout\,
	combout => \U1|Add3~0_combout\);

-- Location: LCCOMB_X28_Y12_N6
\U1|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~1_combout\ = (\U1|Add0~4_combout\) # ((\U1|Add0~2_combout\) # ((\U1|Add0~6_combout\) # (\U1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~4_combout\,
	datab => \U1|Add0~2_combout\,
	datac => \U1|Add0~6_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \U1|Add1~1_combout\);

-- Location: LCCOMB_X14_Y11_N28
\U1|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~1_combout\ = \U1|Add2~4_combout\ $ (((!\U1|Add2~6_combout\ & ((\U1|Add2~2_combout\) # (\U1|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~4_combout\,
	datab => \U1|Add2~6_combout\,
	datac => \U1|Add2~2_combout\,
	datad => \U1|Add2~0_combout\,
	combout => \U1|Add3~1_combout\);

-- Location: LCCOMB_X14_Y11_N14
\U1|subir~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|subir~0_combout\ = (\U1|Add3~0_combout\ & ((\U1|Add1~0_combout\) # ((!\U1|Add3~1_combout\) # (!\U1|Add1~1_combout\)))) # (!\U1|Add3~0_combout\ & (!\U1|Add1~1_combout\ & ((\U1|Add1~0_combout\) # (!\U1|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~0_combout\,
	datab => \U1|Add3~0_combout\,
	datac => \U1|Add1~1_combout\,
	datad => \U1|Add3~1_combout\,
	combout => \U1|subir~0_combout\);

-- Location: LCCOMB_X14_Y11_N24
\U1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add3~2_combout\ = \U1|Add2~2_combout\ $ (((!\U1|Add2~6_combout\ & \U1|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add2~6_combout\,
	datac => \U1|Add2~2_combout\,
	datad => \U1|Add2~0_combout\,
	combout => \U1|Add3~2_combout\);

-- Location: LCCOMB_X28_Y12_N30
\U1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = \U1|Add0~2_combout\ $ (((!\U1|Add0~6_combout\ & \U1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~2_combout\,
	datac => \U1|Add0~6_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \U1|Add1~2_combout\);

-- Location: LCCOMB_X14_Y11_N26
\U1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (\U1|Add3~2_combout\ & (((\U1|Add2~0_combout\ & !\U1|Add0~0_combout\)) # (!\U1|Add1~2_combout\))) # (!\U1|Add3~2_combout\ & (\U1|Add2~0_combout\ & (!\U1|Add0~0_combout\ & !\U1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~0_combout\,
	datab => \U1|Add3~2_combout\,
	datac => \U1|Add0~0_combout\,
	datad => \U1|Add1~2_combout\,
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y11_N4
\U1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan1~0_combout\ = (\U1|Add1~0_combout\ & (\U1|Add3~1_combout\ & (\U1|Add3~0_combout\ $ (!\U1|Add1~1_combout\)))) # (!\U1|Add1~0_combout\ & (!\U1|Add3~1_combout\ & (\U1|Add3~0_combout\ $ (!\U1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~0_combout\,
	datab => \U1|Add3~0_combout\,
	datac => \U1|Add1~1_combout\,
	datad => \U1|Add3~1_combout\,
	combout => \U1|LessThan1~0_combout\);

-- Location: LCCOMB_X14_Y11_N30
\U1|subir~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|subir~1_combout\ = (!\U1|Equal1~0_combout\ & (\U1|subir~0_combout\ & ((!\U1|LessThan1~0_combout\) # (!\U1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~0_combout\,
	datab => \U1|subir~0_combout\,
	datac => \U1|LessThan0~0_combout\,
	datad => \U1|LessThan1~0_combout\,
	combout => \U1|subir~1_combout\);

-- Location: LCCOMB_X27_Y11_N26
\U1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\pet1[0]~input_o\ & (!\pet1[1]~input_o\ & !\pet1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pet1[0]~input_o\,
	datac => \pet1[1]~input_o\,
	datad => \pet1[2]~input_o\,
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y11_N18
\U1|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan1~2_combout\ = (\U1|Add3~2_combout\ & (!\U1|Add2~0_combout\ & (\U1|Add0~0_combout\ & \U1|Add1~2_combout\))) # (!\U1|Add3~2_combout\ & ((\U1|Add1~2_combout\) # ((!\U1|Add2~0_combout\ & \U1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add2~0_combout\,
	datab => \U1|Add3~2_combout\,
	datac => \U1|Add0~0_combout\,
	datad => \U1|Add1~2_combout\,
	combout => \U1|LessThan1~2_combout\);

-- Location: LCCOMB_X14_Y11_N16
\U1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan1~1_combout\ = (\U1|Add3~0_combout\ & (((\U1|Add1~0_combout\ & !\U1|Add3~1_combout\)) # (!\U1|Add1~1_combout\))) # (!\U1|Add3~0_combout\ & (\U1|Add1~0_combout\ & (!\U1|Add1~1_combout\ & !\U1|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~0_combout\,
	datab => \U1|Add3~0_combout\,
	datac => \U1|Add1~1_combout\,
	datad => \U1|Add3~1_combout\,
	combout => \U1|LessThan1~1_combout\);

-- Location: LCCOMB_X14_Y11_N20
\U1|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan1~3_combout\ = (\U1|LessThan1~1_combout\) # ((\U1|LessThan1~0_combout\ & \U1|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan1~0_combout\,
	datab => \U1|LessThan1~2_combout\,
	datad => \U1|LessThan1~1_combout\,
	combout => \U1|LessThan1~3_combout\);

-- Location: LCCOMB_X27_Y11_N4
\U1|subir~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|subir~2_combout\ = (\U1|subir~1_combout\ & (!\U1|Equal0~0_combout\ & !\U1|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|subir~1_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \U1|LessThan1~3_combout\,
	combout => \U1|subir~2_combout\);

-- Location: IOIBUF_X26_Y0_N8
\sobreCarga~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sobreCarga,
	o => \sobreCarga~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\estadoPuerta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estadoPuerta,
	o => \estadoPuerta~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\cambiandoEstado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cambiandoEstado,
	o => \cambiandoEstado~input_o\);

-- Location: IOIBUF_X41_Y12_N22
\anomalia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_anomalia,
	o => \anomalia~input_o\);

-- Location: LCCOMB_X28_Y12_N2
\U1|eleccion[30]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion[30]~0_combout\ = (!\sobreCarga~input_o\ & (!\estadoPuerta~input_o\ & (!\cambiandoEstado~input_o\ & !\anomalia~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sobreCarga~input_o\,
	datab => \estadoPuerta~input_o\,
	datac => \cambiandoEstado~input_o\,
	datad => \anomalia~input_o\,
	combout => \U1|eleccion[30]~0_combout\);

-- Location: LCCOMB_X28_Y12_N24
\U1|eleccion[30]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion[30]~1_combout\ = (\U1|eleccion[30]~0_combout\ & ((!\U1|Equal0~0_combout\) # (!\U1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~0_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \U1|eleccion[30]~0_combout\,
	combout => \U1|eleccion[30]~1_combout\);

-- Location: LCCOMB_X27_Y11_N24
\U1|eleccion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion~3_combout\ = (\U1|Equal0~0_combout\) # ((\U1|subir~1_combout\ & \U1|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|subir~1_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \U1|LessThan1~3_combout\,
	combout => \U1|eleccion~3_combout\);

-- Location: LCCOMB_X27_Y11_N28
\U1|eleccion[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion[2]~9_combout\ = (\U1|subir~1_combout\ & (\pet2[2]~input_o\)) # (!\U1|subir~1_combout\ & ((\U1|Equal0~0_combout\ & (\pet2[2]~input_o\)) # (!\U1|Equal0~0_combout\ & ((\pet1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datab => \U1|subir~1_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \pet1[2]~input_o\,
	combout => \U1|eleccion[2]~9_combout\);

-- Location: LCCOMB_X27_Y11_N22
\U1|eleccion[30]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion[30]~10_combout\ = (\U1|eleccion[30]~1_combout\ & ((\U1|LessThan1~3_combout\) # ((\U1|Equal0~0_combout\) # (!\U1|subir~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan1~3_combout\,
	datab => \U1|subir~1_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \U1|eleccion[30]~1_combout\,
	combout => \U1|eleccion[30]~10_combout\);

-- Location: CLKCTRL_G16
\U1|eleccion[30]~10clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|eleccion[30]~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|eleccion[30]~10clkctrl_outclk\);

-- Location: LCCOMB_X27_Y11_N20
\U1|eleccion[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion\(2) = (GLOBAL(\U1|eleccion[30]~10clkctrl_outclk\) & (\U1|eleccion[2]~9_combout\)) # (!GLOBAL(\U1|eleccion[30]~10clkctrl_outclk\) & ((\U1|eleccion\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|eleccion[2]~9_combout\,
	datac => \U1|eleccion[30]~10clkctrl_outclk\,
	datad => \U1|eleccion\(2),
	combout => \U1|eleccion\(2));

-- Location: LCCOMB_X27_Y11_N16
\U1|eleccion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion~2_combout\ = (\U1|subir~1_combout\ & (\U1|eleccion\(2))) # (!\U1|subir~1_combout\ & ((\pet1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|eleccion\(2),
	datac => \U1|subir~1_combout\,
	datad => \pet1[2]~input_o\,
	combout => \U1|eleccion~2_combout\);

-- Location: LCCOMB_X27_Y11_N30
\U1|eleccion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion~4_combout\ = (\U1|eleccion~3_combout\ & (\pet2[2]~input_o\)) # (!\U1|eleccion~3_combout\ & ((\U1|eleccion~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[2]~input_o\,
	datab => \U1|eleccion~3_combout\,
	datad => \U1|eleccion~2_combout\,
	combout => \U1|eleccion~4_combout\);

-- Location: LCCOMB_X27_Y11_N18
\U1|eleccion[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion[1]~11_combout\ = (\U1|Equal0~0_combout\ & (((\pet2[1]~input_o\)))) # (!\U1|Equal0~0_combout\ & ((\U1|subir~1_combout\ & ((\pet2[1]~input_o\))) # (!\U1|subir~1_combout\ & (\pet1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \pet1[1]~input_o\,
	datac => \U1|subir~1_combout\,
	datad => \pet2[1]~input_o\,
	combout => \U1|eleccion[1]~11_combout\);

-- Location: LCCOMB_X27_Y11_N10
\U1|eleccion[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion\(1) = (GLOBAL(\U1|eleccion[30]~10clkctrl_outclk\) & (\U1|eleccion[1]~11_combout\)) # (!GLOBAL(\U1|eleccion[30]~10clkctrl_outclk\) & ((\U1|eleccion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|eleccion[1]~11_combout\,
	datac => \U1|eleccion[30]~10clkctrl_outclk\,
	datad => \U1|eleccion\(1),
	combout => \U1|eleccion\(1));

-- Location: LCCOMB_X27_Y11_N8
\U1|eleccion~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion~5_combout\ = (\U1|subir~1_combout\ & (\U1|eleccion\(1))) # (!\U1|subir~1_combout\ & ((\pet1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|eleccion\(1),
	datab => \U1|subir~1_combout\,
	datac => \pet1[1]~input_o\,
	combout => \U1|eleccion~5_combout\);

-- Location: LCCOMB_X27_Y11_N0
\U1|eleccion~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion~6_combout\ = (\U1|eleccion~3_combout\ & (\pet2[1]~input_o\)) # (!\U1|eleccion~3_combout\ & ((\U1|eleccion~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pet2[1]~input_o\,
	datac => \U1|eleccion~5_combout\,
	datad => \U1|eleccion~3_combout\,
	combout => \U1|eleccion~6_combout\);

-- Location: LCCOMB_X27_Y11_N12
\U1|eleccion[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion[0]~12_combout\ = (\U1|subir~1_combout\ & (\pet2[0]~input_o\)) # (!\U1|subir~1_combout\ & ((\U1|Equal0~0_combout\ & (\pet2[0]~input_o\)) # (!\U1|Equal0~0_combout\ & ((\pet1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[0]~input_o\,
	datab => \U1|subir~1_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \pet1[0]~input_o\,
	combout => \U1|eleccion[0]~12_combout\);

-- Location: LCCOMB_X27_Y11_N6
\U1|eleccion[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion\(0) = (GLOBAL(\U1|eleccion[30]~10clkctrl_outclk\) & (\U1|eleccion[0]~12_combout\)) # (!GLOBAL(\U1|eleccion[30]~10clkctrl_outclk\) & ((\U1|eleccion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|eleccion[0]~12_combout\,
	datac => \U1|eleccion[30]~10clkctrl_outclk\,
	datad => \U1|eleccion\(0),
	combout => \U1|eleccion\(0));

-- Location: LCCOMB_X27_Y11_N2
\U1|eleccion~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion~7_combout\ = (\U1|subir~1_combout\ & (\U1|eleccion\(0))) # (!\U1|subir~1_combout\ & ((\pet1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|eleccion\(0),
	datab => \U1|subir~1_combout\,
	datac => \pet1[0]~input_o\,
	combout => \U1|eleccion~7_combout\);

-- Location: LCCOMB_X27_Y11_N14
\U1|eleccion~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|eleccion~8_combout\ = (\U1|eleccion~3_combout\ & (\pet2[0]~input_o\)) # (!\U1|eleccion~3_combout\ & ((\U1|eleccion~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet2[0]~input_o\,
	datab => \U1|eleccion~3_combout\,
	datad => \U1|eleccion~7_combout\,
	combout => \U1|eleccion~8_combout\);

-- Location: LCCOMB_X28_Y12_N10
\U1|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan2~0_combout\ = (\pisoActual[1]~input_o\ & (!\pisoActual[0]~input_o\ & (\U1|eleccion~6_combout\ & \U1|eleccion~8_combout\))) # (!\pisoActual[1]~input_o\ & ((\U1|eleccion~6_combout\) # ((!\pisoActual[0]~input_o\ & \U1|eleccion~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[1]~input_o\,
	datab => \pisoActual[0]~input_o\,
	datac => \U1|eleccion~6_combout\,
	datad => \U1|eleccion~8_combout\,
	combout => \U1|LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y12_N4
\U1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan2~1_combout\ = (\pisoActual[2]~input_o\ & (\U1|eleccion~4_combout\ & \U1|LessThan2~0_combout\)) # (!\pisoActual[2]~input_o\ & ((\U1|eleccion~4_combout\) # (\U1|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pisoActual[2]~input_o\,
	datac => \U1|eleccion~4_combout\,
	datad => \U1|LessThan2~0_combout\,
	combout => \U1|LessThan2~1_combout\);

-- Location: LCCOMB_X28_Y12_N0
\U1|subir~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|subir~3_combout\ = (\U1|eleccion[30]~1_combout\ & ((\U1|subir~2_combout\) # (\U1|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|subir~2_combout\,
	datab => \U1|eleccion[30]~1_combout\,
	datac => \U1|LessThan2~1_combout\,
	combout => \U1|subir~3_combout\);

-- Location: LCCOMB_X28_Y12_N26
\U1|bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|bajar~0_combout\ = (\pisoActual[1]~input_o\ & (((\pisoActual[0]~input_o\ & !\U1|eleccion~8_combout\)) # (!\U1|eleccion~6_combout\))) # (!\pisoActual[1]~input_o\ & (\pisoActual[0]~input_o\ & (!\U1|eleccion~6_combout\ & !\U1|eleccion~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pisoActual[1]~input_o\,
	datab => \pisoActual[0]~input_o\,
	datac => \U1|eleccion~6_combout\,
	datad => \U1|eleccion~8_combout\,
	combout => \U1|bajar~0_combout\);

-- Location: LCCOMB_X28_Y12_N28
\U1|bajar~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|bajar~1_combout\ = (\U1|bajar~0_combout\ & ((\pisoActual[2]~input_o\) # (!\U1|eleccion~4_combout\))) # (!\U1|bajar~0_combout\ & (\pisoActual[2]~input_o\ & !\U1|eleccion~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bajar~0_combout\,
	datab => \pisoActual[2]~input_o\,
	datac => \U1|eleccion~4_combout\,
	combout => \U1|bajar~1_combout\);

-- Location: LCCOMB_X28_Y12_N8
\U1|bajar~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|bajar~2_combout\ = (\U1|eleccion[30]~1_combout\ & (!\U1|LessThan2~1_combout\ & \U1|bajar~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|eleccion[30]~1_combout\,
	datac => \U1|LessThan2~1_combout\,
	datad => \U1|bajar~1_combout\,
	combout => \U1|bajar~2_combout\);

-- Location: LCCOMB_X28_Y12_N14
\U1|quieto~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|quieto~0_combout\ = ((!\U1|LessThan2~1_combout\ & !\U1|bajar~1_combout\)) # (!\U1|eleccion[30]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|eleccion[30]~1_combout\,
	datac => \U1|LessThan2~1_combout\,
	datad => \U1|bajar~1_combout\,
	combout => \U1|quieto~0_combout\);

ww_subir <= \subir~output_o\;

ww_bajar <= \bajar~output_o\;

ww_quieto <= \quieto~output_o\;
END structure;


