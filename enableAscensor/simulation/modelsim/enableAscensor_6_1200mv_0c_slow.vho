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

-- DATE "03/30/2025 22:42:53"

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

ENTITY 	enableAscensor IS
    PORT (
	sobreCarga : IN std_logic;
	estadoPuerta : IN std_logic;
	anomalia : IN std_logic;
	cambiandoEstado : IN std_logic;
	enable : OUT std_logic
	);
END enableAscensor;

-- Design Ports Information
-- enable	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobreCarga	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoPuerta	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomalia	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambiandoEstado	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF enableAscensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sobreCarga : std_logic;
SIGNAL ww_estadoPuerta : std_logic;
SIGNAL ww_anomalia : std_logic;
SIGNAL ww_cambiandoEstado : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL \enable~output_o\ : std_logic;
SIGNAL \anomalia~input_o\ : std_logic;
SIGNAL \sobreCarga~input_o\ : std_logic;
SIGNAL \estadoPuerta~input_o\ : std_logic;
SIGNAL \cambiandoEstado~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;

BEGIN

ww_sobreCarga <= sobreCarga;
ww_estadoPuerta <= estadoPuerta;
ww_anomalia <= anomalia;
ww_cambiandoEstado <= cambiandoEstado;
enable <= ww_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;

-- Location: IOOBUF_X19_Y29_N30
\enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_process_0~0_combout\,
	devoe => ww_devoe,
	o => \enable~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\anomalia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_anomalia,
	o => \anomalia~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\sobreCarga~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sobreCarga,
	o => \sobreCarga~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\estadoPuerta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estadoPuerta,
	o => \estadoPuerta~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\cambiandoEstado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cambiandoEstado,
	o => \cambiandoEstado~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\anomalia~input_o\) # ((\sobreCarga~input_o\) # ((\estadoPuerta~input_o\) # (\cambiandoEstado~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \sobreCarga~input_o\,
	datac => \estadoPuerta~input_o\,
	datad => \cambiandoEstado~input_o\,
	combout => \process_0~0_combout\);

ww_enable <= \enable~output_o\;
END structure;


