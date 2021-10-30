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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/18/2021 13:29:53"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CD_8_3_PRIO IS
    PORT (
	Q4 : OUT std_logic;
	X : IN std_logic_vector(7 DOWNTO 0);
	W : IN std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic
	);
END CD_8_3_PRIO;

-- Design Ports Information
-- Q4	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CD_8_3_PRIO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_W : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Q4~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst4~1_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \inst5~1_combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst5~2_combout\ : std_logic;

BEGIN

Q4 <= ww_Q4;
ww_X <= X;
ww_W <= W;
Q2 <= ww_Q2;
Q1 <= ww_Q1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X34_Y10_N9
\Q4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~1_combout\,
	devoe => ww_devoe,
	o => \Q4~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\Q2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~1_combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~2_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOIBUF_X16_Y24_N15
\X[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\X[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\X[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: LCCOMB_X33_Y9_N24
\inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\X[5]~input_o\) # ((\X[6]~input_o\) # ((\X[4]~input_o\) # (\X[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[5]~input_o\,
	datab => \X[6]~input_o\,
	datac => \X[4]~input_o\,
	datad => \X[7]~input_o\,
	combout => \inst3~0_combout\);

-- Location: IOIBUF_X34_Y2_N15
\W~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: LCCOMB_X33_Y9_N2
\inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (\inst3~0_combout\ & \W~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3~0_combout\,
	datac => \W~input_o\,
	combout => \inst3~1_combout\);

-- Location: IOIBUF_X30_Y0_N1
\X[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: LCCOMB_X33_Y9_N12
\inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (!\X[4]~input_o\ & (!\X[5]~input_o\ & ((\X[3]~input_o\) # (\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \X[4]~input_o\,
	datac => \X[5]~input_o\,
	datad => \X[2]~input_o\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X33_Y9_N14
\inst4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4~1_combout\ = (\W~input_o\ & ((\inst4~0_combout\) # ((\X[6]~input_o\) # (\X[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~0_combout\,
	datab => \X[6]~input_o\,
	datac => \W~input_o\,
	datad => \X[7]~input_o\,
	combout => \inst4~1_combout\);

-- Location: IOIBUF_X34_Y2_N22
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X33_Y9_N26
\inst5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~1_combout\ = (!\X[4]~input_o\ & ((\X[3]~input_o\) # ((!\X[2]~input_o\ & \X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[4]~input_o\,
	datac => \X[3]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst5~1_combout\);

-- Location: LCCOMB_X33_Y9_N0
\inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\W~input_o\ & ((\X[7]~input_o\) # ((!\X[6]~input_o\ & \X[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \X[6]~input_o\,
	datac => \X[5]~input_o\,
	datad => \X[7]~input_o\,
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X33_Y9_N4
\inst5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~2_combout\ = (\inst5~0_combout\) # ((\W~input_o\ & (!\X[6]~input_o\ & \inst5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \X[6]~input_o\,
	datac => \inst5~1_combout\,
	datad => \inst5~0_combout\,
	combout => \inst5~2_combout\);

-- Location: IOIBUF_X21_Y0_N8
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

ww_Q4 <= \Q4~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q1 <= \Q1~output_o\;
END structure;


