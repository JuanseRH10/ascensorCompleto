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

-- DATE "03/31/2025 00:32:59"

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

ENTITY 	actualizarPiso IS
    PORT (
	clk : IN std_logic;
	subir : IN std_logic;
	bajar : IN std_logic;
	quieto : IN std_logic;
	pisoActual : OUT std_logic_vector(2 DOWNTO 0)
	);
END actualizarPiso;

-- Design Ports Information
-- pisoActual[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pisoActual[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- subir	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bajar	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quieto	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF actualizarPiso IS
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
SIGNAL ww_pisoActual : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pisoActual[0]~output_o\ : std_logic;
SIGNAL \pisoActual[1]~output_o\ : std_logic;
SIGNAL \pisoActual[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \subir~input_o\ : std_logic;
SIGNAL \bajar~input_o\ : std_logic;
SIGNAL \quieto~input_o\ : std_logic;
SIGNAL \piso[0]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \piso[0]~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL piso : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_piso : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_subir <= subir;
ww_bajar <= bajar;
ww_quieto <= quieto;
pisoActual <= ww_pisoActual;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_piso(0) <= NOT piso(0);

-- Location: IOOBUF_X0_Y5_N2
\pisoActual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_piso(0),
	devoe => ww_devoe,
	o => \pisoActual[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\pisoActual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => piso(1),
	devoe => ww_devoe,
	o => \pisoActual[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\pisoActual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => piso(2),
	devoe => ww_devoe,
	o => \pisoActual[2]~output_o\);

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

-- Location: IOIBUF_X0_Y4_N8
\subir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_subir,
	o => \subir~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\bajar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bajar,
	o => \bajar~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\quieto~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_quieto,
	o => \quieto~input_o\);

-- Location: LCCOMB_X1_Y5_N28
\piso[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso[0]~0_combout\ = piso(0) $ (((!\quieto~input_o\ & ((\subir~input_o\) # (\bajar~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subir~input_o\,
	datab => \bajar~input_o\,
	datac => piso(0),
	datad => \quieto~input_o\,
	combout => \piso[0]~0_combout\);

-- Location: FF_X1_Y5_N29
\piso[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso(0));

-- Location: LCCOMB_X1_Y5_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \subir~input_o\ $ (piso(1) $ (piso(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subir~input_o\,
	datac => piso(1),
	datad => piso(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y5_N26
\piso[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso[0]~1_combout\ = (!\quieto~input_o\ & ((\subir~input_o\) # (\bajar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quieto~input_o\,
	datac => \subir~input_o\,
	datad => \bajar~input_o\,
	combout => \piso[0]~1_combout\);

-- Location: FF_X1_Y5_N7
\piso[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \piso[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso(1));

-- Location: LCCOMB_X1_Y5_N16
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = piso(2) $ (((piso(1) & (\subir~input_o\ & !piso(0))) # (!piso(1) & (!\subir~input_o\ & piso(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso(1),
	datab => \subir~input_o\,
	datac => piso(2),
	datad => piso(0),
	combout => \Add0~1_combout\);

-- Location: FF_X1_Y5_N17
\piso[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~1_combout\,
	ena => \piso[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso(2));

ww_pisoActual(0) <= \pisoActual[0]~output_o\;

ww_pisoActual(1) <= \pisoActual[1]~output_o\;

ww_pisoActual(2) <= \pisoActual[2]~output_o\;
END structure;


