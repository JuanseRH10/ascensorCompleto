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

-- DATE "03/29/2025 14:08:15"

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

ENTITY 	alarmas IS
    PORT (
	cantPer : IN std_logic_vector(3 DOWNTO 0);
	cuentaAscensor : IN std_logic_vector(5 DOWNTO 0);
	sensorEnergia : IN std_logic;
	masde10 : OUT std_logic;
	abrirCerrar : OUT std_logic;
	abrirCerrarSon : OUT std_logic;
	anomaliaEn : OUT std_logic;
	anomaliaEnSon : OUT std_logic;
	luz : OUT std_logic
	);
END alarmas;

-- Design Ports Information
-- masde10	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrirCerrar	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrirCerrarSon	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomaliaEn	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomaliaEnSon	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cantPer[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cantPer[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cantPer[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cantPer[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuentaAscensor[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuentaAscensor[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuentaAscensor[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuentaAscensor[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuentaAscensor[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuentaAscensor[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorEnergia	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alarmas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cantPer : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cuentaAscensor : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_sensorEnergia : std_logic;
SIGNAL ww_masde10 : std_logic;
SIGNAL ww_abrirCerrar : std_logic;
SIGNAL ww_abrirCerrarSon : std_logic;
SIGNAL ww_anomaliaEn : std_logic;
SIGNAL ww_anomaliaEnSon : std_logic;
SIGNAL ww_luz : std_logic;
SIGNAL \masde10~output_o\ : std_logic;
SIGNAL \abrirCerrar~output_o\ : std_logic;
SIGNAL \abrirCerrarSon~output_o\ : std_logic;
SIGNAL \anomaliaEn~output_o\ : std_logic;
SIGNAL \anomaliaEnSon~output_o\ : std_logic;
SIGNAL \luz~output_o\ : std_logic;
SIGNAL \cantPer[1]~input_o\ : std_logic;
SIGNAL \cantPer[2]~input_o\ : std_logic;
SIGNAL \cantPer[3]~input_o\ : std_logic;
SIGNAL \cantPer[0]~input_o\ : std_logic;
SIGNAL \U1|AmayB~0_combout\ : std_logic;
SIGNAL \cuentaAscensor[1]~input_o\ : std_logic;
SIGNAL \cuentaAscensor[0]~input_o\ : std_logic;
SIGNAL \cuentaAscensor[3]~input_o\ : std_logic;
SIGNAL \cuentaAscensor[2]~input_o\ : std_logic;
SIGNAL \cuentaAscensor[5]~input_o\ : std_logic;
SIGNAL \cuentaAscensor[4]~input_o\ : std_logic;
SIGNAL \U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|LessThan0~1_combout\ : std_logic;
SIGNAL \U4|Equal0~0_combout\ : std_logic;
SIGNAL \U3|Equal0~0_combout\ : std_logic;
SIGNAL \U3|Equal0~1_combout\ : std_logic;
SIGNAL \abrirCerrarSon~0_combout\ : std_logic;
SIGNAL \sensorEnergia~input_o\ : std_logic;
SIGNAL \luz~0_combout\ : std_logic;
SIGNAL \luz~1_combout\ : std_logic;

BEGIN

ww_cantPer <= cantPer;
ww_cuentaAscensor <= cuentaAscensor;
ww_sensorEnergia <= sensorEnergia;
masde10 <= ww_masde10;
abrirCerrar <= ww_abrirCerrar;
abrirCerrarSon <= ww_abrirCerrarSon;
anomaliaEn <= ww_anomaliaEn;
anomaliaEnSon <= ww_anomaliaEnSon;
luz <= ww_luz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y6_N16
\masde10~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|AmayB~0_combout\,
	devoe => ww_devoe,
	o => \masde10~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\abrirCerrar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|LessThan0~1_combout\,
	devoe => ww_devoe,
	o => \abrirCerrar~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\abrirCerrarSon~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \abrirCerrarSon~0_combout\,
	devoe => ww_devoe,
	o => \abrirCerrarSon~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\anomaliaEn~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sensorEnergia~input_o\,
	devoe => ww_devoe,
	o => \anomaliaEn~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\anomaliaEnSon~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sensorEnergia~input_o\,
	devoe => ww_devoe,
	o => \anomaliaEnSon~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\luz~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \luz~1_combout\,
	devoe => ww_devoe,
	o => \luz~output_o\);

-- Location: IOIBUF_X0_Y6_N1
\cantPer[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cantPer(1),
	o => \cantPer[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\cantPer[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cantPer(2),
	o => \cantPer[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\cantPer[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cantPer(3),
	o => \cantPer[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\cantPer[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cantPer(0),
	o => \cantPer[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N8
\U1|AmayB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|AmayB~0_combout\ = (\cantPer[3]~input_o\ & ((\cantPer[2]~input_o\) # ((\cantPer[1]~input_o\ & \cantPer[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cantPer[1]~input_o\,
	datab => \cantPer[2]~input_o\,
	datac => \cantPer[3]~input_o\,
	datad => \cantPer[0]~input_o\,
	combout => \U1|AmayB~0_combout\);

-- Location: IOIBUF_X0_Y6_N8
\cuentaAscensor[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuentaAscensor(1),
	o => \cuentaAscensor[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\cuentaAscensor[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuentaAscensor(0),
	o => \cuentaAscensor[0]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\cuentaAscensor[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuentaAscensor(3),
	o => \cuentaAscensor[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\cuentaAscensor[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuentaAscensor(2),
	o => \cuentaAscensor[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\cuentaAscensor[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuentaAscensor(5),
	o => \cuentaAscensor[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\cuentaAscensor[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuentaAscensor(4),
	o => \cuentaAscensor[4]~input_o\);

-- Location: LCCOMB_X1_Y6_N10
\U3|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~0_combout\ = (\cuentaAscensor[5]~input_o\) # ((\cuentaAscensor[4]~input_o\) # ((\cuentaAscensor[2]~input_o\ & \cuentaAscensor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuentaAscensor[2]~input_o\,
	datab => \cuentaAscensor[3]~input_o\,
	datac => \cuentaAscensor[5]~input_o\,
	datad => \cuentaAscensor[4]~input_o\,
	combout => \U3|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y6_N12
\U3|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~1_combout\ = (\U3|LessThan0~0_combout\) # ((\cuentaAscensor[1]~input_o\ & (\cuentaAscensor[0]~input_o\ & \cuentaAscensor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuentaAscensor[1]~input_o\,
	datab => \cuentaAscensor[0]~input_o\,
	datac => \cuentaAscensor[3]~input_o\,
	datad => \U3|LessThan0~0_combout\,
	combout => \U3|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y6_N26
\U4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Equal0~0_combout\ = (\cuentaAscensor[2]~input_o\ & (!\cuentaAscensor[0]~input_o\ & (!\cuentaAscensor[3]~input_o\ & \cuentaAscensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuentaAscensor[2]~input_o\,
	datab => \cuentaAscensor[0]~input_o\,
	datac => \cuentaAscensor[3]~input_o\,
	datad => \cuentaAscensor[1]~input_o\,
	combout => \U4|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y6_N6
\U3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~0_combout\ = (\cuentaAscensor[1]~input_o\ & (!\cuentaAscensor[0]~input_o\ & (!\cuentaAscensor[5]~input_o\ & !\cuentaAscensor[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuentaAscensor[1]~input_o\,
	datab => \cuentaAscensor[0]~input_o\,
	datac => \cuentaAscensor[5]~input_o\,
	datad => \cuentaAscensor[4]~input_o\,
	combout => \U3|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y6_N0
\U3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~1_combout\ = (!\cuentaAscensor[2]~input_o\ & (\cuentaAscensor[3]~input_o\ & \U3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuentaAscensor[2]~input_o\,
	datac => \cuentaAscensor[3]~input_o\,
	datad => \U3|Equal0~0_combout\,
	combout => \U3|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y6_N4
\abrirCerrarSon~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abrirCerrarSon~0_combout\ = (\U3|Equal0~1_combout\) # ((\U4|Equal0~0_combout\ & (\cuentaAscensor[4]~input_o\ & \cuentaAscensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Equal0~0_combout\,
	datab => \cuentaAscensor[4]~input_o\,
	datac => \cuentaAscensor[5]~input_o\,
	datad => \U3|Equal0~1_combout\,
	combout => \abrirCerrarSon~0_combout\);

-- Location: IOIBUF_X32_Y0_N22
\sensorEnergia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensorEnergia,
	o => \sensorEnergia~input_o\);

-- Location: LCCOMB_X1_Y6_N22
\luz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz~0_combout\ = (\cantPer[1]~input_o\) # ((\cantPer[2]~input_o\) # ((\cantPer[3]~input_o\) # (\cantPer[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cantPer[1]~input_o\,
	datab => \cantPer[2]~input_o\,
	datac => \cantPer[3]~input_o\,
	datad => \cantPer[0]~input_o\,
	combout => \luz~0_combout\);

-- Location: LCCOMB_X1_Y6_N16
\luz~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz~1_combout\ = (\luz~0_combout\) # ((!\U3|Equal0~1_combout\ & \U3|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Equal0~1_combout\,
	datac => \luz~0_combout\,
	datad => \U3|LessThan0~1_combout\,
	combout => \luz~1_combout\);

ww_masde10 <= \masde10~output_o\;

ww_abrirCerrar <= \abrirCerrar~output_o\;

ww_abrirCerrarSon <= \abrirCerrarSon~output_o\;

ww_anomaliaEn <= \anomaliaEn~output_o\;

ww_anomaliaEnSon <= \anomaliaEnSon~output_o\;

ww_luz <= \luz~output_o\;
END structure;


