-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "10/15/2024 20:14:23"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Lamparas IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	L1 : OUT std_logic;
	L2 : OUT std_logic;
	L3 : OUT std_logic;
	Imp : OUT std_logic;
	May : OUT std_logic;
	Men : OUT std_logic;
	Igual : OUT std_logic
	);
END Lamparas;

-- Design Ports Information


ARCHITECTURE structure OF Lamparas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_L1 : std_logic;
SIGNAL ww_L2 : std_logic;
SIGNAL ww_L3 : std_logic;
SIGNAL ww_Imp : std_logic;
SIGNAL ww_May : std_logic;
SIGNAL ww_Men : std_logic;
SIGNAL ww_Igual : std_logic;
SIGNAL \D~combout\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \L1~0_combout\ : std_logic;
SIGNAL \L2~0_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \L3~0_combout\ : std_logic;
SIGNAL \L3~1_combout\ : std_logic;
SIGNAL \Imp~0_combout\ : std_logic;
SIGNAL \May~0_combout\ : std_logic;
SIGNAL \May~1_combout\ : std_logic;
SIGNAL \Men~0_combout\ : std_logic;
SIGNAL \Men~1_combout\ : std_logic;
SIGNAL \Igual~0_combout\ : std_logic;
SIGNAL \Igual~1_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_E <= E;
L1 <= ww_L1;
L2 <= ww_L2;
L3 <= ww_L3;
Imp <= ww_Imp;
May <= ww_May;
Men <= ww_Men;
Igual <= ww_Igual;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_D,
	combout => \D~combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E,
	combout => \E~combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: LC_X7_Y4_N7
\L1~0\ : maxii_lcell
-- Equation(s):
-- \L1~0_combout\ = \D~combout\ $ (\E~combout\ $ (\C~combout\ $ (\B~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \E~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L1~0_combout\);

-- Location: LC_X7_Y4_N3
\L2~0\ : maxii_lcell
-- Equation(s):
-- \L2~0_combout\ = (\D~combout\ & ((\E~combout\ & (\C~combout\ & \B~combout\)) # (!\E~combout\ & (!\C~combout\ & !\B~combout\)))) # (!\D~combout\ & ((\E~combout\ & (!\C~combout\ & !\B~combout\)) # (!\E~combout\ & (\C~combout\ $ (\B~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8116",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \E~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L2~0_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: LC_X7_Y4_N8
\L3~0\ : maxii_lcell
-- Equation(s):
-- \L3~0_combout\ = (\A~combout\ & ((\B~combout\ & ((\C~combout\))) # (!\B~combout\ & (!\D~combout\ & !\C~combout\)))) # (!\A~combout\ & (\D~combout\ $ (((\C~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c15a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L3~0_combout\);

-- Location: LC_X7_Y4_N9
\L3~1\ : maxii_lcell
-- Equation(s):
-- \L3~1_combout\ = (\L3~0_combout\ & ((\E~combout\) # ((\D~combout\ & !\B~combout\)))) # (!\L3~0_combout\ & (\E~combout\ & (\D~combout\ & !\B~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L3~0_combout\,
	datab => \E~combout\,
	datac => \D~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \L3~1_combout\);

-- Location: LC_X7_Y4_N4
\Imp~0\ : maxii_lcell
-- Equation(s):
-- \Imp~0_combout\ = (\D~combout\ & ((\E~combout\) # ((\C~combout\) # (\B~combout\)))) # (!\D~combout\ & (\C~combout\ & ((\E~combout\) # (\B~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fae8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \E~combout\,
	datac => \C~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Imp~0_combout\);

-- Location: LC_X7_Y3_N2
\May~0\ : maxii_lcell
-- Equation(s):
-- \May~0_combout\ = ((\E~combout\ & (!\C~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E~combout\,
	datac => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \May~0_combout\);

-- Location: LC_X7_Y4_N5
\May~1\ : maxii_lcell
-- Equation(s):
-- \May~1_combout\ = (\A~combout\ & ((\B~combout\ & (\D~combout\ & \May~0_combout\)) # (!\B~combout\ & ((\D~combout\) # (\May~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\,
	datab => \B~combout\,
	datac => \D~combout\,
	datad => \May~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \May~1_combout\);

-- Location: LC_X7_Y4_N1
\Men~0\ : maxii_lcell
-- Equation(s):
-- \Men~0_combout\ = ((!\E~combout\ & (\C~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E~combout\,
	datac => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Men~0_combout\);

-- Location: LC_X7_Y4_N2
\Men~1\ : maxii_lcell
-- Equation(s):
-- \Men~1_combout\ = (\A~combout\ & ((\B~combout\ & ((\Men~0_combout\) # (!\D~combout\))) # (!\B~combout\ & (!\D~combout\ & \Men~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\,
	datab => \B~combout\,
	datac => \D~combout\,
	datad => \Men~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Men~1_combout\);

-- Location: LC_X7_Y4_N6
\Igual~0\ : maxii_lcell
-- Equation(s):
-- \Igual~0_combout\ = (\E~combout\ $ ((\C~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E~combout\,
	datac => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Igual~0_combout\);

-- Location: LC_X7_Y4_N0
\Igual~1\ : maxii_lcell
-- Equation(s):
-- \Igual~1_combout\ = (\A~combout\ & (!\Igual~0_combout\ & (\B~combout\ $ (!\D~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0082",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\,
	datab => \B~combout\,
	datac => \D~combout\,
	datad => \Igual~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Igual~1_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L1~0_combout\,
	oe => VCC,
	padio => ww_L1);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L2~0_combout\,
	oe => VCC,
	padio => ww_L2);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L3~1_combout\,
	oe => VCC,
	padio => ww_L3);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Imp~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Imp~0_combout\,
	oe => VCC,
	padio => ww_Imp);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\May~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \May~1_combout\,
	oe => VCC,
	padio => ww_May);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Men~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Men~1_combout\,
	oe => VCC,
	padio => ww_Men);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Igual~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Igual~1_combout\,
	oe => VCC,
	padio => ww_Igual);
END structure;


