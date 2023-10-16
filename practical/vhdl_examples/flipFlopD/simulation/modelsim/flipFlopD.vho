-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "10/16/2023 17:02:16"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	flipFlopD IS
    PORT (
	clk : IN std_logic;
	D : IN std_logic;
	nSet : IN std_logic;
	nRst : IN std_logic;
	Q : OUT std_logic;
	nQ : OUT std_logic
	);
END flipFlopD;

-- Design Ports Information
-- Q	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nQ	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRst	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSet	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flipFlopD IS
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
SIGNAL ww_D : std_logic;
SIGNAL ww_nSet : std_logic;
SIGNAL ww_nRst : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_nQ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \nRst~input_o\ : std_logic;
SIGNAL \nSet~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \sr20|nand0|y~1_combout\ : std_logic;
SIGNAL \sr30|nand0|y~1_combout\ : std_logic;
SIGNAL \sr31|nand0|y~1_combout\ : std_logic;
SIGNAL \sr31|nand1|y~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_nSet~input_o\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;
SIGNAL \ALT_INV_nRst~input_o\ : std_logic;
SIGNAL \sr20|nand0|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sr30|nand0|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sr31|nand0|ALT_INV_y~1_combout\ : std_logic;
SIGNAL \sr31|nand1|ALT_INV_y~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_D <= D;
ww_nSet <= nSet;
ww_nRst <= nRst;
Q <= ww_Q;
nQ <= ww_nQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_nSet~input_o\ <= NOT \nSet~input_o\;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;
\ALT_INV_nRst~input_o\ <= NOT \nRst~input_o\;
\sr20|nand0|ALT_INV_y~1_combout\ <= NOT \sr20|nand0|y~1_combout\;
\sr30|nand0|ALT_INV_y~1_combout\ <= NOT \sr30|nand0|y~1_combout\;
\sr31|nand0|ALT_INV_y~1_combout\ <= NOT \sr31|nand0|y~1_combout\;
\sr31|nand1|ALT_INV_y~0_combout\ <= NOT \sr31|nand1|y~0_combout\;

-- Location: IOOBUF_X89_Y36_N39
\Q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sr31|nand0|ALT_INV_y~1_combout\,
	devoe => ww_devoe,
	o => ww_Q);

-- Location: IOOBUF_X89_Y36_N56
\nQ~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sr31|nand1|ALT_INV_y~0_combout\,
	devoe => ww_devoe,
	o => ww_nQ);

-- Location: IOIBUF_X89_Y38_N21
\nRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRst,
	o => \nRst~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\nSet~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nSet,
	o => \nSet~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X88_Y38_N21
\sr20|nand0|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sr20|nand0|y~1_combout\ = ( \sr20|nand0|y~1_combout\ & ( \clk~input_o\ ) ) # ( !\sr20|nand0|y~1_combout\ & ( \clk~input_o\ & ( (!\nSet~input_o\) # ((!\sr30|nand0|y~1_combout\) # (!\nRst~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nSet~input_o\,
	datac => \sr30|nand0|ALT_INV_y~1_combout\,
	datad => \ALT_INV_nRst~input_o\,
	datae => \sr20|nand0|ALT_INV_y~1_combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \sr20|nand0|y~1_combout\);

-- Location: LABCELL_X88_Y38_N57
\sr30|nand0|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sr30|nand0|y~1_combout\ = ( \clk~input_o\ & ( (!\nRst~input_o\) # ((!\nSet~input_o\) # ((!\sr30|nand0|y~1_combout\) # (\sr20|nand0|y~1_combout\))) ) ) # ( !\clk~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nRst~input_o\,
	datab => \ALT_INV_nSet~input_o\,
	datac => \sr30|nand0|ALT_INV_y~1_combout\,
	datad => \sr20|nand0|ALT_INV_y~1_combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \sr30|nand0|y~1_combout\);

-- Location: LABCELL_X88_Y38_N51
\sr31|nand0|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sr31|nand0|y~1_combout\ = ( \D~input_o\ & ( \sr30|nand0|y~1_combout\ & ( (\nSet~input_o\ & ((!\nRst~input_o\) # (\sr31|nand0|y~1_combout\))) ) ) ) # ( !\D~input_o\ & ( \sr30|nand0|y~1_combout\ & ( (\nSet~input_o\ & ((!\nRst~input_o\) # 
-- (\sr31|nand0|y~1_combout\))) ) ) ) # ( \D~input_o\ & ( !\sr30|nand0|y~1_combout\ & ( (!\nRst~input_o\ & \nSet~input_o\) ) ) ) # ( !\D~input_o\ & ( !\sr30|nand0|y~1_combout\ & ( \nSet~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001010101000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nRst~input_o\,
	datac => \sr31|nand0|ALT_INV_y~1_combout\,
	datad => \ALT_INV_nSet~input_o\,
	datae => \ALT_INV_D~input_o\,
	dataf => \sr30|nand0|ALT_INV_y~1_combout\,
	combout => \sr31|nand0|y~1_combout\);

-- Location: LABCELL_X88_Y38_N54
\sr31|nand1|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sr31|nand1|y~0_combout\ = ( \sr30|nand0|y~1_combout\ & ( (\nRst~input_o\ & !\sr31|nand0|y~1_combout\) ) ) # ( !\sr30|nand0|y~1_combout\ & ( (\nRst~input_o\ & (!\sr31|nand0|y~1_combout\ & ((!\nSet~input_o\) # (\D~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000000010001010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nRst~input_o\,
	datab => \ALT_INV_nSet~input_o\,
	datac => \ALT_INV_D~input_o\,
	datad => \sr31|nand0|ALT_INV_y~1_combout\,
	dataf => \sr30|nand0|ALT_INV_y~1_combout\,
	combout => \sr31|nand1|y~0_combout\);

-- Location: LABCELL_X85_Y28_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


