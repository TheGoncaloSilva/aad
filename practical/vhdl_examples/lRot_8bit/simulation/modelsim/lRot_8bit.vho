-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/20/2023 16:40:32"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lRot_8bit IS
    PORT (
	dIn : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	dOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END lRot_8bit;

-- Design Ports Information
-- dOut[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lRot_8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \dIn[6]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \dIn[7]~input_o\ : std_logic;
SIGNAL \dIn[0]~input_o\ : std_logic;
SIGNAL \dIn[5]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \blk1|mult0|or0|y~0_combout\ : std_logic;
SIGNAL \dIn[3]~input_o\ : std_logic;
SIGNAL \dIn[4]~input_o\ : std_logic;
SIGNAL \dIn[2]~input_o\ : std_logic;
SIGNAL \dIn[1]~input_o\ : std_logic;
SIGNAL \blk1|mult4|or0|y~0_combout\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \blk2|mult0|or0|y~0_combout\ : std_logic;
SIGNAL \blk1|mult5|or0|y~0_combout\ : std_logic;
SIGNAL \blk1|mult1|or0|y~0_combout\ : std_logic;
SIGNAL \blk2|mult1|or0|y~0_combout\ : std_logic;
SIGNAL \blk1|mult2|or0|y~0_combout\ : std_logic;
SIGNAL \blk1|mult6|or0|y~0_combout\ : std_logic;
SIGNAL \blk2|mult2|or0|y~0_combout\ : std_logic;
SIGNAL \blk1|mult3|or0|y~0_combout\ : std_logic;
SIGNAL \blk1|mult7|or0|y~0_combout\ : std_logic;
SIGNAL \blk2|mult3|or0|y~0_combout\ : std_logic;
SIGNAL \blk2|mult4|or0|y~0_combout\ : std_logic;
SIGNAL \blk2|mult5|or0|y~0_combout\ : std_logic;
SIGNAL \blk2|mult6|or0|y~0_combout\ : std_logic;
SIGNAL \blk2|mult7|or0|y~0_combout\ : std_logic;
SIGNAL \ALT_INV_dIn[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dIn[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[2]~input_o\ : std_logic;
SIGNAL \blk1|mult3|or0|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \blk1|mult7|or0|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \blk1|mult2|or0|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \blk1|mult6|or0|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \blk1|mult1|or0|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \blk1|mult5|or0|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \blk1|mult0|or0|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \blk1|mult4|or0|ALT_INV_y~0_combout\ : std_logic;

BEGIN

ww_dIn <= dIn;
ww_sel <= sel;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_dIn[5]~input_o\ <= NOT \dIn[5]~input_o\;
\ALT_INV_dIn[6]~input_o\ <= NOT \dIn[6]~input_o\;
\ALT_INV_dIn[7]~input_o\ <= NOT \dIn[7]~input_o\;
\ALT_INV_dIn[0]~input_o\ <= NOT \dIn[0]~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_dIn[1]~input_o\ <= NOT \dIn[1]~input_o\;
\ALT_INV_dIn[2]~input_o\ <= NOT \dIn[2]~input_o\;
\ALT_INV_dIn[3]~input_o\ <= NOT \dIn[3]~input_o\;
\ALT_INV_dIn[4]~input_o\ <= NOT \dIn[4]~input_o\;
\ALT_INV_sel[2]~input_o\ <= NOT \sel[2]~input_o\;
\blk1|mult3|or0|ALT_INV_y~0_combout\ <= NOT \blk1|mult3|or0|y~0_combout\;
\blk1|mult7|or0|ALT_INV_y~0_combout\ <= NOT \blk1|mult7|or0|y~0_combout\;
\blk1|mult2|or0|ALT_INV_y~0_combout\ <= NOT \blk1|mult2|or0|y~0_combout\;
\blk1|mult6|or0|ALT_INV_y~0_combout\ <= NOT \blk1|mult6|or0|y~0_combout\;
\blk1|mult1|or0|ALT_INV_y~0_combout\ <= NOT \blk1|mult1|or0|y~0_combout\;
\blk1|mult5|or0|ALT_INV_y~0_combout\ <= NOT \blk1|mult5|or0|y~0_combout\;
\blk1|mult0|or0|ALT_INV_y~0_combout\ <= NOT \blk1|mult0|or0|y~0_combout\;
\blk1|mult4|or0|ALT_INV_y~0_combout\ <= NOT \blk1|mult4|or0|y~0_combout\;

-- Location: IOOBUF_X89_Y9_N39
\dOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult0|or0|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dOut(0));

-- Location: IOOBUF_X89_Y37_N22
\dOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult1|or0|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dOut(1));

-- Location: IOOBUF_X89_Y37_N56
\dOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult2|or0|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dOut(2));

-- Location: IOOBUF_X89_Y9_N22
\dOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult3|or0|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dOut(3));

-- Location: IOOBUF_X89_Y35_N96
\dOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult4|or0|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dOut(4));

-- Location: IOOBUF_X89_Y37_N5
\dOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult5|or0|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dOut(5));

-- Location: IOOBUF_X89_Y37_N39
\dOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult6|or0|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dOut(6));

-- Location: IOOBUF_X89_Y35_N79
\dOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \blk2|mult7|or0|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dOut(7));

-- Location: IOIBUF_X89_Y35_N61
\dIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(6),
	o => \dIn[6]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\dIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(7),
	o => \dIn[7]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\dIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(0),
	o => \dIn[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\dIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(5),
	o => \dIn[5]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LABCELL_X88_Y35_N36
\blk1|mult0|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk1|mult0|or0|y~0_combout\ = ( \dIn[5]~input_o\ & ( \sel[1]~input_o\ & ( (\sel[0]~input_o\) # (\dIn[6]~input_o\) ) ) ) # ( !\dIn[5]~input_o\ & ( \sel[1]~input_o\ & ( (\dIn[6]~input_o\ & !\sel[0]~input_o\) ) ) ) # ( \dIn[5]~input_o\ & ( !\sel[1]~input_o\ 
-- & ( (!\sel[0]~input_o\ & ((\dIn[0]~input_o\))) # (\sel[0]~input_o\ & (\dIn[7]~input_o\)) ) ) ) # ( !\dIn[5]~input_o\ & ( !\sel[1]~input_o\ & ( (!\sel[0]~input_o\ & ((\dIn[0]~input_o\))) # (\sel[0]~input_o\ & (\dIn[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[6]~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_dIn[7]~input_o\,
	datad => \ALT_INV_dIn[0]~input_o\,
	datae => \ALT_INV_dIn[5]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \blk1|mult0|or0|y~0_combout\);

-- Location: IOIBUF_X89_Y38_N4
\dIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(3),
	o => \dIn[3]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\dIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(4),
	o => \dIn[4]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\dIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(2),
	o => \dIn[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\dIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(1),
	o => \dIn[1]~input_o\);

-- Location: LABCELL_X88_Y35_N30
\blk1|mult4|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk1|mult4|or0|y~0_combout\ = ( \sel[0]~input_o\ & ( \dIn[1]~input_o\ & ( (\dIn[3]~input_o\) # (\sel[1]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( \dIn[1]~input_o\ & ( (!\sel[1]~input_o\ & (\dIn[4]~input_o\)) # (\sel[1]~input_o\ & ((\dIn[2]~input_o\))) ) 
-- ) ) # ( \sel[0]~input_o\ & ( !\dIn[1]~input_o\ & ( (!\sel[1]~input_o\ & \dIn[3]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( !\dIn[1]~input_o\ & ( (!\sel[1]~input_o\ & (\dIn[4]~input_o\)) # (\sel[1]~input_o\ & ((\dIn[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_dIn[3]~input_o\,
	datac => \ALT_INV_dIn[4]~input_o\,
	datad => \ALT_INV_dIn[2]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_dIn[1]~input_o\,
	combout => \blk1|mult4|or0|y~0_combout\);

-- Location: IOIBUF_X89_Y38_N55
\sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: LABCELL_X88_Y35_N12
\blk2|mult0|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk2|mult0|or0|y~0_combout\ = ( \sel[2]~input_o\ & ( \blk1|mult4|or0|y~0_combout\ ) ) # ( !\sel[2]~input_o\ & ( \blk1|mult0|or0|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult0|or0|ALT_INV_y~0_combout\,
	datab => \blk1|mult4|or0|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_sel[2]~input_o\,
	combout => \blk2|mult0|or0|y~0_combout\);

-- Location: LABCELL_X88_Y35_N48
\blk1|mult5|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk1|mult5|or0|y~0_combout\ = ( \sel[0]~input_o\ & ( \dIn[2]~input_o\ & ( (\dIn[4]~input_o\) # (\sel[1]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( \dIn[2]~input_o\ & ( (!\sel[1]~input_o\ & (\dIn[5]~input_o\)) # (\sel[1]~input_o\ & ((\dIn[3]~input_o\))) ) 
-- ) ) # ( \sel[0]~input_o\ & ( !\dIn[2]~input_o\ & ( (!\sel[1]~input_o\ & \dIn[4]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( !\dIn[2]~input_o\ & ( (!\sel[1]~input_o\ & (\dIn[5]~input_o\)) # (\sel[1]~input_o\ & ((\dIn[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[5]~input_o\,
	datab => \ALT_INV_dIn[3]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_dIn[4]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_dIn[2]~input_o\,
	combout => \blk1|mult5|or0|y~0_combout\);

-- Location: LABCELL_X88_Y35_N54
\blk1|mult1|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk1|mult1|or0|y~0_combout\ = ( \dIn[7]~input_o\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\) # (\dIn[6]~input_o\) ) ) ) # ( !\dIn[7]~input_o\ & ( \sel[1]~input_o\ & ( (\dIn[6]~input_o\ & \sel[0]~input_o\) ) ) ) # ( \dIn[7]~input_o\ & ( !\sel[1]~input_o\ 
-- & ( (!\sel[0]~input_o\ & (\dIn[1]~input_o\)) # (\sel[0]~input_o\ & ((\dIn[0]~input_o\))) ) ) ) # ( !\dIn[7]~input_o\ & ( !\sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (\dIn[1]~input_o\)) # (\sel[0]~input_o\ & ((\dIn[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[6]~input_o\,
	datab => \ALT_INV_dIn[1]~input_o\,
	datac => \ALT_INV_dIn[0]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_dIn[7]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \blk1|mult1|or0|y~0_combout\);

-- Location: LABCELL_X88_Y37_N0
\blk2|mult1|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk2|mult1|or0|y~0_combout\ = ( \sel[2]~input_o\ & ( \blk1|mult5|or0|y~0_combout\ ) ) # ( !\sel[2]~input_o\ & ( \blk1|mult1|or0|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult5|or0|ALT_INV_y~0_combout\,
	datac => \blk1|mult1|or0|ALT_INV_y~0_combout\,
	datae => \ALT_INV_sel[2]~input_o\,
	combout => \blk2|mult1|or0|y~0_combout\);

-- Location: LABCELL_X88_Y35_N6
\blk1|mult2|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk1|mult2|or0|y~0_combout\ = ( \sel[0]~input_o\ & ( \dIn[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\dIn[1]~input_o\))) # (\sel[1]~input_o\ & (\dIn[7]~input_o\)) ) ) ) # ( !\sel[0]~input_o\ & ( \dIn[0]~input_o\ & ( (\sel[1]~input_o\) # (\dIn[2]~input_o\) ) 
-- ) ) # ( \sel[0]~input_o\ & ( !\dIn[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\dIn[1]~input_o\))) # (\sel[1]~input_o\ & (\dIn[7]~input_o\)) ) ) ) # ( !\sel[0]~input_o\ & ( !\dIn[0]~input_o\ & ( (\dIn[2]~input_o\ & !\sel[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[7]~input_o\,
	datab => \ALT_INV_dIn[2]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_dIn[1]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_dIn[0]~input_o\,
	combout => \blk1|mult2|or0|y~0_combout\);

-- Location: LABCELL_X88_Y35_N0
\blk1|mult6|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk1|mult6|or0|y~0_combout\ = ( \dIn[5]~input_o\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & ((\dIn[4]~input_o\))) # (\sel[0]~input_o\ & (\dIn[3]~input_o\)) ) ) ) # ( !\dIn[5]~input_o\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & ((\dIn[4]~input_o\))) 
-- # (\sel[0]~input_o\ & (\dIn[3]~input_o\)) ) ) ) # ( \dIn[5]~input_o\ & ( !\sel[1]~input_o\ & ( (\sel[0]~input_o\) # (\dIn[6]~input_o\) ) ) ) # ( !\dIn[5]~input_o\ & ( !\sel[1]~input_o\ & ( (\dIn[6]~input_o\ & !\sel[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[6]~input_o\,
	datab => \ALT_INV_dIn[3]~input_o\,
	datac => \ALT_INV_dIn[4]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_dIn[5]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \blk1|mult6|or0|y~0_combout\);

-- Location: LABCELL_X88_Y37_N36
\blk2|mult2|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk2|mult2|or0|y~0_combout\ = ( \blk1|mult6|or0|y~0_combout\ & ( (\sel[2]~input_o\) # (\blk1|mult2|or0|y~0_combout\) ) ) # ( !\blk1|mult6|or0|y~0_combout\ & ( (\blk1|mult2|or0|y~0_combout\ & !\sel[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \blk1|mult2|or0|ALT_INV_y~0_combout\,
	datad => \ALT_INV_sel[2]~input_o\,
	datae => \blk1|mult6|or0|ALT_INV_y~0_combout\,
	combout => \blk2|mult2|or0|y~0_combout\);

-- Location: LABCELL_X88_Y35_N18
\blk1|mult3|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk1|mult3|or0|y~0_combout\ = ( \sel[0]~input_o\ & ( \dIn[1]~input_o\ & ( (!\sel[1]~input_o\ & ((\dIn[2]~input_o\))) # (\sel[1]~input_o\ & (\dIn[0]~input_o\)) ) ) ) # ( !\sel[0]~input_o\ & ( \dIn[1]~input_o\ & ( (\dIn[3]~input_o\) # (\sel[1]~input_o\) ) 
-- ) ) # ( \sel[0]~input_o\ & ( !\dIn[1]~input_o\ & ( (!\sel[1]~input_o\ & ((\dIn[2]~input_o\))) # (\sel[1]~input_o\ & (\dIn[0]~input_o\)) ) ) ) # ( !\sel[0]~input_o\ & ( !\dIn[1]~input_o\ & ( (!\sel[1]~input_o\ & \dIn[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_dIn[3]~input_o\,
	datac => \ALT_INV_dIn[0]~input_o\,
	datad => \ALT_INV_dIn[2]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_dIn[1]~input_o\,
	combout => \blk1|mult3|or0|y~0_combout\);

-- Location: LABCELL_X88_Y35_N42
\blk1|mult7|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk1|mult7|or0|y~0_combout\ = ( \dIn[5]~input_o\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\) # (\dIn[4]~input_o\) ) ) ) # ( !\dIn[5]~input_o\ & ( \sel[1]~input_o\ & ( (\dIn[4]~input_o\ & \sel[0]~input_o\) ) ) ) # ( \dIn[5]~input_o\ & ( !\sel[1]~input_o\ 
-- & ( (!\sel[0]~input_o\ & ((\dIn[7]~input_o\))) # (\sel[0]~input_o\ & (\dIn[6]~input_o\)) ) ) ) # ( !\dIn[5]~input_o\ & ( !\sel[1]~input_o\ & ( (!\sel[0]~input_o\ & ((\dIn[7]~input_o\))) # (\sel[0]~input_o\ & (\dIn[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dIn[6]~input_o\,
	datab => \ALT_INV_dIn[4]~input_o\,
	datac => \ALT_INV_dIn[7]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_dIn[5]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \blk1|mult7|or0|y~0_combout\);

-- Location: LABCELL_X88_Y35_N24
\blk2|mult3|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk2|mult3|or0|y~0_combout\ = ( \sel[2]~input_o\ & ( \blk1|mult7|or0|y~0_combout\ ) ) # ( !\sel[2]~input_o\ & ( \blk1|mult3|or0|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult3|or0|ALT_INV_y~0_combout\,
	datab => \blk1|mult7|or0|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_sel[2]~input_o\,
	combout => \blk2|mult3|or0|y~0_combout\);

-- Location: LABCELL_X88_Y35_N15
\blk2|mult4|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk2|mult4|or0|y~0_combout\ = ( \sel[2]~input_o\ & ( \blk1|mult0|or0|y~0_combout\ ) ) # ( !\sel[2]~input_o\ & ( \blk1|mult4|or0|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult0|or0|ALT_INV_y~0_combout\,
	datab => \blk1|mult4|or0|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_sel[2]~input_o\,
	combout => \blk2|mult4|or0|y~0_combout\);

-- Location: LABCELL_X88_Y37_N15
\blk2|mult5|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk2|mult5|or0|y~0_combout\ = ( \sel[2]~input_o\ & ( \blk1|mult1|or0|y~0_combout\ ) ) # ( !\sel[2]~input_o\ & ( \blk1|mult5|or0|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult1|or0|ALT_INV_y~0_combout\,
	datad => \blk1|mult5|or0|ALT_INV_y~0_combout\,
	datae => \ALT_INV_sel[2]~input_o\,
	combout => \blk2|mult5|or0|y~0_combout\);

-- Location: LABCELL_X88_Y37_N21
\blk2|mult6|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk2|mult6|or0|y~0_combout\ = ( \blk1|mult6|or0|y~0_combout\ & ( (!\sel[2]~input_o\) # (\blk1|mult2|or0|y~0_combout\) ) ) # ( !\blk1|mult6|or0|y~0_combout\ & ( (\sel[2]~input_o\ & \blk1|mult2|or0|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel[2]~input_o\,
	datac => \blk1|mult2|or0|ALT_INV_y~0_combout\,
	datae => \blk1|mult6|or0|ALT_INV_y~0_combout\,
	combout => \blk2|mult6|or0|y~0_combout\);

-- Location: LABCELL_X88_Y35_N27
\blk2|mult7|or0|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \blk2|mult7|or0|y~0_combout\ = ( \sel[2]~input_o\ & ( \blk1|mult3|or0|y~0_combout\ ) ) # ( !\sel[2]~input_o\ & ( \blk1|mult7|or0|y~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \blk1|mult3|or0|ALT_INV_y~0_combout\,
	datab => \blk1|mult7|or0|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_sel[2]~input_o\,
	combout => \blk2|mult7|or0|y~0_combout\);

-- Location: LABCELL_X62_Y16_N0
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


