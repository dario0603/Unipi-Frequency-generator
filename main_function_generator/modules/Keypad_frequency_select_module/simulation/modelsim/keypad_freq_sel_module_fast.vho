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

-- DATE "12/13/2025 16:06:34"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	keypad_freq_sel IS
    PORT (
	GPIO_1 : OUT std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	GPIO_0 : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END keypad_freq_sel;

-- Design Ports Information
-- GPIO_1[3]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[1]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[0]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[0]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF keypad_freq_sel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GPIO_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_GPIO_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|freq_div|q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BCD_C2_conv_inst|Add4~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~2\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~3_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~4\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~5_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~6\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~7_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~8\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~9_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~10\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add4~11_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~3_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~5_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~2\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~3_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~4\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~5_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~6\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~7_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~8\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~9_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~10\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~27\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~28_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~29\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~30_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~31\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~11_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~14\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~15_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~27\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~28_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~29\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~30_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~31\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~32_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~33\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add23~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add23~2\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add23~3_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add23~4\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add15~11_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~32_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~34_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add23~5_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add23~6\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~27\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add23~7_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add23~8\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~27\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~28_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~29\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~31\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~33\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~36_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add23~9_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add24~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~28_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~30_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~32_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~34_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[3]~38_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[5]~43_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[6]~45_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[8]~49_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[24]~81_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[26]~85_combout\ : std_logic;
SIGNAL \inst1|button_pressed~regout\ : std_logic;
SIGNAL \inst1|cont[6]~46_combout\ : std_logic;
SIGNAL \inst1|cont[12]~58_combout\ : std_logic;
SIGNAL \inst1|cont[19]~72_combout\ : std_logic;
SIGNAL \inst1|cont[21]~76_combout\ : std_logic;
SIGNAL \inst1|cont[22]~78_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~10_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~14_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~20_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~42_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~44_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~52_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~61\ : std_logic;
SIGNAL \inst1|freq_div|Add0~62_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add3~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add3~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add3~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add1~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add1~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add1~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add14~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add14~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add14~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add7~1_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add22~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add22~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add22~2_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control~6_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control~7_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control~8_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control~9_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~14_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan3~1_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~16_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~17_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~18_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~22_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~23_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~24_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|Selector25~0_combout\ : std_logic;
SIGNAL \inst1|Selector27~3_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|Selector27~5_combout\ : std_logic;
SIGNAL \inst1|Selector26~5_combout\ : std_logic;
SIGNAL \inst1|Selector25~1_combout\ : std_logic;
SIGNAL \inst1|Selector25~2_combout\ : std_logic;
SIGNAL \inst1|Selector25~3_combout\ : std_logic;
SIGNAL \inst1|Selector24~1_combout\ : std_logic;
SIGNAL \inst1|Selector24~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|freq_2[3]~5_combout\ : std_logic;
SIGNAL \inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|BCD_3~0_combout\ : std_logic;
SIGNAL \inst1|BCD_1~0_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|number_not_sel~1_combout\ : std_logic;
SIGNAL \inst1|number_not_sel~2_combout\ : std_logic;
SIGNAL \inst1|button_pressed~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[0]~32_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[2]~37\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[3]~39\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[4]~41_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[4]~42\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[5]~44\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[6]~46\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[7]~47_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[7]~48\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[8]~50\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[9]~51_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[9]~52\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[10]~54\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[11]~55_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[11]~56\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[12]~58\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[13]~59_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[13]~60\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[14]~61_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[14]~62\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[15]~63_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[15]~64\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[16]~65_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[16]~66\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[17]~67_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[17]~68\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[18]~69_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[18]~70\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[19]~72\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[20]~73_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[20]~74\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[21]~76\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[22]~77_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[21]~75_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[19]~71_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[12]~57_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[10]~53_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[22]~78\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[23]~79_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[23]~80\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[24]~82\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[25]~83_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[25]~84\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[26]~86\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[27]~87_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[27]~88\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[28]~90\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[29]~91_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[29]~92\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[30]~93_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[28]~89_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[7]~40_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[0]~33\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[1]~34_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[1]~35\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[2]~36_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[30]~94\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|i_column[31]~95_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|column[3]~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|column[2]~1_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|column[1]~2_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|column[0]~3_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~5_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~7_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|out_keys[15]~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~1_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~4_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~6_combout\ : std_logic;
SIGNAL \inst1|Equal17~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~10_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~21_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~20_combout\ : std_logic;
SIGNAL \inst1|Equal15~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~17_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~18_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~12_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~14_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|out_keys[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~15_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|out_keys[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~16_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|out_keys[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Equal7~0_combout\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~19_combout\ : std_logic;
SIGNAL \inst1|Equal10~1_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~9_combout\ : std_logic;
SIGNAL \inst1|Equal17~1_combout\ : std_logic;
SIGNAL \inst1|Equal10~0_combout\ : std_logic;
SIGNAL \inst1|Equal11~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~2_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~8_combout\ : std_logic;
SIGNAL \inst1|Equal8~0_combout\ : std_logic;
SIGNAL \inst1|Equal13~0_combout\ : std_logic;
SIGNAL \inst1|Equal16~0_combout\ : std_logic;
SIGNAL \inst1|WideNor0~3_combout\ : std_logic;
SIGNAL \inst1|Equal13~1_combout\ : std_logic;
SIGNAL \inst1|Equal14~0_combout\ : std_logic;
SIGNAL \inst1|Equal14~1_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~13_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys~11_combout\ : std_logic;
SIGNAL \inst1|Equal15~1_combout\ : std_logic;
SIGNAL \inst1|Equal5~1_combout\ : std_logic;
SIGNAL \inst1|Equal12~0_combout\ : std_logic;
SIGNAL \inst1|WideNor0~0_combout\ : std_logic;
SIGNAL \inst1|Equal6~4_combout\ : std_logic;
SIGNAL \inst1|Equal2~1_combout\ : std_logic;
SIGNAL \inst1|Equal8~1_combout\ : std_logic;
SIGNAL \inst1|Selector26~1_combout\ : std_logic;
SIGNAL \inst1|Equal10~2_combout\ : std_logic;
SIGNAL \inst1|WideNor0~1_combout\ : std_logic;
SIGNAL \inst1|Equal6~3_combout\ : std_logic;
SIGNAL \inst1|Equal5~2_combout\ : std_logic;
SIGNAL \inst1|Selector26~0_combout\ : std_logic;
SIGNAL \inst1|WideNor0~2_combout\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|number_not_sel~3_combout\ : std_logic;
SIGNAL \inst1|number_not_sel~regout\ : std_logic;
SIGNAL \inst1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|Add1~1_combout\ : std_logic;
SIGNAL \inst1|cont[0]~34_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst1|cont[9]~53\ : std_logic;
SIGNAL \inst1|cont[10]~55\ : std_logic;
SIGNAL \inst1|cont[11]~56_combout\ : std_logic;
SIGNAL \inst1|cont[11]~57\ : std_logic;
SIGNAL \inst1|cont[12]~59\ : std_logic;
SIGNAL \inst1|cont[13]~60_combout\ : std_logic;
SIGNAL \inst1|cont[13]~61\ : std_logic;
SIGNAL \inst1|cont[14]~62_combout\ : std_logic;
SIGNAL \inst1|cont[14]~63\ : std_logic;
SIGNAL \inst1|cont[15]~64_combout\ : std_logic;
SIGNAL \inst1|cont[15]~65\ : std_logic;
SIGNAL \inst1|cont[16]~66_combout\ : std_logic;
SIGNAL \inst1|cont[16]~67\ : std_logic;
SIGNAL \inst1|cont[17]~68_combout\ : std_logic;
SIGNAL \inst1|cont[17]~69\ : std_logic;
SIGNAL \inst1|cont[18]~70_combout\ : std_logic;
SIGNAL \inst1|cont[18]~71\ : std_logic;
SIGNAL \inst1|cont[19]~73\ : std_logic;
SIGNAL \inst1|cont[20]~74_combout\ : std_logic;
SIGNAL \inst1|cont[20]~75\ : std_logic;
SIGNAL \inst1|cont[21]~77\ : std_logic;
SIGNAL \inst1|cont[22]~79\ : std_logic;
SIGNAL \inst1|cont[23]~80_combout\ : std_logic;
SIGNAL \inst1|cont[23]~81\ : std_logic;
SIGNAL \inst1|cont[24]~83\ : std_logic;
SIGNAL \inst1|cont[25]~84_combout\ : std_logic;
SIGNAL \inst1|cont[25]~85\ : std_logic;
SIGNAL \inst1|cont[26]~87\ : std_logic;
SIGNAL \inst1|cont[27]~88_combout\ : std_logic;
SIGNAL \inst1|cont[27]~89\ : std_logic;
SIGNAL \inst1|cont[28]~91\ : std_logic;
SIGNAL \inst1|cont[29]~92_combout\ : std_logic;
SIGNAL \inst1|cont[29]~93\ : std_logic;
SIGNAL \inst1|cont[30]~94_combout\ : std_logic;
SIGNAL \inst1|cont[30]~95\ : std_logic;
SIGNAL \inst1|cont[31]~96_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|cont[4]~98_combout\ : std_logic;
SIGNAL \inst1|cont[0]~35\ : std_logic;
SIGNAL \inst1|cont[1]~36_combout\ : std_logic;
SIGNAL \inst1|cont[1]~37\ : std_logic;
SIGNAL \inst1|cont[2]~38_combout\ : std_logic;
SIGNAL \inst1|cont[2]~39\ : std_logic;
SIGNAL \inst1|cont[3]~41\ : std_logic;
SIGNAL \inst1|cont[4]~42_combout\ : std_logic;
SIGNAL \inst1|cont[4]~43\ : std_logic;
SIGNAL \inst1|cont[5]~45\ : std_logic;
SIGNAL \inst1|cont[6]~47\ : std_logic;
SIGNAL \inst1|cont[7]~48_combout\ : std_logic;
SIGNAL \inst1|cont[7]~49\ : std_logic;
SIGNAL \inst1|cont[8]~51\ : std_logic;
SIGNAL \inst1|cont[9]~52_combout\ : std_logic;
SIGNAL \inst1|cont[10]~54_combout\ : std_logic;
SIGNAL \inst1|cont[8]~50_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|cont[3]~40_combout\ : std_logic;
SIGNAL \inst1|cont[5]~44_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|cont[28]~90_combout\ : std_logic;
SIGNAL \inst1|LessThan0~7_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|cont[26]~86_combout\ : std_logic;
SIGNAL \inst1|cont[24]~82_combout\ : std_logic;
SIGNAL \inst1|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|LessThan0~8_combout\ : std_logic;
SIGNAL \inst1|LessThan0~9_combout\ : std_logic;
SIGNAL \inst1|debounced_keypad_pressed~0_combout\ : std_logic;
SIGNAL \inst1|debounced_keypad_pressed~regout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|data_valid~0_combout\ : std_logic;
SIGNAL \inst1|keypad_mod_inst|data_valid~regout\ : std_logic;
SIGNAL \inst1|next_page~0_combout\ : std_logic;
SIGNAL \inst1|digit_counter_BCD[2]~0_combout\ : std_logic;
SIGNAL \inst1|digit_counter[1]~1_combout\ : std_logic;
SIGNAL \inst1|freq_2[3]~4_combout\ : std_logic;
SIGNAL \inst1|always1~0_combout\ : std_logic;
SIGNAL \inst1|Selector24~0_combout\ : std_logic;
SIGNAL \inst1|freq_2[3]~6_combout\ : std_logic;
SIGNAL \inst1|digit_counter~2_combout\ : std_logic;
SIGNAL \inst1|digit_counter[2]~0_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|digit_counter~4_combout\ : std_logic;
SIGNAL \inst1|Selector30~0_combout\ : std_logic;
SIGNAL \inst1|digit_counter~3_combout\ : std_logic;
SIGNAL \inst1|Selector30~1_combout\ : std_logic;
SIGNAL \inst1|Selector30~2_combout\ : std_logic;
SIGNAL \inst1|Selector30~3_combout\ : std_logic;
SIGNAL \inst1|number_not_sel~0_combout\ : std_logic;
SIGNAL \inst1|freq_1~0_combout\ : std_logic;
SIGNAL \inst1|Selector27~1_combout\ : std_logic;
SIGNAL \inst1|BCD_1~3_combout\ : std_logic;
SIGNAL \inst1|BCD_5[0]~0_combout\ : std_logic;
SIGNAL \inst1|Selector27~0_combout\ : std_logic;
SIGNAL \inst1|Selector27~2_combout\ : std_logic;
SIGNAL \inst1|Selector27~6_combout\ : std_logic;
SIGNAL \inst1|BCD_1~2_combout\ : std_logic;
SIGNAL \inst1|Selector26~2_combout\ : std_logic;
SIGNAL \inst1|Equal7~1_combout\ : std_logic;
SIGNAL \inst1|Selector27~4_combout\ : std_logic;
SIGNAL \inst1|Selector26~3_combout\ : std_logic;
SIGNAL \inst1|Selector26~4_combout\ : std_logic;
SIGNAL \inst1|Selector26~6_combout\ : std_logic;
SIGNAL \inst1|Selector24~3_combout\ : std_logic;
SIGNAL \inst1|Selector24~4_combout\ : std_logic;
SIGNAL \inst1|Selector25~4_combout\ : std_logic;
SIGNAL \inst1|Selector25~5_combout\ : std_logic;
SIGNAL \inst1|Selector25~6_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~0_combout\ : std_logic;
SIGNAL \inst|WideOr5~0_combout\ : std_logic;
SIGNAL \inst|WideOr6~0_combout\ : std_logic;
SIGNAL \inst1|BCD_3~3_combout\ : std_logic;
SIGNAL \inst1|freq_3[0]~0_combout\ : std_logic;
SIGNAL \inst1|freq_2[0]~0_combout\ : std_logic;
SIGNAL \inst1|BCD_2~1_combout\ : std_logic;
SIGNAL \inst1|freq_2[2]~2_combout\ : std_logic;
SIGNAL \inst1|BCD_2~0_combout\ : std_logic;
SIGNAL \inst1|freq_2[3]~3_combout\ : std_logic;
SIGNAL \inst1|BCD_3~2_combout\ : std_logic;
SIGNAL \inst1|freq_3[1]~1_combout\ : std_logic;
SIGNAL \inst1|freq_2[1]~1_combout\ : std_logic;
SIGNAL \inst2|WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|WideOr1~0_combout\ : std_logic;
SIGNAL \inst2|WideOr2~0_combout\ : std_logic;
SIGNAL \inst2|WideOr3~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr5~0_combout\ : std_logic;
SIGNAL \inst2|WideOr6~0_combout\ : std_logic;
SIGNAL \inst1|BCD_4~0_combout\ : std_logic;
SIGNAL \inst1|freq_4[3]~3_combout\ : std_logic;
SIGNAL \inst1|freq_3[3]~3_combout\ : std_logic;
SIGNAL \inst1|BCD_3~1_combout\ : std_logic;
SIGNAL \inst1|freq_3[2]~2_combout\ : std_logic;
SIGNAL \inst3|WideOr0~0_combout\ : std_logic;
SIGNAL \inst3|WideOr1~0_combout\ : std_logic;
SIGNAL \inst3|WideOr2~0_combout\ : std_logic;
SIGNAL \inst3|WideOr3~0_combout\ : std_logic;
SIGNAL \inst3|WideOr4~0_combout\ : std_logic;
SIGNAL \inst3|WideOr5~0_combout\ : std_logic;
SIGNAL \inst3|WideOr6~0_combout\ : std_logic;
SIGNAL \inst1|BCD_7~3_combout\ : std_logic;
SIGNAL \inst1|freq_7~4_combout\ : std_logic;
SIGNAL \inst1|freq_7~5_combout\ : std_logic;
SIGNAL \inst1|freq_6[2]~2_combout\ : std_logic;
SIGNAL \inst1|freq_5[2]~2_combout\ : std_logic;
SIGNAL \inst1|BCD_4~1_combout\ : std_logic;
SIGNAL \inst1|freq_4[2]~2_combout\ : std_logic;
SIGNAL \inst1|BCD_4~3_combout\ : std_logic;
SIGNAL \inst1|freq_4[0]~0_combout\ : std_logic;
SIGNAL \inst1|BCD_5~1_combout\ : std_logic;
SIGNAL \inst1|freq_5[1]~1_combout\ : std_logic;
SIGNAL \inst1|freq_4[1]~1_combout\ : std_logic;
SIGNAL \inst4|WideOr0~0_combout\ : std_logic;
SIGNAL \inst4|WideOr1~0_combout\ : std_logic;
SIGNAL \inst4|WideOr2~0_combout\ : std_logic;
SIGNAL \inst4|WideOr3~0_combout\ : std_logic;
SIGNAL \inst4|WideOr4~0_combout\ : std_logic;
SIGNAL \inst4|WideOr5~0_combout\ : std_logic;
SIGNAL \inst4|WideOr6~0_combout\ : std_logic;
SIGNAL \inst1|BCD_6~3_combout\ : std_logic;
SIGNAL \inst1|freq_6[0]~0_combout\ : std_logic;
SIGNAL \inst1|freq_5[0]~0_combout\ : std_logic;
SIGNAL \inst1|BCD_6~0_combout\ : std_logic;
SIGNAL \inst1|freq_6[3]~3_combout\ : std_logic;
SIGNAL \inst1|freq_5[3]~3_combout\ : std_logic;
SIGNAL \inst5|WideOr0~0_combout\ : std_logic;
SIGNAL \inst5|WideOr1~0_combout\ : std_logic;
SIGNAL \inst5|WideOr2~0_combout\ : std_logic;
SIGNAL \inst5|WideOr3~0_combout\ : std_logic;
SIGNAL \inst5|WideOr4~0_combout\ : std_logic;
SIGNAL \inst5|WideOr5~0_combout\ : std_logic;
SIGNAL \inst5|WideOr6~0_combout\ : std_logic;
SIGNAL \inst1|BCD_7~0_combout\ : std_logic;
SIGNAL \inst1|freq_7~2_combout\ : std_logic;
SIGNAL \inst1|freq_7~3_combout\ : std_logic;
SIGNAL \inst1|freq_6[1]~1_combout\ : std_logic;
SIGNAL \inst6|WideOr0~0_combout\ : std_logic;
SIGNAL \inst6|WideOr1~0_combout\ : std_logic;
SIGNAL \inst6|WideOr2~0_combout\ : std_logic;
SIGNAL \inst6|WideOr3~0_combout\ : std_logic;
SIGNAL \inst6|WideOr4~0_combout\ : std_logic;
SIGNAL \inst6|WideOr5~0_combout\ : std_logic;
SIGNAL \inst6|WideOr6~0_combout\ : std_logic;
SIGNAL \inst1|BCD_7~2_combout\ : std_logic;
SIGNAL \inst1|freq_7~6_combout\ : std_logic;
SIGNAL \inst1|freq_7~7_combout\ : std_logic;
SIGNAL \inst1|BCD_7~1_combout\ : std_logic;
SIGNAL \inst1|freq_7~0_combout\ : std_logic;
SIGNAL \inst1|freq_7~1_combout\ : std_logic;
SIGNAL \inst7|WideOr0~0_combout\ : std_logic;
SIGNAL \inst7|WideOr1~0_combout\ : std_logic;
SIGNAL \inst7|WideOr2~0_combout\ : std_logic;
SIGNAL \inst7|WideOr3~0_combout\ : std_logic;
SIGNAL \inst7|WideOr4~0_combout\ : std_logic;
SIGNAL \inst7|WideOr5~0_combout\ : std_logic;
SIGNAL \inst7|WideOr6~0_combout\ : std_logic;
SIGNAL \inst1|freq_div|count~3_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~1\ : std_logic;
SIGNAL \inst1|freq_div|Add0~2_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~3\ : std_logic;
SIGNAL \inst1|freq_div|Add0~4_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~5\ : std_logic;
SIGNAL \inst1|freq_div|Add0~6_combout\ : std_logic;
SIGNAL \inst1|freq_div|count~4_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~7\ : std_logic;
SIGNAL \inst1|freq_div|Add0~8_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~9\ : std_logic;
SIGNAL \inst1|freq_div|Add0~11\ : std_logic;
SIGNAL \inst1|freq_div|Add0~12_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~0_combout\ : std_logic;
SIGNAL \inst1|freq_div|count~5_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~9_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~13\ : std_logic;
SIGNAL \inst1|freq_div|Add0~15\ : std_logic;
SIGNAL \inst1|freq_div|Add0~16_combout\ : std_logic;
SIGNAL \inst1|freq_div|count~2_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~17\ : std_logic;
SIGNAL \inst1|freq_div|Add0~18_combout\ : std_logic;
SIGNAL \inst1|freq_div|count~1_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~19\ : std_logic;
SIGNAL \inst1|freq_div|Add0~21\ : std_logic;
SIGNAL \inst1|freq_div|Add0~22_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~23\ : std_logic;
SIGNAL \inst1|freq_div|Add0~24_combout\ : std_logic;
SIGNAL \inst1|freq_div|count~0_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~25\ : std_logic;
SIGNAL \inst1|freq_div|Add0~26_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~27\ : std_logic;
SIGNAL \inst1|freq_div|Add0~28_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~29\ : std_logic;
SIGNAL \inst1|freq_div|Add0~30_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~31\ : std_logic;
SIGNAL \inst1|freq_div|Add0~32_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~33\ : std_logic;
SIGNAL \inst1|freq_div|Add0~34_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~35\ : std_logic;
SIGNAL \inst1|freq_div|Add0~36_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~37\ : std_logic;
SIGNAL \inst1|freq_div|Add0~39\ : std_logic;
SIGNAL \inst1|freq_div|Add0~40_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~41\ : std_logic;
SIGNAL \inst1|freq_div|Add0~43\ : std_logic;
SIGNAL \inst1|freq_div|Add0~45\ : std_logic;
SIGNAL \inst1|freq_div|Add0~46_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~47\ : std_logic;
SIGNAL \inst1|freq_div|Add0~48_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~49\ : std_logic;
SIGNAL \inst1|freq_div|Add0~50_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~51\ : std_logic;
SIGNAL \inst1|freq_div|Add0~53\ : std_logic;
SIGNAL \inst1|freq_div|Add0~54_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~55\ : std_logic;
SIGNAL \inst1|freq_div|Add0~56_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~57\ : std_logic;
SIGNAL \inst1|freq_div|Add0~58_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~59\ : std_logic;
SIGNAL \inst1|freq_div|Add0~60_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|freq_div|Add0~38_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|freq_div|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|freq_div|q~0_combout\ : std_logic;
SIGNAL \inst1|freq_div|q~regout\ : std_logic;
SIGNAL \inst1|freq_div|q~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|next_page~1_combout\ : std_logic;
SIGNAL \inst1|Equal6~2_combout\ : std_logic;
SIGNAL \inst1|Equal15~2_combout\ : std_logic;
SIGNAL \inst1|next_page~2_combout\ : std_logic;
SIGNAL \inst1|next_page~regout\ : std_logic;
SIGNAL \inst1|sel_C~0_combout\ : std_logic;
SIGNAL \inst1|sel_C~regout\ : std_logic;
SIGNAL \inst1|sel_B~0_combout\ : std_logic;
SIGNAL \inst1|sel_B~regout\ : std_logic;
SIGNAL \inst1|sel_A~0_combout\ : std_logic;
SIGNAL \inst1|sel_A~regout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add25~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add26~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add27~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add28~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~27\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~28_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~27\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~29\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~30_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~28_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~27\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~29\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~31\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~33\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~34_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~32_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~30_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~28_combout\ : std_logic;
SIGNAL \inst1|BCD_5~3_combout\ : std_logic;
SIGNAL \inst1|BCD_5~4_combout\ : std_logic;
SIGNAL \inst1|BCD_5~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add7~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add7~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add8~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~2\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~4\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~6\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~8\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~10\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~12\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~13_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~9_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~7_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add9~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add10~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add11~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add12~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~4_combout\ : std_logic;
SIGNAL \inst1|BCD_2~3_combout\ : std_logic;
SIGNAL \inst1|BCD_2~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add0~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add0~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add0~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add0~3_combout\ : std_logic;
SIGNAL \inst1|BCD_1~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add2~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add5~0_combout\ : std_logic;
SIGNAL \inst1|BCD_4~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add6~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add13~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add16~0_combout\ : std_logic;
SIGNAL \inst1|BCD_6~1_combout\ : std_logic;
SIGNAL \inst1|BCD_6~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add17~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add18~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add19~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add20~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add35~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add21~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add34~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~22_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~16_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~10_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~8_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~6_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add36~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add33~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~1\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~3\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~5\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~7\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~9\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~11\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~13\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~15\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~17\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~19\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~21\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~23\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~25\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~27\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~29\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~31\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~33\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~35\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~37\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~38_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~36_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~32_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~30_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[2]~3_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~24_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~22_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[1]~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~26_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~14_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~10_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan2~2_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~20_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~18_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~16_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[1]~1_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[2]~2_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~29\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add29~30_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~31\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add30~32_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~35\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~37\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add31~38_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~39\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~40_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[2]~5_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[1]~12_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~28_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control~10_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[1]~13_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[1]~11_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~2_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add32~0_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~8_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[1]~15_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~21_combout\ : std_logic;
SIGNAL \inst1|BCD_C2_conv_inst|Add37~34_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~28_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~26_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~25_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~27_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~29_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~19_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~20_combout\ : std_logic;
SIGNAL \inst1|DDFS_freq_conv_inst|freq_control[0]~30_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \GPIO_0~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|freq_7\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|freq_6\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|freq_5\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|freq_4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|freq_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|freq_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|freq_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|digit_counter_BCD\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|digit_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|cont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|BCD_7\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BCD_6\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BCD_5\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BCD_4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BCD_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BCD_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BCD_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|freq_div|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|keypad_mod_inst|tmp_out_keys\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|keypad_mod_inst|out_keys\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|keypad_mod_inst|i_column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_SW~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|DDFS_freq_conv_inst|ALT_INV_freq_control[2]~5_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

GPIO_1 <= ww_GPIO_1;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_GPIO_0 <= GPIO_0;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|freq_div|q~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|freq_div|q~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_SW~combout\(0) <= NOT \SW~combout\(0);
\inst1|DDFS_freq_conv_inst|ALT_INV_freq_control[2]~5_combout\ <= NOT \inst1|DDFS_freq_conv_inst|freq_control[2]~5_combout\;
\inst7|ALT_INV_WideOr0~0_combout\ <= NOT \inst7|WideOr0~0_combout\;
\inst6|ALT_INV_WideOr0~0_combout\ <= NOT \inst6|WideOr0~0_combout\;
\inst5|ALT_INV_WideOr0~0_combout\ <= NOT \inst5|WideOr0~0_combout\;
\inst4|ALT_INV_WideOr0~0_combout\ <= NOT \inst4|WideOr0~0_combout\;
\inst3|ALT_INV_WideOr0~0_combout\ <= NOT \inst3|WideOr0~0_combout\;
\inst2|ALT_INV_WideOr0~0_combout\ <= NOT \inst2|WideOr0~0_combout\;
\inst|ALT_INV_WideOr0~0_combout\ <= NOT \inst|WideOr0~0_combout\;

-- Location: LCFF_X51_Y2_N7
\inst1|keypad_mod_inst|i_column[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[3]~38_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(3));

-- Location: LCFF_X51_Y2_N11
\inst1|keypad_mod_inst|i_column[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[5]~43_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(5));

-- Location: LCFF_X51_Y2_N13
\inst1|keypad_mod_inst|i_column[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[6]~45_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(6));

-- Location: LCFF_X51_Y2_N17
\inst1|keypad_mod_inst|i_column[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[8]~49_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(8));

-- Location: LCFF_X51_Y1_N17
\inst1|keypad_mod_inst|i_column[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[24]~81_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(24));

-- Location: LCFF_X51_Y1_N21
\inst1|keypad_mod_inst|i_column[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[26]~85_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(26));

-- Location: LCCOMB_X55_Y5_N4
\inst1|BCD_C2_conv_inst|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add4~1_combout\ = (\inst1|BCD_4\(0) & (\inst1|BCD_4\(1) $ (VCC))) # (!\inst1|BCD_4\(0) & (\inst1|BCD_4\(1) & VCC))
-- \inst1|BCD_C2_conv_inst|Add4~2\ = CARRY((\inst1|BCD_4\(0) & \inst1|BCD_4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(0),
	datab => \inst1|BCD_4\(1),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add4~1_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add4~2\);

-- Location: LCCOMB_X55_Y5_N6
\inst1|BCD_C2_conv_inst|Add4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add4~3_combout\ = (\inst1|BCD_C2_conv_inst|Add4~1_combout\ & ((\inst1|BCD_4\(2) & (\inst1|BCD_C2_conv_inst|Add4~2\ & VCC)) # (!\inst1|BCD_4\(2) & (!\inst1|BCD_C2_conv_inst|Add4~2\)))) # (!\inst1|BCD_C2_conv_inst|Add4~1_combout\ & 
-- ((\inst1|BCD_4\(2) & (!\inst1|BCD_C2_conv_inst|Add4~2\)) # (!\inst1|BCD_4\(2) & ((\inst1|BCD_C2_conv_inst|Add4~2\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add4~4\ = CARRY((\inst1|BCD_C2_conv_inst|Add4~1_combout\ & (!\inst1|BCD_4\(2) & !\inst1|BCD_C2_conv_inst|Add4~2\)) # (!\inst1|BCD_C2_conv_inst|Add4~1_combout\ & ((!\inst1|BCD_C2_conv_inst|Add4~2\) # (!\inst1|BCD_4\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add4~1_combout\,
	datab => \inst1|BCD_4\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add4~2\,
	combout => \inst1|BCD_C2_conv_inst|Add4~3_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add4~4\);

-- Location: LCCOMB_X55_Y5_N8
\inst1|BCD_C2_conv_inst|Add4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add4~5_combout\ = ((\inst1|BCD_4\(3) $ (\inst1|BCD_C2_conv_inst|Add3~2_combout\ $ (!\inst1|BCD_C2_conv_inst|Add4~4\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add4~6\ = CARRY((\inst1|BCD_4\(3) & ((\inst1|BCD_C2_conv_inst|Add3~2_combout\) # (!\inst1|BCD_C2_conv_inst|Add4~4\))) # (!\inst1|BCD_4\(3) & (\inst1|BCD_C2_conv_inst|Add3~2_combout\ & !\inst1|BCD_C2_conv_inst|Add4~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(3),
	datab => \inst1|BCD_C2_conv_inst|Add3~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add4~4\,
	combout => \inst1|BCD_C2_conv_inst|Add4~5_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add4~6\);

-- Location: LCCOMB_X55_Y5_N10
\inst1|BCD_C2_conv_inst|Add4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add4~7_combout\ = (\inst1|BCD_C2_conv_inst|Add3~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add4~6\)) # (!\inst1|BCD_C2_conv_inst|Add3~1_combout\ & ((\inst1|BCD_C2_conv_inst|Add4~6\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add4~8\ = CARRY((!\inst1|BCD_C2_conv_inst|Add4~6\) # (!\inst1|BCD_C2_conv_inst|Add3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add3~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add4~6\,
	combout => \inst1|BCD_C2_conv_inst|Add4~7_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add4~8\);

-- Location: LCCOMB_X55_Y5_N12
\inst1|BCD_C2_conv_inst|Add4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add4~9_combout\ = (\inst1|BCD_C2_conv_inst|Add4~8\ & ((\inst1|BCD_4\(3) $ (\inst1|BCD_C2_conv_inst|Add3~0_combout\)))) # (!\inst1|BCD_C2_conv_inst|Add4~8\ & (\inst1|BCD_4\(3) $ (\inst1|BCD_C2_conv_inst|Add3~0_combout\ $ (VCC))))
-- \inst1|BCD_C2_conv_inst|Add4~10\ = CARRY((!\inst1|BCD_C2_conv_inst|Add4~8\ & (\inst1|BCD_4\(3) $ (\inst1|BCD_C2_conv_inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(3),
	datab => \inst1|BCD_C2_conv_inst|Add3~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add4~8\,
	combout => \inst1|BCD_C2_conv_inst|Add4~9_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add4~10\);

-- Location: LCCOMB_X55_Y5_N14
\inst1|BCD_C2_conv_inst|Add4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add4~11_combout\ = \inst1|BCD_C2_conv_inst|Add4~10\ $ (((\inst1|BCD_4\(3) & \inst1|BCD_C2_conv_inst|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_4\(3),
	datad => \inst1|BCD_C2_conv_inst|Add3~0_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add4~10\,
	combout => \inst1|BCD_C2_conv_inst|Add4~11_combout\);

-- Location: LCCOMB_X54_Y5_N0
\inst1|BCD_C2_conv_inst|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add5~0_combout\ = (\inst1|BCD_4\(0) & (\inst1|BCD_4\(2) $ (VCC))) # (!\inst1|BCD_4\(0) & (\inst1|BCD_4\(2) & VCC))
-- \inst1|BCD_C2_conv_inst|Add5~1\ = CARRY((\inst1|BCD_4\(0) & \inst1|BCD_4\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(0),
	datab => \inst1|BCD_4\(2),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add5~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add5~1\);

-- Location: LCCOMB_X54_Y5_N2
\inst1|BCD_C2_conv_inst|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add5~2_combout\ = (\inst1|BCD_4\(3) & ((\inst1|BCD_C2_conv_inst|Add4~1_combout\ & (\inst1|BCD_C2_conv_inst|Add5~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add4~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add5~1\)))) # (!\inst1|BCD_4\(3) & 
-- ((\inst1|BCD_C2_conv_inst|Add4~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add5~1\)) # (!\inst1|BCD_C2_conv_inst|Add4~1_combout\ & ((\inst1|BCD_C2_conv_inst|Add5~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add5~3\ = CARRY((\inst1|BCD_4\(3) & (!\inst1|BCD_C2_conv_inst|Add4~1_combout\ & !\inst1|BCD_C2_conv_inst|Add5~1\)) # (!\inst1|BCD_4\(3) & ((!\inst1|BCD_C2_conv_inst|Add5~1\) # (!\inst1|BCD_C2_conv_inst|Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(3),
	datab => \inst1|BCD_C2_conv_inst|Add4~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add5~1\,
	combout => \inst1|BCD_C2_conv_inst|Add5~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add5~3\);

-- Location: LCCOMB_X54_Y5_N4
\inst1|BCD_C2_conv_inst|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add5~4_combout\ = (\inst1|BCD_C2_conv_inst|Add4~3_combout\ & (\inst1|BCD_C2_conv_inst|Add5~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add4~3_combout\ & (!\inst1|BCD_C2_conv_inst|Add5~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add5~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add4~3_combout\ & !\inst1|BCD_C2_conv_inst|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add4~3_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add5~3\,
	combout => \inst1|BCD_C2_conv_inst|Add5~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add5~5\);

-- Location: LCCOMB_X54_Y5_N6
\inst1|BCD_C2_conv_inst|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add5~6_combout\ = (\inst1|BCD_C2_conv_inst|Add4~5_combout\ & (!\inst1|BCD_C2_conv_inst|Add5~5\)) # (!\inst1|BCD_C2_conv_inst|Add4~5_combout\ & ((\inst1|BCD_C2_conv_inst|Add5~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add5~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add5~5\) # (!\inst1|BCD_C2_conv_inst|Add4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add4~5_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add5~5\,
	combout => \inst1|BCD_C2_conv_inst|Add5~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add5~7\);

-- Location: LCCOMB_X54_Y5_N8
\inst1|BCD_C2_conv_inst|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add5~8_combout\ = (\inst1|BCD_C2_conv_inst|Add4~7_combout\ & (\inst1|BCD_C2_conv_inst|Add5~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add4~7_combout\ & (!\inst1|BCD_C2_conv_inst|Add5~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add5~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add4~7_combout\ & !\inst1|BCD_C2_conv_inst|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add4~7_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add5~7\,
	combout => \inst1|BCD_C2_conv_inst|Add5~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add5~9\);

-- Location: LCCOMB_X54_Y5_N10
\inst1|BCD_C2_conv_inst|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add5~10_combout\ = (\inst1|BCD_C2_conv_inst|Add4~9_combout\ & (!\inst1|BCD_C2_conv_inst|Add5~9\)) # (!\inst1|BCD_C2_conv_inst|Add4~9_combout\ & ((\inst1|BCD_C2_conv_inst|Add5~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add5~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add5~9\) # (!\inst1|BCD_C2_conv_inst|Add4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add4~9_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add5~9\,
	combout => \inst1|BCD_C2_conv_inst|Add5~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add5~11\);

-- Location: LCCOMB_X54_Y5_N12
\inst1|BCD_C2_conv_inst|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add5~12_combout\ = \inst1|BCD_C2_conv_inst|Add4~11_combout\ $ (!\inst1|BCD_C2_conv_inst|Add5~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add4~11_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add5~11\,
	combout => \inst1|BCD_C2_conv_inst|Add5~12_combout\);

-- Location: LCCOMB_X54_Y5_N16
\inst1|BCD_C2_conv_inst|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add6~2_combout\ = (\inst1|BCD_4\(3) & ((\inst1|BCD_4\(1) & (\inst1|BCD_C2_conv_inst|Add6~1\ & VCC)) # (!\inst1|BCD_4\(1) & (!\inst1|BCD_C2_conv_inst|Add6~1\)))) # (!\inst1|BCD_4\(3) & ((\inst1|BCD_4\(1) & 
-- (!\inst1|BCD_C2_conv_inst|Add6~1\)) # (!\inst1|BCD_4\(1) & ((\inst1|BCD_C2_conv_inst|Add6~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add6~3\ = CARRY((\inst1|BCD_4\(3) & (!\inst1|BCD_4\(1) & !\inst1|BCD_C2_conv_inst|Add6~1\)) # (!\inst1|BCD_4\(3) & ((!\inst1|BCD_C2_conv_inst|Add6~1\) # (!\inst1|BCD_4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(3),
	datab => \inst1|BCD_4\(1),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add6~1\,
	combout => \inst1|BCD_C2_conv_inst|Add6~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add6~3\);

-- Location: LCCOMB_X54_Y5_N18
\inst1|BCD_C2_conv_inst|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add6~4_combout\ = (\inst1|BCD_C2_conv_inst|Add5~0_combout\ & (\inst1|BCD_C2_conv_inst|Add6~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add5~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add6~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add6~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add5~0_combout\ & !\inst1|BCD_C2_conv_inst|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add5~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add6~3\,
	combout => \inst1|BCD_C2_conv_inst|Add6~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add6~5\);

-- Location: LCCOMB_X54_Y5_N20
\inst1|BCD_C2_conv_inst|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add6~6_combout\ = (\inst1|BCD_C2_conv_inst|Add5~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add6~5\)) # (!\inst1|BCD_C2_conv_inst|Add5~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add6~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add6~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add6~5\) # (!\inst1|BCD_C2_conv_inst|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add5~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add6~5\,
	combout => \inst1|BCD_C2_conv_inst|Add6~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add6~7\);

-- Location: LCCOMB_X54_Y5_N22
\inst1|BCD_C2_conv_inst|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add6~8_combout\ = (\inst1|BCD_C2_conv_inst|Add5~4_combout\ & (\inst1|BCD_C2_conv_inst|Add6~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add5~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add6~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add6~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add5~4_combout\ & !\inst1|BCD_C2_conv_inst|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add5~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add6~7\,
	combout => \inst1|BCD_C2_conv_inst|Add6~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add6~9\);

-- Location: LCCOMB_X54_Y5_N24
\inst1|BCD_C2_conv_inst|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add6~10_combout\ = (\inst1|BCD_C2_conv_inst|Add5~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add6~9\)) # (!\inst1|BCD_C2_conv_inst|Add5~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add6~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add6~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add6~9\) # (!\inst1|BCD_C2_conv_inst|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add5~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add6~9\,
	combout => \inst1|BCD_C2_conv_inst|Add6~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add6~11\);

-- Location: LCCOMB_X54_Y5_N26
\inst1|BCD_C2_conv_inst|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add6~12_combout\ = (\inst1|BCD_C2_conv_inst|Add5~8_combout\ & (\inst1|BCD_C2_conv_inst|Add6~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add5~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add6~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add6~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add5~8_combout\ & !\inst1|BCD_C2_conv_inst|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add5~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add6~11\,
	combout => \inst1|BCD_C2_conv_inst|Add6~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add6~13\);

-- Location: LCCOMB_X54_Y5_N28
\inst1|BCD_C2_conv_inst|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add6~14_combout\ = (\inst1|BCD_C2_conv_inst|Add5~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add6~13\)) # (!\inst1|BCD_C2_conv_inst|Add5~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add6~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add6~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add6~13\) # (!\inst1|BCD_C2_conv_inst|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add5~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add6~13\,
	combout => \inst1|BCD_C2_conv_inst|Add6~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add6~15\);

-- Location: LCCOMB_X54_Y5_N30
\inst1|BCD_C2_conv_inst|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add6~16_combout\ = \inst1|BCD_C2_conv_inst|Add6~15\ $ (!\inst1|BCD_C2_conv_inst|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add5~12_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add6~15\,
	combout => \inst1|BCD_C2_conv_inst|Add6~16_combout\);

-- Location: LCCOMB_X53_Y2_N2
\inst1|BCD_C2_conv_inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add2~2_combout\ = (\inst1|BCD_C2_conv_inst|Add2~1\ & (\inst1|BCD_3\(0) $ ((!\inst1|BCD_3\(1))))) # (!\inst1|BCD_C2_conv_inst|Add2~1\ & ((\inst1|BCD_3\(0) $ (\inst1|BCD_3\(1))) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add2~3\ = CARRY((\inst1|BCD_3\(0) $ (!\inst1|BCD_3\(1))) # (!\inst1|BCD_C2_conv_inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_3\(0),
	datab => \inst1|BCD_3\(1),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add2~1\,
	combout => \inst1|BCD_C2_conv_inst|Add2~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add2~3\);

-- Location: LCCOMB_X53_Y2_N4
\inst1|BCD_C2_conv_inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add2~4_combout\ = (\inst1|BCD_C2_conv_inst|Add1~2_combout\ & (\inst1|BCD_C2_conv_inst|Add2~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add1~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add2~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add2~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add1~2_combout\ & !\inst1|BCD_C2_conv_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add2~3\,
	combout => \inst1|BCD_C2_conv_inst|Add2~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add2~5\);

-- Location: LCCOMB_X53_Y2_N6
\inst1|BCD_C2_conv_inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add2~6_combout\ = (\inst1|BCD_C2_conv_inst|Add1~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add2~5\)) # (!\inst1|BCD_C2_conv_inst|Add1~1_combout\ & ((\inst1|BCD_C2_conv_inst|Add2~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add2~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add2~5\) # (!\inst1|BCD_C2_conv_inst|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add1~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add2~5\,
	combout => \inst1|BCD_C2_conv_inst|Add2~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add2~7\);

-- Location: LCCOMB_X53_Y2_N8
\inst1|BCD_C2_conv_inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add2~8_combout\ = (\inst1|BCD_C2_conv_inst|Add2~7\ & ((\inst1|BCD_3\(3) $ (\inst1|BCD_C2_conv_inst|Add1~0_combout\)))) # (!\inst1|BCD_C2_conv_inst|Add2~7\ & (\inst1|BCD_3\(3) $ (\inst1|BCD_C2_conv_inst|Add1~0_combout\ $ (VCC))))
-- \inst1|BCD_C2_conv_inst|Add2~9\ = CARRY((!\inst1|BCD_C2_conv_inst|Add2~7\ & (\inst1|BCD_3\(3) $ (\inst1|BCD_C2_conv_inst|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_3\(3),
	datab => \inst1|BCD_C2_conv_inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add2~7\,
	combout => \inst1|BCD_C2_conv_inst|Add2~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add2~9\);

-- Location: LCCOMB_X53_Y2_N10
\inst1|BCD_C2_conv_inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add2~10_combout\ = \inst1|BCD_C2_conv_inst|Add2~9\ $ (((\inst1|BCD_3\(3) & \inst1|BCD_C2_conv_inst|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_3\(3),
	datad => \inst1|BCD_C2_conv_inst|Add1~0_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add2~9\,
	combout => \inst1|BCD_C2_conv_inst|Add2~10_combout\);

-- Location: LCCOMB_X54_Y2_N16
\inst1|BCD_C2_conv_inst|Add32~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add32~2_combout\ = (\inst1|BCD_2\(1) & ((\inst1|BCD_1\(2) & (\inst1|BCD_C2_conv_inst|Add32~1\ & VCC)) # (!\inst1|BCD_1\(2) & (!\inst1|BCD_C2_conv_inst|Add32~1\)))) # (!\inst1|BCD_2\(1) & ((\inst1|BCD_1\(2) & 
-- (!\inst1|BCD_C2_conv_inst|Add32~1\)) # (!\inst1|BCD_1\(2) & ((\inst1|BCD_C2_conv_inst|Add32~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add32~3\ = CARRY((\inst1|BCD_2\(1) & (!\inst1|BCD_1\(2) & !\inst1|BCD_C2_conv_inst|Add32~1\)) # (!\inst1|BCD_2\(1) & ((!\inst1|BCD_C2_conv_inst|Add32~1\) # (!\inst1|BCD_1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_2\(1),
	datab => \inst1|BCD_1\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add32~1\,
	combout => \inst1|BCD_C2_conv_inst|Add32~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add32~3\);

-- Location: LCCOMB_X54_Y2_N20
\inst1|BCD_C2_conv_inst|Add32~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add32~6_combout\ = (\inst1|BCD_C2_conv_inst|Add0~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add32~5\)) # (!\inst1|BCD_C2_conv_inst|Add0~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add32~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add32~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add32~5\) # (!\inst1|BCD_C2_conv_inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add0~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add32~5\,
	combout => \inst1|BCD_C2_conv_inst|Add32~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add32~7\);

-- Location: LCCOMB_X54_Y2_N22
\inst1|BCD_C2_conv_inst|Add32~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add32~8_combout\ = (\inst1|BCD_C2_conv_inst|Add32~7\ & ((\inst1|BCD_2\(2) $ (\inst1|BCD_C2_conv_inst|Add0~1_combout\)))) # (!\inst1|BCD_C2_conv_inst|Add32~7\ & (\inst1|BCD_2\(2) $ (\inst1|BCD_C2_conv_inst|Add0~1_combout\ $ (VCC))))
-- \inst1|BCD_C2_conv_inst|Add32~9\ = CARRY((!\inst1|BCD_C2_conv_inst|Add32~7\ & (\inst1|BCD_2\(2) $ (\inst1|BCD_C2_conv_inst|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_2\(2),
	datab => \inst1|BCD_C2_conv_inst|Add0~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add32~7\,
	combout => \inst1|BCD_C2_conv_inst|Add32~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add32~9\);

-- Location: LCCOMB_X54_Y2_N24
\inst1|BCD_C2_conv_inst|Add32~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add32~10_combout\ = (\inst1|BCD_C2_conv_inst|Add32~9\ & (\inst1|BCD_2\(3) $ ((!\inst1|BCD_C2_conv_inst|Add0~0_combout\)))) # (!\inst1|BCD_C2_conv_inst|Add32~9\ & ((\inst1|BCD_2\(3) $ (\inst1|BCD_C2_conv_inst|Add0~0_combout\)) # 
-- (GND)))
-- \inst1|BCD_C2_conv_inst|Add32~11\ = CARRY((\inst1|BCD_2\(3) $ (!\inst1|BCD_C2_conv_inst|Add0~0_combout\)) # (!\inst1|BCD_C2_conv_inst|Add32~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_2\(3),
	datab => \inst1|BCD_C2_conv_inst|Add0~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add32~9\,
	combout => \inst1|BCD_C2_conv_inst|Add32~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add32~11\);

-- Location: LCCOMB_X54_Y2_N26
\inst1|BCD_C2_conv_inst|Add32~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add32~12_combout\ = \inst1|BCD_C2_conv_inst|Add32~11\ $ (((!\inst1|BCD_C2_conv_inst|Add0~0_combout\) # (!\inst1|BCD_2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_2\(3),
	datab => \inst1|BCD_C2_conv_inst|Add0~0_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add32~11\,
	combout => \inst1|BCD_C2_conv_inst|Add32~12_combout\);

-- Location: LCCOMB_X53_Y2_N18
\inst1|BCD_C2_conv_inst|Add33~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add33~4_combout\ = ((\inst1|BCD_C2_conv_inst|Add32~6_combout\ $ (\inst1|BCD_3\(2) $ (!\inst1|BCD_C2_conv_inst|Add33~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add33~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add32~6_combout\ & ((\inst1|BCD_3\(2)) # (!\inst1|BCD_C2_conv_inst|Add33~3\))) # (!\inst1|BCD_C2_conv_inst|Add32~6_combout\ & (\inst1|BCD_3\(2) & !\inst1|BCD_C2_conv_inst|Add33~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add32~6_combout\,
	datab => \inst1|BCD_3\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add33~3\,
	combout => \inst1|BCD_C2_conv_inst|Add33~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add33~5\);

-- Location: LCCOMB_X53_Y2_N20
\inst1|BCD_C2_conv_inst|Add33~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add33~6_combout\ = (\inst1|BCD_C2_conv_inst|Add32~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add2~0_combout\ & (\inst1|BCD_C2_conv_inst|Add33~5\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add2~0_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add33~5\)))) # (!\inst1|BCD_C2_conv_inst|Add32~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add2~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add33~5\)) # (!\inst1|BCD_C2_conv_inst|Add2~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add33~5\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add33~7\ = CARRY((\inst1|BCD_C2_conv_inst|Add32~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add2~0_combout\ & !\inst1|BCD_C2_conv_inst|Add33~5\)) # (!\inst1|BCD_C2_conv_inst|Add32~8_combout\ & ((!\inst1|BCD_C2_conv_inst|Add33~5\) # 
-- (!\inst1|BCD_C2_conv_inst|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add32~8_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add2~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add33~5\,
	combout => \inst1|BCD_C2_conv_inst|Add33~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add33~7\);

-- Location: LCCOMB_X53_Y2_N24
\inst1|BCD_C2_conv_inst|Add33~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add33~10_combout\ = (\inst1|BCD_C2_conv_inst|Add32~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add2~4_combout\ & (\inst1|BCD_C2_conv_inst|Add33~9\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add2~4_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add33~9\)))) # (!\inst1|BCD_C2_conv_inst|Add32~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add2~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add33~9\)) # (!\inst1|BCD_C2_conv_inst|Add2~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add33~9\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add33~11\ = CARRY((\inst1|BCD_C2_conv_inst|Add32~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add2~4_combout\ & !\inst1|BCD_C2_conv_inst|Add33~9\)) # (!\inst1|BCD_C2_conv_inst|Add32~12_combout\ & ((!\inst1|BCD_C2_conv_inst|Add33~9\) # 
-- (!\inst1|BCD_C2_conv_inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add32~12_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add2~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add33~9\,
	combout => \inst1|BCD_C2_conv_inst|Add33~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add33~11\);

-- Location: LCCOMB_X53_Y2_N26
\inst1|BCD_C2_conv_inst|Add33~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add33~12_combout\ = (\inst1|BCD_C2_conv_inst|Add2~6_combout\ & (\inst1|BCD_C2_conv_inst|Add33~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add2~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add33~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add33~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add2~6_combout\ & !\inst1|BCD_C2_conv_inst|Add33~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add2~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add33~11\,
	combout => \inst1|BCD_C2_conv_inst|Add33~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add33~13\);

-- Location: LCCOMB_X53_Y2_N28
\inst1|BCD_C2_conv_inst|Add33~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add33~14_combout\ = (\inst1|BCD_C2_conv_inst|Add2~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add33~13\)) # (!\inst1|BCD_C2_conv_inst|Add2~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add33~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add33~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add33~13\) # (!\inst1|BCD_C2_conv_inst|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add2~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add33~13\,
	combout => \inst1|BCD_C2_conv_inst|Add33~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add33~15\);

-- Location: LCCOMB_X53_Y2_N30
\inst1|BCD_C2_conv_inst|Add33~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add33~16_combout\ = \inst1|BCD_C2_conv_inst|Add33~15\ $ (!\inst1|BCD_C2_conv_inst|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add2~10_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add33~15\,
	combout => \inst1|BCD_C2_conv_inst|Add33~16_combout\);

-- Location: LCCOMB_X53_Y5_N14
\inst1|BCD_C2_conv_inst|Add34~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~4_combout\ = ((\inst1|BCD_C2_conv_inst|Add33~6_combout\ $ (\inst1|BCD_C2_conv_inst|Add6~0_combout\ $ (!\inst1|BCD_C2_conv_inst|Add34~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add34~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add33~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add6~0_combout\) # (!\inst1|BCD_C2_conv_inst|Add34~3\))) # (!\inst1|BCD_C2_conv_inst|Add33~6_combout\ & (\inst1|BCD_C2_conv_inst|Add6~0_combout\ 
-- & !\inst1|BCD_C2_conv_inst|Add34~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add33~6_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add6~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add34~3\,
	combout => \inst1|BCD_C2_conv_inst|Add34~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~5\);

-- Location: LCCOMB_X53_Y5_N18
\inst1|BCD_C2_conv_inst|Add34~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~8_combout\ = ((\inst1|BCD_C2_conv_inst|Add33~10_combout\ $ (\inst1|BCD_C2_conv_inst|Add6~4_combout\ $ (!\inst1|BCD_C2_conv_inst|Add34~7\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add34~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add33~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add6~4_combout\) # (!\inst1|BCD_C2_conv_inst|Add34~7\))) # (!\inst1|BCD_C2_conv_inst|Add33~10_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add6~4_combout\ & !\inst1|BCD_C2_conv_inst|Add34~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add33~10_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add6~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add34~7\,
	combout => \inst1|BCD_C2_conv_inst|Add34~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~9\);

-- Location: LCCOMB_X53_Y5_N20
\inst1|BCD_C2_conv_inst|Add34~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~10_combout\ = (\inst1|BCD_C2_conv_inst|Add6~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add33~12_combout\ & (\inst1|BCD_C2_conv_inst|Add34~9\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add33~12_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add34~9\)))) # (!\inst1|BCD_C2_conv_inst|Add6~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add33~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add34~9\)) # (!\inst1|BCD_C2_conv_inst|Add33~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add34~9\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add34~11\ = CARRY((\inst1|BCD_C2_conv_inst|Add6~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add33~12_combout\ & !\inst1|BCD_C2_conv_inst|Add34~9\)) # (!\inst1|BCD_C2_conv_inst|Add6~6_combout\ & ((!\inst1|BCD_C2_conv_inst|Add34~9\) # 
-- (!\inst1|BCD_C2_conv_inst|Add33~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add6~6_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add33~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add34~9\,
	combout => \inst1|BCD_C2_conv_inst|Add34~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~11\);

-- Location: LCCOMB_X53_Y5_N22
\inst1|BCD_C2_conv_inst|Add34~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~12_combout\ = ((\inst1|BCD_C2_conv_inst|Add33~14_combout\ $ (\inst1|BCD_C2_conv_inst|Add6~8_combout\ $ (!\inst1|BCD_C2_conv_inst|Add34~11\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add34~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add33~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add6~8_combout\) # (!\inst1|BCD_C2_conv_inst|Add34~11\))) # (!\inst1|BCD_C2_conv_inst|Add33~14_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add6~8_combout\ & !\inst1|BCD_C2_conv_inst|Add34~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add33~14_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add6~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add34~11\,
	combout => \inst1|BCD_C2_conv_inst|Add34~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~13\);

-- Location: LCCOMB_X53_Y5_N24
\inst1|BCD_C2_conv_inst|Add34~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~14_combout\ = (\inst1|BCD_C2_conv_inst|Add33~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add6~10_combout\ & (\inst1|BCD_C2_conv_inst|Add34~13\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add6~10_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add34~13\)))) # (!\inst1|BCD_C2_conv_inst|Add33~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add6~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add34~13\)) # (!\inst1|BCD_C2_conv_inst|Add6~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add34~13\) 
-- # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add34~15\ = CARRY((\inst1|BCD_C2_conv_inst|Add33~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add6~10_combout\ & !\inst1|BCD_C2_conv_inst|Add34~13\)) # (!\inst1|BCD_C2_conv_inst|Add33~16_combout\ & ((!\inst1|BCD_C2_conv_inst|Add34~13\) 
-- # (!\inst1|BCD_C2_conv_inst|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add33~16_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add6~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add34~13\,
	combout => \inst1|BCD_C2_conv_inst|Add34~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~15\);

-- Location: LCCOMB_X53_Y5_N26
\inst1|BCD_C2_conv_inst|Add34~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~16_combout\ = (\inst1|BCD_C2_conv_inst|Add6~12_combout\ & (\inst1|BCD_C2_conv_inst|Add34~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add6~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add34~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add34~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add6~12_combout\ & !\inst1|BCD_C2_conv_inst|Add34~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add6~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add34~15\,
	combout => \inst1|BCD_C2_conv_inst|Add34~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~17\);

-- Location: LCCOMB_X53_Y5_N28
\inst1|BCD_C2_conv_inst|Add34~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~18_combout\ = (\inst1|BCD_C2_conv_inst|Add6~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add34~17\)) # (!\inst1|BCD_C2_conv_inst|Add6~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add34~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add34~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add34~17\) # (!\inst1|BCD_C2_conv_inst|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add6~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add34~17\,
	combout => \inst1|BCD_C2_conv_inst|Add34~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~19\);

-- Location: LCCOMB_X53_Y5_N30
\inst1|BCD_C2_conv_inst|Add34~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~20_combout\ = \inst1|BCD_C2_conv_inst|Add34~19\ $ (!\inst1|BCD_C2_conv_inst|Add6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add6~16_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add34~19\,
	combout => \inst1|BCD_C2_conv_inst|Add34~20_combout\);

-- Location: LCCOMB_X49_Y6_N0
\inst1|BCD_C2_conv_inst|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add8~0_combout\ = (\inst1|BCD_5\(0) & (\inst1|BCD_5\(2) $ (VCC))) # (!\inst1|BCD_5\(0) & (\inst1|BCD_5\(2) & VCC))
-- \inst1|BCD_C2_conv_inst|Add8~1\ = CARRY((\inst1|BCD_5\(0) & \inst1|BCD_5\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(0),
	datab => \inst1|BCD_5\(2),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add8~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add8~1\);

-- Location: LCCOMB_X49_Y6_N18
\inst1|BCD_C2_conv_inst|Add9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add9~3_combout\ = (\inst1|BCD_5\(1) & ((\inst1|BCD_5\(2) & (\inst1|BCD_C2_conv_inst|Add9~2\ & VCC)) # (!\inst1|BCD_5\(2) & (!\inst1|BCD_C2_conv_inst|Add9~2\)))) # (!\inst1|BCD_5\(1) & ((\inst1|BCD_5\(2) & 
-- (!\inst1|BCD_C2_conv_inst|Add9~2\)) # (!\inst1|BCD_5\(2) & ((\inst1|BCD_C2_conv_inst|Add9~2\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add9~4\ = CARRY((\inst1|BCD_5\(1) & (!\inst1|BCD_5\(2) & !\inst1|BCD_C2_conv_inst|Add9~2\)) # (!\inst1|BCD_5\(1) & ((!\inst1|BCD_C2_conv_inst|Add9~2\) # (!\inst1|BCD_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(1),
	datab => \inst1|BCD_5\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add9~2\,
	combout => \inst1|BCD_C2_conv_inst|Add9~3_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add9~4\);

-- Location: LCCOMB_X49_Y6_N20
\inst1|BCD_C2_conv_inst|Add9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add9~5_combout\ = ((\inst1|BCD_C2_conv_inst|Add8~0_combout\ $ (\inst1|BCD_5\(3) $ (!\inst1|BCD_C2_conv_inst|Add9~4\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add9~6\ = CARRY((\inst1|BCD_C2_conv_inst|Add8~0_combout\ & ((\inst1|BCD_5\(3)) # (!\inst1|BCD_C2_conv_inst|Add9~4\))) # (!\inst1|BCD_C2_conv_inst|Add8~0_combout\ & (\inst1|BCD_5\(3) & !\inst1|BCD_C2_conv_inst|Add9~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add8~0_combout\,
	datab => \inst1|BCD_5\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add9~4\,
	combout => \inst1|BCD_C2_conv_inst|Add9~5_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add9~6\);

-- Location: LCCOMB_X50_Y6_N8
\inst1|BCD_C2_conv_inst|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add10~0_combout\ = (\inst1|BCD_5\(1) & (\inst1|BCD_5\(0) $ (VCC))) # (!\inst1|BCD_5\(1) & (\inst1|BCD_5\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add10~1\ = CARRY((\inst1|BCD_5\(1) & \inst1|BCD_5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(1),
	datab => \inst1|BCD_5\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add10~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add10~1\);

-- Location: LCCOMB_X50_Y6_N10
\inst1|BCD_C2_conv_inst|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add10~2_combout\ = (\inst1|BCD_5\(2) & ((\inst1|BCD_C2_conv_inst|Add9~1_combout\ & (\inst1|BCD_C2_conv_inst|Add10~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add9~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add10~1\)))) # (!\inst1|BCD_5\(2) 
-- & ((\inst1|BCD_C2_conv_inst|Add9~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add10~1\)) # (!\inst1|BCD_C2_conv_inst|Add9~1_combout\ & ((\inst1|BCD_C2_conv_inst|Add10~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add10~3\ = CARRY((\inst1|BCD_5\(2) & (!\inst1|BCD_C2_conv_inst|Add9~1_combout\ & !\inst1|BCD_C2_conv_inst|Add10~1\)) # (!\inst1|BCD_5\(2) & ((!\inst1|BCD_C2_conv_inst|Add10~1\) # (!\inst1|BCD_C2_conv_inst|Add9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(2),
	datab => \inst1|BCD_C2_conv_inst|Add9~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add10~1\,
	combout => \inst1|BCD_C2_conv_inst|Add10~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add10~3\);

-- Location: LCCOMB_X50_Y6_N12
\inst1|BCD_C2_conv_inst|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add10~4_combout\ = ((\inst1|BCD_C2_conv_inst|Add9~3_combout\ $ (\inst1|BCD_5\(3) $ (!\inst1|BCD_C2_conv_inst|Add10~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add10~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add9~3_combout\ & ((\inst1|BCD_5\(3)) # (!\inst1|BCD_C2_conv_inst|Add10~3\))) # (!\inst1|BCD_C2_conv_inst|Add9~3_combout\ & (\inst1|BCD_5\(3) & !\inst1|BCD_C2_conv_inst|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add9~3_combout\,
	datab => \inst1|BCD_5\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add10~3\,
	combout => \inst1|BCD_C2_conv_inst|Add10~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add10~5\);

-- Location: LCCOMB_X50_Y6_N14
\inst1|BCD_C2_conv_inst|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add10~6_combout\ = (\inst1|BCD_C2_conv_inst|Add9~5_combout\ & (!\inst1|BCD_C2_conv_inst|Add10~5\)) # (!\inst1|BCD_C2_conv_inst|Add9~5_combout\ & ((\inst1|BCD_C2_conv_inst|Add10~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add10~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add10~5\) # (!\inst1|BCD_C2_conv_inst|Add9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add9~5_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add10~5\,
	combout => \inst1|BCD_C2_conv_inst|Add10~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add10~7\);

-- Location: LCCOMB_X51_Y6_N8
\inst1|BCD_C2_conv_inst|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~4_combout\ = ((\inst1|BCD_C2_conv_inst|Add10~2_combout\ $ (\inst1|BCD_5\(3) $ (!\inst1|BCD_C2_conv_inst|Add11~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add11~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add10~2_combout\ & ((\inst1|BCD_5\(3)) # (!\inst1|BCD_C2_conv_inst|Add11~3\))) # (!\inst1|BCD_C2_conv_inst|Add10~2_combout\ & (\inst1|BCD_5\(3) & !\inst1|BCD_C2_conv_inst|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add10~2_combout\,
	datab => \inst1|BCD_5\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add11~3\,
	combout => \inst1|BCD_C2_conv_inst|Add11~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add11~5\);

-- Location: LCCOMB_X51_Y7_N16
\inst1|BCD_C2_conv_inst|Add12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~6_combout\ = (\inst1|BCD_C2_conv_inst|Add11~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~5\)) # (!\inst1|BCD_C2_conv_inst|Add11~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add12~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add12~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add12~5\) # (!\inst1|BCD_C2_conv_inst|Add11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add11~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add12~5\,
	combout => \inst1|BCD_C2_conv_inst|Add12~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~7\);

-- Location: LCCOMB_X50_Y7_N2
\inst1|BCD_C2_conv_inst|Add13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~2_combout\ = (\inst1|BCD_5\(1) & ((\inst1|BCD_5\(2) & (\inst1|BCD_C2_conv_inst|Add13~1\ & VCC)) # (!\inst1|BCD_5\(2) & (!\inst1|BCD_C2_conv_inst|Add13~1\)))) # (!\inst1|BCD_5\(1) & ((\inst1|BCD_5\(2) & 
-- (!\inst1|BCD_C2_conv_inst|Add13~1\)) # (!\inst1|BCD_5\(2) & ((\inst1|BCD_C2_conv_inst|Add13~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add13~3\ = CARRY((\inst1|BCD_5\(1) & (!\inst1|BCD_5\(2) & !\inst1|BCD_C2_conv_inst|Add13~1\)) # (!\inst1|BCD_5\(1) & ((!\inst1|BCD_C2_conv_inst|Add13~1\) # (!\inst1|BCD_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(1),
	datab => \inst1|BCD_5\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~1\,
	combout => \inst1|BCD_C2_conv_inst|Add13~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~3\);

-- Location: LCCOMB_X50_Y7_N6
\inst1|BCD_C2_conv_inst|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~6_combout\ = (\inst1|BCD_C2_conv_inst|Add12~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~5\)) # (!\inst1|BCD_C2_conv_inst|Add12~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add13~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add13~5\) # (!\inst1|BCD_C2_conv_inst|Add12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add12~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~5\,
	combout => \inst1|BCD_C2_conv_inst|Add13~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~7\);

-- Location: LCCOMB_X49_Y7_N4
\inst1|BCD_C2_conv_inst|Add35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~0_combout\ = (\inst1|BCD_5\(0) & (\inst1|BCD_C2_conv_inst|Add34~2_combout\ $ (VCC))) # (!\inst1|BCD_5\(0) & (\inst1|BCD_C2_conv_inst|Add34~2_combout\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add35~1\ = CARRY((\inst1|BCD_5\(0) & \inst1|BCD_C2_conv_inst|Add34~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(0),
	datab => \inst1|BCD_C2_conv_inst|Add34~2_combout\,
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add35~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~1\);

-- Location: LCCOMB_X49_Y7_N6
\inst1|BCD_C2_conv_inst|Add35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~2_combout\ = (\inst1|BCD_C2_conv_inst|Add34~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~0_combout\ & (\inst1|BCD_C2_conv_inst|Add35~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add13~0_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add35~1\)))) # (!\inst1|BCD_C2_conv_inst|Add34~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~1\)) # (!\inst1|BCD_C2_conv_inst|Add13~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~1\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add35~3\ = CARRY((\inst1|BCD_C2_conv_inst|Add34~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~0_combout\ & !\inst1|BCD_C2_conv_inst|Add35~1\)) # (!\inst1|BCD_C2_conv_inst|Add34~4_combout\ & ((!\inst1|BCD_C2_conv_inst|Add35~1\) # 
-- (!\inst1|BCD_C2_conv_inst|Add13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add34~4_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add13~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~1\,
	combout => \inst1|BCD_C2_conv_inst|Add35~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~3\);

-- Location: LCCOMB_X49_Y7_N14
\inst1|BCD_C2_conv_inst|Add35~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~10_combout\ = (\inst1|BCD_C2_conv_inst|Add34~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~8_combout\ & (\inst1|BCD_C2_conv_inst|Add35~9\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add13~8_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add35~9\)))) # (!\inst1|BCD_C2_conv_inst|Add34~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~9\)) # (!\inst1|BCD_C2_conv_inst|Add13~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~9\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add35~11\ = CARRY((\inst1|BCD_C2_conv_inst|Add34~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~8_combout\ & !\inst1|BCD_C2_conv_inst|Add35~9\)) # (!\inst1|BCD_C2_conv_inst|Add34~12_combout\ & ((!\inst1|BCD_C2_conv_inst|Add35~9\) # 
-- (!\inst1|BCD_C2_conv_inst|Add13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add34~12_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add13~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~9\,
	combout => \inst1|BCD_C2_conv_inst|Add35~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~11\);

-- Location: LCCOMB_X49_Y7_N16
\inst1|BCD_C2_conv_inst|Add35~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~12_combout\ = ((\inst1|BCD_C2_conv_inst|Add34~14_combout\ $ (\inst1|BCD_C2_conv_inst|Add13~10_combout\ $ (!\inst1|BCD_C2_conv_inst|Add35~11\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add35~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add34~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~10_combout\) # (!\inst1|BCD_C2_conv_inst|Add35~11\))) # (!\inst1|BCD_C2_conv_inst|Add34~14_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add13~10_combout\ & !\inst1|BCD_C2_conv_inst|Add35~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add34~14_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add13~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~11\,
	combout => \inst1|BCD_C2_conv_inst|Add35~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~13\);

-- Location: LCCOMB_X49_Y7_N18
\inst1|BCD_C2_conv_inst|Add35~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~14_combout\ = (\inst1|BCD_C2_conv_inst|Add34~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~12_combout\ & (\inst1|BCD_C2_conv_inst|Add35~13\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add13~12_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add35~13\)))) # (!\inst1|BCD_C2_conv_inst|Add34~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~13\)) # (!\inst1|BCD_C2_conv_inst|Add13~12_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add35~13\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add35~15\ = CARRY((\inst1|BCD_C2_conv_inst|Add34~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~12_combout\ & !\inst1|BCD_C2_conv_inst|Add35~13\)) # (!\inst1|BCD_C2_conv_inst|Add34~16_combout\ & ((!\inst1|BCD_C2_conv_inst|Add35~13\) 
-- # (!\inst1|BCD_C2_conv_inst|Add13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add34~16_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add13~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~13\,
	combout => \inst1|BCD_C2_conv_inst|Add35~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~15\);

-- Location: LCCOMB_X47_Y7_N2
\inst1|BCD_C2_conv_inst|Add18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~2_combout\ = (\inst1|BCD_6\(1) & ((\inst1|BCD_6\(3) & (\inst1|BCD_C2_conv_inst|Add18~1\ & VCC)) # (!\inst1|BCD_6\(3) & (!\inst1|BCD_C2_conv_inst|Add18~1\)))) # (!\inst1|BCD_6\(1) & ((\inst1|BCD_6\(3) & 
-- (!\inst1|BCD_C2_conv_inst|Add18~1\)) # (!\inst1|BCD_6\(3) & ((\inst1|BCD_C2_conv_inst|Add18~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add18~3\ = CARRY((\inst1|BCD_6\(1) & (!\inst1|BCD_6\(3) & !\inst1|BCD_C2_conv_inst|Add18~1\)) # (!\inst1|BCD_6\(1) & ((!\inst1|BCD_C2_conv_inst|Add18~1\) # (!\inst1|BCD_6\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(1),
	datab => \inst1|BCD_6\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add18~1\,
	combout => \inst1|BCD_C2_conv_inst|Add18~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~3\);

-- Location: LCCOMB_X47_Y7_N4
\inst1|BCD_C2_conv_inst|Add18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~4_combout\ = (\inst1|BCD_C2_conv_inst|Add17~0_combout\ & (\inst1|BCD_C2_conv_inst|Add18~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add17~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add18~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add18~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add17~0_combout\ & !\inst1|BCD_C2_conv_inst|Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add17~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add18~3\,
	combout => \inst1|BCD_C2_conv_inst|Add18~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~5\);

-- Location: LCCOMB_X47_Y7_N6
\inst1|BCD_C2_conv_inst|Add18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~6_combout\ = (\inst1|BCD_C2_conv_inst|Add17~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add18~5\)) # (!\inst1|BCD_C2_conv_inst|Add17~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add18~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add18~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add18~5\) # (!\inst1|BCD_C2_conv_inst|Add17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add17~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add18~5\,
	combout => \inst1|BCD_C2_conv_inst|Add18~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~7\);

-- Location: LCCOMB_X46_Y7_N6
\inst1|BCD_C2_conv_inst|Add19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~0_combout\ = (\inst1|BCD_6\(1) & (\inst1|BCD_6\(0) $ (VCC))) # (!\inst1|BCD_6\(1) & (\inst1|BCD_6\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add19~1\ = CARRY((\inst1|BCD_6\(1) & \inst1|BCD_6\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(1),
	datab => \inst1|BCD_6\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add19~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~1\);

-- Location: LCCOMB_X46_Y7_N16
\inst1|BCD_C2_conv_inst|Add19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~10_combout\ = (\inst1|BCD_C2_conv_inst|Add18~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add19~9\)) # (!\inst1|BCD_C2_conv_inst|Add18~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add19~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add19~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add19~9\) # (!\inst1|BCD_C2_conv_inst|Add18~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add18~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~9\,
	combout => \inst1|BCD_C2_conv_inst|Add19~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~11\);

-- Location: LCCOMB_X45_Y7_N4
\inst1|BCD_C2_conv_inst|Add20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~2_combout\ = (\inst1|BCD_C2_conv_inst|Add19~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~1\)) # (!\inst1|BCD_C2_conv_inst|Add19~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add20~1\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add20~3\ = CARRY((!\inst1|BCD_C2_conv_inst|Add20~1\) # (!\inst1|BCD_C2_conv_inst|Add19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add19~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~1\,
	combout => \inst1|BCD_C2_conv_inst|Add20~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~3\);

-- Location: LCCOMB_X44_Y9_N20
\inst1|BCD_C2_conv_inst|Add21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~4_combout\ = ((\inst1|BCD_6\(2) $ (\inst1|BCD_6\(3) $ (!\inst1|BCD_C2_conv_inst|Add21~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add21~5\ = CARRY((\inst1|BCD_6\(2) & ((\inst1|BCD_6\(3)) # (!\inst1|BCD_C2_conv_inst|Add21~3\))) # (!\inst1|BCD_6\(2) & (\inst1|BCD_6\(3) & !\inst1|BCD_C2_conv_inst|Add21~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(2),
	datab => \inst1|BCD_6\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~3\,
	combout => \inst1|BCD_C2_conv_inst|Add21~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~5\);

-- Location: LCCOMB_X44_Y9_N22
\inst1|BCD_C2_conv_inst|Add21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~6_combout\ = (\inst1|BCD_C2_conv_inst|Add20~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~5\)) # (!\inst1|BCD_C2_conv_inst|Add20~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add21~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add21~5\) # (!\inst1|BCD_C2_conv_inst|Add20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~5\,
	combout => \inst1|BCD_C2_conv_inst|Add21~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~7\);

-- Location: LCCOMB_X44_Y9_N24
\inst1|BCD_C2_conv_inst|Add21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~8_combout\ = (\inst1|BCD_C2_conv_inst|Add20~2_combout\ & (\inst1|BCD_C2_conv_inst|Add21~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add20~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add21~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add20~2_combout\ & !\inst1|BCD_C2_conv_inst|Add21~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add20~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~7\,
	combout => \inst1|BCD_C2_conv_inst|Add21~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~9\);

-- Location: LCCOMB_X44_Y8_N0
\inst1|BCD_C2_conv_inst|Add21~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~16_combout\ = (\inst1|BCD_C2_conv_inst|Add20~10_combout\ & (\inst1|BCD_C2_conv_inst|Add21~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add20~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add21~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add20~10_combout\ & !\inst1|BCD_C2_conv_inst|Add21~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~15\,
	combout => \inst1|BCD_C2_conv_inst|Add21~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~17\);

-- Location: LCCOMB_X44_Y8_N2
\inst1|BCD_C2_conv_inst|Add21~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~18_combout\ = (\inst1|BCD_C2_conv_inst|Add20~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~17\)) # (!\inst1|BCD_C2_conv_inst|Add20~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add21~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add21~17\) # (!\inst1|BCD_C2_conv_inst|Add20~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~17\,
	combout => \inst1|BCD_C2_conv_inst|Add21~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~19\);

-- Location: LCCOMB_X45_Y9_N14
\inst1|BCD_C2_conv_inst|Add36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~0_combout\ = (\inst1|BCD_6\(0) & (\inst1|BCD_C2_conv_inst|Add34~0_combout\ $ (VCC))) # (!\inst1|BCD_6\(0) & (\inst1|BCD_C2_conv_inst|Add34~0_combout\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add36~1\ = CARRY((\inst1|BCD_6\(0) & \inst1|BCD_C2_conv_inst|Add34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(0),
	datab => \inst1|BCD_C2_conv_inst|Add34~0_combout\,
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add36~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~1\);

-- Location: LCCOMB_X45_Y9_N20
\inst1|BCD_C2_conv_inst|Add36~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~6_combout\ = (\inst1|BCD_C2_conv_inst|Add21~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~4_combout\ & (\inst1|BCD_C2_conv_inst|Add36~5\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add35~4_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add36~5\)))) # (!\inst1|BCD_C2_conv_inst|Add21~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~5\)) # (!\inst1|BCD_C2_conv_inst|Add35~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~5\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add36~7\ = CARRY((\inst1|BCD_C2_conv_inst|Add21~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~4_combout\ & !\inst1|BCD_C2_conv_inst|Add36~5\)) # (!\inst1|BCD_C2_conv_inst|Add21~4_combout\ & ((!\inst1|BCD_C2_conv_inst|Add36~5\) # 
-- (!\inst1|BCD_C2_conv_inst|Add35~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~4_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add35~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~5\,
	combout => \inst1|BCD_C2_conv_inst|Add36~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~7\);

-- Location: LCCOMB_X45_Y9_N24
\inst1|BCD_C2_conv_inst|Add36~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~10_combout\ = (\inst1|BCD_C2_conv_inst|Add21~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~8_combout\ & (\inst1|BCD_C2_conv_inst|Add36~9\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add35~8_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add36~9\)))) # (!\inst1|BCD_C2_conv_inst|Add21~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~9\)) # (!\inst1|BCD_C2_conv_inst|Add35~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~9\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add36~11\ = CARRY((\inst1|BCD_C2_conv_inst|Add21~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~8_combout\ & !\inst1|BCD_C2_conv_inst|Add36~9\)) # (!\inst1|BCD_C2_conv_inst|Add21~8_combout\ & ((!\inst1|BCD_C2_conv_inst|Add36~9\) # 
-- (!\inst1|BCD_C2_conv_inst|Add35~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~8_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add35~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~9\,
	combout => \inst1|BCD_C2_conv_inst|Add36~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~11\);

-- Location: LCCOMB_X45_Y9_N26
\inst1|BCD_C2_conv_inst|Add36~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~12_combout\ = ((\inst1|BCD_C2_conv_inst|Add35~10_combout\ $ (\inst1|BCD_C2_conv_inst|Add21~10_combout\ $ (!\inst1|BCD_C2_conv_inst|Add36~11\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add36~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add35~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~10_combout\) # (!\inst1|BCD_C2_conv_inst|Add36~11\))) # (!\inst1|BCD_C2_conv_inst|Add35~10_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add21~10_combout\ & !\inst1|BCD_C2_conv_inst|Add36~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add35~10_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add21~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~11\,
	combout => \inst1|BCD_C2_conv_inst|Add36~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~13\);

-- Location: LCCOMB_X45_Y9_N30
\inst1|BCD_C2_conv_inst|Add36~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~16_combout\ = ((\inst1|BCD_C2_conv_inst|Add35~14_combout\ $ (\inst1|BCD_C2_conv_inst|Add21~14_combout\ $ (!\inst1|BCD_C2_conv_inst|Add36~15\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add36~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add35~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~14_combout\) # (!\inst1|BCD_C2_conv_inst|Add36~15\))) # (!\inst1|BCD_C2_conv_inst|Add35~14_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add21~14_combout\ & !\inst1|BCD_C2_conv_inst|Add36~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add35~14_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add21~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~15\,
	combout => \inst1|BCD_C2_conv_inst|Add36~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~17\);

-- Location: LCCOMB_X45_Y8_N2
\inst1|BCD_C2_conv_inst|Add36~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~20_combout\ = ((\inst1|BCD_C2_conv_inst|Add21~18_combout\ $ (\inst1|BCD_C2_conv_inst|Add35~18_combout\ $ (!\inst1|BCD_C2_conv_inst|Add36~19\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add36~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add21~18_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~18_combout\) # (!\inst1|BCD_C2_conv_inst|Add36~19\))) # (!\inst1|BCD_C2_conv_inst|Add21~18_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add35~18_combout\ & !\inst1|BCD_C2_conv_inst|Add36~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~18_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add35~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~19\,
	combout => \inst1|BCD_C2_conv_inst|Add36~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~21\);

-- Location: LCCOMB_X51_Y9_N4
\inst1|BCD_C2_conv_inst|Add27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~4_combout\ = ((\inst1|BCD_7\(3) $ (\inst1|BCD_7\(2) $ (!\inst1|BCD_C2_conv_inst|Add27~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add27~5\ = CARRY((\inst1|BCD_7\(3) & ((\inst1|BCD_7\(2)) # (!\inst1|BCD_C2_conv_inst|Add27~3\))) # (!\inst1|BCD_7\(3) & (\inst1|BCD_7\(2) & !\inst1|BCD_C2_conv_inst|Add27~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(3),
	datab => \inst1|BCD_7\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~3\,
	combout => \inst1|BCD_C2_conv_inst|Add27~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~5\);

-- Location: LCCOMB_X51_Y9_N6
\inst1|BCD_C2_conv_inst|Add27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~6_combout\ = (\inst1|BCD_7\(3) & (!\inst1|BCD_C2_conv_inst|Add27~5\)) # (!\inst1|BCD_7\(3) & ((\inst1|BCD_C2_conv_inst|Add27~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add27~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add27~5\) # (!\inst1|BCD_7\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~5\,
	combout => \inst1|BCD_C2_conv_inst|Add27~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~7\);

-- Location: LCCOMB_X50_Y9_N2
\inst1|BCD_C2_conv_inst|Add28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~2_combout\ = (\inst1|BCD_7\(2) & ((\inst1|BCD_C2_conv_inst|Add27~0_combout\ & (\inst1|BCD_C2_conv_inst|Add28~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add27~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~1\)))) # 
-- (!\inst1|BCD_7\(2) & ((\inst1|BCD_C2_conv_inst|Add27~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~1\)) # (!\inst1|BCD_C2_conv_inst|Add27~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add28~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add28~3\ = CARRY((\inst1|BCD_7\(2) & (!\inst1|BCD_C2_conv_inst|Add27~0_combout\ & !\inst1|BCD_C2_conv_inst|Add28~1\)) # (!\inst1|BCD_7\(2) & ((!\inst1|BCD_C2_conv_inst|Add28~1\) # (!\inst1|BCD_C2_conv_inst|Add27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(2),
	datab => \inst1|BCD_C2_conv_inst|Add27~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~1\,
	combout => \inst1|BCD_C2_conv_inst|Add28~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~3\);

-- Location: LCCOMB_X50_Y9_N4
\inst1|BCD_C2_conv_inst|Add28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~4_combout\ = ((\inst1|BCD_7\(3) $ (\inst1|BCD_C2_conv_inst|Add27~2_combout\ $ (!\inst1|BCD_C2_conv_inst|Add28~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add28~5\ = CARRY((\inst1|BCD_7\(3) & ((\inst1|BCD_C2_conv_inst|Add27~2_combout\) # (!\inst1|BCD_C2_conv_inst|Add28~3\))) # (!\inst1|BCD_7\(3) & (\inst1|BCD_C2_conv_inst|Add27~2_combout\ & !\inst1|BCD_C2_conv_inst|Add28~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(3),
	datab => \inst1|BCD_C2_conv_inst|Add27~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~3\,
	combout => \inst1|BCD_C2_conv_inst|Add28~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~5\);

-- Location: LCCOMB_X50_Y9_N6
\inst1|BCD_C2_conv_inst|Add28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~6_combout\ = (\inst1|BCD_C2_conv_inst|Add27~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~5\)) # (!\inst1|BCD_C2_conv_inst|Add27~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add28~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add28~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add28~5\) # (!\inst1|BCD_C2_conv_inst|Add27~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add27~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~5\,
	combout => \inst1|BCD_C2_conv_inst|Add28~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~7\);

-- Location: LCCOMB_X49_Y9_N16
\inst1|BCD_C2_conv_inst|Add29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~0_combout\ = (\inst1|BCD_7\(1) & (\inst1|BCD_7\(0) $ (VCC))) # (!\inst1|BCD_7\(1) & (\inst1|BCD_7\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add29~1\ = CARRY((\inst1|BCD_7\(1) & \inst1|BCD_7\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(1),
	datab => \inst1|BCD_7\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add29~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~1\);

-- Location: LCCOMB_X49_Y9_N22
\inst1|BCD_C2_conv_inst|Add29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~6_combout\ = (\inst1|BCD_C2_conv_inst|Add28~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~5\)) # (!\inst1|BCD_C2_conv_inst|Add28~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add29~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add29~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add29~5\) # (!\inst1|BCD_C2_conv_inst|Add28~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add28~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~5\,
	combout => \inst1|BCD_C2_conv_inst|Add29~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~7\);

-- Location: LCCOMB_X49_Y9_N26
\inst1|BCD_C2_conv_inst|Add29~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~10_combout\ = (\inst1|BCD_C2_conv_inst|Add28~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~9\)) # (!\inst1|BCD_C2_conv_inst|Add28~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add29~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add29~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add29~9\) # (!\inst1|BCD_C2_conv_inst|Add28~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add28~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~9\,
	combout => \inst1|BCD_C2_conv_inst|Add29~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~11\);

-- Location: LCCOMB_X48_Y9_N16
\inst1|BCD_C2_conv_inst|Add30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~2_combout\ = (\inst1|BCD_C2_conv_inst|Add29~0_combout\ & ((\inst1|BCD_7\(3) & (\inst1|BCD_C2_conv_inst|Add30~1\ & VCC)) # (!\inst1|BCD_7\(3) & (!\inst1|BCD_C2_conv_inst|Add30~1\)))) # 
-- (!\inst1|BCD_C2_conv_inst|Add29~0_combout\ & ((\inst1|BCD_7\(3) & (!\inst1|BCD_C2_conv_inst|Add30~1\)) # (!\inst1|BCD_7\(3) & ((\inst1|BCD_C2_conv_inst|Add30~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add30~3\ = CARRY((\inst1|BCD_C2_conv_inst|Add29~0_combout\ & (!\inst1|BCD_7\(3) & !\inst1|BCD_C2_conv_inst|Add30~1\)) # (!\inst1|BCD_C2_conv_inst|Add29~0_combout\ & ((!\inst1|BCD_C2_conv_inst|Add30~1\) # (!\inst1|BCD_7\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add29~0_combout\,
	datab => \inst1|BCD_7\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~1\,
	combout => \inst1|BCD_C2_conv_inst|Add30~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~3\);

-- Location: LCCOMB_X48_Y9_N26
\inst1|BCD_C2_conv_inst|Add30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~12_combout\ = (\inst1|BCD_C2_conv_inst|Add29~10_combout\ & (\inst1|BCD_C2_conv_inst|Add30~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add29~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add30~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add29~10_combout\ & !\inst1|BCD_C2_conv_inst|Add30~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add29~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~11\,
	combout => \inst1|BCD_C2_conv_inst|Add30~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~13\);

-- Location: LCCOMB_X48_Y9_N30
\inst1|BCD_C2_conv_inst|Add30~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~16_combout\ = (\inst1|BCD_C2_conv_inst|Add29~14_combout\ & (\inst1|BCD_C2_conv_inst|Add30~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add29~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add30~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add29~14_combout\ & !\inst1|BCD_C2_conv_inst|Add30~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~15\,
	combout => \inst1|BCD_C2_conv_inst|Add30~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~17\);

-- Location: LCCOMB_X47_Y9_N14
\inst1|BCD_C2_conv_inst|Add31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~2_combout\ = (\inst1|BCD_7\(1) & ((\inst1|BCD_7\(2) & (\inst1|BCD_C2_conv_inst|Add31~1\ & VCC)) # (!\inst1|BCD_7\(2) & (!\inst1|BCD_C2_conv_inst|Add31~1\)))) # (!\inst1|BCD_7\(1) & ((\inst1|BCD_7\(2) & 
-- (!\inst1|BCD_C2_conv_inst|Add31~1\)) # (!\inst1|BCD_7\(2) & ((\inst1|BCD_C2_conv_inst|Add31~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add31~3\ = CARRY((\inst1|BCD_7\(1) & (!\inst1|BCD_7\(2) & !\inst1|BCD_C2_conv_inst|Add31~1\)) # (!\inst1|BCD_7\(1) & ((!\inst1|BCD_C2_conv_inst|Add31~1\) # (!\inst1|BCD_7\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(1),
	datab => \inst1|BCD_7\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~1\,
	combout => \inst1|BCD_C2_conv_inst|Add31~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~3\);

-- Location: LCCOMB_X47_Y9_N16
\inst1|BCD_C2_conv_inst|Add31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~4_combout\ = ((\inst1|BCD_7\(3) $ (\inst1|BCD_C2_conv_inst|Add30~0_combout\ $ (!\inst1|BCD_C2_conv_inst|Add31~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add31~5\ = CARRY((\inst1|BCD_7\(3) & ((\inst1|BCD_C2_conv_inst|Add30~0_combout\) # (!\inst1|BCD_C2_conv_inst|Add31~3\))) # (!\inst1|BCD_7\(3) & (\inst1|BCD_C2_conv_inst|Add30~0_combout\ & !\inst1|BCD_C2_conv_inst|Add31~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(3),
	datab => \inst1|BCD_C2_conv_inst|Add30~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~3\,
	combout => \inst1|BCD_C2_conv_inst|Add31~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~5\);

-- Location: LCCOMB_X47_Y9_N20
\inst1|BCD_C2_conv_inst|Add31~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~8_combout\ = (\inst1|BCD_C2_conv_inst|Add30~4_combout\ & (\inst1|BCD_C2_conv_inst|Add31~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add30~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add31~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add30~4_combout\ & !\inst1|BCD_C2_conv_inst|Add31~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~7\,
	combout => \inst1|BCD_C2_conv_inst|Add31~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~9\);

-- Location: LCCOMB_X47_Y9_N26
\inst1|BCD_C2_conv_inst|Add31~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~14_combout\ = (\inst1|BCD_C2_conv_inst|Add30~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~13\)) # (!\inst1|BCD_C2_conv_inst|Add30~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add31~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add31~13\) # (!\inst1|BCD_C2_conv_inst|Add30~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~13\,
	combout => \inst1|BCD_C2_conv_inst|Add31~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~15\);

-- Location: LCCOMB_X47_Y9_N30
\inst1|BCD_C2_conv_inst|Add31~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~18_combout\ = (\inst1|BCD_C2_conv_inst|Add30~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~17\)) # (!\inst1|BCD_C2_conv_inst|Add30~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add31~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add31~17\) # (!\inst1|BCD_C2_conv_inst|Add30~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~17\,
	combout => \inst1|BCD_C2_conv_inst|Add31~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~19\);

-- Location: LCCOMB_X46_Y9_N16
\inst1|BCD_C2_conv_inst|Add37~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~4_combout\ = ((\inst1|BCD_C2_conv_inst|Add31~2_combout\ $ (\inst1|BCD_C2_conv_inst|Add36~2_combout\ $ (!\inst1|BCD_C2_conv_inst|Add37~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add37~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add31~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~2_combout\) # (!\inst1|BCD_C2_conv_inst|Add37~3\))) # (!\inst1|BCD_C2_conv_inst|Add31~2_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add36~2_combout\ & !\inst1|BCD_C2_conv_inst|Add37~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add31~2_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add36~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~3\,
	combout => \inst1|BCD_C2_conv_inst|Add37~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~5\);

-- Location: LCCOMB_X46_Y9_N18
\inst1|BCD_C2_conv_inst|Add37~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~6_combout\ = (\inst1|BCD_C2_conv_inst|Add31~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~4_combout\ & (\inst1|BCD_C2_conv_inst|Add37~5\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add36~4_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add37~5\)))) # (!\inst1|BCD_C2_conv_inst|Add31~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~5\)) # (!\inst1|BCD_C2_conv_inst|Add36~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add37~5\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add37~7\ = CARRY((\inst1|BCD_C2_conv_inst|Add31~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~4_combout\ & !\inst1|BCD_C2_conv_inst|Add37~5\)) # (!\inst1|BCD_C2_conv_inst|Add31~4_combout\ & ((!\inst1|BCD_C2_conv_inst|Add37~5\) # 
-- (!\inst1|BCD_C2_conv_inst|Add36~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add31~4_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add36~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~5\,
	combout => \inst1|BCD_C2_conv_inst|Add37~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~7\);

-- Location: LCCOMB_X51_Y6_N16
\inst1|BCD_C2_conv_inst|Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~12_combout\ = (\inst1|BCD_C2_conv_inst|Add10~10_combout\ & (\inst1|BCD_C2_conv_inst|Add11~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add10~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add11~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add11~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add10~10_combout\ & !\inst1|BCD_C2_conv_inst|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add10~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add11~11\,
	combout => \inst1|BCD_C2_conv_inst|Add11~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add11~13\);

-- Location: LCCOMB_X49_Y7_N24
\inst1|BCD_C2_conv_inst|Add35~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~20_combout\ = (\inst1|BCD_C2_conv_inst|Add13~18_combout\ & (\inst1|BCD_C2_conv_inst|Add35~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add13~18_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add35~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add13~18_combout\ & !\inst1|BCD_C2_conv_inst|Add35~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add13~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~19\,
	combout => \inst1|BCD_C2_conv_inst|Add35~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~21\);

-- Location: LCCOMB_X48_Y6_N0
\inst1|BCD_C2_conv_inst|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add16~0_combout\ = (\inst1|BCD_6\(2) & (\inst1|BCD_6\(0) $ (VCC))) # (!\inst1|BCD_6\(2) & (\inst1|BCD_6\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add16~1\ = CARRY((\inst1|BCD_6\(2) & \inst1|BCD_6\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(2),
	datab => \inst1|BCD_6\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add16~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add16~1\);

-- Location: LCCOMB_X48_Y7_N14
\inst1|BCD_C2_conv_inst|Add17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add17~4_combout\ = (\inst1|BCD_C2_conv_inst|Add16~0_combout\ & (\inst1|BCD_C2_conv_inst|Add17~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add16~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add17~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add17~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add16~0_combout\ & !\inst1|BCD_C2_conv_inst|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add16~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add17~3\,
	combout => \inst1|BCD_C2_conv_inst|Add17~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add17~5\);

-- Location: LCCOMB_X47_Y7_N8
\inst1|BCD_C2_conv_inst|Add18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~8_combout\ = (\inst1|BCD_C2_conv_inst|Add17~4_combout\ & (\inst1|BCD_C2_conv_inst|Add18~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add17~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add18~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add18~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add17~4_combout\ & !\inst1|BCD_C2_conv_inst|Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add17~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add18~7\,
	combout => \inst1|BCD_C2_conv_inst|Add18~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~9\);

-- Location: LCCOMB_X46_Y7_N18
\inst1|BCD_C2_conv_inst|Add19~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~12_combout\ = (\inst1|BCD_C2_conv_inst|Add18~8_combout\ & (\inst1|BCD_C2_conv_inst|Add19~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add18~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add19~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add19~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add18~8_combout\ & !\inst1|BCD_C2_conv_inst|Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add18~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~11\,
	combout => \inst1|BCD_C2_conv_inst|Add19~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~13\);

-- Location: LCCOMB_X45_Y7_N16
\inst1|BCD_C2_conv_inst|Add20~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~14_combout\ = (\inst1|BCD_C2_conv_inst|Add19~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~13\)) # (!\inst1|BCD_C2_conv_inst|Add19~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add20~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add20~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add20~13\) # (!\inst1|BCD_C2_conv_inst|Add19~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add19~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~13\,
	combout => \inst1|BCD_C2_conv_inst|Add20~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~15\);

-- Location: LCCOMB_X44_Y8_N4
\inst1|BCD_C2_conv_inst|Add21~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~20_combout\ = (\inst1|BCD_C2_conv_inst|Add20~14_combout\ & (\inst1|BCD_C2_conv_inst|Add21~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add20~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add21~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add20~14_combout\ & !\inst1|BCD_C2_conv_inst|Add21~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~19\,
	combout => \inst1|BCD_C2_conv_inst|Add21~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~21\);

-- Location: LCCOMB_X50_Y9_N14
\inst1|BCD_C2_conv_inst|Add28~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~14_combout\ = (\inst1|BCD_C2_conv_inst|Add27~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~13\)) # (!\inst1|BCD_C2_conv_inst|Add27~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add28~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add28~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add28~13\) # (!\inst1|BCD_C2_conv_inst|Add27~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add27~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~13\,
	combout => \inst1|BCD_C2_conv_inst|Add28~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~15\);

-- Location: LCCOMB_X47_Y8_N2
\inst1|BCD_C2_conv_inst|Add31~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~22_combout\ = (\inst1|BCD_C2_conv_inst|Add30~18_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~21\)) # (!\inst1|BCD_C2_conv_inst|Add30~18_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add31~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add31~21\) # (!\inst1|BCD_C2_conv_inst|Add30~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~21\,
	combout => \inst1|BCD_C2_conv_inst|Add31~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~23\);

-- Location: LCCOMB_X48_Y6_N18
\inst1|BCD_C2_conv_inst|Add15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add15~1_combout\ = (\inst1|BCD_6\(1) & (\inst1|BCD_6\(0) $ (VCC))) # (!\inst1|BCD_6\(1) & (\inst1|BCD_6\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add15~2\ = CARRY((\inst1|BCD_6\(1) & \inst1|BCD_6\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(1),
	datab => \inst1|BCD_6\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add15~1_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add15~2\);

-- Location: LCCOMB_X48_Y6_N20
\inst1|BCD_C2_conv_inst|Add15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add15~3_combout\ = (\inst1|BCD_C2_conv_inst|Add15~1_combout\ & ((\inst1|BCD_6\(2) & (\inst1|BCD_C2_conv_inst|Add15~2\ & VCC)) # (!\inst1|BCD_6\(2) & (!\inst1|BCD_C2_conv_inst|Add15~2\)))) # 
-- (!\inst1|BCD_C2_conv_inst|Add15~1_combout\ & ((\inst1|BCD_6\(2) & (!\inst1|BCD_C2_conv_inst|Add15~2\)) # (!\inst1|BCD_6\(2) & ((\inst1|BCD_C2_conv_inst|Add15~2\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add15~4\ = CARRY((\inst1|BCD_C2_conv_inst|Add15~1_combout\ & (!\inst1|BCD_6\(2) & !\inst1|BCD_C2_conv_inst|Add15~2\)) # (!\inst1|BCD_C2_conv_inst|Add15~1_combout\ & ((!\inst1|BCD_C2_conv_inst|Add15~2\) # (!\inst1|BCD_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add15~1_combout\,
	datab => \inst1|BCD_6\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add15~2\,
	combout => \inst1|BCD_C2_conv_inst|Add15~3_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add15~4\);

-- Location: LCCOMB_X48_Y6_N22
\inst1|BCD_C2_conv_inst|Add15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add15~5_combout\ = ((\inst1|BCD_C2_conv_inst|Add14~2_combout\ $ (\inst1|BCD_6\(3) $ (!\inst1|BCD_C2_conv_inst|Add15~4\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add15~6\ = CARRY((\inst1|BCD_C2_conv_inst|Add14~2_combout\ & ((\inst1|BCD_6\(3)) # (!\inst1|BCD_C2_conv_inst|Add15~4\))) # (!\inst1|BCD_C2_conv_inst|Add14~2_combout\ & (\inst1|BCD_6\(3) & !\inst1|BCD_C2_conv_inst|Add15~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add14~2_combout\,
	datab => \inst1|BCD_6\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add15~4\,
	combout => \inst1|BCD_C2_conv_inst|Add15~5_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add15~6\);

-- Location: LCCOMB_X48_Y6_N24
\inst1|BCD_C2_conv_inst|Add15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add15~7_combout\ = (\inst1|BCD_C2_conv_inst|Add14~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add15~6\)) # (!\inst1|BCD_C2_conv_inst|Add14~1_combout\ & ((\inst1|BCD_C2_conv_inst|Add15~6\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add15~8\ = CARRY((!\inst1|BCD_C2_conv_inst|Add15~6\) # (!\inst1|BCD_C2_conv_inst|Add14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add14~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add15~6\,
	combout => \inst1|BCD_C2_conv_inst|Add15~7_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add15~8\);

-- Location: LCCOMB_X48_Y6_N26
\inst1|BCD_C2_conv_inst|Add15~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add15~9_combout\ = (\inst1|BCD_C2_conv_inst|Add15~8\ & ((\inst1|BCD_6\(3) $ (\inst1|BCD_C2_conv_inst|Add14~0_combout\)))) # (!\inst1|BCD_C2_conv_inst|Add15~8\ & (\inst1|BCD_6\(3) $ (\inst1|BCD_C2_conv_inst|Add14~0_combout\ $ 
-- (VCC))))
-- \inst1|BCD_C2_conv_inst|Add15~10\ = CARRY((!\inst1|BCD_C2_conv_inst|Add15~8\ & (\inst1|BCD_6\(3) $ (\inst1|BCD_C2_conv_inst|Add14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(3),
	datab => \inst1|BCD_C2_conv_inst|Add14~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add15~8\,
	combout => \inst1|BCD_C2_conv_inst|Add15~9_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add15~10\);

-- Location: LCCOMB_X48_Y6_N2
\inst1|BCD_C2_conv_inst|Add16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add16~2_combout\ = (\inst1|BCD_6\(3) & ((\inst1|BCD_C2_conv_inst|Add15~1_combout\ & (\inst1|BCD_C2_conv_inst|Add16~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add15~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add16~1\)))) # 
-- (!\inst1|BCD_6\(3) & ((\inst1|BCD_C2_conv_inst|Add15~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add16~1\)) # (!\inst1|BCD_C2_conv_inst|Add15~1_combout\ & ((\inst1|BCD_C2_conv_inst|Add16~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add16~3\ = CARRY((\inst1|BCD_6\(3) & (!\inst1|BCD_C2_conv_inst|Add15~1_combout\ & !\inst1|BCD_C2_conv_inst|Add16~1\)) # (!\inst1|BCD_6\(3) & ((!\inst1|BCD_C2_conv_inst|Add16~1\) # (!\inst1|BCD_C2_conv_inst|Add15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(3),
	datab => \inst1|BCD_C2_conv_inst|Add15~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add16~1\,
	combout => \inst1|BCD_C2_conv_inst|Add16~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add16~3\);

-- Location: LCCOMB_X48_Y6_N4
\inst1|BCD_C2_conv_inst|Add16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add16~4_combout\ = (\inst1|BCD_C2_conv_inst|Add15~3_combout\ & (\inst1|BCD_C2_conv_inst|Add16~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add15~3_combout\ & (!\inst1|BCD_C2_conv_inst|Add16~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add16~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add15~3_combout\ & !\inst1|BCD_C2_conv_inst|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add15~3_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add16~3\,
	combout => \inst1|BCD_C2_conv_inst|Add16~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add16~5\);

-- Location: LCCOMB_X48_Y6_N6
\inst1|BCD_C2_conv_inst|Add16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add16~6_combout\ = (\inst1|BCD_C2_conv_inst|Add15~5_combout\ & (!\inst1|BCD_C2_conv_inst|Add16~5\)) # (!\inst1|BCD_C2_conv_inst|Add15~5_combout\ & ((\inst1|BCD_C2_conv_inst|Add16~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add16~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add16~5\) # (!\inst1|BCD_C2_conv_inst|Add15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add15~5_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add16~5\,
	combout => \inst1|BCD_C2_conv_inst|Add16~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add16~7\);

-- Location: LCCOMB_X48_Y6_N8
\inst1|BCD_C2_conv_inst|Add16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add16~8_combout\ = (\inst1|BCD_C2_conv_inst|Add15~7_combout\ & (\inst1|BCD_C2_conv_inst|Add16~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add15~7_combout\ & (!\inst1|BCD_C2_conv_inst|Add16~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add16~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add15~7_combout\ & !\inst1|BCD_C2_conv_inst|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add15~7_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add16~7\,
	combout => \inst1|BCD_C2_conv_inst|Add16~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add16~9\);

-- Location: LCCOMB_X48_Y6_N10
\inst1|BCD_C2_conv_inst|Add16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add16~10_combout\ = (\inst1|BCD_C2_conv_inst|Add15~9_combout\ & (!\inst1|BCD_C2_conv_inst|Add16~9\)) # (!\inst1|BCD_C2_conv_inst|Add15~9_combout\ & ((\inst1|BCD_C2_conv_inst|Add16~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add16~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add16~9\) # (!\inst1|BCD_C2_conv_inst|Add15~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add15~9_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add16~9\,
	combout => \inst1|BCD_C2_conv_inst|Add16~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add16~11\);

-- Location: LCCOMB_X48_Y7_N16
\inst1|BCD_C2_conv_inst|Add17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add17~6_combout\ = (\inst1|BCD_C2_conv_inst|Add16~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add17~5\)) # (!\inst1|BCD_C2_conv_inst|Add16~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add17~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add17~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add17~5\) # (!\inst1|BCD_C2_conv_inst|Add16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add16~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add17~5\,
	combout => \inst1|BCD_C2_conv_inst|Add17~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add17~7\);

-- Location: LCCOMB_X48_Y7_N18
\inst1|BCD_C2_conv_inst|Add17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add17~8_combout\ = (\inst1|BCD_C2_conv_inst|Add16~4_combout\ & (\inst1|BCD_C2_conv_inst|Add17~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add16~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add17~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add17~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add16~4_combout\ & !\inst1|BCD_C2_conv_inst|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add16~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add17~7\,
	combout => \inst1|BCD_C2_conv_inst|Add17~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add17~9\);

-- Location: LCCOMB_X48_Y7_N20
\inst1|BCD_C2_conv_inst|Add17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add17~10_combout\ = (\inst1|BCD_C2_conv_inst|Add16~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add17~9\)) # (!\inst1|BCD_C2_conv_inst|Add16~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add17~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add17~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add17~9\) # (!\inst1|BCD_C2_conv_inst|Add16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add16~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add17~9\,
	combout => \inst1|BCD_C2_conv_inst|Add17~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add17~11\);

-- Location: LCCOMB_X48_Y7_N22
\inst1|BCD_C2_conv_inst|Add17~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add17~12_combout\ = (\inst1|BCD_C2_conv_inst|Add16~8_combout\ & (\inst1|BCD_C2_conv_inst|Add17~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add16~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add17~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add17~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add16~8_combout\ & !\inst1|BCD_C2_conv_inst|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add16~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add17~11\,
	combout => \inst1|BCD_C2_conv_inst|Add17~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add17~13\);

-- Location: LCCOMB_X48_Y7_N24
\inst1|BCD_C2_conv_inst|Add17~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add17~14_combout\ = (\inst1|BCD_C2_conv_inst|Add16~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add17~13\)) # (!\inst1|BCD_C2_conv_inst|Add16~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add17~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add17~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add17~13\) # (!\inst1|BCD_C2_conv_inst|Add16~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add16~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add17~13\,
	combout => \inst1|BCD_C2_conv_inst|Add17~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add17~15\);

-- Location: LCCOMB_X47_Y7_N10
\inst1|BCD_C2_conv_inst|Add18~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~10_combout\ = (\inst1|BCD_C2_conv_inst|Add17~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add18~9\)) # (!\inst1|BCD_C2_conv_inst|Add17~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add18~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add18~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add18~9\) # (!\inst1|BCD_C2_conv_inst|Add17~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add17~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add18~9\,
	combout => \inst1|BCD_C2_conv_inst|Add18~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~11\);

-- Location: LCCOMB_X47_Y7_N12
\inst1|BCD_C2_conv_inst|Add18~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~12_combout\ = (\inst1|BCD_C2_conv_inst|Add17~8_combout\ & (\inst1|BCD_C2_conv_inst|Add18~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add17~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add18~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add18~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add17~8_combout\ & !\inst1|BCD_C2_conv_inst|Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add17~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add18~11\,
	combout => \inst1|BCD_C2_conv_inst|Add18~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~13\);

-- Location: LCCOMB_X47_Y7_N14
\inst1|BCD_C2_conv_inst|Add18~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~14_combout\ = (\inst1|BCD_C2_conv_inst|Add17~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add18~13\)) # (!\inst1|BCD_C2_conv_inst|Add17~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add18~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add18~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add18~13\) # (!\inst1|BCD_C2_conv_inst|Add17~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add17~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add18~13\,
	combout => \inst1|BCD_C2_conv_inst|Add18~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~15\);

-- Location: LCCOMB_X47_Y7_N16
\inst1|BCD_C2_conv_inst|Add18~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~16_combout\ = (\inst1|BCD_C2_conv_inst|Add17~12_combout\ & (\inst1|BCD_C2_conv_inst|Add18~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add17~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add18~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add18~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add17~12_combout\ & !\inst1|BCD_C2_conv_inst|Add18~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add17~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add18~15\,
	combout => \inst1|BCD_C2_conv_inst|Add18~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~17\);

-- Location: LCCOMB_X47_Y7_N18
\inst1|BCD_C2_conv_inst|Add18~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~18_combout\ = (\inst1|BCD_C2_conv_inst|Add17~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add18~17\)) # (!\inst1|BCD_C2_conv_inst|Add17~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add18~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add18~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add18~17\) # (!\inst1|BCD_C2_conv_inst|Add17~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add17~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add18~17\,
	combout => \inst1|BCD_C2_conv_inst|Add18~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~19\);

-- Location: LCCOMB_X46_Y7_N20
\inst1|BCD_C2_conv_inst|Add19~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~14_combout\ = (\inst1|BCD_C2_conv_inst|Add18~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add19~13\)) # (!\inst1|BCD_C2_conv_inst|Add18~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add19~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add19~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add19~13\) # (!\inst1|BCD_C2_conv_inst|Add18~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add18~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~13\,
	combout => \inst1|BCD_C2_conv_inst|Add19~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~15\);

-- Location: LCCOMB_X46_Y7_N22
\inst1|BCD_C2_conv_inst|Add19~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~16_combout\ = (\inst1|BCD_C2_conv_inst|Add18~12_combout\ & (\inst1|BCD_C2_conv_inst|Add19~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add18~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add19~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add19~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add18~12_combout\ & !\inst1|BCD_C2_conv_inst|Add19~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add18~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~15\,
	combout => \inst1|BCD_C2_conv_inst|Add19~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~17\);

-- Location: LCCOMB_X46_Y7_N24
\inst1|BCD_C2_conv_inst|Add19~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~18_combout\ = (\inst1|BCD_C2_conv_inst|Add18~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add19~17\)) # (!\inst1|BCD_C2_conv_inst|Add18~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add19~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add19~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add19~17\) # (!\inst1|BCD_C2_conv_inst|Add18~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add18~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~17\,
	combout => \inst1|BCD_C2_conv_inst|Add19~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~19\);

-- Location: LCCOMB_X46_Y7_N26
\inst1|BCD_C2_conv_inst|Add19~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~20_combout\ = (\inst1|BCD_C2_conv_inst|Add18~16_combout\ & (\inst1|BCD_C2_conv_inst|Add19~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add18~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add19~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add19~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add18~16_combout\ & !\inst1|BCD_C2_conv_inst|Add19~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add18~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~19\,
	combout => \inst1|BCD_C2_conv_inst|Add19~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~21\);

-- Location: LCCOMB_X46_Y7_N28
\inst1|BCD_C2_conv_inst|Add19~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~22_combout\ = (\inst1|BCD_C2_conv_inst|Add18~18_combout\ & (!\inst1|BCD_C2_conv_inst|Add19~21\)) # (!\inst1|BCD_C2_conv_inst|Add18~18_combout\ & ((\inst1|BCD_C2_conv_inst|Add19~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add19~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add19~21\) # (!\inst1|BCD_C2_conv_inst|Add18~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add18~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~21\,
	combout => \inst1|BCD_C2_conv_inst|Add19~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~23\);

-- Location: LCCOMB_X45_Y7_N18
\inst1|BCD_C2_conv_inst|Add20~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~16_combout\ = (\inst1|BCD_C2_conv_inst|Add19~14_combout\ & (\inst1|BCD_C2_conv_inst|Add20~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add19~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add20~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add19~14_combout\ & !\inst1|BCD_C2_conv_inst|Add20~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add19~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~15\,
	combout => \inst1|BCD_C2_conv_inst|Add20~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~17\);

-- Location: LCCOMB_X45_Y7_N20
\inst1|BCD_C2_conv_inst|Add20~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~18_combout\ = (\inst1|BCD_C2_conv_inst|Add19~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~17\)) # (!\inst1|BCD_C2_conv_inst|Add19~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add20~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add20~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add20~17\) # (!\inst1|BCD_C2_conv_inst|Add19~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add19~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~17\,
	combout => \inst1|BCD_C2_conv_inst|Add20~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~19\);

-- Location: LCCOMB_X45_Y7_N22
\inst1|BCD_C2_conv_inst|Add20~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~20_combout\ = (\inst1|BCD_C2_conv_inst|Add19~18_combout\ & (\inst1|BCD_C2_conv_inst|Add20~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add19~18_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add20~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add19~18_combout\ & !\inst1|BCD_C2_conv_inst|Add20~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add19~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~19\,
	combout => \inst1|BCD_C2_conv_inst|Add20~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~21\);

-- Location: LCCOMB_X45_Y7_N24
\inst1|BCD_C2_conv_inst|Add20~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~22_combout\ = (\inst1|BCD_C2_conv_inst|Add19~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~21\)) # (!\inst1|BCD_C2_conv_inst|Add19~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add20~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add20~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add20~21\) # (!\inst1|BCD_C2_conv_inst|Add19~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add19~20_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~21\,
	combout => \inst1|BCD_C2_conv_inst|Add20~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~23\);

-- Location: LCCOMB_X45_Y7_N26
\inst1|BCD_C2_conv_inst|Add20~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~24_combout\ = (\inst1|BCD_C2_conv_inst|Add19~22_combout\ & (\inst1|BCD_C2_conv_inst|Add20~23\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add19~22_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~23\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add20~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add19~22_combout\ & !\inst1|BCD_C2_conv_inst|Add20~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add19~22_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~23\,
	combout => \inst1|BCD_C2_conv_inst|Add20~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~25\);

-- Location: LCCOMB_X44_Y8_N6
\inst1|BCD_C2_conv_inst|Add21~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~22_combout\ = (\inst1|BCD_C2_conv_inst|Add20~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~21\)) # (!\inst1|BCD_C2_conv_inst|Add20~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add21~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add21~21\) # (!\inst1|BCD_C2_conv_inst|Add20~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~21\,
	combout => \inst1|BCD_C2_conv_inst|Add21~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~23\);

-- Location: LCCOMB_X44_Y8_N8
\inst1|BCD_C2_conv_inst|Add21~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~24_combout\ = (\inst1|BCD_C2_conv_inst|Add20~18_combout\ & (\inst1|BCD_C2_conv_inst|Add21~23\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add20~18_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~23\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add21~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add20~18_combout\ & !\inst1|BCD_C2_conv_inst|Add21~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~23\,
	combout => \inst1|BCD_C2_conv_inst|Add21~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~25\);

-- Location: LCCOMB_X44_Y8_N10
\inst1|BCD_C2_conv_inst|Add21~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~26_combout\ = (\inst1|BCD_C2_conv_inst|Add20~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~25\)) # (!\inst1|BCD_C2_conv_inst|Add20~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~25\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add21~27\ = CARRY((!\inst1|BCD_C2_conv_inst|Add21~25\) # (!\inst1|BCD_C2_conv_inst|Add20~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add20~20_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~25\,
	combout => \inst1|BCD_C2_conv_inst|Add21~26_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~27\);

-- Location: LCCOMB_X44_Y8_N12
\inst1|BCD_C2_conv_inst|Add21~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~28_combout\ = (\inst1|BCD_C2_conv_inst|Add20~22_combout\ & (\inst1|BCD_C2_conv_inst|Add21~27\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add20~22_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~27\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add21~29\ = CARRY((\inst1|BCD_C2_conv_inst|Add20~22_combout\ & !\inst1|BCD_C2_conv_inst|Add21~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add20~22_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~27\,
	combout => \inst1|BCD_C2_conv_inst|Add21~28_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~29\);

-- Location: LCCOMB_X44_Y8_N14
\inst1|BCD_C2_conv_inst|Add21~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~30_combout\ = (\inst1|BCD_C2_conv_inst|Add20~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~29\)) # (!\inst1|BCD_C2_conv_inst|Add20~24_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~29\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add21~31\ = CARRY((!\inst1|BCD_C2_conv_inst|Add21~29\) # (!\inst1|BCD_C2_conv_inst|Add20~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add20~24_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~29\,
	combout => \inst1|BCD_C2_conv_inst|Add21~30_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~31\);

-- Location: LCCOMB_X49_Y6_N6
\inst1|BCD_C2_conv_inst|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add8~6_combout\ = (\inst1|BCD_C2_conv_inst|Add7~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add8~5\)) # (!\inst1|BCD_C2_conv_inst|Add7~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add8~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add8~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add8~5\) # (!\inst1|BCD_C2_conv_inst|Add7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add7~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add8~5\,
	combout => \inst1|BCD_C2_conv_inst|Add8~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add8~7\);

-- Location: LCCOMB_X49_Y6_N8
\inst1|BCD_C2_conv_inst|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add8~8_combout\ = (\inst1|BCD_C2_conv_inst|Add8~7\ & ((\inst1|BCD_C2_conv_inst|Add7~1_combout\ $ (\inst1|BCD_5\(3))))) # (!\inst1|BCD_C2_conv_inst|Add8~7\ & (\inst1|BCD_C2_conv_inst|Add7~1_combout\ $ (\inst1|BCD_5\(3) $ (VCC))))
-- \inst1|BCD_C2_conv_inst|Add8~9\ = CARRY((!\inst1|BCD_C2_conv_inst|Add8~7\ & (\inst1|BCD_C2_conv_inst|Add7~1_combout\ $ (\inst1|BCD_5\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add7~1_combout\,
	datab => \inst1|BCD_5\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add8~7\,
	combout => \inst1|BCD_C2_conv_inst|Add8~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add8~9\);

-- Location: LCCOMB_X49_Y6_N10
\inst1|BCD_C2_conv_inst|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add8~10_combout\ = \inst1|BCD_C2_conv_inst|Add8~9\ $ (((\inst1|BCD_5\(3) & \inst1|BCD_C2_conv_inst|Add7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_5\(3),
	datad => \inst1|BCD_C2_conv_inst|Add7~1_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add8~9\,
	combout => \inst1|BCD_C2_conv_inst|Add8~10_combout\);

-- Location: LCCOMB_X49_Y6_N26
\inst1|BCD_C2_conv_inst|Add9~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add9~11_combout\ = (\inst1|BCD_C2_conv_inst|Add8~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add9~10\)) # (!\inst1|BCD_C2_conv_inst|Add8~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add9~10\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add9~12\ = CARRY((!\inst1|BCD_C2_conv_inst|Add9~10\) # (!\inst1|BCD_C2_conv_inst|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add8~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add9~10\,
	combout => \inst1|BCD_C2_conv_inst|Add9~11_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add9~12\);

-- Location: LCCOMB_X49_Y6_N28
\inst1|BCD_C2_conv_inst|Add9~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add9~13_combout\ = (\inst1|BCD_C2_conv_inst|Add8~8_combout\ & (\inst1|BCD_C2_conv_inst|Add9~12\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add8~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add9~12\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add9~14\ = CARRY((\inst1|BCD_C2_conv_inst|Add8~8_combout\ & !\inst1|BCD_C2_conv_inst|Add9~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add8~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add9~12\,
	combout => \inst1|BCD_C2_conv_inst|Add9~13_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add9~14\);

-- Location: LCCOMB_X49_Y6_N30
\inst1|BCD_C2_conv_inst|Add9~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add9~15_combout\ = \inst1|BCD_C2_conv_inst|Add9~14\ $ (\inst1|BCD_C2_conv_inst|Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add8~10_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add9~14\,
	combout => \inst1|BCD_C2_conv_inst|Add9~15_combout\);

-- Location: LCCOMB_X50_Y6_N20
\inst1|BCD_C2_conv_inst|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add10~12_combout\ = (\inst1|BCD_C2_conv_inst|Add9~11_combout\ & (\inst1|BCD_C2_conv_inst|Add10~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add9~11_combout\ & (!\inst1|BCD_C2_conv_inst|Add10~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add10~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add9~11_combout\ & !\inst1|BCD_C2_conv_inst|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add9~11_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add10~11\,
	combout => \inst1|BCD_C2_conv_inst|Add10~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add10~13\);

-- Location: LCCOMB_X50_Y6_N22
\inst1|BCD_C2_conv_inst|Add10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add10~14_combout\ = (\inst1|BCD_C2_conv_inst|Add9~13_combout\ & (!\inst1|BCD_C2_conv_inst|Add10~13\)) # (!\inst1|BCD_C2_conv_inst|Add9~13_combout\ & ((\inst1|BCD_C2_conv_inst|Add10~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add10~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add10~13\) # (!\inst1|BCD_C2_conv_inst|Add9~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add9~13_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add10~13\,
	combout => \inst1|BCD_C2_conv_inst|Add10~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add10~15\);

-- Location: LCCOMB_X50_Y6_N24
\inst1|BCD_C2_conv_inst|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add10~16_combout\ = \inst1|BCD_C2_conv_inst|Add9~15_combout\ $ (!\inst1|BCD_C2_conv_inst|Add10~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add9~15_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add10~15\,
	combout => \inst1|BCD_C2_conv_inst|Add10~16_combout\);

-- Location: LCCOMB_X51_Y6_N18
\inst1|BCD_C2_conv_inst|Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~14_combout\ = (\inst1|BCD_C2_conv_inst|Add10~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add11~13\)) # (!\inst1|BCD_C2_conv_inst|Add10~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add11~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add11~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add11~13\) # (!\inst1|BCD_C2_conv_inst|Add10~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add10~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add11~13\,
	combout => \inst1|BCD_C2_conv_inst|Add11~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add11~15\);

-- Location: LCCOMB_X51_Y6_N20
\inst1|BCD_C2_conv_inst|Add11~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~16_combout\ = (\inst1|BCD_C2_conv_inst|Add10~14_combout\ & (\inst1|BCD_C2_conv_inst|Add11~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add10~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add11~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add11~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add10~14_combout\ & !\inst1|BCD_C2_conv_inst|Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add10~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add11~15\,
	combout => \inst1|BCD_C2_conv_inst|Add11~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add11~17\);

-- Location: LCCOMB_X51_Y6_N22
\inst1|BCD_C2_conv_inst|Add11~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~18_combout\ = \inst1|BCD_C2_conv_inst|Add11~17\ $ (\inst1|BCD_C2_conv_inst|Add10~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add10~16_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add11~17\,
	combout => \inst1|BCD_C2_conv_inst|Add11~18_combout\);

-- Location: LCCOMB_X51_Y7_N26
\inst1|BCD_C2_conv_inst|Add12~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~16_combout\ = (\inst1|BCD_C2_conv_inst|Add11~14_combout\ & (\inst1|BCD_C2_conv_inst|Add12~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add11~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add12~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add11~14_combout\ & !\inst1|BCD_C2_conv_inst|Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add11~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add12~15\,
	combout => \inst1|BCD_C2_conv_inst|Add12~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~17\);

-- Location: LCCOMB_X51_Y7_N28
\inst1|BCD_C2_conv_inst|Add12~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~18_combout\ = (\inst1|BCD_C2_conv_inst|Add11~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~17\)) # (!\inst1|BCD_C2_conv_inst|Add11~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add12~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add12~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add12~17\) # (!\inst1|BCD_C2_conv_inst|Add11~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add11~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add12~17\,
	combout => \inst1|BCD_C2_conv_inst|Add12~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~19\);

-- Location: LCCOMB_X51_Y7_N30
\inst1|BCD_C2_conv_inst|Add12~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~20_combout\ = \inst1|BCD_C2_conv_inst|Add12~19\ $ (!\inst1|BCD_C2_conv_inst|Add11~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add11~18_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add12~19\,
	combout => \inst1|BCD_C2_conv_inst|Add12~20_combout\);

-- Location: LCCOMB_X50_Y7_N22
\inst1|BCD_C2_conv_inst|Add13~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~22_combout\ = (\inst1|BCD_C2_conv_inst|Add12~18_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~21\)) # (!\inst1|BCD_C2_conv_inst|Add12~18_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add13~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add13~21\) # (!\inst1|BCD_C2_conv_inst|Add12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add12~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~21\,
	combout => \inst1|BCD_C2_conv_inst|Add13~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~23\);

-- Location: LCCOMB_X50_Y7_N24
\inst1|BCD_C2_conv_inst|Add13~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~24_combout\ = \inst1|BCD_C2_conv_inst|Add13~23\ $ (!\inst1|BCD_C2_conv_inst|Add12~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add12~20_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add13~23\,
	combout => \inst1|BCD_C2_conv_inst|Add13~24_combout\);

-- Location: LCCOMB_X49_Y7_N28
\inst1|BCD_C2_conv_inst|Add35~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~24_combout\ = (\inst1|BCD_C2_conv_inst|Add13~22_combout\ & (\inst1|BCD_C2_conv_inst|Add35~23\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add13~22_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~23\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add35~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add13~22_combout\ & !\inst1|BCD_C2_conv_inst|Add35~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add13~22_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~23\,
	combout => \inst1|BCD_C2_conv_inst|Add35~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~25\);

-- Location: LCCOMB_X49_Y7_N30
\inst1|BCD_C2_conv_inst|Add35~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~26_combout\ = \inst1|BCD_C2_conv_inst|Add35~25\ $ (\inst1|BCD_C2_conv_inst|Add13~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add13~24_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add35~25\,
	combout => \inst1|BCD_C2_conv_inst|Add35~26_combout\);

-- Location: LCCOMB_X45_Y8_N8
\inst1|BCD_C2_conv_inst|Add36~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~26_combout\ = (\inst1|BCD_C2_conv_inst|Add21~24_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~24_combout\ & (\inst1|BCD_C2_conv_inst|Add36~25\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add35~24_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add36~25\)))) # (!\inst1|BCD_C2_conv_inst|Add21~24_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~25\)) # (!\inst1|BCD_C2_conv_inst|Add35~24_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add36~25\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add36~27\ = CARRY((\inst1|BCD_C2_conv_inst|Add21~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~24_combout\ & !\inst1|BCD_C2_conv_inst|Add36~25\)) # (!\inst1|BCD_C2_conv_inst|Add21~24_combout\ & ((!\inst1|BCD_C2_conv_inst|Add36~25\) 
-- # (!\inst1|BCD_C2_conv_inst|Add35~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~24_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add35~24_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~25\,
	combout => \inst1|BCD_C2_conv_inst|Add36~26_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~27\);

-- Location: LCCOMB_X45_Y8_N10
\inst1|BCD_C2_conv_inst|Add36~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~28_combout\ = ((\inst1|BCD_C2_conv_inst|Add21~26_combout\ $ (\inst1|BCD_C2_conv_inst|Add35~26_combout\ $ (!\inst1|BCD_C2_conv_inst|Add36~27\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add36~29\ = CARRY((\inst1|BCD_C2_conv_inst|Add21~26_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~26_combout\) # (!\inst1|BCD_C2_conv_inst|Add36~27\))) # (!\inst1|BCD_C2_conv_inst|Add21~26_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add35~26_combout\ & !\inst1|BCD_C2_conv_inst|Add36~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~26_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add35~26_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~27\,
	combout => \inst1|BCD_C2_conv_inst|Add36~28_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~29\);

-- Location: LCCOMB_X45_Y8_N12
\inst1|BCD_C2_conv_inst|Add36~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~30_combout\ = (\inst1|BCD_C2_conv_inst|Add21~28_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~29\)) # (!\inst1|BCD_C2_conv_inst|Add21~28_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~29\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add36~31\ = CARRY((!\inst1|BCD_C2_conv_inst|Add36~29\) # (!\inst1|BCD_C2_conv_inst|Add21~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~28_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~29\,
	combout => \inst1|BCD_C2_conv_inst|Add36~30_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~31\);

-- Location: LCCOMB_X45_Y8_N14
\inst1|BCD_C2_conv_inst|Add36~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~32_combout\ = (\inst1|BCD_C2_conv_inst|Add21~30_combout\ & (\inst1|BCD_C2_conv_inst|Add36~31\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add21~30_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~31\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add36~33\ = CARRY((\inst1|BCD_C2_conv_inst|Add21~30_combout\ & !\inst1|BCD_C2_conv_inst|Add36~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~30_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~31\,
	combout => \inst1|BCD_C2_conv_inst|Add36~32_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~33\);

-- Location: LCCOMB_X51_Y5_N16
\inst1|BCD_C2_conv_inst|Add23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add23~1_combout\ = (\inst1|BCD_7\(0) & (\inst1|BCD_7\(1) $ (VCC))) # (!\inst1|BCD_7\(0) & (\inst1|BCD_7\(1) & VCC))
-- \inst1|BCD_C2_conv_inst|Add23~2\ = CARRY((\inst1|BCD_7\(0) & \inst1|BCD_7\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(0),
	datab => \inst1|BCD_7\(1),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add23~1_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add23~2\);

-- Location: LCCOMB_X51_Y5_N18
\inst1|BCD_C2_conv_inst|Add23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add23~3_combout\ = (\inst1|BCD_7\(2) & ((\inst1|BCD_C2_conv_inst|Add23~1_combout\ & (\inst1|BCD_C2_conv_inst|Add23~2\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add23~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add23~2\)))) # 
-- (!\inst1|BCD_7\(2) & ((\inst1|BCD_C2_conv_inst|Add23~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add23~2\)) # (!\inst1|BCD_C2_conv_inst|Add23~1_combout\ & ((\inst1|BCD_C2_conv_inst|Add23~2\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add23~4\ = CARRY((\inst1|BCD_7\(2) & (!\inst1|BCD_C2_conv_inst|Add23~1_combout\ & !\inst1|BCD_C2_conv_inst|Add23~2\)) # (!\inst1|BCD_7\(2) & ((!\inst1|BCD_C2_conv_inst|Add23~2\) # (!\inst1|BCD_C2_conv_inst|Add23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(2),
	datab => \inst1|BCD_C2_conv_inst|Add23~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add23~2\,
	combout => \inst1|BCD_C2_conv_inst|Add23~3_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add23~4\);

-- Location: LCCOMB_X51_Y5_N4
\inst1|BCD_C2_conv_inst|Add24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add24~0_combout\ = (\inst1|BCD_7\(0) & (\inst1|BCD_7\(1) $ (VCC))) # (!\inst1|BCD_7\(0) & (\inst1|BCD_7\(1) & VCC))
-- \inst1|BCD_C2_conv_inst|Add24~1\ = CARRY((\inst1|BCD_7\(0) & \inst1|BCD_7\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(0),
	datab => \inst1|BCD_7\(1),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add24~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add24~1\);

-- Location: LCCOMB_X51_Y5_N6
\inst1|BCD_C2_conv_inst|Add24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add24~2_combout\ = (\inst1|BCD_7\(2) & ((\inst1|BCD_C2_conv_inst|Add23~1_combout\ & (\inst1|BCD_C2_conv_inst|Add24~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add23~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add24~1\)))) # 
-- (!\inst1|BCD_7\(2) & ((\inst1|BCD_C2_conv_inst|Add23~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add24~1\)) # (!\inst1|BCD_C2_conv_inst|Add23~1_combout\ & ((\inst1|BCD_C2_conv_inst|Add24~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add24~3\ = CARRY((\inst1|BCD_7\(2) & (!\inst1|BCD_C2_conv_inst|Add23~1_combout\ & !\inst1|BCD_C2_conv_inst|Add24~1\)) # (!\inst1|BCD_7\(2) & ((!\inst1|BCD_C2_conv_inst|Add24~1\) # (!\inst1|BCD_C2_conv_inst|Add23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(2),
	datab => \inst1|BCD_C2_conv_inst|Add23~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add24~1\,
	combout => \inst1|BCD_C2_conv_inst|Add24~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add24~3\);

-- Location: LCCOMB_X51_Y5_N8
\inst1|BCD_C2_conv_inst|Add24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add24~4_combout\ = ((\inst1|BCD_7\(3) $ (\inst1|BCD_C2_conv_inst|Add23~3_combout\ $ (!\inst1|BCD_C2_conv_inst|Add24~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add24~5\ = CARRY((\inst1|BCD_7\(3) & ((\inst1|BCD_C2_conv_inst|Add23~3_combout\) # (!\inst1|BCD_C2_conv_inst|Add24~3\))) # (!\inst1|BCD_7\(3) & (\inst1|BCD_C2_conv_inst|Add23~3_combout\ & !\inst1|BCD_C2_conv_inst|Add24~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(3),
	datab => \inst1|BCD_C2_conv_inst|Add23~3_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add24~3\,
	combout => \inst1|BCD_C2_conv_inst|Add24~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add24~5\);

-- Location: LCCOMB_X51_Y8_N20
\inst1|BCD_C2_conv_inst|Add25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add25~2_combout\ = (\inst1|BCD_C2_conv_inst|Add24~0_combout\ & ((\inst1|BCD_7\(3) & (\inst1|BCD_C2_conv_inst|Add25~1\ & VCC)) # (!\inst1|BCD_7\(3) & (!\inst1|BCD_C2_conv_inst|Add25~1\)))) # 
-- (!\inst1|BCD_C2_conv_inst|Add24~0_combout\ & ((\inst1|BCD_7\(3) & (!\inst1|BCD_C2_conv_inst|Add25~1\)) # (!\inst1|BCD_7\(3) & ((\inst1|BCD_C2_conv_inst|Add25~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add25~3\ = CARRY((\inst1|BCD_C2_conv_inst|Add24~0_combout\ & (!\inst1|BCD_7\(3) & !\inst1|BCD_C2_conv_inst|Add25~1\)) # (!\inst1|BCD_C2_conv_inst|Add24~0_combout\ & ((!\inst1|BCD_C2_conv_inst|Add25~1\) # (!\inst1|BCD_7\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add24~0_combout\,
	datab => \inst1|BCD_7\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add25~1\,
	combout => \inst1|BCD_C2_conv_inst|Add25~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add25~3\);

-- Location: LCCOMB_X51_Y8_N22
\inst1|BCD_C2_conv_inst|Add25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add25~4_combout\ = (\inst1|BCD_C2_conv_inst|Add24~2_combout\ & (\inst1|BCD_C2_conv_inst|Add25~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add24~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add25~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add25~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add24~2_combout\ & !\inst1|BCD_C2_conv_inst|Add25~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add24~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add25~3\,
	combout => \inst1|BCD_C2_conv_inst|Add25~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add25~5\);

-- Location: LCCOMB_X51_Y8_N24
\inst1|BCD_C2_conv_inst|Add25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add25~6_combout\ = (\inst1|BCD_C2_conv_inst|Add24~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add25~5\)) # (!\inst1|BCD_C2_conv_inst|Add24~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add25~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add25~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add25~5\) # (!\inst1|BCD_C2_conv_inst|Add24~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add24~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add25~5\,
	combout => \inst1|BCD_C2_conv_inst|Add25~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add25~7\);

-- Location: LCCOMB_X51_Y8_N8
\inst1|BCD_C2_conv_inst|Add26~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add26~8_combout\ = (\inst1|BCD_C2_conv_inst|Add25~4_combout\ & (\inst1|BCD_C2_conv_inst|Add26~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add25~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add26~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add26~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add25~4_combout\ & !\inst1|BCD_C2_conv_inst|Add26~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add25~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add26~7\,
	combout => \inst1|BCD_C2_conv_inst|Add26~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add26~9\);

-- Location: LCCOMB_X51_Y8_N10
\inst1|BCD_C2_conv_inst|Add26~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add26~10_combout\ = (\inst1|BCD_C2_conv_inst|Add25~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add26~9\)) # (!\inst1|BCD_C2_conv_inst|Add25~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add26~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add26~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add26~9\) # (!\inst1|BCD_C2_conv_inst|Add25~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add25~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add26~9\,
	combout => \inst1|BCD_C2_conv_inst|Add26~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add26~11\);

-- Location: LCCOMB_X51_Y9_N16
\inst1|BCD_C2_conv_inst|Add27~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~16_combout\ = (\inst1|BCD_C2_conv_inst|Add26~4_combout\ & (\inst1|BCD_C2_conv_inst|Add27~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add26~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add27~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add27~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add26~4_combout\ & !\inst1|BCD_C2_conv_inst|Add27~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add26~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~15\,
	combout => \inst1|BCD_C2_conv_inst|Add27~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~17\);

-- Location: LCCOMB_X51_Y9_N22
\inst1|BCD_C2_conv_inst|Add27~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~22_combout\ = (\inst1|BCD_C2_conv_inst|Add26~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add27~21\)) # (!\inst1|BCD_C2_conv_inst|Add26~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add27~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add27~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add27~21\) # (!\inst1|BCD_C2_conv_inst|Add26~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add26~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~21\,
	combout => \inst1|BCD_C2_conv_inst|Add27~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~23\);

-- Location: LCCOMB_X50_Y9_N18
\inst1|BCD_C2_conv_inst|Add28~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~18_combout\ = (\inst1|BCD_C2_conv_inst|Add27~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~17\)) # (!\inst1|BCD_C2_conv_inst|Add27~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add28~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add28~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add28~17\) # (!\inst1|BCD_C2_conv_inst|Add27~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add27~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~17\,
	combout => \inst1|BCD_C2_conv_inst|Add28~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~19\);

-- Location: LCCOMB_X50_Y9_N24
\inst1|BCD_C2_conv_inst|Add28~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~24_combout\ = (\inst1|BCD_C2_conv_inst|Add27~22_combout\ & (\inst1|BCD_C2_conv_inst|Add28~23\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add27~22_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~23\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add28~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add27~22_combout\ & !\inst1|BCD_C2_conv_inst|Add28~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add27~22_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~23\,
	combout => \inst1|BCD_C2_conv_inst|Add28~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~25\);

-- Location: LCCOMB_X49_Y8_N2
\inst1|BCD_C2_conv_inst|Add29~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~18_combout\ = (\inst1|BCD_C2_conv_inst|Add28~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~17\)) # (!\inst1|BCD_C2_conv_inst|Add28~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add29~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add29~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add29~17\) # (!\inst1|BCD_C2_conv_inst|Add28~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add28~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~17\,
	combout => \inst1|BCD_C2_conv_inst|Add29~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~19\);

-- Location: LCCOMB_X49_Y8_N4
\inst1|BCD_C2_conv_inst|Add29~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~20_combout\ = (\inst1|BCD_C2_conv_inst|Add28~18_combout\ & (\inst1|BCD_C2_conv_inst|Add29~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add28~18_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add29~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add28~18_combout\ & !\inst1|BCD_C2_conv_inst|Add29~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add28~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~19\,
	combout => \inst1|BCD_C2_conv_inst|Add29~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~21\);

-- Location: LCCOMB_X49_Y8_N6
\inst1|BCD_C2_conv_inst|Add29~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~22_combout\ = (\inst1|BCD_C2_conv_inst|Add28~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~21\)) # (!\inst1|BCD_C2_conv_inst|Add28~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add29~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add29~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add29~21\) # (!\inst1|BCD_C2_conv_inst|Add28~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add28~20_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~21\,
	combout => \inst1|BCD_C2_conv_inst|Add29~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~23\);

-- Location: LCCOMB_X48_Y8_N2
\inst1|BCD_C2_conv_inst|Add30~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~20_combout\ = (\inst1|BCD_C2_conv_inst|Add29~18_combout\ & (\inst1|BCD_C2_conv_inst|Add30~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add29~18_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add30~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add29~18_combout\ & !\inst1|BCD_C2_conv_inst|Add30~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add29~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~19\,
	combout => \inst1|BCD_C2_conv_inst|Add30~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~21\);

-- Location: LCCOMB_X48_Y8_N4
\inst1|BCD_C2_conv_inst|Add30~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~22_combout\ = (\inst1|BCD_C2_conv_inst|Add29~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~21\)) # (!\inst1|BCD_C2_conv_inst|Add29~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add30~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add30~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add30~21\) # (!\inst1|BCD_C2_conv_inst|Add29~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add29~20_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~21\,
	combout => \inst1|BCD_C2_conv_inst|Add30~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~23\);

-- Location: LCCOMB_X48_Y8_N6
\inst1|BCD_C2_conv_inst|Add30~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~24_combout\ = (\inst1|BCD_C2_conv_inst|Add29~22_combout\ & (\inst1|BCD_C2_conv_inst|Add30~23\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add29~22_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~23\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add30~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add29~22_combout\ & !\inst1|BCD_C2_conv_inst|Add30~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add29~22_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~23\,
	combout => \inst1|BCD_C2_conv_inst|Add30~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~25\);

-- Location: LCCOMB_X47_Y8_N4
\inst1|BCD_C2_conv_inst|Add31~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~24_combout\ = (\inst1|BCD_C2_conv_inst|Add30~20_combout\ & (\inst1|BCD_C2_conv_inst|Add31~23\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add30~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~23\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add31~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add30~20_combout\ & !\inst1|BCD_C2_conv_inst|Add31~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add30~20_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~23\,
	combout => \inst1|BCD_C2_conv_inst|Add31~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~25\);

-- Location: LCCOMB_X47_Y8_N6
\inst1|BCD_C2_conv_inst|Add31~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~26_combout\ = (\inst1|BCD_C2_conv_inst|Add30~22_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~25\)) # (!\inst1|BCD_C2_conv_inst|Add30~22_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~25\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add31~27\ = CARRY((!\inst1|BCD_C2_conv_inst|Add31~25\) # (!\inst1|BCD_C2_conv_inst|Add30~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add30~22_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~25\,
	combout => \inst1|BCD_C2_conv_inst|Add31~26_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~27\);

-- Location: LCCOMB_X48_Y6_N28
\inst1|BCD_C2_conv_inst|Add15~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add15~11_combout\ = \inst1|BCD_C2_conv_inst|Add15~10\ $ (((\inst1|BCD_C2_conv_inst|Add14~0_combout\ & \inst1|BCD_6\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add14~0_combout\,
	datad => \inst1|BCD_6\(3),
	cin => \inst1|BCD_C2_conv_inst|Add15~10\,
	combout => \inst1|BCD_C2_conv_inst|Add15~11_combout\);

-- Location: LCCOMB_X48_Y6_N12
\inst1|BCD_C2_conv_inst|Add16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add16~12_combout\ = \inst1|BCD_C2_conv_inst|Add16~11\ $ (!\inst1|BCD_C2_conv_inst|Add15~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add15~11_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add16~11\,
	combout => \inst1|BCD_C2_conv_inst|Add16~12_combout\);

-- Location: LCCOMB_X48_Y7_N26
\inst1|BCD_C2_conv_inst|Add17~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add17~16_combout\ = \inst1|BCD_C2_conv_inst|Add16~12_combout\ $ (!\inst1|BCD_C2_conv_inst|Add17~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add16~12_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add17~15\,
	combout => \inst1|BCD_C2_conv_inst|Add17~16_combout\);

-- Location: LCCOMB_X47_Y7_N20
\inst1|BCD_C2_conv_inst|Add18~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~20_combout\ = \inst1|BCD_C2_conv_inst|Add17~16_combout\ $ (!\inst1|BCD_C2_conv_inst|Add18~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add17~16_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add18~19\,
	combout => \inst1|BCD_C2_conv_inst|Add18~20_combout\);

-- Location: LCCOMB_X46_Y7_N30
\inst1|BCD_C2_conv_inst|Add19~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~24_combout\ = \inst1|BCD_C2_conv_inst|Add19~23\ $ (!\inst1|BCD_C2_conv_inst|Add18~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add18~20_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add19~23\,
	combout => \inst1|BCD_C2_conv_inst|Add19~24_combout\);

-- Location: LCCOMB_X45_Y7_N28
\inst1|BCD_C2_conv_inst|Add20~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~26_combout\ = \inst1|BCD_C2_conv_inst|Add20~25\ $ (\inst1|BCD_C2_conv_inst|Add19~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add19~24_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add20~25\,
	combout => \inst1|BCD_C2_conv_inst|Add20~26_combout\);

-- Location: LCCOMB_X44_Y8_N16
\inst1|BCD_C2_conv_inst|Add21~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~32_combout\ = \inst1|BCD_C2_conv_inst|Add20~26_combout\ $ (!\inst1|BCD_C2_conv_inst|Add21~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~26_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add21~31\,
	combout => \inst1|BCD_C2_conv_inst|Add21~32_combout\);

-- Location: LCCOMB_X45_Y8_N16
\inst1|BCD_C2_conv_inst|Add36~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~34_combout\ = \inst1|BCD_C2_conv_inst|Add36~33\ $ (\inst1|BCD_C2_conv_inst|Add21~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add21~32_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add36~33\,
	combout => \inst1|BCD_C2_conv_inst|Add36~34_combout\);

-- Location: LCCOMB_X51_Y5_N20
\inst1|BCD_C2_conv_inst|Add23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add23~5_combout\ = ((\inst1|BCD_7\(3) $ (\inst1|BCD_C2_conv_inst|Add22~0_combout\ $ (!\inst1|BCD_C2_conv_inst|Add23~4\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add23~6\ = CARRY((\inst1|BCD_7\(3) & ((\inst1|BCD_C2_conv_inst|Add22~0_combout\) # (!\inst1|BCD_C2_conv_inst|Add23~4\))) # (!\inst1|BCD_7\(3) & (\inst1|BCD_C2_conv_inst|Add22~0_combout\ & !\inst1|BCD_C2_conv_inst|Add23~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(3),
	datab => \inst1|BCD_C2_conv_inst|Add22~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add23~4\,
	combout => \inst1|BCD_C2_conv_inst|Add23~5_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add23~6\);

-- Location: LCCOMB_X51_Y5_N10
\inst1|BCD_C2_conv_inst|Add24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add24~6_combout\ = (\inst1|BCD_C2_conv_inst|Add23~5_combout\ & (!\inst1|BCD_C2_conv_inst|Add24~5\)) # (!\inst1|BCD_C2_conv_inst|Add23~5_combout\ & ((\inst1|BCD_C2_conv_inst|Add24~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add24~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add24~5\) # (!\inst1|BCD_C2_conv_inst|Add23~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add23~5_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add24~5\,
	combout => \inst1|BCD_C2_conv_inst|Add24~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add24~7\);

-- Location: LCCOMB_X51_Y8_N26
\inst1|BCD_C2_conv_inst|Add25~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add25~8_combout\ = (\inst1|BCD_C2_conv_inst|Add24~6_combout\ & (\inst1|BCD_C2_conv_inst|Add25~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add24~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add25~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add25~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add24~6_combout\ & !\inst1|BCD_C2_conv_inst|Add25~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add24~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add25~7\,
	combout => \inst1|BCD_C2_conv_inst|Add25~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add25~9\);

-- Location: LCCOMB_X51_Y8_N12
\inst1|BCD_C2_conv_inst|Add26~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add26~12_combout\ = (\inst1|BCD_C2_conv_inst|Add25~8_combout\ & (\inst1|BCD_C2_conv_inst|Add26~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add25~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add26~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add26~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add25~8_combout\ & !\inst1|BCD_C2_conv_inst|Add26~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add25~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add26~11\,
	combout => \inst1|BCD_C2_conv_inst|Add26~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add26~13\);

-- Location: LCCOMB_X51_Y9_N24
\inst1|BCD_C2_conv_inst|Add27~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~24_combout\ = (\inst1|BCD_C2_conv_inst|Add26~12_combout\ & (\inst1|BCD_C2_conv_inst|Add27~23\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add26~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add27~23\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add27~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add26~12_combout\ & !\inst1|BCD_C2_conv_inst|Add27~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add26~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~23\,
	combout => \inst1|BCD_C2_conv_inst|Add27~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~25\);

-- Location: LCCOMB_X50_Y9_N26
\inst1|BCD_C2_conv_inst|Add28~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~26_combout\ = (\inst1|BCD_C2_conv_inst|Add27~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~25\)) # (!\inst1|BCD_C2_conv_inst|Add27~24_combout\ & ((\inst1|BCD_C2_conv_inst|Add28~25\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add28~27\ = CARRY((!\inst1|BCD_C2_conv_inst|Add28~25\) # (!\inst1|BCD_C2_conv_inst|Add27~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add27~24_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~25\,
	combout => \inst1|BCD_C2_conv_inst|Add28~26_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~27\);

-- Location: LCCOMB_X51_Y5_N22
\inst1|BCD_C2_conv_inst|Add23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add23~7_combout\ = (\inst1|BCD_C2_conv_inst|Add22~1_combout\ & (!\inst1|BCD_C2_conv_inst|Add23~6\)) # (!\inst1|BCD_C2_conv_inst|Add22~1_combout\ & ((\inst1|BCD_C2_conv_inst|Add23~6\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add23~8\ = CARRY((!\inst1|BCD_C2_conv_inst|Add23~6\) # (!\inst1|BCD_C2_conv_inst|Add22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add22~1_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add23~6\,
	combout => \inst1|BCD_C2_conv_inst|Add23~7_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add23~8\);

-- Location: LCCOMB_X51_Y5_N12
\inst1|BCD_C2_conv_inst|Add24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add24~8_combout\ = (\inst1|BCD_C2_conv_inst|Add23~7_combout\ & (\inst1|BCD_C2_conv_inst|Add24~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add23~7_combout\ & (!\inst1|BCD_C2_conv_inst|Add24~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add24~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add23~7_combout\ & !\inst1|BCD_C2_conv_inst|Add24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add23~7_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add24~7\,
	combout => \inst1|BCD_C2_conv_inst|Add24~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add24~9\);

-- Location: LCCOMB_X51_Y8_N28
\inst1|BCD_C2_conv_inst|Add25~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add25~10_combout\ = (\inst1|BCD_C2_conv_inst|Add24~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add25~9\)) # (!\inst1|BCD_C2_conv_inst|Add24~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add25~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add25~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add25~9\) # (!\inst1|BCD_C2_conv_inst|Add24~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add24~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add25~9\,
	combout => \inst1|BCD_C2_conv_inst|Add25~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add25~11\);

-- Location: LCCOMB_X51_Y8_N14
\inst1|BCD_C2_conv_inst|Add26~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add26~14_combout\ = (\inst1|BCD_C2_conv_inst|Add25~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add26~13\)) # (!\inst1|BCD_C2_conv_inst|Add25~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add26~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add26~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add26~13\) # (!\inst1|BCD_C2_conv_inst|Add25~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add25~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add26~13\,
	combout => \inst1|BCD_C2_conv_inst|Add26~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add26~15\);

-- Location: LCCOMB_X51_Y9_N26
\inst1|BCD_C2_conv_inst|Add27~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~26_combout\ = (\inst1|BCD_C2_conv_inst|Add26~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add27~25\)) # (!\inst1|BCD_C2_conv_inst|Add26~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add27~25\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add27~27\ = CARRY((!\inst1|BCD_C2_conv_inst|Add27~25\) # (!\inst1|BCD_C2_conv_inst|Add26~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add26~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~25\,
	combout => \inst1|BCD_C2_conv_inst|Add27~26_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~27\);

-- Location: LCCOMB_X50_Y9_N28
\inst1|BCD_C2_conv_inst|Add28~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~28_combout\ = (\inst1|BCD_C2_conv_inst|Add27~26_combout\ & (\inst1|BCD_C2_conv_inst|Add28~27\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add27~26_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~27\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add28~29\ = CARRY((\inst1|BCD_C2_conv_inst|Add27~26_combout\ & !\inst1|BCD_C2_conv_inst|Add28~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add27~26_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~27\,
	combout => \inst1|BCD_C2_conv_inst|Add28~28_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~29\);

-- Location: LCCOMB_X49_Y8_N14
\inst1|BCD_C2_conv_inst|Add29~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~30_combout\ = (\inst1|BCD_C2_conv_inst|Add28~28_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~29\)) # (!\inst1|BCD_C2_conv_inst|Add28~28_combout\ & ((\inst1|BCD_C2_conv_inst|Add29~29\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add29~31\ = CARRY((!\inst1|BCD_C2_conv_inst|Add29~29\) # (!\inst1|BCD_C2_conv_inst|Add28~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add28~28_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~29\,
	combout => \inst1|BCD_C2_conv_inst|Add29~30_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~31\);

-- Location: LCCOMB_X48_Y8_N14
\inst1|BCD_C2_conv_inst|Add30~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~32_combout\ = (\inst1|BCD_C2_conv_inst|Add29~30_combout\ & (\inst1|BCD_C2_conv_inst|Add30~31\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add29~30_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~31\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add30~33\ = CARRY((\inst1|BCD_C2_conv_inst|Add29~30_combout\ & !\inst1|BCD_C2_conv_inst|Add30~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~30_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~31\,
	combout => \inst1|BCD_C2_conv_inst|Add30~32_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~33\);

-- Location: LCCOMB_X47_Y8_N16
\inst1|BCD_C2_conv_inst|Add31~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~36_combout\ = (\inst1|BCD_C2_conv_inst|Add30~32_combout\ & (\inst1|BCD_C2_conv_inst|Add31~35\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add30~32_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~35\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add31~37\ = CARRY((\inst1|BCD_C2_conv_inst|Add30~32_combout\ & !\inst1|BCD_C2_conv_inst|Add31~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~32_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~35\,
	combout => \inst1|BCD_C2_conv_inst|Add31~36_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~37\);

-- Location: LCCOMB_X51_Y5_N24
\inst1|BCD_C2_conv_inst|Add23~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add23~9_combout\ = \inst1|BCD_7\(3) $ (\inst1|BCD_C2_conv_inst|Add23~8\ $ (!\inst1|BCD_C2_conv_inst|Add22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(3),
	datad => \inst1|BCD_C2_conv_inst|Add22~2_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add23~8\,
	combout => \inst1|BCD_C2_conv_inst|Add23~9_combout\);

-- Location: LCCOMB_X51_Y5_N14
\inst1|BCD_C2_conv_inst|Add24~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add24~10_combout\ = \inst1|BCD_C2_conv_inst|Add23~9_combout\ $ (\inst1|BCD_C2_conv_inst|Add24~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add23~9_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add24~9\,
	combout => \inst1|BCD_C2_conv_inst|Add24~10_combout\);

-- Location: LCCOMB_X51_Y8_N30
\inst1|BCD_C2_conv_inst|Add25~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add25~12_combout\ = \inst1|BCD_C2_conv_inst|Add25~11\ $ (!\inst1|BCD_C2_conv_inst|Add24~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add24~10_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add25~11\,
	combout => \inst1|BCD_C2_conv_inst|Add25~12_combout\);

-- Location: LCCOMB_X51_Y8_N16
\inst1|BCD_C2_conv_inst|Add26~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add26~16_combout\ = \inst1|BCD_C2_conv_inst|Add26~15\ $ (!\inst1|BCD_C2_conv_inst|Add25~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add25~12_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add26~15\,
	combout => \inst1|BCD_C2_conv_inst|Add26~16_combout\);

-- Location: LCCOMB_X51_Y9_N28
\inst1|BCD_C2_conv_inst|Add27~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~28_combout\ = \inst1|BCD_C2_conv_inst|Add27~27\ $ (!\inst1|BCD_C2_conv_inst|Add26~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add26~16_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add27~27\,
	combout => \inst1|BCD_C2_conv_inst|Add27~28_combout\);

-- Location: LCCOMB_X50_Y9_N30
\inst1|BCD_C2_conv_inst|Add28~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~30_combout\ = \inst1|BCD_C2_conv_inst|Add28~29\ $ (\inst1|BCD_C2_conv_inst|Add27~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add27~28_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add28~29\,
	combout => \inst1|BCD_C2_conv_inst|Add28~30_combout\);

-- Location: LCCOMB_X49_Y8_N16
\inst1|BCD_C2_conv_inst|Add29~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~32_combout\ = \inst1|BCD_C2_conv_inst|Add29~31\ $ (!\inst1|BCD_C2_conv_inst|Add28~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add28~30_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add29~31\,
	combout => \inst1|BCD_C2_conv_inst|Add29~32_combout\);

-- Location: LCCOMB_X48_Y8_N16
\inst1|BCD_C2_conv_inst|Add30~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~34_combout\ = \inst1|BCD_C2_conv_inst|Add29~32_combout\ $ (\inst1|BCD_C2_conv_inst|Add30~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add29~32_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add30~33\,
	combout => \inst1|BCD_C2_conv_inst|Add30~34_combout\);

-- Location: LCCOMB_X51_Y2_N6
\inst1|keypad_mod_inst|i_column[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[3]~38_combout\ = (\inst1|keypad_mod_inst|i_column\(3) & (!\inst1|keypad_mod_inst|i_column[2]~37\)) # (!\inst1|keypad_mod_inst|i_column\(3) & ((\inst1|keypad_mod_inst|i_column[2]~37\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[3]~39\ = CARRY((!\inst1|keypad_mod_inst|i_column[2]~37\) # (!\inst1|keypad_mod_inst|i_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(3),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[2]~37\,
	combout => \inst1|keypad_mod_inst|i_column[3]~38_combout\,
	cout => \inst1|keypad_mod_inst|i_column[3]~39\);

-- Location: LCCOMB_X51_Y2_N10
\inst1|keypad_mod_inst|i_column[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[5]~43_combout\ = (\inst1|keypad_mod_inst|i_column\(5) & (!\inst1|keypad_mod_inst|i_column[4]~42\)) # (!\inst1|keypad_mod_inst|i_column\(5) & ((\inst1|keypad_mod_inst|i_column[4]~42\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[5]~44\ = CARRY((!\inst1|keypad_mod_inst|i_column[4]~42\) # (!\inst1|keypad_mod_inst|i_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(5),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[4]~42\,
	combout => \inst1|keypad_mod_inst|i_column[5]~43_combout\,
	cout => \inst1|keypad_mod_inst|i_column[5]~44\);

-- Location: LCCOMB_X51_Y2_N12
\inst1|keypad_mod_inst|i_column[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[6]~45_combout\ = (\inst1|keypad_mod_inst|i_column\(6) & (\inst1|keypad_mod_inst|i_column[5]~44\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(6) & (!\inst1|keypad_mod_inst|i_column[5]~44\ & VCC))
-- \inst1|keypad_mod_inst|i_column[6]~46\ = CARRY((\inst1|keypad_mod_inst|i_column\(6) & !\inst1|keypad_mod_inst|i_column[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(6),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[5]~44\,
	combout => \inst1|keypad_mod_inst|i_column[6]~45_combout\,
	cout => \inst1|keypad_mod_inst|i_column[6]~46\);

-- Location: LCCOMB_X51_Y2_N16
\inst1|keypad_mod_inst|i_column[8]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[8]~49_combout\ = (\inst1|keypad_mod_inst|i_column\(8) & (\inst1|keypad_mod_inst|i_column[7]~48\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(8) & (!\inst1|keypad_mod_inst|i_column[7]~48\ & VCC))
-- \inst1|keypad_mod_inst|i_column[8]~50\ = CARRY((\inst1|keypad_mod_inst|i_column\(8) & !\inst1|keypad_mod_inst|i_column[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(8),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[7]~48\,
	combout => \inst1|keypad_mod_inst|i_column[8]~49_combout\,
	cout => \inst1|keypad_mod_inst|i_column[8]~50\);

-- Location: LCCOMB_X51_Y1_N16
\inst1|keypad_mod_inst|i_column[24]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[24]~81_combout\ = (\inst1|keypad_mod_inst|i_column\(24) & (\inst1|keypad_mod_inst|i_column[23]~80\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(24) & (!\inst1|keypad_mod_inst|i_column[23]~80\ & VCC))
-- \inst1|keypad_mod_inst|i_column[24]~82\ = CARRY((\inst1|keypad_mod_inst|i_column\(24) & !\inst1|keypad_mod_inst|i_column[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(24),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[23]~80\,
	combout => \inst1|keypad_mod_inst|i_column[24]~81_combout\,
	cout => \inst1|keypad_mod_inst|i_column[24]~82\);

-- Location: LCCOMB_X51_Y1_N20
\inst1|keypad_mod_inst|i_column[26]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[26]~85_combout\ = (\inst1|keypad_mod_inst|i_column\(26) & (\inst1|keypad_mod_inst|i_column[25]~84\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(26) & (!\inst1|keypad_mod_inst|i_column[25]~84\ & VCC))
-- \inst1|keypad_mod_inst|i_column[26]~86\ = CARRY((\inst1|keypad_mod_inst|i_column\(26) & !\inst1|keypad_mod_inst|i_column[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(26),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[25]~84\,
	combout => \inst1|keypad_mod_inst|i_column[26]~85_combout\,
	cout => \inst1|keypad_mod_inst|i_column[26]~86\);

-- Location: LCFF_X51_Y4_N21
\inst1|button_pressed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|button_pressed~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|button_pressed~regout\);

-- Location: LCFF_X47_Y4_N25
\inst1|cont[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[12]~58_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(12));

-- Location: LCFF_X47_Y4_N13
\inst1|cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[6]~46_combout\,
	sdata => \inst1|Equal0~0_combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(6));

-- Location: LCFF_X47_Y3_N7
\inst1|cont[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[19]~72_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(19));

-- Location: LCFF_X47_Y3_N11
\inst1|cont[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[21]~76_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(21));

-- Location: LCFF_X47_Y3_N13
\inst1|cont[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[22]~78_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(22));

-- Location: LCCOMB_X47_Y4_N12
\inst1|cont[6]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[6]~46_combout\ = (\inst1|cont\(6) & (\inst1|cont[5]~45\ $ (GND))) # (!\inst1|cont\(6) & (!\inst1|cont[5]~45\ & VCC))
-- \inst1|cont[6]~47\ = CARRY((\inst1|cont\(6) & !\inst1|cont[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(6),
	datad => VCC,
	cin => \inst1|cont[5]~45\,
	combout => \inst1|cont[6]~46_combout\,
	cout => \inst1|cont[6]~47\);

-- Location: LCCOMB_X47_Y4_N24
\inst1|cont[12]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[12]~58_combout\ = (\inst1|cont\(12) & (\inst1|cont[11]~57\ $ (GND))) # (!\inst1|cont\(12) & (!\inst1|cont[11]~57\ & VCC))
-- \inst1|cont[12]~59\ = CARRY((\inst1|cont\(12) & !\inst1|cont[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(12),
	datad => VCC,
	cin => \inst1|cont[11]~57\,
	combout => \inst1|cont[12]~58_combout\,
	cout => \inst1|cont[12]~59\);

-- Location: LCCOMB_X47_Y3_N6
\inst1|cont[19]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[19]~72_combout\ = (\inst1|cont\(19) & (!\inst1|cont[18]~71\)) # (!\inst1|cont\(19) & ((\inst1|cont[18]~71\) # (GND)))
-- \inst1|cont[19]~73\ = CARRY((!\inst1|cont[18]~71\) # (!\inst1|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(19),
	datad => VCC,
	cin => \inst1|cont[18]~71\,
	combout => \inst1|cont[19]~72_combout\,
	cout => \inst1|cont[19]~73\);

-- Location: LCCOMB_X47_Y3_N10
\inst1|cont[21]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[21]~76_combout\ = (\inst1|cont\(21) & (!\inst1|cont[20]~75\)) # (!\inst1|cont\(21) & ((\inst1|cont[20]~75\) # (GND)))
-- \inst1|cont[21]~77\ = CARRY((!\inst1|cont[20]~75\) # (!\inst1|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(21),
	datad => VCC,
	cin => \inst1|cont[20]~75\,
	combout => \inst1|cont[21]~76_combout\,
	cout => \inst1|cont[21]~77\);

-- Location: LCCOMB_X47_Y3_N12
\inst1|cont[22]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[22]~78_combout\ = (\inst1|cont\(22) & (\inst1|cont[21]~77\ $ (GND))) # (!\inst1|cont\(22) & (!\inst1|cont[21]~77\ & VCC))
-- \inst1|cont[22]~79\ = CARRY((\inst1|cont\(22) & !\inst1|cont[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(22),
	datad => VCC,
	cin => \inst1|cont[21]~77\,
	combout => \inst1|cont[22]~78_combout\,
	cout => \inst1|cont[22]~79\);

-- Location: LCCOMB_X30_Y22_N10
\inst1|freq_div|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~10_combout\ = (\inst1|freq_div|count\(5) & (!\inst1|freq_div|Add0~9\)) # (!\inst1|freq_div|count\(5) & ((\inst1|freq_div|Add0~9\) # (GND)))
-- \inst1|freq_div|Add0~11\ = CARRY((!\inst1|freq_div|Add0~9\) # (!\inst1|freq_div|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(5),
	datad => VCC,
	cin => \inst1|freq_div|Add0~9\,
	combout => \inst1|freq_div|Add0~10_combout\,
	cout => \inst1|freq_div|Add0~11\);

-- Location: LCCOMB_X30_Y22_N14
\inst1|freq_div|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~14_combout\ = (\inst1|freq_div|count\(7) & (!\inst1|freq_div|Add0~13\)) # (!\inst1|freq_div|count\(7) & ((\inst1|freq_div|Add0~13\) # (GND)))
-- \inst1|freq_div|Add0~15\ = CARRY((!\inst1|freq_div|Add0~13\) # (!\inst1|freq_div|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(7),
	datad => VCC,
	cin => \inst1|freq_div|Add0~13\,
	combout => \inst1|freq_div|Add0~14_combout\,
	cout => \inst1|freq_div|Add0~15\);

-- Location: LCCOMB_X30_Y22_N20
\inst1|freq_div|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~20_combout\ = (\inst1|freq_div|count\(10) & (\inst1|freq_div|Add0~19\ $ (GND))) # (!\inst1|freq_div|count\(10) & (!\inst1|freq_div|Add0~19\ & VCC))
-- \inst1|freq_div|Add0~21\ = CARRY((\inst1|freq_div|count\(10) & !\inst1|freq_div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(10),
	datad => VCC,
	cin => \inst1|freq_div|Add0~19\,
	combout => \inst1|freq_div|Add0~20_combout\,
	cout => \inst1|freq_div|Add0~21\);

-- Location: LCCOMB_X30_Y21_N10
\inst1|freq_div|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~42_combout\ = (\inst1|freq_div|count\(21) & (!\inst1|freq_div|Add0~41\)) # (!\inst1|freq_div|count\(21) & ((\inst1|freq_div|Add0~41\) # (GND)))
-- \inst1|freq_div|Add0~43\ = CARRY((!\inst1|freq_div|Add0~41\) # (!\inst1|freq_div|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(21),
	datad => VCC,
	cin => \inst1|freq_div|Add0~41\,
	combout => \inst1|freq_div|Add0~42_combout\,
	cout => \inst1|freq_div|Add0~43\);

-- Location: LCCOMB_X30_Y21_N12
\inst1|freq_div|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~44_combout\ = (\inst1|freq_div|count\(22) & (\inst1|freq_div|Add0~43\ $ (GND))) # (!\inst1|freq_div|count\(22) & (!\inst1|freq_div|Add0~43\ & VCC))
-- \inst1|freq_div|Add0~45\ = CARRY((\inst1|freq_div|count\(22) & !\inst1|freq_div|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(22),
	datad => VCC,
	cin => \inst1|freq_div|Add0~43\,
	combout => \inst1|freq_div|Add0~44_combout\,
	cout => \inst1|freq_div|Add0~45\);

-- Location: LCCOMB_X30_Y21_N20
\inst1|freq_div|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~52_combout\ = (\inst1|freq_div|count\(26) & (\inst1|freq_div|Add0~51\ $ (GND))) # (!\inst1|freq_div|count\(26) & (!\inst1|freq_div|Add0~51\ & VCC))
-- \inst1|freq_div|Add0~53\ = CARRY((\inst1|freq_div|count\(26) & !\inst1|freq_div|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(26),
	datad => VCC,
	cin => \inst1|freq_div|Add0~51\,
	combout => \inst1|freq_div|Add0~52_combout\,
	cout => \inst1|freq_div|Add0~53\);

-- Location: LCCOMB_X30_Y21_N28
\inst1|freq_div|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~60_combout\ = (\inst1|freq_div|count\(30) & (\inst1|freq_div|Add0~59\ $ (GND))) # (!\inst1|freq_div|count\(30) & (!\inst1|freq_div|Add0~59\ & VCC))
-- \inst1|freq_div|Add0~61\ = CARRY((\inst1|freq_div|count\(30) & !\inst1|freq_div|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(30),
	datad => VCC,
	cin => \inst1|freq_div|Add0~59\,
	combout => \inst1|freq_div|Add0~60_combout\,
	cout => \inst1|freq_div|Add0~61\);

-- Location: LCCOMB_X30_Y21_N30
\inst1|freq_div|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~62_combout\ = \inst1|freq_div|Add0~61\ $ (\inst1|freq_div|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|freq_div|count\(31),
	cin => \inst1|freq_div|Add0~61\,
	combout => \inst1|freq_div|Add0~62_combout\);

-- Location: LCCOMB_X50_Y2_N16
\inst1|keypad_mod_inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~0_combout\ = (!\inst1|keypad_mod_inst|i_column\(7) & (!\inst1|keypad_mod_inst|i_column\(5) & (!\inst1|keypad_mod_inst|i_column\(4) & !\inst1|keypad_mod_inst|i_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(7),
	datab => \inst1|keypad_mod_inst|i_column\(5),
	datac => \inst1|keypad_mod_inst|i_column\(4),
	datad => \inst1|keypad_mod_inst|i_column\(6),
	combout => \inst1|keypad_mod_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y1_N16
\inst1|keypad_mod_inst|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~6_combout\ = (!\inst1|keypad_mod_inst|i_column\(24) & (!\inst1|keypad_mod_inst|i_column\(26) & (!\inst1|keypad_mod_inst|i_column\(27) & !\inst1|keypad_mod_inst|i_column\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(24),
	datab => \inst1|keypad_mod_inst|i_column\(26),
	datac => \inst1|keypad_mod_inst|i_column\(27),
	datad => \inst1|keypad_mod_inst|i_column\(25),
	combout => \inst1|keypad_mod_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X55_Y5_N0
\inst1|BCD_C2_conv_inst|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add3~0_combout\ = (\inst1|BCD_4\(2) & (((\inst1|BCD_4\(1)) # (\inst1|BCD_4\(3))))) # (!\inst1|BCD_4\(2) & (\inst1|BCD_4\(0) & (\inst1|BCD_4\(1) & \inst1|BCD_4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(0),
	datab => \inst1|BCD_4\(2),
	datac => \inst1|BCD_4\(1),
	datad => \inst1|BCD_4\(3),
	combout => \inst1|BCD_C2_conv_inst|Add3~0_combout\);

-- Location: LCCOMB_X55_Y5_N2
\inst1|BCD_C2_conv_inst|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add3~1_combout\ = \inst1|BCD_4\(3) $ (((\inst1|BCD_4\(2) & ((!\inst1|BCD_4\(1)))) # (!\inst1|BCD_4\(2) & (\inst1|BCD_4\(0) & \inst1|BCD_4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(0),
	datab => \inst1|BCD_4\(2),
	datac => \inst1|BCD_4\(1),
	datad => \inst1|BCD_4\(3),
	combout => \inst1|BCD_C2_conv_inst|Add3~1_combout\);

-- Location: LCCOMB_X55_Y5_N28
\inst1|BCD_C2_conv_inst|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add3~2_combout\ = \inst1|BCD_4\(2) $ (((\inst1|BCD_4\(1) & !\inst1|BCD_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_4\(2),
	datac => \inst1|BCD_4\(1),
	datad => \inst1|BCD_4\(0),
	combout => \inst1|BCD_C2_conv_inst|Add3~2_combout\);

-- Location: LCFF_X51_Y4_N27
\inst1|BCD_3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_3~0_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_3\(3));

-- Location: LCCOMB_X53_Y4_N8
\inst1|BCD_C2_conv_inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add1~0_combout\ = (\inst1|BCD_3\(2) & ((\inst1|BCD_3\(1)) # ((\inst1|BCD_3\(3))))) # (!\inst1|BCD_3\(2) & (\inst1|BCD_3\(1) & (\inst1|BCD_3\(3) & \inst1|BCD_3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_3\(2),
	datab => \inst1|BCD_3\(1),
	datac => \inst1|BCD_3\(3),
	datad => \inst1|BCD_3\(0),
	combout => \inst1|BCD_C2_conv_inst|Add1~0_combout\);

-- Location: LCCOMB_X53_Y4_N26
\inst1|BCD_C2_conv_inst|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add1~1_combout\ = \inst1|BCD_3\(3) $ (((\inst1|BCD_3\(2) & (!\inst1|BCD_3\(1))) # (!\inst1|BCD_3\(2) & (\inst1|BCD_3\(1) & \inst1|BCD_3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_3\(2),
	datab => \inst1|BCD_3\(1),
	datac => \inst1|BCD_3\(3),
	datad => \inst1|BCD_3\(0),
	combout => \inst1|BCD_C2_conv_inst|Add1~1_combout\);

-- Location: LCCOMB_X53_Y2_N12
\inst1|BCD_C2_conv_inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add1~2_combout\ = \inst1|BCD_3\(2) $ (((!\inst1|BCD_3\(0) & \inst1|BCD_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_3\(0),
	datac => \inst1|BCD_3\(1),
	datad => \inst1|BCD_3\(2),
	combout => \inst1|BCD_C2_conv_inst|Add1~2_combout\);

-- Location: LCFF_X49_Y2_N5
\inst1|BCD_1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_1~0_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_1\(3));

-- Location: LCCOMB_X48_Y6_N14
\inst1|BCD_C2_conv_inst|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add14~0_combout\ = (\inst1|BCD_6\(3) & ((\inst1|BCD_6\(2)) # ((\inst1|BCD_6\(0) & \inst1|BCD_6\(1))))) # (!\inst1|BCD_6\(3) & (\inst1|BCD_6\(2) & ((\inst1|BCD_6\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(3),
	datab => \inst1|BCD_6\(2),
	datac => \inst1|BCD_6\(0),
	datad => \inst1|BCD_6\(1),
	combout => \inst1|BCD_C2_conv_inst|Add14~0_combout\);

-- Location: LCCOMB_X48_Y6_N16
\inst1|BCD_C2_conv_inst|Add14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add14~1_combout\ = \inst1|BCD_6\(3) $ (((\inst1|BCD_6\(2) & ((!\inst1|BCD_6\(1)))) # (!\inst1|BCD_6\(2) & (\inst1|BCD_6\(0) & \inst1|BCD_6\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(3),
	datab => \inst1|BCD_6\(2),
	datac => \inst1|BCD_6\(0),
	datad => \inst1|BCD_6\(1),
	combout => \inst1|BCD_C2_conv_inst|Add14~1_combout\);

-- Location: LCCOMB_X48_Y6_N30
\inst1|BCD_C2_conv_inst|Add14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add14~2_combout\ = \inst1|BCD_6\(2) $ (((!\inst1|BCD_6\(0) & \inst1|BCD_6\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_6\(2),
	datac => \inst1|BCD_6\(0),
	datad => \inst1|BCD_6\(1),
	combout => \inst1|BCD_C2_conv_inst|Add14~2_combout\);

-- Location: LCCOMB_X49_Y6_N12
\inst1|BCD_C2_conv_inst|Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add7~1_combout\ = (\inst1|BCD_5\(1) & ((\inst1|BCD_5\(2)) # ((\inst1|BCD_5\(0) & \inst1|BCD_5\(3))))) # (!\inst1|BCD_5\(1) & (\inst1|BCD_5\(2) & ((\inst1|BCD_5\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(1),
	datab => \inst1|BCD_5\(2),
	datac => \inst1|BCD_5\(0),
	datad => \inst1|BCD_5\(3),
	combout => \inst1|BCD_C2_conv_inst|Add7~1_combout\);

-- Location: LCCOMB_X45_Y10_N16
\inst1|DDFS_freq_conv_inst|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan2~0_combout\ = (\inst1|BCD_C2_conv_inst|Add37~2_combout\) # ((\inst1|BCD_C2_conv_inst|Add32~0_combout\) # (\inst1|BCD_C2_conv_inst|Add37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add37~2_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add32~0_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~0_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X46_Y10_N20
\inst1|DDFS_freq_conv_inst|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan2~1_combout\ = (\inst1|BCD_C2_conv_inst|Add37~6_combout\ & (\inst1|DDFS_freq_conv_inst|LessThan2~0_combout\ & (\inst1|BCD_C2_conv_inst|Add37~4_combout\ & \inst1|BCD_C2_conv_inst|Add37~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~6_combout\,
	datab => \inst1|DDFS_freq_conv_inst|LessThan2~0_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~4_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~8_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X51_Y5_N0
\inst1|BCD_C2_conv_inst|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add22~0_combout\ = \inst1|BCD_7\(2) $ (((!\inst1|BCD_7\(0) & \inst1|BCD_7\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_7\(0),
	datac => \inst1|BCD_7\(2),
	datad => \inst1|BCD_7\(1),
	combout => \inst1|BCD_C2_conv_inst|Add22~0_combout\);

-- Location: LCCOMB_X51_Y5_N2
\inst1|BCD_C2_conv_inst|Add22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add22~1_combout\ = \inst1|BCD_7\(3) $ (((\inst1|BCD_7\(2) & ((!\inst1|BCD_7\(1)))) # (!\inst1|BCD_7\(2) & (\inst1|BCD_7\(0) & \inst1|BCD_7\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(2),
	datab => \inst1|BCD_7\(0),
	datac => \inst1|BCD_7\(3),
	datad => \inst1|BCD_7\(1),
	combout => \inst1|BCD_C2_conv_inst|Add22~1_combout\);

-- Location: LCCOMB_X51_Y5_N30
\inst1|BCD_C2_conv_inst|Add22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add22~2_combout\ = (\inst1|BCD_7\(2) & (((\inst1|BCD_7\(3)) # (\inst1|BCD_7\(1))))) # (!\inst1|BCD_7\(2) & (\inst1|BCD_7\(0) & (\inst1|BCD_7\(3) & \inst1|BCD_7\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(2),
	datab => \inst1|BCD_7\(0),
	datac => \inst1|BCD_7\(3),
	datad => \inst1|BCD_7\(1),
	combout => \inst1|BCD_C2_conv_inst|Add22~2_combout\);

-- Location: LCCOMB_X45_Y10_N22
\inst1|DDFS_freq_conv_inst|freq_control~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control~6_combout\ = (\inst1|BCD_C2_conv_inst|Add37~2_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~0_combout\ & ((\inst1|BCD_1\(0)) # (\inst1|BCD_C2_conv_inst|Add32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_1\(0),
	datab => \inst1|BCD_C2_conv_inst|Add37~2_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add32~0_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~0_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control~6_combout\);

-- Location: LCCOMB_X46_Y10_N28
\inst1|DDFS_freq_conv_inst|freq_control~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control~7_combout\ = (\inst1|DDFS_freq_conv_inst|LessThan4~0_combout\ & (((!\inst1|DDFS_freq_conv_inst|freq_control~6_combout\ & !\inst1|BCD_C2_conv_inst|Add37~4_combout\)) # (!\inst1|BCD_C2_conv_inst|Add37~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~6_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control~6_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~4_combout\,
	datad => \inst1|DDFS_freq_conv_inst|LessThan4~0_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control~7_combout\);

-- Location: LCCOMB_X46_Y10_N2
\inst1|DDFS_freq_conv_inst|freq_control~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control~8_combout\ = (\inst1|BCD_C2_conv_inst|Add37~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add37~18_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~16_combout\ & !\inst1|DDFS_freq_conv_inst|freq_control~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~16_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~20_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~18_combout\,
	datad => \inst1|DDFS_freq_conv_inst|freq_control~7_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control~8_combout\);

-- Location: LCCOMB_X46_Y8_N24
\inst1|DDFS_freq_conv_inst|freq_control~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control~9_combout\ = (\inst1|BCD_C2_conv_inst|Add37~26_combout\ & (\inst1|BCD_C2_conv_inst|Add37~22_combout\ & (\inst1|BCD_C2_conv_inst|Add37~24_combout\ & \inst1|DDFS_freq_conv_inst|freq_control~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~26_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~22_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~24_combout\,
	datad => \inst1|DDFS_freq_conv_inst|freq_control~8_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control~9_combout\);

-- Location: LCCOMB_X47_Y10_N10
\inst1|DDFS_freq_conv_inst|freq_control[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~14_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~32_combout\ & !\inst1|BCD_C2_conv_inst|Add37~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BCD_C2_conv_inst|Add37~32_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~34_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~14_combout\);

-- Location: LCCOMB_X45_Y10_N10
\inst1|DDFS_freq_conv_inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan1~0_combout\ = (\inst1|BCD_C2_conv_inst|Add37~0_combout\ & (\inst1|BCD_C2_conv_inst|Add32~0_combout\ & \inst1|BCD_1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add37~0_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add32~0_combout\,
	datad => \inst1|BCD_1\(0),
	combout => \inst1|DDFS_freq_conv_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X46_Y10_N8
\inst1|DDFS_freq_conv_inst|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan1~1_combout\ = (\inst1|BCD_C2_conv_inst|Add37~4_combout\ & (\inst1|BCD_C2_conv_inst|Add37~2_combout\ & (\inst1|BCD_C2_conv_inst|Add37~6_combout\ & \inst1|DDFS_freq_conv_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~4_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~2_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~6_combout\,
	datad => \inst1|DDFS_freq_conv_inst|LessThan1~0_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y10_N28
\inst1|DDFS_freq_conv_inst|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan3~0_combout\ = (\inst1|BCD_C2_conv_inst|Add37~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add37~0_combout\) # ((\inst1|BCD_1\(0) & \inst1|BCD_C2_conv_inst|Add32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_1\(0),
	datab => \inst1|BCD_C2_conv_inst|Add37~2_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add32~0_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~0_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan3~0_combout\);

-- Location: LCCOMB_X46_Y10_N6
\inst1|DDFS_freq_conv_inst|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan3~1_combout\ = (\inst1|BCD_C2_conv_inst|Add37~6_combout\ & (\inst1|BCD_C2_conv_inst|Add37~8_combout\ & ((\inst1|DDFS_freq_conv_inst|LessThan3~0_combout\) # (\inst1|BCD_C2_conv_inst|Add37~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~6_combout\,
	datab => \inst1|DDFS_freq_conv_inst|LessThan3~0_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~4_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~8_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan3~1_combout\);

-- Location: LCCOMB_X46_Y10_N0
\inst1|DDFS_freq_conv_inst|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan3~2_combout\ = (\inst1|BCD_C2_conv_inst|Add37~14_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~12_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~10_combout\) # (\inst1|BCD_C2_conv_inst|Add37~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~14_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~12_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~10_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~16_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan3~2_combout\);

-- Location: LCCOMB_X46_Y10_N26
\inst1|DDFS_freq_conv_inst|freq_control[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~16_combout\ = (((!\inst1|DDFS_freq_conv_inst|LessThan3~1_combout\ & !\inst1|DDFS_freq_conv_inst|LessThan3~2_combout\)) # (!\inst1|BCD_C2_conv_inst|Add37~18_combout\)) # 
-- (!\inst1|BCD_C2_conv_inst|Add37~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|LessThan3~1_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~20_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~18_combout\,
	datad => \inst1|DDFS_freq_conv_inst|LessThan3~2_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~16_combout\);

-- Location: LCCOMB_X46_Y10_N12
\inst1|DDFS_freq_conv_inst|freq_control[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~17_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~18_combout\ & \inst1|DDFS_freq_conv_inst|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~16_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~20_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~18_combout\,
	datad => \inst1|DDFS_freq_conv_inst|LessThan4~0_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~17_combout\);

-- Location: LCCOMB_X46_Y10_N14
\inst1|DDFS_freq_conv_inst|freq_control[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~18_combout\ = (\inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\ & (((\inst1|DDFS_freq_conv_inst|freq_control[0]~16_combout\)))) # (!\inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\ & 
-- (\inst1|DDFS_freq_conv_inst|freq_control[0]~17_combout\ & ((!\inst1|DDFS_freq_conv_inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control[0]~17_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[0]~16_combout\,
	datac => \inst1|DDFS_freq_conv_inst|LessThan1~1_combout\,
	datad => \inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~18_combout\);

-- Location: LCCOMB_X45_Y10_N18
\inst1|DDFS_freq_conv_inst|freq_control[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~22_combout\ = ((!\inst1|BCD_1\(0) & (!\inst1|BCD_C2_conv_inst|Add32~0_combout\ & !\inst1|BCD_C2_conv_inst|Add37~0_combout\))) # (!\inst1|BCD_C2_conv_inst|Add37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_1\(0),
	datab => \inst1|BCD_C2_conv_inst|Add37~2_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add32~0_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~0_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~22_combout\);

-- Location: LCCOMB_X46_Y10_N24
\inst1|DDFS_freq_conv_inst|freq_control[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~23_combout\ = (((\inst1|DDFS_freq_conv_inst|freq_control[0]~22_combout\ & !\inst1|BCD_C2_conv_inst|Add37~4_combout\)) # (!\inst1|BCD_C2_conv_inst|Add37~8_combout\)) # (!\inst1|BCD_C2_conv_inst|Add37~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~6_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[0]~22_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~4_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~8_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~23_combout\);

-- Location: LCCOMB_X46_Y10_N22
\inst1|DDFS_freq_conv_inst|freq_control[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~24_combout\ = ((\inst1|DDFS_freq_conv_inst|freq_control[0]~23_combout\ & !\inst1|BCD_C2_conv_inst|Add37~10_combout\)) # (!\inst1|BCD_C2_conv_inst|Add37~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control[0]~23_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~12_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~10_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~24_combout\);

-- Location: LCCOMB_X48_Y4_N20
\inst1|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (!\inst1|keypad_mod_inst|out_keys\(1) & \inst1|keypad_mod_inst|out_keys\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|keypad_mod_inst|out_keys\(1),
	datad => \inst1|keypad_mod_inst|out_keys\(2),
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X48_Y4_N18
\inst1|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (!\inst1|keypad_mod_inst|out_keys\(2) & (\inst1|keypad_mod_inst|out_keys\(0) & !\inst1|keypad_mod_inst|out_keys\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|out_keys\(2),
	datac => \inst1|keypad_mod_inst|out_keys\(0),
	datad => \inst1|keypad_mod_inst|out_keys\(1),
	combout => \inst1|Equal2~0_combout\);

-- Location: LCCOMB_X48_Y4_N24
\inst1|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector25~0_combout\ = ((!\inst1|Equal2~0_combout\ & ((\inst1|keypad_mod_inst|out_keys\(0)) # (!\inst1|Equal4~0_combout\)))) # (!\inst1|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~0_combout\,
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|keypad_mod_inst|out_keys\(0),
	datad => \inst1|Equal2~1_combout\,
	combout => \inst1|Selector25~0_combout\);

-- Location: LCCOMB_X50_Y4_N28
\inst1|Selector27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector27~3_combout\ = (\inst1|Equal5~2_combout\) # ((!\inst1|keypad_mod_inst|out_keys\(11) & (\inst1|keypad_mod_inst|out_keys\(9) & \inst1|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(11),
	datab => \inst1|keypad_mod_inst|out_keys\(9),
	datac => \inst1|Equal14~0_combout\,
	datad => \inst1|Equal5~2_combout\,
	combout => \inst1|Selector27~3_combout\);

-- Location: LCCOMB_X48_Y4_N16
\inst1|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (\inst1|keypad_mod_inst|out_keys\(1) & !\inst1|keypad_mod_inst|out_keys\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|keypad_mod_inst|out_keys\(1),
	datad => \inst1|keypad_mod_inst|out_keys\(2),
	combout => \inst1|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y2_N12
\inst1|Selector27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector27~5_combout\ = (\inst1|freq_1~0_combout\ & ((\inst1|Selector27~3_combout\) # (!\inst1|Selector27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_1~0_combout\,
	datac => \inst1|Selector27~4_combout\,
	datad => \inst1|Selector27~3_combout\,
	combout => \inst1|Selector27~5_combout\);

-- Location: LCCOMB_X49_Y2_N10
\inst1|Selector26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector26~5_combout\ = (\inst1|freq_1~0_combout\ & ((!\inst1|Selector26~0_combout\) # (!\inst1|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|WideNor0~1_combout\,
	datac => \inst1|freq_1~0_combout\,
	datad => \inst1|Selector26~0_combout\,
	combout => \inst1|Selector26~5_combout\);

-- Location: LCCOMB_X50_Y2_N2
\inst1|Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector25~1_combout\ = (!\inst1|Equal16~0_combout\ & ((\inst1|LessThan2~0_combout\ & (\inst1|freq_2\(2))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan2~0_combout\,
	datab => \inst1|Equal16~0_combout\,
	datac => \inst1|freq_2\(2),
	datad => \inst1|BCD_1\(2),
	combout => \inst1|Selector25~1_combout\);

-- Location: LCCOMB_X49_Y3_N16
\inst1|Selector25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector25~2_combout\ = (\inst1|Equal7~1_combout\) # ((\inst1|Equal6~3_combout\) # ((\inst1|Equal8~1_combout\) # (\inst1|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal7~1_combout\,
	datab => \inst1|Equal6~3_combout\,
	datac => \inst1|Equal8~1_combout\,
	datad => \inst1|Equal5~2_combout\,
	combout => \inst1|Selector25~2_combout\);

-- Location: LCCOMB_X49_Y2_N20
\inst1|Selector25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector25~3_combout\ = (\inst1|Selector25~1_combout\) # ((\inst1|Selector25~2_combout\ & ((\inst1|freq_1\(2)) # (!\inst1|freq_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(2),
	datab => \inst1|freq_1~0_combout\,
	datac => \inst1|Selector25~2_combout\,
	datad => \inst1|Selector25~1_combout\,
	combout => \inst1|Selector25~3_combout\);

-- Location: LCCOMB_X49_Y2_N24
\inst1|Selector24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector24~1_combout\ = (!\inst1|Equal16~0_combout\ & ((\inst1|LessThan2~0_combout\ & (\inst1|freq_2\(3))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(3),
	datab => \inst1|BCD_1\(3),
	datac => \inst1|LessThan2~0_combout\,
	datad => \inst1|Equal16~0_combout\,
	combout => \inst1|Selector24~1_combout\);

-- Location: LCCOMB_X49_Y2_N6
\inst1|Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector24~2_combout\ = (\inst1|Selector24~1_combout\) # ((!\inst1|freq_1~0_combout\ & !\inst1|WideNor0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_1~0_combout\,
	datac => \inst1|Selector24~1_combout\,
	datad => \inst1|WideNor0~1_combout\,
	combout => \inst1|Selector24~2_combout\);

-- Location: LCCOMB_X53_Y3_N28
\inst1|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = ((!\inst1|digit_counter\(2)) # (!\inst1|digit_counter\(0))) # (!\inst1|digit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digit_counter\(1),
	datab => \inst1|digit_counter\(0),
	datad => \inst1|digit_counter\(2),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y3_N16
\inst1|freq_2[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_2[3]~5_combout\ = (!\inst1|Equal11~0_combout\ & (!\inst1|LessThan1~0_combout\ & (!\inst1|number_not_sel~regout\ & !\inst1|WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal11~0_combout\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|number_not_sel~regout\,
	datad => \inst1|WideNor0~2_combout\,
	combout => \inst1|freq_2[3]~5_combout\);

-- Location: LCCOMB_X48_Y3_N6
\inst1|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_combout\ = (!\inst1|cont\(21) & (!\inst1|cont\(22) & (!\inst1|cont\(19) & !\inst1|cont\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(21),
	datab => \inst1|cont\(22),
	datac => \inst1|cont\(19),
	datad => \inst1|cont\(20),
	combout => \inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X51_Y4_N26
\inst1|BCD_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_3~0_combout\ = (\SW~combout\(0) & \inst1|freq_3\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \inst1|freq_3\(3),
	combout => \inst1|BCD_3~0_combout\);

-- Location: LCCOMB_X49_Y2_N4
\inst1|BCD_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_1~0_combout\ = (\inst1|freq_1\(3) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_1\(3),
	datac => \SW~combout\(0),
	combout => \inst1|BCD_1~0_combout\);

-- Location: LCFF_X30_Y21_N31
\inst1|freq_div|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(31));

-- Location: LCFF_X30_Y21_N21
\inst1|freq_div|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(26));

-- Location: LCFF_X30_Y21_N13
\inst1|freq_div|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(22));

-- Location: LCFF_X30_Y21_N11
\inst1|freq_div|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(21));

-- Location: LCCOMB_X31_Y21_N20
\inst1|freq_div|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~2_combout\ = (!\inst1|freq_div|count\(20) & (!\inst1|freq_div|count\(23) & (!\inst1|freq_div|count\(22) & !\inst1|freq_div|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(20),
	datab => \inst1|freq_div|count\(23),
	datac => \inst1|freq_div|count\(22),
	datad => \inst1|freq_div|count\(21),
	combout => \inst1|freq_div|Equal0~2_combout\);

-- Location: LCFF_X30_Y22_N21
\inst1|freq_div|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(10));

-- Location: LCCOMB_X31_Y22_N10
\inst1|freq_div|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~6_combout\ = (\inst1|freq_div|count\(8) & (\inst1|freq_div|count\(9) & (!\inst1|freq_div|count\(10) & !\inst1|freq_div|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(8),
	datab => \inst1|freq_div|count\(9),
	datac => \inst1|freq_div|count\(10),
	datad => \inst1|freq_div|count\(11),
	combout => \inst1|freq_div|Equal0~6_combout\);

-- Location: LCFF_X30_Y22_N11
\inst1|freq_div|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(5));

-- Location: LCCOMB_X51_Y4_N4
\inst1|number_not_sel~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|number_not_sel~1_combout\ = (\SW~combout\(0) & ((\inst1|Equal16~0_combout\) # ((\inst1|LessThan2~0_combout\ & !\inst1|number_not_sel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan2~0_combout\,
	datab => \inst1|number_not_sel~regout\,
	datac => \SW~combout\(0),
	datad => \inst1|Equal16~0_combout\,
	combout => \inst1|number_not_sel~1_combout\);

-- Location: LCCOMB_X51_Y4_N10
\inst1|number_not_sel~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|number_not_sel~2_combout\ = (\inst1|number_not_sel~0_combout\ & (\inst1|number_not_sel~regout\ $ (((!\inst1|Equal17~1_combout\) # (!\inst1|number_not_sel~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|number_not_sel~0_combout\,
	datab => \inst1|number_not_sel~regout\,
	datac => \inst1|number_not_sel~1_combout\,
	datad => \inst1|Equal17~1_combout\,
	combout => \inst1|number_not_sel~2_combout\);

-- Location: LCCOMB_X51_Y4_N20
\inst1|button_pressed~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|button_pressed~0_combout\ = (\inst1|keypad_mod_inst|data_valid~regout\ & (\inst1|debounced_keypad_pressed~regout\)) # (!\inst1|keypad_mod_inst|data_valid~regout\ & ((\inst1|button_pressed~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounced_keypad_pressed~regout\,
	datac => \inst1|button_pressed~regout\,
	datad => \inst1|keypad_mod_inst|data_valid~regout\,
	combout => \inst1|button_pressed~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GPIO_0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_GPIO_0(2),
	combout => \GPIO_0~combout\(2));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GPIO_0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_GPIO_0(0),
	combout => \GPIO_0~combout\(0));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GPIO_0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_GPIO_0(3),
	combout => \GPIO_0~combout\(3));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GPIO_0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_GPIO_0(1),
	combout => \GPIO_0~combout\(1));

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y2_N0
\inst1|keypad_mod_inst|i_column[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[0]~32_combout\ = \inst1|keypad_mod_inst|i_column\(0) $ (VCC)
-- \inst1|keypad_mod_inst|i_column[0]~33\ = CARRY(\inst1|keypad_mod_inst|i_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(0),
	datad => VCC,
	combout => \inst1|keypad_mod_inst|i_column[0]~32_combout\,
	cout => \inst1|keypad_mod_inst|i_column[0]~33\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X51_Y2_N4
\inst1|keypad_mod_inst|i_column[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[2]~36_combout\ = (\inst1|keypad_mod_inst|i_column\(2) & (\inst1|keypad_mod_inst|i_column[1]~35\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(2) & (!\inst1|keypad_mod_inst|i_column[1]~35\ & VCC))
-- \inst1|keypad_mod_inst|i_column[2]~37\ = CARRY((\inst1|keypad_mod_inst|i_column\(2) & !\inst1|keypad_mod_inst|i_column[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(2),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[1]~35\,
	combout => \inst1|keypad_mod_inst|i_column[2]~36_combout\,
	cout => \inst1|keypad_mod_inst|i_column[2]~37\);

-- Location: LCCOMB_X51_Y2_N8
\inst1|keypad_mod_inst|i_column[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[4]~41_combout\ = (\inst1|keypad_mod_inst|i_column\(4) & (\inst1|keypad_mod_inst|i_column[3]~39\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(4) & (!\inst1|keypad_mod_inst|i_column[3]~39\ & VCC))
-- \inst1|keypad_mod_inst|i_column[4]~42\ = CARRY((\inst1|keypad_mod_inst|i_column\(4) & !\inst1|keypad_mod_inst|i_column[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(4),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[3]~39\,
	combout => \inst1|keypad_mod_inst|i_column[4]~41_combout\,
	cout => \inst1|keypad_mod_inst|i_column[4]~42\);

-- Location: LCFF_X51_Y2_N9
\inst1|keypad_mod_inst|i_column[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[4]~41_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(4));

-- Location: LCCOMB_X51_Y2_N14
\inst1|keypad_mod_inst|i_column[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[7]~47_combout\ = (\inst1|keypad_mod_inst|i_column\(7) & (!\inst1|keypad_mod_inst|i_column[6]~46\)) # (!\inst1|keypad_mod_inst|i_column\(7) & ((\inst1|keypad_mod_inst|i_column[6]~46\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[7]~48\ = CARRY((!\inst1|keypad_mod_inst|i_column[6]~46\) # (!\inst1|keypad_mod_inst|i_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(7),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[6]~46\,
	combout => \inst1|keypad_mod_inst|i_column[7]~47_combout\,
	cout => \inst1|keypad_mod_inst|i_column[7]~48\);

-- Location: LCFF_X51_Y2_N15
\inst1|keypad_mod_inst|i_column[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[7]~47_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(7));

-- Location: LCCOMB_X51_Y2_N18
\inst1|keypad_mod_inst|i_column[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[9]~51_combout\ = (\inst1|keypad_mod_inst|i_column\(9) & (!\inst1|keypad_mod_inst|i_column[8]~50\)) # (!\inst1|keypad_mod_inst|i_column\(9) & ((\inst1|keypad_mod_inst|i_column[8]~50\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[9]~52\ = CARRY((!\inst1|keypad_mod_inst|i_column[8]~50\) # (!\inst1|keypad_mod_inst|i_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(9),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[8]~50\,
	combout => \inst1|keypad_mod_inst|i_column[9]~51_combout\,
	cout => \inst1|keypad_mod_inst|i_column[9]~52\);

-- Location: LCFF_X51_Y2_N19
\inst1|keypad_mod_inst|i_column[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[9]~51_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(9));

-- Location: LCCOMB_X51_Y2_N20
\inst1|keypad_mod_inst|i_column[10]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[10]~53_combout\ = (\inst1|keypad_mod_inst|i_column\(10) & (\inst1|keypad_mod_inst|i_column[9]~52\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(10) & (!\inst1|keypad_mod_inst|i_column[9]~52\ & VCC))
-- \inst1|keypad_mod_inst|i_column[10]~54\ = CARRY((\inst1|keypad_mod_inst|i_column\(10) & !\inst1|keypad_mod_inst|i_column[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(10),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[9]~52\,
	combout => \inst1|keypad_mod_inst|i_column[10]~53_combout\,
	cout => \inst1|keypad_mod_inst|i_column[10]~54\);

-- Location: LCCOMB_X51_Y2_N22
\inst1|keypad_mod_inst|i_column[11]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[11]~55_combout\ = (\inst1|keypad_mod_inst|i_column\(11) & (!\inst1|keypad_mod_inst|i_column[10]~54\)) # (!\inst1|keypad_mod_inst|i_column\(11) & ((\inst1|keypad_mod_inst|i_column[10]~54\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[11]~56\ = CARRY((!\inst1|keypad_mod_inst|i_column[10]~54\) # (!\inst1|keypad_mod_inst|i_column\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(11),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[10]~54\,
	combout => \inst1|keypad_mod_inst|i_column[11]~55_combout\,
	cout => \inst1|keypad_mod_inst|i_column[11]~56\);

-- Location: LCFF_X51_Y2_N23
\inst1|keypad_mod_inst|i_column[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[11]~55_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(11));

-- Location: LCCOMB_X51_Y2_N24
\inst1|keypad_mod_inst|i_column[12]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[12]~57_combout\ = (\inst1|keypad_mod_inst|i_column\(12) & (\inst1|keypad_mod_inst|i_column[11]~56\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(12) & (!\inst1|keypad_mod_inst|i_column[11]~56\ & VCC))
-- \inst1|keypad_mod_inst|i_column[12]~58\ = CARRY((\inst1|keypad_mod_inst|i_column\(12) & !\inst1|keypad_mod_inst|i_column[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(12),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[11]~56\,
	combout => \inst1|keypad_mod_inst|i_column[12]~57_combout\,
	cout => \inst1|keypad_mod_inst|i_column[12]~58\);

-- Location: LCCOMB_X51_Y2_N26
\inst1|keypad_mod_inst|i_column[13]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[13]~59_combout\ = (\inst1|keypad_mod_inst|i_column\(13) & (!\inst1|keypad_mod_inst|i_column[12]~58\)) # (!\inst1|keypad_mod_inst|i_column\(13) & ((\inst1|keypad_mod_inst|i_column[12]~58\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[13]~60\ = CARRY((!\inst1|keypad_mod_inst|i_column[12]~58\) # (!\inst1|keypad_mod_inst|i_column\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(13),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[12]~58\,
	combout => \inst1|keypad_mod_inst|i_column[13]~59_combout\,
	cout => \inst1|keypad_mod_inst|i_column[13]~60\);

-- Location: LCFF_X51_Y2_N27
\inst1|keypad_mod_inst|i_column[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[13]~59_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(13));

-- Location: LCCOMB_X51_Y2_N28
\inst1|keypad_mod_inst|i_column[14]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[14]~61_combout\ = (\inst1|keypad_mod_inst|i_column\(14) & (\inst1|keypad_mod_inst|i_column[13]~60\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(14) & (!\inst1|keypad_mod_inst|i_column[13]~60\ & VCC))
-- \inst1|keypad_mod_inst|i_column[14]~62\ = CARRY((\inst1|keypad_mod_inst|i_column\(14) & !\inst1|keypad_mod_inst|i_column[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(14),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[13]~60\,
	combout => \inst1|keypad_mod_inst|i_column[14]~61_combout\,
	cout => \inst1|keypad_mod_inst|i_column[14]~62\);

-- Location: LCFF_X51_Y2_N29
\inst1|keypad_mod_inst|i_column[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[14]~61_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(14));

-- Location: LCCOMB_X51_Y2_N30
\inst1|keypad_mod_inst|i_column[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[15]~63_combout\ = (\inst1|keypad_mod_inst|i_column\(15) & (!\inst1|keypad_mod_inst|i_column[14]~62\)) # (!\inst1|keypad_mod_inst|i_column\(15) & ((\inst1|keypad_mod_inst|i_column[14]~62\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[15]~64\ = CARRY((!\inst1|keypad_mod_inst|i_column[14]~62\) # (!\inst1|keypad_mod_inst|i_column\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(15),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[14]~62\,
	combout => \inst1|keypad_mod_inst|i_column[15]~63_combout\,
	cout => \inst1|keypad_mod_inst|i_column[15]~64\);

-- Location: LCFF_X51_Y2_N31
\inst1|keypad_mod_inst|i_column[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[15]~63_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(15));

-- Location: LCCOMB_X51_Y1_N0
\inst1|keypad_mod_inst|i_column[16]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[16]~65_combout\ = (\inst1|keypad_mod_inst|i_column\(16) & (\inst1|keypad_mod_inst|i_column[15]~64\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(16) & (!\inst1|keypad_mod_inst|i_column[15]~64\ & VCC))
-- \inst1|keypad_mod_inst|i_column[16]~66\ = CARRY((\inst1|keypad_mod_inst|i_column\(16) & !\inst1|keypad_mod_inst|i_column[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(16),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[15]~64\,
	combout => \inst1|keypad_mod_inst|i_column[16]~65_combout\,
	cout => \inst1|keypad_mod_inst|i_column[16]~66\);

-- Location: LCFF_X51_Y1_N1
\inst1|keypad_mod_inst|i_column[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[16]~65_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(16));

-- Location: LCCOMB_X51_Y1_N2
\inst1|keypad_mod_inst|i_column[17]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[17]~67_combout\ = (\inst1|keypad_mod_inst|i_column\(17) & (!\inst1|keypad_mod_inst|i_column[16]~66\)) # (!\inst1|keypad_mod_inst|i_column\(17) & ((\inst1|keypad_mod_inst|i_column[16]~66\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[17]~68\ = CARRY((!\inst1|keypad_mod_inst|i_column[16]~66\) # (!\inst1|keypad_mod_inst|i_column\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(17),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[16]~66\,
	combout => \inst1|keypad_mod_inst|i_column[17]~67_combout\,
	cout => \inst1|keypad_mod_inst|i_column[17]~68\);

-- Location: LCFF_X51_Y1_N3
\inst1|keypad_mod_inst|i_column[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[17]~67_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(17));

-- Location: LCCOMB_X51_Y1_N4
\inst1|keypad_mod_inst|i_column[18]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[18]~69_combout\ = (\inst1|keypad_mod_inst|i_column\(18) & (\inst1|keypad_mod_inst|i_column[17]~68\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(18) & (!\inst1|keypad_mod_inst|i_column[17]~68\ & VCC))
-- \inst1|keypad_mod_inst|i_column[18]~70\ = CARRY((\inst1|keypad_mod_inst|i_column\(18) & !\inst1|keypad_mod_inst|i_column[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(18),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[17]~68\,
	combout => \inst1|keypad_mod_inst|i_column[18]~69_combout\,
	cout => \inst1|keypad_mod_inst|i_column[18]~70\);

-- Location: LCFF_X51_Y1_N5
\inst1|keypad_mod_inst|i_column[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[18]~69_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(18));

-- Location: LCCOMB_X51_Y1_N6
\inst1|keypad_mod_inst|i_column[19]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[19]~71_combout\ = (\inst1|keypad_mod_inst|i_column\(19) & (!\inst1|keypad_mod_inst|i_column[18]~70\)) # (!\inst1|keypad_mod_inst|i_column\(19) & ((\inst1|keypad_mod_inst|i_column[18]~70\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[19]~72\ = CARRY((!\inst1|keypad_mod_inst|i_column[18]~70\) # (!\inst1|keypad_mod_inst|i_column\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(19),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[18]~70\,
	combout => \inst1|keypad_mod_inst|i_column[19]~71_combout\,
	cout => \inst1|keypad_mod_inst|i_column[19]~72\);

-- Location: LCCOMB_X51_Y1_N8
\inst1|keypad_mod_inst|i_column[20]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[20]~73_combout\ = (\inst1|keypad_mod_inst|i_column\(20) & (\inst1|keypad_mod_inst|i_column[19]~72\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(20) & (!\inst1|keypad_mod_inst|i_column[19]~72\ & VCC))
-- \inst1|keypad_mod_inst|i_column[20]~74\ = CARRY((\inst1|keypad_mod_inst|i_column\(20) & !\inst1|keypad_mod_inst|i_column[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(20),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[19]~72\,
	combout => \inst1|keypad_mod_inst|i_column[20]~73_combout\,
	cout => \inst1|keypad_mod_inst|i_column[20]~74\);

-- Location: LCFF_X51_Y1_N9
\inst1|keypad_mod_inst|i_column[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[20]~73_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(20));

-- Location: LCCOMB_X51_Y1_N10
\inst1|keypad_mod_inst|i_column[21]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[21]~75_combout\ = (\inst1|keypad_mod_inst|i_column\(21) & (!\inst1|keypad_mod_inst|i_column[20]~74\)) # (!\inst1|keypad_mod_inst|i_column\(21) & ((\inst1|keypad_mod_inst|i_column[20]~74\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[21]~76\ = CARRY((!\inst1|keypad_mod_inst|i_column[20]~74\) # (!\inst1|keypad_mod_inst|i_column\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(21),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[20]~74\,
	combout => \inst1|keypad_mod_inst|i_column[21]~75_combout\,
	cout => \inst1|keypad_mod_inst|i_column[21]~76\);

-- Location: LCCOMB_X51_Y1_N12
\inst1|keypad_mod_inst|i_column[22]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[22]~77_combout\ = (\inst1|keypad_mod_inst|i_column\(22) & (\inst1|keypad_mod_inst|i_column[21]~76\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(22) & (!\inst1|keypad_mod_inst|i_column[21]~76\ & VCC))
-- \inst1|keypad_mod_inst|i_column[22]~78\ = CARRY((\inst1|keypad_mod_inst|i_column\(22) & !\inst1|keypad_mod_inst|i_column[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(22),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[21]~76\,
	combout => \inst1|keypad_mod_inst|i_column[22]~77_combout\,
	cout => \inst1|keypad_mod_inst|i_column[22]~78\);

-- Location: LCFF_X51_Y1_N13
\inst1|keypad_mod_inst|i_column[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[22]~77_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(22));

-- Location: LCFF_X51_Y1_N11
\inst1|keypad_mod_inst|i_column[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[21]~75_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(21));

-- Location: LCCOMB_X50_Y1_N22
\inst1|keypad_mod_inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~5_combout\ = (!\inst1|keypad_mod_inst|i_column\(23) & (!\inst1|keypad_mod_inst|i_column\(22) & (!\inst1|keypad_mod_inst|i_column\(20) & !\inst1|keypad_mod_inst|i_column\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(23),
	datab => \inst1|keypad_mod_inst|i_column\(22),
	datac => \inst1|keypad_mod_inst|i_column\(20),
	datad => \inst1|keypad_mod_inst|i_column\(21),
	combout => \inst1|keypad_mod_inst|LessThan0~5_combout\);

-- Location: LCFF_X51_Y1_N7
\inst1|keypad_mod_inst|i_column[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[19]~71_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(19));

-- Location: LCCOMB_X50_Y1_N30
\inst1|keypad_mod_inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~3_combout\ = (!\inst1|keypad_mod_inst|i_column\(18) & (!\inst1|keypad_mod_inst|i_column\(19) & (!\inst1|keypad_mod_inst|i_column\(16) & !\inst1|keypad_mod_inst|i_column\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(18),
	datab => \inst1|keypad_mod_inst|i_column\(19),
	datac => \inst1|keypad_mod_inst|i_column\(16),
	datad => \inst1|keypad_mod_inst|i_column\(17),
	combout => \inst1|keypad_mod_inst|LessThan0~3_combout\);

-- Location: LCFF_X51_Y2_N25
\inst1|keypad_mod_inst|i_column[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[12]~57_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(12));

-- Location: LCCOMB_X50_Y2_N20
\inst1|keypad_mod_inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~2_combout\ = (!\inst1|keypad_mod_inst|i_column\(13) & (!\inst1|keypad_mod_inst|i_column\(14) & (!\inst1|keypad_mod_inst|i_column\(15) & !\inst1|keypad_mod_inst|i_column\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(13),
	datab => \inst1|keypad_mod_inst|i_column\(14),
	datac => \inst1|keypad_mod_inst|i_column\(15),
	datad => \inst1|keypad_mod_inst|i_column\(12),
	combout => \inst1|keypad_mod_inst|LessThan0~2_combout\);

-- Location: LCFF_X51_Y2_N21
\inst1|keypad_mod_inst|i_column[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[10]~53_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(10));

-- Location: LCCOMB_X50_Y2_N26
\inst1|keypad_mod_inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~1_combout\ = (!\inst1|keypad_mod_inst|i_column\(8) & (!\inst1|keypad_mod_inst|i_column\(10) & (!\inst1|keypad_mod_inst|i_column\(11) & !\inst1|keypad_mod_inst|i_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(8),
	datab => \inst1|keypad_mod_inst|i_column\(10),
	datac => \inst1|keypad_mod_inst|i_column\(11),
	datad => \inst1|keypad_mod_inst|i_column\(9),
	combout => \inst1|keypad_mod_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y1_N20
\inst1|keypad_mod_inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~4_combout\ = (\inst1|keypad_mod_inst|LessThan0~0_combout\ & (\inst1|keypad_mod_inst|LessThan0~3_combout\ & (\inst1|keypad_mod_inst|LessThan0~2_combout\ & \inst1|keypad_mod_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|LessThan0~0_combout\,
	datab => \inst1|keypad_mod_inst|LessThan0~3_combout\,
	datac => \inst1|keypad_mod_inst|LessThan0~2_combout\,
	datad => \inst1|keypad_mod_inst|LessThan0~1_combout\,
	combout => \inst1|keypad_mod_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X51_Y1_N14
\inst1|keypad_mod_inst|i_column[23]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[23]~79_combout\ = (\inst1|keypad_mod_inst|i_column\(23) & (!\inst1|keypad_mod_inst|i_column[22]~78\)) # (!\inst1|keypad_mod_inst|i_column\(23) & ((\inst1|keypad_mod_inst|i_column[22]~78\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[23]~80\ = CARRY((!\inst1|keypad_mod_inst|i_column[22]~78\) # (!\inst1|keypad_mod_inst|i_column\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(23),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[22]~78\,
	combout => \inst1|keypad_mod_inst|i_column[23]~79_combout\,
	cout => \inst1|keypad_mod_inst|i_column[23]~80\);

-- Location: LCFF_X51_Y1_N15
\inst1|keypad_mod_inst|i_column[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[23]~79_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(23));

-- Location: LCCOMB_X51_Y1_N18
\inst1|keypad_mod_inst|i_column[25]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[25]~83_combout\ = (\inst1|keypad_mod_inst|i_column\(25) & (!\inst1|keypad_mod_inst|i_column[24]~82\)) # (!\inst1|keypad_mod_inst|i_column\(25) & ((\inst1|keypad_mod_inst|i_column[24]~82\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[25]~84\ = CARRY((!\inst1|keypad_mod_inst|i_column[24]~82\) # (!\inst1|keypad_mod_inst|i_column\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(25),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[24]~82\,
	combout => \inst1|keypad_mod_inst|i_column[25]~83_combout\,
	cout => \inst1|keypad_mod_inst|i_column[25]~84\);

-- Location: LCFF_X51_Y1_N19
\inst1|keypad_mod_inst|i_column[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[25]~83_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(25));

-- Location: LCCOMB_X51_Y1_N22
\inst1|keypad_mod_inst|i_column[27]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[27]~87_combout\ = (\inst1|keypad_mod_inst|i_column\(27) & (!\inst1|keypad_mod_inst|i_column[26]~86\)) # (!\inst1|keypad_mod_inst|i_column\(27) & ((\inst1|keypad_mod_inst|i_column[26]~86\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[27]~88\ = CARRY((!\inst1|keypad_mod_inst|i_column[26]~86\) # (!\inst1|keypad_mod_inst|i_column\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(27),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[26]~86\,
	combout => \inst1|keypad_mod_inst|i_column[27]~87_combout\,
	cout => \inst1|keypad_mod_inst|i_column[27]~88\);

-- Location: LCFF_X51_Y1_N23
\inst1|keypad_mod_inst|i_column[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[27]~87_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(27));

-- Location: LCCOMB_X51_Y1_N24
\inst1|keypad_mod_inst|i_column[28]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[28]~89_combout\ = (\inst1|keypad_mod_inst|i_column\(28) & (\inst1|keypad_mod_inst|i_column[27]~88\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(28) & (!\inst1|keypad_mod_inst|i_column[27]~88\ & VCC))
-- \inst1|keypad_mod_inst|i_column[28]~90\ = CARRY((\inst1|keypad_mod_inst|i_column\(28) & !\inst1|keypad_mod_inst|i_column[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(28),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[27]~88\,
	combout => \inst1|keypad_mod_inst|i_column[28]~89_combout\,
	cout => \inst1|keypad_mod_inst|i_column[28]~90\);

-- Location: LCCOMB_X51_Y1_N26
\inst1|keypad_mod_inst|i_column[29]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[29]~91_combout\ = (\inst1|keypad_mod_inst|i_column\(29) & (!\inst1|keypad_mod_inst|i_column[28]~90\)) # (!\inst1|keypad_mod_inst|i_column\(29) & ((\inst1|keypad_mod_inst|i_column[28]~90\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[29]~92\ = CARRY((!\inst1|keypad_mod_inst|i_column[28]~90\) # (!\inst1|keypad_mod_inst|i_column\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(29),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[28]~90\,
	combout => \inst1|keypad_mod_inst|i_column[29]~91_combout\,
	cout => \inst1|keypad_mod_inst|i_column[29]~92\);

-- Location: LCFF_X51_Y1_N27
\inst1|keypad_mod_inst|i_column[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[29]~91_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(29));

-- Location: LCCOMB_X51_Y1_N28
\inst1|keypad_mod_inst|i_column[30]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[30]~93_combout\ = (\inst1|keypad_mod_inst|i_column\(30) & (\inst1|keypad_mod_inst|i_column[29]~92\ $ (GND))) # (!\inst1|keypad_mod_inst|i_column\(30) & (!\inst1|keypad_mod_inst|i_column[29]~92\ & VCC))
-- \inst1|keypad_mod_inst|i_column[30]~94\ = CARRY((\inst1|keypad_mod_inst|i_column\(30) & !\inst1|keypad_mod_inst|i_column[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(30),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[29]~92\,
	combout => \inst1|keypad_mod_inst|i_column[30]~93_combout\,
	cout => \inst1|keypad_mod_inst|i_column[30]~94\);

-- Location: LCFF_X51_Y1_N29
\inst1|keypad_mod_inst|i_column[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[30]~93_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(30));

-- Location: LCFF_X51_Y1_N25
\inst1|keypad_mod_inst|i_column[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[28]~89_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(28));

-- Location: LCCOMB_X50_Y1_N18
\inst1|keypad_mod_inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~7_combout\ = (\inst1|keypad_mod_inst|LessThan0~6_combout\ & (!\inst1|keypad_mod_inst|i_column\(30) & (!\inst1|keypad_mod_inst|i_column\(29) & !\inst1|keypad_mod_inst|i_column\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|LessThan0~6_combout\,
	datab => \inst1|keypad_mod_inst|i_column\(30),
	datac => \inst1|keypad_mod_inst|i_column\(29),
	datad => \inst1|keypad_mod_inst|i_column\(28),
	combout => \inst1|keypad_mod_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X50_Y1_N10
\inst1|keypad_mod_inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~9_combout\ = (!\inst1|keypad_mod_inst|i_column\(3) & (\inst1|keypad_mod_inst|LessThan0~5_combout\ & (\inst1|keypad_mod_inst|LessThan0~4_combout\ & \inst1|keypad_mod_inst|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(3),
	datab => \inst1|keypad_mod_inst|LessThan0~5_combout\,
	datac => \inst1|keypad_mod_inst|LessThan0~4_combout\,
	datad => \inst1|keypad_mod_inst|LessThan0~7_combout\,
	combout => \inst1|keypad_mod_inst|LessThan0~9_combout\);

-- Location: LCCOMB_X50_Y2_N28
\inst1|keypad_mod_inst|i_column[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[7]~40_combout\ = ((!\inst1|keypad_mod_inst|i_column\(31) & (\inst1|keypad_mod_inst|i_column\(0) & !\inst1|keypad_mod_inst|LessThan0~9_combout\))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(31),
	datab => \SW~combout\(0),
	datac => \inst1|keypad_mod_inst|i_column\(0),
	datad => \inst1|keypad_mod_inst|LessThan0~9_combout\,
	combout => \inst1|keypad_mod_inst|i_column[7]~40_combout\);

-- Location: LCFF_X51_Y2_N1
\inst1|keypad_mod_inst|i_column[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[0]~32_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(0));

-- Location: LCCOMB_X51_Y2_N2
\inst1|keypad_mod_inst|i_column[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[1]~34_combout\ = (\inst1|keypad_mod_inst|i_column\(1) & (!\inst1|keypad_mod_inst|i_column[0]~33\)) # (!\inst1|keypad_mod_inst|i_column\(1) & ((\inst1|keypad_mod_inst|i_column[0]~33\) # (GND)))
-- \inst1|keypad_mod_inst|i_column[1]~35\ = CARRY((!\inst1|keypad_mod_inst|i_column[0]~33\) # (!\inst1|keypad_mod_inst|i_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(1),
	datad => VCC,
	cin => \inst1|keypad_mod_inst|i_column[0]~33\,
	combout => \inst1|keypad_mod_inst|i_column[1]~34_combout\,
	cout => \inst1|keypad_mod_inst|i_column[1]~35\);

-- Location: LCFF_X51_Y2_N3
\inst1|keypad_mod_inst|i_column[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[1]~34_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(1));

-- Location: LCFF_X51_Y2_N5
\inst1|keypad_mod_inst|i_column[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[2]~36_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(2));

-- Location: LCCOMB_X51_Y1_N30
\inst1|keypad_mod_inst|i_column[31]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|i_column[31]~95_combout\ = \inst1|keypad_mod_inst|i_column[30]~94\ $ (\inst1|keypad_mod_inst|i_column\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|keypad_mod_inst|i_column\(31),
	cin => \inst1|keypad_mod_inst|i_column[30]~94\,
	combout => \inst1|keypad_mod_inst|i_column[31]~95_combout\);

-- Location: LCFF_X51_Y1_N31
\inst1|keypad_mod_inst|i_column[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|i_column[31]~95_combout\,
	sclr => \inst1|keypad_mod_inst|i_column[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|i_column\(31));

-- Location: LCCOMB_X50_Y1_N12
\inst1|keypad_mod_inst|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan0~8_combout\ = (\inst1|keypad_mod_inst|LessThan0~5_combout\ & \inst1|keypad_mod_inst|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|LessThan0~5_combout\,
	datad => \inst1|keypad_mod_inst|LessThan0~7_combout\,
	combout => \inst1|keypad_mod_inst|LessThan0~8_combout\);

-- Location: LCCOMB_X50_Y1_N0
\inst1|keypad_mod_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|Equal0~0_combout\ = (!\inst1|keypad_mod_inst|i_column\(3) & (!\inst1|keypad_mod_inst|i_column\(31) & (\inst1|keypad_mod_inst|LessThan0~4_combout\ & \inst1|keypad_mod_inst|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(3),
	datab => \inst1|keypad_mod_inst|i_column\(31),
	datac => \inst1|keypad_mod_inst|LessThan0~4_combout\,
	datad => \inst1|keypad_mod_inst|LessThan0~8_combout\,
	combout => \inst1|keypad_mod_inst|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y1_N28
\inst1|keypad_mod_inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan1~0_combout\ = (\inst1|keypad_mod_inst|i_column\(3) & ((\inst1|keypad_mod_inst|i_column\(2)) # ((\inst1|keypad_mod_inst|i_column\(1)) # (\inst1|keypad_mod_inst|i_column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(3),
	datab => \inst1|keypad_mod_inst|i_column\(2),
	datac => \inst1|keypad_mod_inst|i_column\(1),
	datad => \inst1|keypad_mod_inst|i_column\(0),
	combout => \inst1|keypad_mod_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y1_N26
\inst1|keypad_mod_inst|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|LessThan1~1_combout\ = (!\inst1|keypad_mod_inst|i_column\(31) & (((\inst1|keypad_mod_inst|LessThan1~0_combout\) # (!\inst1|keypad_mod_inst|LessThan0~4_combout\)) # (!\inst1|keypad_mod_inst|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|LessThan0~8_combout\,
	datab => \inst1|keypad_mod_inst|LessThan1~0_combout\,
	datac => \inst1|keypad_mod_inst|LessThan0~4_combout\,
	datad => \inst1|keypad_mod_inst|i_column\(31),
	combout => \inst1|keypad_mod_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y2_N10
\inst1|keypad_mod_inst|column[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|column[3]~0_combout\ = (((\inst1|keypad_mod_inst|LessThan1~1_combout\) # (!\inst1|keypad_mod_inst|i_column\(1))) # (!\inst1|keypad_mod_inst|Equal0~0_combout\)) # (!\inst1|keypad_mod_inst|i_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(2),
	datab => \inst1|keypad_mod_inst|Equal0~0_combout\,
	datac => \inst1|keypad_mod_inst|LessThan1~1_combout\,
	datad => \inst1|keypad_mod_inst|i_column\(1),
	combout => \inst1|keypad_mod_inst|column[3]~0_combout\);

-- Location: LCCOMB_X50_Y2_N24
\inst1|keypad_mod_inst|column[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|column[2]~1_combout\ = (((\inst1|keypad_mod_inst|LessThan1~1_combout\) # (\inst1|keypad_mod_inst|i_column\(1))) # (!\inst1|keypad_mod_inst|Equal0~0_combout\)) # (!\inst1|keypad_mod_inst|i_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(2),
	datab => \inst1|keypad_mod_inst|Equal0~0_combout\,
	datac => \inst1|keypad_mod_inst|LessThan1~1_combout\,
	datad => \inst1|keypad_mod_inst|i_column\(1),
	combout => \inst1|keypad_mod_inst|column[2]~1_combout\);

-- Location: LCCOMB_X50_Y2_N22
\inst1|keypad_mod_inst|column[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|column[1]~2_combout\ = (\inst1|keypad_mod_inst|i_column\(2)) # (((\inst1|keypad_mod_inst|LessThan1~1_combout\) # (!\inst1|keypad_mod_inst|i_column\(1))) # (!\inst1|keypad_mod_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(2),
	datab => \inst1|keypad_mod_inst|Equal0~0_combout\,
	datac => \inst1|keypad_mod_inst|LessThan1~1_combout\,
	datad => \inst1|keypad_mod_inst|i_column\(1),
	combout => \inst1|keypad_mod_inst|column[1]~2_combout\);

-- Location: LCCOMB_X50_Y2_N12
\inst1|keypad_mod_inst|column[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|column[0]~3_combout\ = (\inst1|keypad_mod_inst|i_column\(2)) # (((\inst1|keypad_mod_inst|LessThan1~1_combout\) # (\inst1|keypad_mod_inst|i_column\(1))) # (!\inst1|keypad_mod_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(2),
	datab => \inst1|keypad_mod_inst|Equal0~0_combout\,
	datac => \inst1|keypad_mod_inst|LessThan1~1_combout\,
	datad => \inst1|keypad_mod_inst|i_column\(1),
	combout => \inst1|keypad_mod_inst|column[0]~3_combout\);

-- Location: LCCOMB_X50_Y5_N8
\inst1|keypad_mod_inst|tmp_out_keys[14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ = (\SW~combout\(0) & ((\inst1|keypad_mod_inst|i_column\(31)) # (\inst1|keypad_mod_inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst1|keypad_mod_inst|i_column\(31),
	datac => \inst1|keypad_mod_inst|LessThan0~9_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\);

-- Location: LCCOMB_X50_Y1_N2
\inst1|keypad_mod_inst|tmp_out_keys~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~5_combout\ = (\inst1|keypad_mod_inst|i_column\(2) & (!\inst1|keypad_mod_inst|i_column\(0) & (!\inst1|keypad_mod_inst|i_column\(1) & \inst1|keypad_mod_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(2),
	datab => \inst1|keypad_mod_inst|i_column\(0),
	datac => \inst1|keypad_mod_inst|i_column\(1),
	datad => \inst1|keypad_mod_inst|Equal0~0_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~5_combout\);

-- Location: LCCOMB_X49_Y5_N18
\inst1|keypad_mod_inst|tmp_out_keys~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~7_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(9)) # ((!\GPIO_0~combout\(1) & \inst1|keypad_mod_inst|tmp_out_keys~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(1),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(9),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~5_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~7_combout\);

-- Location: LCCOMB_X50_Y5_N30
\inst1|keypad_mod_inst|tmp_out_keys[14]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\ = ((\inst1|keypad_mod_inst|i_column\(31)) # ((\inst1|keypad_mod_inst|LessThan0~9_combout\) # (\inst1|keypad_mod_inst|i_column\(0)))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst1|keypad_mod_inst|i_column\(31),
	datac => \inst1|keypad_mod_inst|LessThan0~9_combout\,
	datad => \inst1|keypad_mod_inst|i_column\(0),
	combout => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\);

-- Location: LCFF_X49_Y5_N19
\inst1|keypad_mod_inst|tmp_out_keys[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~7_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(9));

-- Location: LCCOMB_X50_Y4_N2
\inst1|keypad_mod_inst|out_keys[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|out_keys[15]~0_combout\ = (\SW~combout\(0) & (!\inst1|keypad_mod_inst|LessThan0~9_combout\ & !\inst1|keypad_mod_inst|i_column\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \inst1|keypad_mod_inst|LessThan0~9_combout\,
	datad => \inst1|keypad_mod_inst|i_column\(31),
	combout => \inst1|keypad_mod_inst|out_keys[15]~0_combout\);

-- Location: LCFF_X49_Y4_N23
\inst1|keypad_mod_inst|out_keys[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(9),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(9));

-- Location: LCCOMB_X50_Y1_N24
\inst1|keypad_mod_inst|tmp_out_keys~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~1_combout\ = (\inst1|keypad_mod_inst|i_column\(2) & (!\inst1|keypad_mod_inst|i_column\(0) & (\inst1|keypad_mod_inst|i_column\(1) & \inst1|keypad_mod_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(2),
	datab => \inst1|keypad_mod_inst|i_column\(0),
	datac => \inst1|keypad_mod_inst|i_column\(1),
	datad => \inst1|keypad_mod_inst|Equal0~0_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~1_combout\);

-- Location: LCCOMB_X49_Y5_N10
\inst1|keypad_mod_inst|tmp_out_keys~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~4_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(12)) # ((!\GPIO_0~combout\(0) & \inst1|keypad_mod_inst|tmp_out_keys~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(0),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(12),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~1_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~4_combout\);

-- Location: LCFF_X49_Y5_N11
\inst1|keypad_mod_inst|tmp_out_keys[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~4_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(12));

-- Location: LCFF_X49_Y4_N11
\inst1|keypad_mod_inst|out_keys[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(12),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(12));

-- Location: LCCOMB_X49_Y5_N16
\inst1|keypad_mod_inst|tmp_out_keys~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~6_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(11)) # ((!\GPIO_0~combout\(3) & \inst1|keypad_mod_inst|tmp_out_keys~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(3),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(11),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~5_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~6_combout\);

-- Location: LCFF_X49_Y5_N17
\inst1|keypad_mod_inst|tmp_out_keys[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~6_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(11));

-- Location: LCFF_X49_Y4_N29
\inst1|keypad_mod_inst|out_keys[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(11),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(11));

-- Location: LCCOMB_X50_Y4_N14
\inst1|Equal17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal17~0_combout\ = (\inst1|keypad_mod_inst|out_keys\(9)) # ((\inst1|keypad_mod_inst|out_keys\(11)) # (!\inst1|keypad_mod_inst|out_keys\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|out_keys\(9),
	datac => \inst1|keypad_mod_inst|out_keys\(12),
	datad => \inst1|keypad_mod_inst|out_keys\(11),
	combout => \inst1|Equal17~0_combout\);

-- Location: LCCOMB_X50_Y1_N4
\inst1|keypad_mod_inst|tmp_out_keys~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~10_combout\ = (!\inst1|keypad_mod_inst|i_column\(2) & (!\inst1|keypad_mod_inst|i_column\(0) & (\inst1|keypad_mod_inst|i_column\(1) & \inst1|keypad_mod_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(2),
	datab => \inst1|keypad_mod_inst|i_column\(0),
	datac => \inst1|keypad_mod_inst|i_column\(1),
	datad => \inst1|keypad_mod_inst|Equal0~0_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~10_combout\);

-- Location: LCCOMB_X49_Y5_N6
\inst1|keypad_mod_inst|tmp_out_keys~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~21_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(7)) # ((!\GPIO_0~combout\(3) & \inst1|keypad_mod_inst|tmp_out_keys~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(3),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(7),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~10_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~21_combout\);

-- Location: LCFF_X49_Y5_N7
\inst1|keypad_mod_inst|tmp_out_keys[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~21_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(7));

-- Location: LCFF_X49_Y4_N5
\inst1|keypad_mod_inst|out_keys[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(7),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(7));

-- Location: LCCOMB_X49_Y5_N4
\inst1|keypad_mod_inst|tmp_out_keys~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~20_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(8)) # ((!\GPIO_0~combout\(0) & \inst1|keypad_mod_inst|tmp_out_keys~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(0),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(8),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~5_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~20_combout\);

-- Location: LCFF_X49_Y5_N5
\inst1|keypad_mod_inst|tmp_out_keys[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~20_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(8));

-- Location: LCFF_X49_Y4_N19
\inst1|keypad_mod_inst|out_keys[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(8),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(8));

-- Location: LCCOMB_X49_Y4_N4
\inst1|Equal15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal15~0_combout\ = (!\inst1|keypad_mod_inst|out_keys\(14) & (!\inst1|keypad_mod_inst|out_keys\(7) & !\inst1|keypad_mod_inst|out_keys\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(14),
	datac => \inst1|keypad_mod_inst|out_keys\(7),
	datad => \inst1|keypad_mod_inst|out_keys\(8),
	combout => \inst1|Equal15~0_combout\);

-- Location: LCCOMB_X49_Y5_N2
\inst1|keypad_mod_inst|tmp_out_keys~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~17_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(6)) # ((!\GPIO_0~combout\(2) & \inst1|keypad_mod_inst|tmp_out_keys~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(2),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(6),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~10_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~17_combout\);

-- Location: LCFF_X49_Y5_N3
\inst1|keypad_mod_inst|tmp_out_keys[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~17_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(6));

-- Location: LCFF_X49_Y4_N21
\inst1|keypad_mod_inst|out_keys[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(6),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(6));

-- Location: LCCOMB_X49_Y5_N12
\inst1|keypad_mod_inst|tmp_out_keys~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~18_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(5)) # ((!\GPIO_0~combout\(1) & \inst1|keypad_mod_inst|tmp_out_keys~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(1),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(5),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~10_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~18_combout\);

-- Location: LCFF_X49_Y5_N13
\inst1|keypad_mod_inst|tmp_out_keys[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~18_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(5));

-- Location: LCFF_X49_Y4_N15
\inst1|keypad_mod_inst|out_keys[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(5),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(5));

-- Location: LCCOMB_X50_Y1_N6
\inst1|keypad_mod_inst|tmp_out_keys~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~12_combout\ = (!\inst1|keypad_mod_inst|i_column\(2) & (!\inst1|keypad_mod_inst|i_column\(0) & (!\inst1|keypad_mod_inst|i_column\(1) & \inst1|keypad_mod_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|i_column\(2),
	datab => \inst1|keypad_mod_inst|i_column\(0),
	datac => \inst1|keypad_mod_inst|i_column\(1),
	datad => \inst1|keypad_mod_inst|Equal0~0_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~12_combout\);

-- Location: LCCOMB_X49_Y5_N8
\inst1|keypad_mod_inst|tmp_out_keys~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~14_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(0)) # ((!\GPIO_0~combout\(0) & \inst1|keypad_mod_inst|tmp_out_keys~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(0),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(0),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~12_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~14_combout\);

-- Location: LCFF_X49_Y5_N9
\inst1|keypad_mod_inst|tmp_out_keys[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~14_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(0));

-- Location: LCCOMB_X48_Y4_N4
\inst1|keypad_mod_inst|out_keys[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|out_keys[0]~feeder_combout\ = \inst1|keypad_mod_inst|tmp_out_keys\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|keypad_mod_inst|tmp_out_keys\(0),
	combout => \inst1|keypad_mod_inst|out_keys[0]~feeder_combout\);

-- Location: LCFF_X48_Y4_N5
\inst1|keypad_mod_inst|out_keys[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|out_keys[0]~feeder_combout\,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(0));

-- Location: LCCOMB_X49_Y5_N30
\inst1|keypad_mod_inst|tmp_out_keys~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~15_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(2)) # ((!\GPIO_0~combout\(2) & \inst1|keypad_mod_inst|tmp_out_keys~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(2),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(2),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~12_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~15_combout\);

-- Location: LCFF_X49_Y5_N31
\inst1|keypad_mod_inst|tmp_out_keys[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~15_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(2));

-- Location: LCCOMB_X48_Y4_N14
\inst1|keypad_mod_inst|out_keys[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|out_keys[2]~feeder_combout\ = \inst1|keypad_mod_inst|tmp_out_keys\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|keypad_mod_inst|tmp_out_keys\(2),
	combout => \inst1|keypad_mod_inst|out_keys[2]~feeder_combout\);

-- Location: LCFF_X48_Y4_N15
\inst1|keypad_mod_inst|out_keys[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|out_keys[2]~feeder_combout\,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(2));

-- Location: LCCOMB_X49_Y5_N0
\inst1|keypad_mod_inst|tmp_out_keys~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~16_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(1)) # ((!\GPIO_0~combout\(1) & \inst1|keypad_mod_inst|tmp_out_keys~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(1),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(1),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~12_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~16_combout\);

-- Location: LCFF_X49_Y5_N1
\inst1|keypad_mod_inst|tmp_out_keys[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~16_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(1));

-- Location: LCCOMB_X48_Y4_N12
\inst1|keypad_mod_inst|out_keys[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|out_keys[1]~feeder_combout\ = \inst1|keypad_mod_inst|tmp_out_keys\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|keypad_mod_inst|tmp_out_keys\(1),
	combout => \inst1|keypad_mod_inst|out_keys[1]~feeder_combout\);

-- Location: LCFF_X48_Y4_N13
\inst1|keypad_mod_inst|out_keys[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|out_keys[1]~feeder_combout\,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(1));

-- Location: LCCOMB_X48_Y4_N2
\inst1|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal7~0_combout\ = (!\inst1|keypad_mod_inst|out_keys\(0) & (!\inst1|keypad_mod_inst|out_keys\(2) & !\inst1|keypad_mod_inst|out_keys\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|out_keys\(0),
	datac => \inst1|keypad_mod_inst|out_keys\(2),
	datad => \inst1|keypad_mod_inst|out_keys\(1),
	combout => \inst1|Equal7~0_combout\);

-- Location: LCCOMB_X49_Y4_N14
\inst1|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = (!\inst1|keypad_mod_inst|out_keys\(6) & (!\inst1|keypad_mod_inst|out_keys\(5) & \inst1|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|out_keys\(6),
	datac => \inst1|keypad_mod_inst|out_keys\(5),
	datad => \inst1|Equal7~0_combout\,
	combout => \inst1|Equal5~0_combout\);

-- Location: LCCOMB_X49_Y5_N22
\inst1|keypad_mod_inst|tmp_out_keys~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~19_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(15)) # ((!\GPIO_0~combout\(3) & \inst1|keypad_mod_inst|tmp_out_keys~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(3),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(15),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~1_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~19_combout\);

-- Location: LCFF_X49_Y5_N23
\inst1|keypad_mod_inst|tmp_out_keys[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~19_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(15));

-- Location: LCFF_X49_Y4_N13
\inst1|keypad_mod_inst|out_keys[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(15),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(15));

-- Location: LCCOMB_X49_Y4_N26
\inst1|Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal10~1_combout\ = (\inst1|Equal6~2_combout\ & (\inst1|Equal15~0_combout\ & (\inst1|Equal5~0_combout\ & !\inst1|keypad_mod_inst|out_keys\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~2_combout\,
	datab => \inst1|Equal15~0_combout\,
	datac => \inst1|Equal5~0_combout\,
	datad => \inst1|keypad_mod_inst|out_keys\(15),
	combout => \inst1|Equal10~1_combout\);

-- Location: LCCOMB_X49_Y5_N26
\inst1|keypad_mod_inst|tmp_out_keys~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~9_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(10)) # ((!\GPIO_0~combout\(2) & \inst1|keypad_mod_inst|tmp_out_keys~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(2),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(10),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~5_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~9_combout\);

-- Location: LCFF_X49_Y5_N27
\inst1|keypad_mod_inst|tmp_out_keys[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~9_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(10));

-- Location: LCFF_X49_Y4_N31
\inst1|keypad_mod_inst|out_keys[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(10),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(10));

-- Location: LCCOMB_X50_Y4_N16
\inst1|Equal17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal17~1_combout\ = (\inst1|keypad_mod_inst|out_keys\(13)) # ((\inst1|Equal17~0_combout\) # ((\inst1|keypad_mod_inst|out_keys\(10)) # (!\inst1|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(13),
	datab => \inst1|Equal17~0_combout\,
	datac => \inst1|Equal10~1_combout\,
	datad => \inst1|keypad_mod_inst|out_keys\(10),
	combout => \inst1|Equal17~1_combout\);

-- Location: LCCOMB_X49_Y4_N22
\inst1|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal10~0_combout\ = (!\inst1|keypad_mod_inst|out_keys\(12) & (!\inst1|keypad_mod_inst|out_keys\(9) & !\inst1|keypad_mod_inst|out_keys\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|out_keys\(12),
	datac => \inst1|keypad_mod_inst|out_keys\(9),
	datad => \inst1|keypad_mod_inst|out_keys\(11),
	combout => \inst1|Equal10~0_combout\);

-- Location: LCCOMB_X50_Y4_N26
\inst1|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal11~0_combout\ = (\inst1|keypad_mod_inst|out_keys\(13) & (\inst1|Equal10~0_combout\ & (!\inst1|keypad_mod_inst|out_keys\(10) & \inst1|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(13),
	datab => \inst1|Equal10~0_combout\,
	datac => \inst1|keypad_mod_inst|out_keys\(10),
	datad => \inst1|Equal10~1_combout\,
	combout => \inst1|Equal11~0_combout\);

-- Location: LCCOMB_X49_Y5_N24
\inst1|keypad_mod_inst|tmp_out_keys~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~2_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(14)) # ((!\GPIO_0~combout\(2) & \inst1|keypad_mod_inst|tmp_out_keys~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(2),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(14),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~1_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~2_combout\);

-- Location: LCFF_X49_Y5_N25
\inst1|keypad_mod_inst|tmp_out_keys[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~2_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(14));

-- Location: LCFF_X49_Y4_N25
\inst1|keypad_mod_inst|out_keys[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(14),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(14));

-- Location: LCCOMB_X49_Y5_N20
\inst1|keypad_mod_inst|tmp_out_keys~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~8_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(13)) # ((!\GPIO_0~combout\(1) & \inst1|keypad_mod_inst|tmp_out_keys~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(1),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(13),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~1_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~8_combout\);

-- Location: LCFF_X49_Y5_N21
\inst1|keypad_mod_inst|tmp_out_keys[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~8_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(13));

-- Location: LCFF_X49_Y4_N9
\inst1|keypad_mod_inst|out_keys[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(13),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(13));

-- Location: LCCOMB_X49_Y4_N8
\inst1|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal8~0_combout\ = (!\inst1|keypad_mod_inst|out_keys\(10) & (!\inst1|keypad_mod_inst|out_keys\(13) & \inst1|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(10),
	datac => \inst1|keypad_mod_inst|out_keys\(13),
	datad => \inst1|Equal10~0_combout\,
	combout => \inst1|Equal8~0_combout\);

-- Location: LCCOMB_X49_Y4_N12
\inst1|Equal13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal13~0_combout\ = (\inst1|Equal6~2_combout\ & (\inst1|Equal5~0_combout\ & (!\inst1|keypad_mod_inst|out_keys\(15) & \inst1|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal6~2_combout\,
	datab => \inst1|Equal5~0_combout\,
	datac => \inst1|keypad_mod_inst|out_keys\(15),
	datad => \inst1|Equal8~0_combout\,
	combout => \inst1|Equal13~0_combout\);

-- Location: LCCOMB_X50_Y4_N18
\inst1|Equal16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal16~0_combout\ = (\inst1|keypad_mod_inst|out_keys\(8)) # ((\inst1|keypad_mod_inst|out_keys\(7)) # ((!\inst1|Equal13~0_combout\) # (!\inst1|keypad_mod_inst|out_keys\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(8),
	datab => \inst1|keypad_mod_inst|out_keys\(7),
	datac => \inst1|keypad_mod_inst|out_keys\(14),
	datad => \inst1|Equal13~0_combout\,
	combout => \inst1|Equal16~0_combout\);

-- Location: LCCOMB_X50_Y3_N8
\inst1|WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideNor0~3_combout\ = (\inst1|Equal16~0_combout\ & !\inst1|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal16~0_combout\,
	datad => \inst1|Equal11~0_combout\,
	combout => \inst1|WideNor0~3_combout\);

-- Location: LCCOMB_X49_Y4_N24
\inst1|Equal13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal13~1_combout\ = (\inst1|keypad_mod_inst|out_keys\(7) & (!\inst1|keypad_mod_inst|out_keys\(8) & (!\inst1|keypad_mod_inst|out_keys\(14) & \inst1|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(7),
	datab => \inst1|keypad_mod_inst|out_keys\(8),
	datac => \inst1|keypad_mod_inst|out_keys\(14),
	datad => \inst1|Equal13~0_combout\,
	combout => \inst1|Equal13~1_combout\);

-- Location: LCCOMB_X49_Y4_N10
\inst1|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal14~0_combout\ = (!\inst1|keypad_mod_inst|out_keys\(13) & (!\inst1|keypad_mod_inst|out_keys\(10) & (!\inst1|keypad_mod_inst|out_keys\(12) & \inst1|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(13),
	datab => \inst1|keypad_mod_inst|out_keys\(10),
	datac => \inst1|keypad_mod_inst|out_keys\(12),
	datad => \inst1|Equal10~1_combout\,
	combout => \inst1|Equal14~0_combout\);

-- Location: LCCOMB_X49_Y4_N2
\inst1|Equal14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal14~1_combout\ = (\inst1|keypad_mod_inst|out_keys\(11) & (!\inst1|keypad_mod_inst|out_keys\(9) & \inst1|Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|out_keys\(11),
	datac => \inst1|keypad_mod_inst|out_keys\(9),
	datad => \inst1|Equal14~0_combout\,
	combout => \inst1|Equal14~1_combout\);

-- Location: LCCOMB_X49_Y5_N14
\inst1|keypad_mod_inst|tmp_out_keys~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~13_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(3)) # ((!\GPIO_0~combout\(3) & \inst1|keypad_mod_inst|tmp_out_keys~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(3),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(3),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~12_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~13_combout\);

-- Location: LCFF_X49_Y5_N15
\inst1|keypad_mod_inst|tmp_out_keys[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~13_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(3));

-- Location: LCFF_X49_Y4_N7
\inst1|keypad_mod_inst|out_keys[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(3),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(3));

-- Location: LCCOMB_X49_Y5_N28
\inst1|keypad_mod_inst|tmp_out_keys~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|tmp_out_keys~11_combout\ = (\inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\ & ((\inst1|keypad_mod_inst|tmp_out_keys\(4)) # ((!\GPIO_0~combout\(0) & \inst1|keypad_mod_inst|tmp_out_keys~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0~combout\(0),
	datab => \inst1|keypad_mod_inst|tmp_out_keys[14]~0_combout\,
	datac => \inst1|keypad_mod_inst|tmp_out_keys\(4),
	datad => \inst1|keypad_mod_inst|tmp_out_keys~10_combout\,
	combout => \inst1|keypad_mod_inst|tmp_out_keys~11_combout\);

-- Location: LCFF_X49_Y5_N29
\inst1|keypad_mod_inst|tmp_out_keys[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|tmp_out_keys~11_combout\,
	ena => \inst1|keypad_mod_inst|tmp_out_keys[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|tmp_out_keys\(4));

-- Location: LCFF_X49_Y4_N17
\inst1|keypad_mod_inst|out_keys[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|keypad_mod_inst|tmp_out_keys\(4),
	sload => VCC,
	ena => \inst1|keypad_mod_inst|out_keys[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|out_keys\(4));

-- Location: LCCOMB_X49_Y4_N30
\inst1|Equal15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal15~1_combout\ = (!\inst1|keypad_mod_inst|out_keys\(13) & (\inst1|Equal15~0_combout\ & (!\inst1|keypad_mod_inst|out_keys\(10) & \inst1|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(13),
	datab => \inst1|Equal15~0_combout\,
	datac => \inst1|keypad_mod_inst|out_keys\(10),
	datad => \inst1|Equal10~0_combout\,
	combout => \inst1|Equal15~1_combout\);

-- Location: LCCOMB_X50_Y4_N0
\inst1|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal5~1_combout\ = (!\inst1|keypad_mod_inst|out_keys\(15) & (\inst1|Equal15~1_combout\ & \inst1|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|out_keys\(15),
	datac => \inst1|Equal15~1_combout\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|Equal5~1_combout\);

-- Location: LCCOMB_X50_Y4_N6
\inst1|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal12~0_combout\ = (\inst1|keypad_mod_inst|out_keys\(3) & (!\inst1|keypad_mod_inst|out_keys\(4) & \inst1|Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|out_keys\(3),
	datac => \inst1|keypad_mod_inst|out_keys\(4),
	datad => \inst1|Equal5~1_combout\,
	combout => \inst1|Equal12~0_combout\);

-- Location: LCCOMB_X50_Y3_N4
\inst1|WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideNor0~0_combout\ = (!\inst1|Equal15~2_combout\ & (!\inst1|Equal13~1_combout\ & (!\inst1|Equal14~1_combout\ & !\inst1|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal15~2_combout\,
	datab => \inst1|Equal13~1_combout\,
	datac => \inst1|Equal14~1_combout\,
	datad => \inst1|Equal12~0_combout\,
	combout => \inst1|WideNor0~0_combout\);

-- Location: LCCOMB_X49_Y4_N6
\inst1|Equal6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal6~4_combout\ = (!\inst1|keypad_mod_inst|out_keys\(4) & (!\inst1|keypad_mod_inst|out_keys\(15) & (!\inst1|keypad_mod_inst|out_keys\(3) & \inst1|Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(4),
	datab => \inst1|keypad_mod_inst|out_keys\(15),
	datac => \inst1|keypad_mod_inst|out_keys\(3),
	datad => \inst1|Equal15~1_combout\,
	combout => \inst1|Equal6~4_combout\);

-- Location: LCCOMB_X49_Y4_N16
\inst1|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal2~1_combout\ = (!\inst1|keypad_mod_inst|out_keys\(5) & (!\inst1|keypad_mod_inst|out_keys\(6) & \inst1|Equal6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(5),
	datab => \inst1|keypad_mod_inst|out_keys\(6),
	datad => \inst1|Equal6~4_combout\,
	combout => \inst1|Equal2~1_combout\);

-- Location: LCCOMB_X49_Y4_N18
\inst1|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal8~1_combout\ = (!\inst1|keypad_mod_inst|out_keys\(7) & (!\inst1|keypad_mod_inst|out_keys\(14) & (\inst1|keypad_mod_inst|out_keys\(8) & \inst1|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(7),
	datab => \inst1|keypad_mod_inst|out_keys\(14),
	datac => \inst1|keypad_mod_inst|out_keys\(8),
	datad => \inst1|Equal13~0_combout\,
	combout => \inst1|Equal8~1_combout\);

-- Location: LCCOMB_X50_Y3_N2
\inst1|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector26~1_combout\ = (!\inst1|Equal8~1_combout\ & (((\inst1|keypad_mod_inst|out_keys\(0)) # (!\inst1|Equal2~1_combout\)) # (!\inst1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~0_combout\,
	datab => \inst1|keypad_mod_inst|out_keys\(0),
	datac => \inst1|Equal2~1_combout\,
	datad => \inst1|Equal8~1_combout\,
	combout => \inst1|Selector26~1_combout\);

-- Location: LCCOMB_X49_Y4_N0
\inst1|Equal10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal10~2_combout\ = (!\inst1|keypad_mod_inst|out_keys\(13) & (\inst1|Equal10~0_combout\ & (\inst1|keypad_mod_inst|out_keys\(10) & \inst1|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(13),
	datab => \inst1|Equal10~0_combout\,
	datac => \inst1|keypad_mod_inst|out_keys\(10),
	datad => \inst1|Equal10~1_combout\,
	combout => \inst1|Equal10~2_combout\);

-- Location: LCCOMB_X49_Y4_N28
\inst1|WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideNor0~1_combout\ = (!\inst1|Equal10~2_combout\ & (((\inst1|keypad_mod_inst|out_keys\(11)) # (!\inst1|Equal14~0_combout\)) # (!\inst1|keypad_mod_inst|out_keys\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(9),
	datab => \inst1|Equal10~2_combout\,
	datac => \inst1|keypad_mod_inst|out_keys\(11),
	datad => \inst1|Equal14~0_combout\,
	combout => \inst1|WideNor0~1_combout\);

-- Location: LCCOMB_X49_Y3_N30
\inst1|Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal6~3_combout\ = (!\inst1|keypad_mod_inst|out_keys\(6) & (\inst1|Equal7~0_combout\ & (\inst1|Equal6~4_combout\ & \inst1|keypad_mod_inst|out_keys\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(6),
	datab => \inst1|Equal7~0_combout\,
	datac => \inst1|Equal6~4_combout\,
	datad => \inst1|keypad_mod_inst|out_keys\(5),
	combout => \inst1|Equal6~3_combout\);

-- Location: LCCOMB_X50_Y4_N10
\inst1|Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal5~2_combout\ = (!\inst1|keypad_mod_inst|out_keys\(3) & (\inst1|keypad_mod_inst|out_keys\(4) & \inst1|Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|out_keys\(3),
	datac => \inst1|keypad_mod_inst|out_keys\(4),
	datad => \inst1|Equal5~1_combout\,
	combout => \inst1|Equal5~2_combout\);

-- Location: LCCOMB_X50_Y3_N12
\inst1|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector26~0_combout\ = (!\inst1|Equal6~3_combout\ & (!\inst1|Equal5~2_combout\ & ((!\inst1|Equal2~1_combout\) # (!\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal2~1_combout\,
	datac => \inst1|Equal6~3_combout\,
	datad => \inst1|Equal5~2_combout\,
	combout => \inst1|Selector26~0_combout\);

-- Location: LCCOMB_X50_Y3_N28
\inst1|WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideNor0~2_combout\ = (\inst1|Selector27~4_combout\ & (\inst1|Selector26~1_combout\ & (\inst1|WideNor0~1_combout\ & \inst1|Selector26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector27~4_combout\,
	datab => \inst1|Selector26~1_combout\,
	datac => \inst1|WideNor0~1_combout\,
	datad => \inst1|Selector26~0_combout\,
	combout => \inst1|WideNor0~2_combout\);

-- Location: LCCOMB_X50_Y3_N18
\inst1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst1|WideNor0~0_combout\ & (((!\inst1|WideNor0~2_combout\) # (!\inst1|WideNor0~3_combout\)) # (!\inst1|Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal17~1_combout\,
	datab => \inst1|WideNor0~3_combout\,
	datac => \inst1|WideNor0~0_combout\,
	datad => \inst1|WideNor0~2_combout\,
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X51_Y4_N18
\inst1|number_not_sel~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|number_not_sel~3_combout\ = (\inst1|number_not_sel~2_combout\ & ((\inst1|Equal11~0_combout\) # ((!\inst1|WideOr0~0_combout\) # (!\inst1|number_not_sel~regout\)))) # (!\inst1|number_not_sel~2_combout\ & (((\inst1|number_not_sel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|number_not_sel~2_combout\,
	datab => \inst1|Equal11~0_combout\,
	datac => \inst1|number_not_sel~regout\,
	datad => \inst1|WideOr0~0_combout\,
	combout => \inst1|number_not_sel~3_combout\);

-- Location: LCFF_X51_Y4_N19
\inst1|number_not_sel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|number_not_sel~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|number_not_sel~regout\);

-- Location: LCCOMB_X53_Y3_N6
\inst1|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~0_combout\ = (\inst1|digit_counter\(1)) # ((\inst1|digit_counter\(0)) # (\inst1|digit_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digit_counter\(1),
	datab => \inst1|digit_counter\(0),
	datad => \inst1|digit_counter\(2),
	combout => \inst1|LessThan2~0_combout\);

-- Location: LCCOMB_X53_Y3_N0
\inst1|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~1_combout\ = \inst1|digit_counter\(0) $ (\inst1|digit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|digit_counter\(0),
	datad => \inst1|digit_counter\(1),
	combout => \inst1|Add1~1_combout\);

-- Location: LCCOMB_X47_Y4_N0
\inst1|cont[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[0]~34_combout\ = \inst1|cont\(0) $ (VCC)
-- \inst1|cont[0]~35\ = CARRY(\inst1|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(0),
	datad => VCC,
	combout => \inst1|cont[0]~34_combout\,
	cout => \inst1|cont[0]~35\);

-- Location: LCCOMB_X46_Y4_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X47_Y4_N18
\inst1|cont[9]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[9]~52_combout\ = (\inst1|cont\(9) & (!\inst1|cont[8]~51\)) # (!\inst1|cont\(9) & ((\inst1|cont[8]~51\) # (GND)))
-- \inst1|cont[9]~53\ = CARRY((!\inst1|cont[8]~51\) # (!\inst1|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(9),
	datad => VCC,
	cin => \inst1|cont[8]~51\,
	combout => \inst1|cont[9]~52_combout\,
	cout => \inst1|cont[9]~53\);

-- Location: LCCOMB_X47_Y4_N20
\inst1|cont[10]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[10]~54_combout\ = (\inst1|cont\(10) & (\inst1|cont[9]~53\ $ (GND))) # (!\inst1|cont\(10) & (!\inst1|cont[9]~53\ & VCC))
-- \inst1|cont[10]~55\ = CARRY((\inst1|cont\(10) & !\inst1|cont[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(10),
	datad => VCC,
	cin => \inst1|cont[9]~53\,
	combout => \inst1|cont[10]~54_combout\,
	cout => \inst1|cont[10]~55\);

-- Location: LCCOMB_X47_Y4_N22
\inst1|cont[11]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[11]~56_combout\ = (\inst1|cont\(11) & (!\inst1|cont[10]~55\)) # (!\inst1|cont\(11) & ((\inst1|cont[10]~55\) # (GND)))
-- \inst1|cont[11]~57\ = CARRY((!\inst1|cont[10]~55\) # (!\inst1|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(11),
	datad => VCC,
	cin => \inst1|cont[10]~55\,
	combout => \inst1|cont[11]~56_combout\,
	cout => \inst1|cont[11]~57\);

-- Location: LCFF_X47_Y4_N23
\inst1|cont[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[11]~56_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(11));

-- Location: LCCOMB_X47_Y4_N26
\inst1|cont[13]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[13]~60_combout\ = (\inst1|cont\(13) & (!\inst1|cont[12]~59\)) # (!\inst1|cont\(13) & ((\inst1|cont[12]~59\) # (GND)))
-- \inst1|cont[13]~61\ = CARRY((!\inst1|cont[12]~59\) # (!\inst1|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(13),
	datad => VCC,
	cin => \inst1|cont[12]~59\,
	combout => \inst1|cont[13]~60_combout\,
	cout => \inst1|cont[13]~61\);

-- Location: LCFF_X47_Y4_N27
\inst1|cont[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[13]~60_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(13));

-- Location: LCCOMB_X47_Y4_N28
\inst1|cont[14]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[14]~62_combout\ = (\inst1|cont\(14) & (\inst1|cont[13]~61\ $ (GND))) # (!\inst1|cont\(14) & (!\inst1|cont[13]~61\ & VCC))
-- \inst1|cont[14]~63\ = CARRY((\inst1|cont\(14) & !\inst1|cont[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(14),
	datad => VCC,
	cin => \inst1|cont[13]~61\,
	combout => \inst1|cont[14]~62_combout\,
	cout => \inst1|cont[14]~63\);

-- Location: LCFF_X47_Y4_N29
\inst1|cont[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[14]~62_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(14));

-- Location: LCCOMB_X47_Y4_N30
\inst1|cont[15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[15]~64_combout\ = (\inst1|cont\(15) & (!\inst1|cont[14]~63\)) # (!\inst1|cont\(15) & ((\inst1|cont[14]~63\) # (GND)))
-- \inst1|cont[15]~65\ = CARRY((!\inst1|cont[14]~63\) # (!\inst1|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(15),
	datad => VCC,
	cin => \inst1|cont[14]~63\,
	combout => \inst1|cont[15]~64_combout\,
	cout => \inst1|cont[15]~65\);

-- Location: LCFF_X47_Y4_N31
\inst1|cont[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[15]~64_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(15));

-- Location: LCCOMB_X47_Y3_N0
\inst1|cont[16]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[16]~66_combout\ = (\inst1|cont\(16) & (\inst1|cont[15]~65\ $ (GND))) # (!\inst1|cont\(16) & (!\inst1|cont[15]~65\ & VCC))
-- \inst1|cont[16]~67\ = CARRY((\inst1|cont\(16) & !\inst1|cont[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(16),
	datad => VCC,
	cin => \inst1|cont[15]~65\,
	combout => \inst1|cont[16]~66_combout\,
	cout => \inst1|cont[16]~67\);

-- Location: LCFF_X47_Y3_N1
\inst1|cont[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[16]~66_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(16));

-- Location: LCCOMB_X47_Y3_N2
\inst1|cont[17]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[17]~68_combout\ = (\inst1|cont\(17) & (!\inst1|cont[16]~67\)) # (!\inst1|cont\(17) & ((\inst1|cont[16]~67\) # (GND)))
-- \inst1|cont[17]~69\ = CARRY((!\inst1|cont[16]~67\) # (!\inst1|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(17),
	datad => VCC,
	cin => \inst1|cont[16]~67\,
	combout => \inst1|cont[17]~68_combout\,
	cout => \inst1|cont[17]~69\);

-- Location: LCFF_X47_Y3_N3
\inst1|cont[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[17]~68_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(17));

-- Location: LCCOMB_X47_Y3_N4
\inst1|cont[18]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[18]~70_combout\ = (\inst1|cont\(18) & (\inst1|cont[17]~69\ $ (GND))) # (!\inst1|cont\(18) & (!\inst1|cont[17]~69\ & VCC))
-- \inst1|cont[18]~71\ = CARRY((\inst1|cont\(18) & !\inst1|cont[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(18),
	datad => VCC,
	cin => \inst1|cont[17]~69\,
	combout => \inst1|cont[18]~70_combout\,
	cout => \inst1|cont[18]~71\);

-- Location: LCFF_X47_Y3_N5
\inst1|cont[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[18]~70_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(18));

-- Location: LCCOMB_X47_Y3_N8
\inst1|cont[20]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[20]~74_combout\ = (\inst1|cont\(20) & (\inst1|cont[19]~73\ $ (GND))) # (!\inst1|cont\(20) & (!\inst1|cont[19]~73\ & VCC))
-- \inst1|cont[20]~75\ = CARRY((\inst1|cont\(20) & !\inst1|cont[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(20),
	datad => VCC,
	cin => \inst1|cont[19]~73\,
	combout => \inst1|cont[20]~74_combout\,
	cout => \inst1|cont[20]~75\);

-- Location: LCFF_X47_Y3_N9
\inst1|cont[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[20]~74_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(20));

-- Location: LCCOMB_X47_Y3_N14
\inst1|cont[23]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[23]~80_combout\ = (\inst1|cont\(23) & (!\inst1|cont[22]~79\)) # (!\inst1|cont\(23) & ((\inst1|cont[22]~79\) # (GND)))
-- \inst1|cont[23]~81\ = CARRY((!\inst1|cont[22]~79\) # (!\inst1|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(23),
	datad => VCC,
	cin => \inst1|cont[22]~79\,
	combout => \inst1|cont[23]~80_combout\,
	cout => \inst1|cont[23]~81\);

-- Location: LCFF_X47_Y3_N15
\inst1|cont[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[23]~80_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(23));

-- Location: LCCOMB_X47_Y3_N16
\inst1|cont[24]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[24]~82_combout\ = (\inst1|cont\(24) & (\inst1|cont[23]~81\ $ (GND))) # (!\inst1|cont\(24) & (!\inst1|cont[23]~81\ & VCC))
-- \inst1|cont[24]~83\ = CARRY((\inst1|cont\(24) & !\inst1|cont[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(24),
	datad => VCC,
	cin => \inst1|cont[23]~81\,
	combout => \inst1|cont[24]~82_combout\,
	cout => \inst1|cont[24]~83\);

-- Location: LCCOMB_X47_Y3_N18
\inst1|cont[25]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[25]~84_combout\ = (\inst1|cont\(25) & (!\inst1|cont[24]~83\)) # (!\inst1|cont\(25) & ((\inst1|cont[24]~83\) # (GND)))
-- \inst1|cont[25]~85\ = CARRY((!\inst1|cont[24]~83\) # (!\inst1|cont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(25),
	datad => VCC,
	cin => \inst1|cont[24]~83\,
	combout => \inst1|cont[25]~84_combout\,
	cout => \inst1|cont[25]~85\);

-- Location: LCFF_X47_Y3_N19
\inst1|cont[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[25]~84_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(25));

-- Location: LCCOMB_X47_Y3_N20
\inst1|cont[26]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[26]~86_combout\ = (\inst1|cont\(26) & (\inst1|cont[25]~85\ $ (GND))) # (!\inst1|cont\(26) & (!\inst1|cont[25]~85\ & VCC))
-- \inst1|cont[26]~87\ = CARRY((\inst1|cont\(26) & !\inst1|cont[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(26),
	datad => VCC,
	cin => \inst1|cont[25]~85\,
	combout => \inst1|cont[26]~86_combout\,
	cout => \inst1|cont[26]~87\);

-- Location: LCCOMB_X47_Y3_N22
\inst1|cont[27]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[27]~88_combout\ = (\inst1|cont\(27) & (!\inst1|cont[26]~87\)) # (!\inst1|cont\(27) & ((\inst1|cont[26]~87\) # (GND)))
-- \inst1|cont[27]~89\ = CARRY((!\inst1|cont[26]~87\) # (!\inst1|cont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(27),
	datad => VCC,
	cin => \inst1|cont[26]~87\,
	combout => \inst1|cont[27]~88_combout\,
	cout => \inst1|cont[27]~89\);

-- Location: LCFF_X47_Y3_N23
\inst1|cont[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[27]~88_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(27));

-- Location: LCCOMB_X47_Y3_N24
\inst1|cont[28]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[28]~90_combout\ = (\inst1|cont\(28) & (\inst1|cont[27]~89\ $ (GND))) # (!\inst1|cont\(28) & (!\inst1|cont[27]~89\ & VCC))
-- \inst1|cont[28]~91\ = CARRY((\inst1|cont\(28) & !\inst1|cont[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(28),
	datad => VCC,
	cin => \inst1|cont[27]~89\,
	combout => \inst1|cont[28]~90_combout\,
	cout => \inst1|cont[28]~91\);

-- Location: LCCOMB_X47_Y3_N26
\inst1|cont[29]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[29]~92_combout\ = (\inst1|cont\(29) & (!\inst1|cont[28]~91\)) # (!\inst1|cont\(29) & ((\inst1|cont[28]~91\) # (GND)))
-- \inst1|cont[29]~93\ = CARRY((!\inst1|cont[28]~91\) # (!\inst1|cont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(29),
	datad => VCC,
	cin => \inst1|cont[28]~91\,
	combout => \inst1|cont[29]~92_combout\,
	cout => \inst1|cont[29]~93\);

-- Location: LCFF_X47_Y3_N27
\inst1|cont[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[29]~92_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(29));

-- Location: LCCOMB_X47_Y3_N28
\inst1|cont[30]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[30]~94_combout\ = (\inst1|cont\(30) & (\inst1|cont[29]~93\ $ (GND))) # (!\inst1|cont\(30) & (!\inst1|cont[29]~93\ & VCC))
-- \inst1|cont[30]~95\ = CARRY((\inst1|cont\(30) & !\inst1|cont[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(30),
	datad => VCC,
	cin => \inst1|cont[29]~93\,
	combout => \inst1|cont[30]~94_combout\,
	cout => \inst1|cont[30]~95\);

-- Location: LCFF_X47_Y3_N29
\inst1|cont[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[30]~94_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(30));

-- Location: LCCOMB_X47_Y3_N30
\inst1|cont[31]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[31]~96_combout\ = \inst1|cont[30]~95\ $ (\inst1|cont\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cont\(31),
	cin => \inst1|cont[30]~95\,
	combout => \inst1|cont[31]~96_combout\);

-- Location: LCFF_X47_Y3_N31
\inst1|cont[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[31]~96_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(31));

-- Location: LCCOMB_X48_Y3_N10
\inst1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = ((\inst1|keypad_mod_inst|out_keys\(6)) # ((\inst1|keypad_mod_inst|out_keys\(5)) # (!\inst1|Equal6~4_combout\))) # (!\inst1|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal7~0_combout\,
	datab => \inst1|keypad_mod_inst|out_keys\(6),
	datac => \inst1|Equal6~4_combout\,
	datad => \inst1|keypad_mod_inst|out_keys\(5),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y3_N8
\inst1|cont[4]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[4]~98_combout\ = ((!\inst1|cont\(31) & ((!\inst1|LessThan0~3_combout\) # (!\inst1|LessThan0~8_combout\)))) # (!\inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~8_combout\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|cont\(31),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|cont[4]~98_combout\);

-- Location: LCFF_X47_Y4_N1
\inst1|cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[0]~34_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(0));

-- Location: LCCOMB_X47_Y4_N2
\inst1|cont[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[1]~36_combout\ = (\inst1|cont\(1) & (!\inst1|cont[0]~35\)) # (!\inst1|cont\(1) & ((\inst1|cont[0]~35\) # (GND)))
-- \inst1|cont[1]~37\ = CARRY((!\inst1|cont[0]~35\) # (!\inst1|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(1),
	datad => VCC,
	cin => \inst1|cont[0]~35\,
	combout => \inst1|cont[1]~36_combout\,
	cout => \inst1|cont[1]~37\);

-- Location: LCFF_X47_Y4_N3
\inst1|cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[1]~36_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(1));

-- Location: LCCOMB_X47_Y4_N4
\inst1|cont[2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[2]~38_combout\ = (\inst1|cont\(2) & (\inst1|cont[1]~37\ $ (GND))) # (!\inst1|cont\(2) & (!\inst1|cont[1]~37\ & VCC))
-- \inst1|cont[2]~39\ = CARRY((\inst1|cont\(2) & !\inst1|cont[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(2),
	datad => VCC,
	cin => \inst1|cont[1]~37\,
	combout => \inst1|cont[2]~38_combout\,
	cout => \inst1|cont[2]~39\);

-- Location: LCFF_X47_Y4_N5
\inst1|cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[2]~38_combout\,
	sdata => \inst1|Equal0~0_combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(2));

-- Location: LCCOMB_X47_Y4_N6
\inst1|cont[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[3]~40_combout\ = (\inst1|cont\(3) & (!\inst1|cont[2]~39\)) # (!\inst1|cont\(3) & ((\inst1|cont[2]~39\) # (GND)))
-- \inst1|cont[3]~41\ = CARRY((!\inst1|cont[2]~39\) # (!\inst1|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(3),
	datad => VCC,
	cin => \inst1|cont[2]~39\,
	combout => \inst1|cont[3]~40_combout\,
	cout => \inst1|cont[3]~41\);

-- Location: LCCOMB_X47_Y4_N8
\inst1|cont[4]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[4]~42_combout\ = (\inst1|cont\(4) & (\inst1|cont[3]~41\ $ (GND))) # (!\inst1|cont\(4) & (!\inst1|cont[3]~41\ & VCC))
-- \inst1|cont[4]~43\ = CARRY((\inst1|cont\(4) & !\inst1|cont[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(4),
	datad => VCC,
	cin => \inst1|cont[3]~41\,
	combout => \inst1|cont[4]~42_combout\,
	cout => \inst1|cont[4]~43\);

-- Location: LCFF_X47_Y4_N9
\inst1|cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[4]~42_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(4));

-- Location: LCCOMB_X47_Y4_N10
\inst1|cont[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[5]~44_combout\ = (\inst1|cont\(5) & (!\inst1|cont[4]~43\)) # (!\inst1|cont\(5) & ((\inst1|cont[4]~43\) # (GND)))
-- \inst1|cont[5]~45\ = CARRY((!\inst1|cont[4]~43\) # (!\inst1|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(5),
	datad => VCC,
	cin => \inst1|cont[4]~43\,
	combout => \inst1|cont[5]~44_combout\,
	cout => \inst1|cont[5]~45\);

-- Location: LCCOMB_X47_Y4_N14
\inst1|cont[7]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[7]~48_combout\ = (\inst1|cont\(7) & (!\inst1|cont[6]~47\)) # (!\inst1|cont\(7) & ((\inst1|cont[6]~47\) # (GND)))
-- \inst1|cont[7]~49\ = CARRY((!\inst1|cont[6]~47\) # (!\inst1|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(7),
	datad => VCC,
	cin => \inst1|cont[6]~47\,
	combout => \inst1|cont[7]~48_combout\,
	cout => \inst1|cont[7]~49\);

-- Location: LCFF_X47_Y4_N15
\inst1|cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[7]~48_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(7));

-- Location: LCCOMB_X47_Y4_N16
\inst1|cont[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[8]~50_combout\ = (\inst1|cont\(8) & (\inst1|cont[7]~49\ $ (GND))) # (!\inst1|cont\(8) & (!\inst1|cont[7]~49\ & VCC))
-- \inst1|cont[8]~51\ = CARRY((\inst1|cont\(8) & !\inst1|cont[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(8),
	datad => VCC,
	cin => \inst1|cont[7]~49\,
	combout => \inst1|cont[8]~50_combout\,
	cout => \inst1|cont[8]~51\);

-- Location: LCFF_X47_Y4_N19
\inst1|cont[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[9]~52_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(9));

-- Location: LCFF_X47_Y4_N21
\inst1|cont[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[10]~54_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(10));

-- Location: LCFF_X47_Y4_N17
\inst1|cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[8]~50_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(8));

-- Location: LCCOMB_X48_Y4_N0
\inst1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|cont\(7) & (!\inst1|cont\(9) & (!\inst1|cont\(10) & !\inst1|cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(7),
	datab => \inst1|cont\(9),
	datac => \inst1|cont\(10),
	datad => \inst1|cont\(8),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCFF_X47_Y4_N7
\inst1|cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[3]~40_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(3));

-- Location: LCFF_X47_Y4_N11
\inst1|cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[5]~44_combout\,
	sdata => \inst1|Equal0~0_combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(5));

-- Location: LCCOMB_X48_Y4_N8
\inst1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = ((!\inst1|cont\(4) & (!\inst1|cont\(3) & !\inst1|cont\(2)))) # (!\inst1|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(4),
	datab => \inst1|cont\(3),
	datac => \inst1|cont\(2),
	datad => \inst1|cont\(5),
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X48_Y4_N10
\inst1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (!\inst1|cont\(12) & (!\inst1|cont\(13) & (!\inst1|cont\(14) & !\inst1|cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(12),
	datab => \inst1|cont\(13),
	datac => \inst1|cont\(14),
	datad => \inst1|cont\(11),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y4_N22
\inst1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|LessThan0~1_combout\ & ((\inst1|LessThan0~2_combout\) # (!\inst1|cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(6),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|LessThan0~2_combout\,
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCFF_X47_Y3_N25
\inst1|cont[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[28]~90_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(28));

-- Location: LCCOMB_X48_Y3_N18
\inst1|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_combout\ = (!\inst1|cont\(29) & (!\inst1|cont\(28) & (!\inst1|cont\(30) & !\inst1|cont\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(29),
	datab => \inst1|cont\(28),
	datac => \inst1|cont\(30),
	datad => \inst1|cont\(27),
	combout => \inst1|LessThan0~7_combout\);

-- Location: LCCOMB_X48_Y3_N20
\inst1|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = (!\inst1|cont\(15) & (!\inst1|cont\(16) & (!\inst1|cont\(18) & !\inst1|cont\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(15),
	datab => \inst1|cont\(16),
	datac => \inst1|cont\(18),
	datad => \inst1|cont\(17),
	combout => \inst1|LessThan0~4_combout\);

-- Location: LCFF_X47_Y3_N21
\inst1|cont[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[26]~86_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(26));

-- Location: LCFF_X47_Y3_N17
\inst1|cont[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|cont[24]~82_combout\,
	sdata => \~GND~combout\,
	sload => \inst1|cont[4]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(24));

-- Location: LCCOMB_X48_Y3_N28
\inst1|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~6_combout\ = (!\inst1|cont\(23) & (!\inst1|cont\(25) & (!\inst1|cont\(26) & !\inst1|cont\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(23),
	datab => \inst1|cont\(25),
	datac => \inst1|cont\(26),
	datad => \inst1|cont\(24),
	combout => \inst1|LessThan0~6_combout\);

-- Location: LCCOMB_X48_Y3_N12
\inst1|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~8_combout\ = (\inst1|LessThan0~5_combout\ & (\inst1|LessThan0~7_combout\ & (\inst1|LessThan0~4_combout\ & \inst1|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~5_combout\,
	datab => \inst1|LessThan0~7_combout\,
	datac => \inst1|LessThan0~4_combout\,
	datad => \inst1|LessThan0~6_combout\,
	combout => \inst1|LessThan0~8_combout\);

-- Location: LCCOMB_X48_Y3_N2
\inst1|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~9_combout\ = (\inst1|cont\(31)) # ((\inst1|LessThan0~3_combout\ & \inst1|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|cont\(31),
	datad => \inst1|LessThan0~8_combout\,
	combout => \inst1|LessThan0~9_combout\);

-- Location: LCCOMB_X48_Y3_N0
\inst1|debounced_keypad_pressed~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|debounced_keypad_pressed~0_combout\ = (\inst1|Equal0~0_combout\ & ((\inst1|debounced_keypad_pressed~regout\) # (!\inst1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~9_combout\,
	datac => \inst1|debounced_keypad_pressed~regout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|debounced_keypad_pressed~0_combout\);

-- Location: LCFF_X48_Y3_N1
\inst1|debounced_keypad_pressed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|debounced_keypad_pressed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|debounced_keypad_pressed~regout\);

-- Location: LCCOMB_X50_Y4_N24
\inst1|keypad_mod_inst|data_valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keypad_mod_inst|data_valid~0_combout\ = (!\inst1|keypad_mod_inst|i_column\(31) & (!\inst1|keypad_mod_inst|LessThan0~9_combout\ & !\inst1|keypad_mod_inst|i_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keypad_mod_inst|i_column\(31),
	datac => \inst1|keypad_mod_inst|LessThan0~9_combout\,
	datad => \inst1|keypad_mod_inst|i_column\(0),
	combout => \inst1|keypad_mod_inst|data_valid~0_combout\);

-- Location: LCFF_X50_Y4_N25
\inst1|keypad_mod_inst|data_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|keypad_mod_inst|data_valid~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keypad_mod_inst|data_valid~regout\);

-- Location: LCCOMB_X51_Y4_N30
\inst1|next_page~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|next_page~0_combout\ = (!\inst1|button_pressed~regout\ & (\inst1|debounced_keypad_pressed~regout\ & \inst1|keypad_mod_inst|data_valid~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|button_pressed~regout\,
	datac => \inst1|debounced_keypad_pressed~regout\,
	datad => \inst1|keypad_mod_inst|data_valid~regout\,
	combout => \inst1|next_page~0_combout\);

-- Location: LCCOMB_X54_Y3_N10
\inst1|digit_counter_BCD[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|digit_counter_BCD[2]~0_combout\ = (\SW~combout\(0) & (\inst1|next_page~0_combout\ & !\inst1|Equal17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst1|next_page~0_combout\,
	datad => \inst1|Equal17~1_combout\,
	combout => \inst1|digit_counter_BCD[2]~0_combout\);

-- Location: LCFF_X54_Y3_N11
\inst1|digit_counter_BCD[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|digit_counter\(1),
	sload => VCC,
	ena => \inst1|digit_counter_BCD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|digit_counter_BCD\(1));

-- Location: LCCOMB_X51_Y3_N2
\inst1|digit_counter[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|digit_counter[1]~1_combout\ = (\inst1|LessThan2~0_combout\ & (!\inst1|Add1~1_combout\)) # (!\inst1|LessThan2~0_combout\ & ((\inst1|digit_counter_BCD\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan2~0_combout\,
	datac => \inst1|Add1~1_combout\,
	datad => \inst1|digit_counter_BCD\(1),
	combout => \inst1|digit_counter[1]~1_combout\);

-- Location: LCCOMB_X50_Y3_N10
\inst1|freq_2[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_2[3]~4_combout\ = ((\inst1|WideNor0~3_combout\ & ((\inst1|number_not_sel~regout\) # (\inst1|WideNor0~2_combout\)))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|number_not_sel~regout\,
	datab => \SW~combout\(0),
	datac => \inst1|WideNor0~3_combout\,
	datad => \inst1|WideNor0~2_combout\,
	combout => \inst1|freq_2[3]~4_combout\);

-- Location: LCCOMB_X53_Y3_N26
\inst1|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always1~0_combout\ = (!\inst1|number_not_sel~regout\ & ((\inst1|digit_counter\(1) & ((!\inst1|digit_counter\(2)) # (!\inst1|digit_counter\(0)))) # (!\inst1|digit_counter\(1) & ((\inst1|digit_counter\(0)) # (\inst1|digit_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digit_counter\(1),
	datab => \inst1|digit_counter\(0),
	datac => \inst1|number_not_sel~regout\,
	datad => \inst1|digit_counter\(2),
	combout => \inst1|always1~0_combout\);

-- Location: LCCOMB_X50_Y3_N0
\inst1|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector24~0_combout\ = (\inst1|Equal17~1_combout\ & (\inst1|WideOr0~0_combout\ & ((\inst1|always1~0_combout\) # (!\inst1|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal11~0_combout\,
	datab => \inst1|always1~0_combout\,
	datac => \inst1|Equal17~1_combout\,
	datad => \inst1|WideOr0~0_combout\,
	combout => \inst1|Selector24~0_combout\);

-- Location: LCCOMB_X50_Y3_N30
\inst1|freq_2[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_2[3]~6_combout\ = ((!\inst1|freq_2[3]~5_combout\ & (\inst1|next_page~0_combout\ & \inst1|Selector24~0_combout\))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2[3]~5_combout\,
	datab => \SW~combout\(0),
	datac => \inst1|next_page~0_combout\,
	datad => \inst1|Selector24~0_combout\,
	combout => \inst1|freq_2[3]~6_combout\);

-- Location: LCFF_X51_Y3_N3
\inst1|digit_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|digit_counter[1]~1_combout\,
	sdata => \inst1|Add1~1_combout\,
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|digit_counter\(1));

-- Location: LCFF_X54_Y3_N29
\inst1|digit_counter_BCD[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|digit_counter\(2),
	sload => VCC,
	ena => \inst1|digit_counter_BCD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|digit_counter_BCD\(2));

-- Location: LCCOMB_X54_Y3_N28
\inst1|digit_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|digit_counter~2_combout\ = (\inst1|digit_counter\(2) & ((\inst1|digit_counter\(0)))) # (!\inst1|digit_counter\(2) & (\inst1|digit_counter_BCD\(2) & !\inst1|digit_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digit_counter\(2),
	datac => \inst1|digit_counter_BCD\(2),
	datad => \inst1|digit_counter\(0),
	combout => \inst1|digit_counter~2_combout\);

-- Location: LCCOMB_X51_Y3_N20
\inst1|digit_counter[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|digit_counter[2]~0_combout\ = (\inst1|digit_counter\(1) & (\inst1|digit_counter\(2))) # (!\inst1|digit_counter\(1) & ((\inst1|digit_counter~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|digit_counter\(1),
	datac => \inst1|digit_counter\(2),
	datad => \inst1|digit_counter~2_combout\,
	combout => \inst1|digit_counter[2]~0_combout\);

-- Location: LCCOMB_X53_Y3_N10
\inst1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|digit_counter\(2) $ (((\inst1|digit_counter\(1) & \inst1|digit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digit_counter\(1),
	datab => \inst1|digit_counter\(0),
	datad => \inst1|digit_counter\(2),
	combout => \inst1|Add1~0_combout\);

-- Location: LCFF_X51_Y3_N21
\inst1|digit_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|digit_counter[2]~0_combout\,
	sdata => \inst1|Add1~0_combout\,
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|digit_counter\(2));

-- Location: LCCOMB_X53_Y3_N22
\inst1|digit_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|digit_counter~4_combout\ = ((\inst1|number_not_sel~regout\) # ((\inst1|digit_counter\(1) & \inst1|digit_counter\(2)))) # (!\inst1|digit_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digit_counter\(1),
	datab => \inst1|digit_counter\(0),
	datac => \inst1|number_not_sel~regout\,
	datad => \inst1|digit_counter\(2),
	combout => \inst1|digit_counter~4_combout\);

-- Location: LCFF_X54_Y3_N13
\inst1|digit_counter_BCD[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	sdata => \inst1|digit_counter\(0),
	sload => VCC,
	ena => \inst1|digit_counter_BCD[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|digit_counter_BCD\(0));

-- Location: LCCOMB_X54_Y3_N12
\inst1|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector30~0_combout\ = (!\inst1|digit_counter\(0) & ((\inst1|digit_counter\(2)) # ((\inst1|digit_counter_BCD\(0)) # (\inst1|digit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digit_counter\(2),
	datab => \inst1|digit_counter\(0),
	datac => \inst1|digit_counter_BCD\(0),
	datad => \inst1|digit_counter\(1),
	combout => \inst1|Selector30~0_combout\);

-- Location: LCCOMB_X53_Y3_N18
\inst1|digit_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|digit_counter~3_combout\ = (\inst1|digit_counter\(0) & ((\inst1|number_not_sel~regout\) # ((\inst1|digit_counter\(1) & \inst1|digit_counter\(2))))) # (!\inst1|digit_counter\(0) & (!\inst1|number_not_sel~regout\ & ((\inst1|digit_counter\(1)) # 
-- (\inst1|digit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digit_counter\(1),
	datab => \inst1|digit_counter\(0),
	datac => \inst1|number_not_sel~regout\,
	datad => \inst1|digit_counter\(2),
	combout => \inst1|digit_counter~3_combout\);

-- Location: LCCOMB_X53_Y3_N24
\inst1|Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector30~1_combout\ = (\inst1|Equal11~0_combout\ & ((\inst1|digit_counter~3_combout\) # ((\inst1|Selector30~0_combout\ & !\inst1|Equal16~0_combout\)))) # (!\inst1|Equal11~0_combout\ & (\inst1|Selector30~0_combout\ & (!\inst1|Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal11~0_combout\,
	datab => \inst1|Selector30~0_combout\,
	datac => \inst1|Equal16~0_combout\,
	datad => \inst1|digit_counter~3_combout\,
	combout => \inst1|Selector30~1_combout\);

-- Location: LCCOMB_X53_Y3_N12
\inst1|Selector30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector30~2_combout\ = (\inst1|Selector30~1_combout\) # ((\inst1|digit_counter~4_combout\ & !\inst1|WideNor0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|digit_counter~4_combout\,
	datac => \inst1|Selector30~1_combout\,
	datad => \inst1|WideNor0~2_combout\,
	combout => \inst1|Selector30~2_combout\);

-- Location: LCCOMB_X53_Y3_N4
\inst1|Selector30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector30~3_combout\ = (\inst1|Selector30~2_combout\) # ((\inst1|digit_counter\(0) & ((!\inst1|Equal17~1_combout\) # (!\inst1|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideOr0~0_combout\,
	datab => \inst1|Equal17~1_combout\,
	datac => \inst1|digit_counter\(0),
	datad => \inst1|Selector30~2_combout\,
	combout => \inst1|Selector30~3_combout\);

-- Location: LCCOMB_X51_Y4_N12
\inst1|number_not_sel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|number_not_sel~0_combout\ = ((!\inst1|button_pressed~regout\ & (\inst1|debounced_keypad_pressed~regout\ & \inst1|keypad_mod_inst|data_valid~regout\))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|button_pressed~regout\,
	datab => \SW~combout\(0),
	datac => \inst1|debounced_keypad_pressed~regout\,
	datad => \inst1|keypad_mod_inst|data_valid~regout\,
	combout => \inst1|number_not_sel~0_combout\);

-- Location: LCFF_X53_Y3_N5
\inst1|digit_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|Selector30~3_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst1|number_not_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|digit_counter\(0));

-- Location: LCCOMB_X53_Y3_N16
\inst1|freq_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_1~0_combout\ = (\inst1|digit_counter\(1) & (\inst1|digit_counter\(0) & (!\inst1|number_not_sel~regout\ & \inst1|digit_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digit_counter\(1),
	datab => \inst1|digit_counter\(0),
	datac => \inst1|number_not_sel~regout\,
	datad => \inst1|digit_counter\(2),
	combout => \inst1|freq_1~0_combout\);

-- Location: LCCOMB_X48_Y4_N30
\inst1|Selector27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector27~1_combout\ = ((\inst1|Equal10~2_combout\) # ((\inst1|Equal8~1_combout\) # (\inst1|Equal6~3_combout\))) # (!\inst1|Selector25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector25~0_combout\,
	datab => \inst1|Equal10~2_combout\,
	datac => \inst1|Equal8~1_combout\,
	datad => \inst1|Equal6~3_combout\,
	combout => \inst1|Selector27~1_combout\);

-- Location: LCCOMB_X50_Y2_N14
\inst1|BCD_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_1~3_combout\ = (\inst1|freq_1\(0) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(0),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_1~3_combout\);

-- Location: LCCOMB_X50_Y4_N4
\inst1|BCD_5[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_5[0]~0_combout\ = ((!\inst1|Equal17~1_combout\ & \inst1|next_page~0_combout\)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \inst1|Equal17~1_combout\,
	datad => \inst1|next_page~0_combout\,
	combout => \inst1|BCD_5[0]~0_combout\);

-- Location: LCFF_X50_Y2_N15
\inst1|BCD_1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_1~3_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_1\(0));

-- Location: LCCOMB_X50_Y2_N30
\inst1|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector27~0_combout\ = (!\inst1|Equal16~0_combout\ & ((\inst1|LessThan2~0_combout\ & (\inst1|freq_2\(0))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(0),
	datab => \inst1|BCD_1\(0),
	datac => \inst1|Equal16~0_combout\,
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|Selector27~0_combout\);

-- Location: LCCOMB_X49_Y2_N30
\inst1|Selector27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector27~2_combout\ = (\inst1|Selector27~0_combout\) # ((\inst1|Selector27~1_combout\ & ((\inst1|freq_1\(0)) # (!\inst1|freq_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(0),
	datab => \inst1|freq_1~0_combout\,
	datac => \inst1|Selector27~1_combout\,
	datad => \inst1|Selector27~0_combout\,
	combout => \inst1|Selector27~2_combout\);

-- Location: LCCOMB_X49_Y2_N8
\inst1|Selector27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector27~6_combout\ = (\inst1|Selector27~2_combout\) # ((\inst1|freq_1\(0) & ((\inst1|Selector27~5_combout\) # (!\inst1|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector27~5_combout\,
	datab => \inst1|Selector27~2_combout\,
	datac => \inst1|freq_1\(0),
	datad => \inst1|Selector24~0_combout\,
	combout => \inst1|Selector27~6_combout\);

-- Location: LCFF_X49_Y2_N9
\inst1|freq_1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|Selector27~6_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst1|number_not_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_1\(0));

-- Location: LCCOMB_X50_Y2_N4
\inst1|BCD_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_1~2_combout\ = (\inst1|freq_1\(1) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_1\(1),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_1~2_combout\);

-- Location: LCFF_X50_Y2_N5
\inst1|BCD_1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_1~2_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_1\(1));

-- Location: LCCOMB_X50_Y2_N8
\inst1|Selector26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector26~2_combout\ = (!\inst1|Equal16~0_combout\ & ((\inst1|LessThan2~0_combout\ & (\inst1|freq_2\(1))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(1),
	datab => \inst1|BCD_1\(1),
	datac => \inst1|Equal16~0_combout\,
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|Selector26~2_combout\);

-- Location: LCCOMB_X49_Y3_N10
\inst1|Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal7~1_combout\ = (\inst1|keypad_mod_inst|out_keys\(6) & (\inst1|Equal7~0_combout\ & (\inst1|Equal6~4_combout\ & !\inst1|keypad_mod_inst|out_keys\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(6),
	datab => \inst1|Equal7~0_combout\,
	datac => \inst1|Equal6~4_combout\,
	datad => \inst1|keypad_mod_inst|out_keys\(5),
	combout => \inst1|Equal7~1_combout\);

-- Location: LCCOMB_X50_Y3_N24
\inst1|Selector27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector27~4_combout\ = (!\inst1|Equal7~1_combout\ & (((\inst1|keypad_mod_inst|out_keys\(0)) # (!\inst1|Equal2~1_combout\)) # (!\inst1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|keypad_mod_inst|out_keys\(0),
	datac => \inst1|Equal2~1_combout\,
	datad => \inst1|Equal7~1_combout\,
	combout => \inst1|Selector27~4_combout\);

-- Location: LCCOMB_X49_Y2_N22
\inst1|Selector26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector26~3_combout\ = (\inst1|Selector27~4_combout\ & \inst1|Selector26~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Selector27~4_combout\,
	datad => \inst1|Selector26~1_combout\,
	combout => \inst1|Selector26~3_combout\);

-- Location: LCCOMB_X49_Y2_N28
\inst1|Selector26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector26~4_combout\ = (\inst1|Selector26~2_combout\) # ((!\inst1|Selector26~3_combout\ & ((\inst1|freq_1\(1)) # (!\inst1|freq_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(1),
	datab => \inst1|freq_1~0_combout\,
	datac => \inst1|Selector26~2_combout\,
	datad => \inst1|Selector26~3_combout\,
	combout => \inst1|Selector26~4_combout\);

-- Location: LCCOMB_X49_Y2_N26
\inst1|Selector26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector26~6_combout\ = (\inst1|Selector26~4_combout\) # ((\inst1|freq_1\(1) & ((\inst1|Selector26~5_combout\) # (!\inst1|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector26~5_combout\,
	datab => \inst1|Selector26~4_combout\,
	datac => \inst1|freq_1\(1),
	datad => \inst1|Selector24~0_combout\,
	combout => \inst1|Selector26~6_combout\);

-- Location: LCFF_X49_Y2_N27
\inst1|freq_1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|Selector26~6_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst1|number_not_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_1\(1));

-- Location: LCCOMB_X49_Y2_N0
\inst1|Selector24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector24~3_combout\ = ((\inst1|freq_1~0_combout\ & ((!\inst1|Selector26~3_combout\) # (!\inst1|Selector26~0_combout\)))) # (!\inst1|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector26~0_combout\,
	datab => \inst1|WideNor0~1_combout\,
	datac => \inst1|freq_1~0_combout\,
	datad => \inst1|Selector26~3_combout\,
	combout => \inst1|Selector24~3_combout\);

-- Location: LCCOMB_X49_Y2_N2
\inst1|Selector24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector24~4_combout\ = (\inst1|Selector24~2_combout\) # ((\inst1|freq_1\(3) & ((\inst1|Selector24~3_combout\) # (!\inst1|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector24~2_combout\,
	datab => \inst1|Selector24~3_combout\,
	datac => \inst1|freq_1\(3),
	datad => \inst1|Selector24~0_combout\,
	combout => \inst1|Selector24~4_combout\);

-- Location: LCFF_X49_Y2_N3
\inst1|freq_1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|Selector24~4_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst1|number_not_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_1\(3));

-- Location: LCCOMB_X48_Y4_N26
\inst1|Selector25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector25~4_combout\ = (\inst1|Equal2~1_combout\ & ((\inst1|keypad_mod_inst|out_keys\(0) & (!\inst1|keypad_mod_inst|out_keys\(2) & !\inst1|keypad_mod_inst|out_keys\(1))) # (!\inst1|keypad_mod_inst|out_keys\(0) & 
-- (\inst1|keypad_mod_inst|out_keys\(2) $ (\inst1|keypad_mod_inst|out_keys\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(0),
	datab => \inst1|keypad_mod_inst|out_keys\(2),
	datac => \inst1|keypad_mod_inst|out_keys\(1),
	datad => \inst1|Equal2~1_combout\,
	combout => \inst1|Selector25~4_combout\);

-- Location: LCCOMB_X49_Y2_N18
\inst1|Selector25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector25~5_combout\ = (\inst1|freq_1~0_combout\ & ((\inst1|Selector25~4_combout\) # (!\inst1|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_1~0_combout\,
	datac => \inst1|Selector25~4_combout\,
	datad => \inst1|WideNor0~1_combout\,
	combout => \inst1|Selector25~5_combout\);

-- Location: LCCOMB_X49_Y2_N16
\inst1|Selector25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Selector25~6_combout\ = (\inst1|Selector25~3_combout\) # ((\inst1|freq_1\(2) & ((\inst1|Selector25~5_combout\) # (!\inst1|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector25~3_combout\,
	datab => \inst1|Selector25~5_combout\,
	datac => \inst1|freq_1\(2),
	datad => \inst1|Selector24~0_combout\,
	combout => \inst1|Selector25~6_combout\);

-- Location: LCFF_X49_Y2_N17
\inst1|freq_1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|Selector25~6_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst1|number_not_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_1\(2));

-- Location: LCCOMB_X28_Y1_N16
\inst|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\inst1|freq_1\(0) & ((\inst1|freq_1\(3)) # (\inst1|freq_1\(1) $ (\inst1|freq_1\(2))))) # (!\inst1|freq_1\(0) & ((\inst1|freq_1\(1)) # (\inst1|freq_1\(3) $ (\inst1|freq_1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(0),
	datab => \inst1|freq_1\(1),
	datac => \inst1|freq_1\(3),
	datad => \inst1|freq_1\(2),
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y1_N2
\inst|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (\inst1|freq_1\(1) & ((\inst1|freq_1\(2) & (\inst1|freq_1\(0))) # (!\inst1|freq_1\(2) & ((!\inst1|freq_1\(3)))))) # (!\inst1|freq_1\(1) & (\inst1|freq_1\(0) & (\inst1|freq_1\(3) $ (!\inst1|freq_1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(0),
	datab => \inst1|freq_1\(1),
	datac => \inst1|freq_1\(3),
	datad => \inst1|freq_1\(2),
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y1_N20
\inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst1|freq_1\(0) & ((\inst1|freq_1\(1) $ (!\inst1|freq_1\(2))) # (!\inst1|freq_1\(3)))) # (!\inst1|freq_1\(0) & (!\inst1|freq_1\(1) & (!\inst1|freq_1\(3) & \inst1|freq_1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(0),
	datab => \inst1|freq_1\(1),
	datac => \inst1|freq_1\(3),
	datad => \inst1|freq_1\(2),
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y1_N26
\inst|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst1|freq_1\(1) & ((\inst1|freq_1\(0) & ((\inst1|freq_1\(2)))) # (!\inst1|freq_1\(0) & (\inst1|freq_1\(3) & !\inst1|freq_1\(2))))) # (!\inst1|freq_1\(1) & (!\inst1|freq_1\(3) & (\inst1|freq_1\(0) $ (\inst1|freq_1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(0),
	datab => \inst1|freq_1\(1),
	datac => \inst1|freq_1\(3),
	datad => \inst1|freq_1\(2),
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y1_N12
\inst|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr4~0_combout\ = (\inst1|freq_1\(3) & (\inst1|freq_1\(2) & ((\inst1|freq_1\(1)) # (!\inst1|freq_1\(0))))) # (!\inst1|freq_1\(3) & (!\inst1|freq_1\(0) & (\inst1|freq_1\(1) & !\inst1|freq_1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(0),
	datab => \inst1|freq_1\(1),
	datac => \inst1|freq_1\(3),
	datad => \inst1|freq_1\(2),
	combout => \inst|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y1_N18
\inst|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr5~0_combout\ = (\inst1|freq_1\(1) & ((\inst1|freq_1\(0) & (\inst1|freq_1\(3))) # (!\inst1|freq_1\(0) & ((\inst1|freq_1\(2)))))) # (!\inst1|freq_1\(1) & (\inst1|freq_1\(2) & (\inst1|freq_1\(0) $ (\inst1|freq_1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(0),
	datab => \inst1|freq_1\(1),
	datac => \inst1|freq_1\(3),
	datad => \inst1|freq_1\(2),
	combout => \inst|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y1_N24
\inst|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr6~0_combout\ = (\inst1|freq_1\(0) & (\inst1|freq_1\(3) $ (((!\inst1|freq_1\(1) & !\inst1|freq_1\(2)))))) # (!\inst1|freq_1\(0) & (!\inst1|freq_1\(1) & (!\inst1|freq_1\(3) & \inst1|freq_1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_1\(0),
	datab => \inst1|freq_1\(1),
	datac => \inst1|freq_1\(3),
	datad => \inst1|freq_1\(2),
	combout => \inst|WideOr6~0_combout\);

-- Location: LCCOMB_X51_Y3_N0
\inst1|BCD_3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_3~3_combout\ = (\inst1|freq_3\(0) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_3\(0),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_3~3_combout\);

-- Location: LCFF_X51_Y3_N1
\inst1|BCD_3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_3~3_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_3\(0));

-- Location: LCCOMB_X51_Y3_N14
\inst1|freq_3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_3[0]~0_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_4\(0))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(0),
	datab => \inst1|LessThan2~0_combout\,
	datad => \inst1|BCD_3\(0),
	combout => \inst1|freq_3[0]~0_combout\);

-- Location: LCFF_X51_Y3_N15
\inst1|freq_3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_3[0]~0_combout\,
	sdata => \inst1|freq_2\(0),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_3\(0));

-- Location: LCCOMB_X51_Y3_N18
\inst1|freq_2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_2[0]~0_combout\ = (\inst1|LessThan2~0_combout\ & ((\inst1|freq_3\(0)))) # (!\inst1|LessThan2~0_combout\ & (\inst1|BCD_2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_2\(0),
	datab => \inst1|freq_3\(0),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_2[0]~0_combout\);

-- Location: LCFF_X51_Y3_N19
\inst1|freq_2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_2[0]~0_combout\,
	sdata => \inst1|freq_1\(0),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_2\(0));

-- Location: LCCOMB_X54_Y2_N6
\inst1|BCD_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_2~1_combout\ = (\inst1|freq_2\(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_2\(2),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_2~1_combout\);

-- Location: LCFF_X54_Y2_N7
\inst1|BCD_2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_2~1_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_2\(2));

-- Location: LCCOMB_X49_Y3_N14
\inst1|freq_2[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_2[2]~2_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_3\(2))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_3\(2),
	datab => \inst1|BCD_2\(2),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_2[2]~2_combout\);

-- Location: LCFF_X49_Y3_N15
\inst1|freq_2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_2[2]~2_combout\,
	sdata => \inst1|freq_1\(2),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_2\(2));

-- Location: LCCOMB_X54_Y2_N0
\inst1|BCD_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_2~0_combout\ = (\inst1|freq_2\(3) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_2\(3),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_2~0_combout\);

-- Location: LCFF_X54_Y2_N1
\inst1|BCD_2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_2~0_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_2\(3));

-- Location: LCCOMB_X49_Y3_N20
\inst1|freq_2[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_2[3]~3_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_3\(3))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_3\(3),
	datab => \inst1|LessThan2~0_combout\,
	datad => \inst1|BCD_2\(3),
	combout => \inst1|freq_2[3]~3_combout\);

-- Location: LCFF_X49_Y3_N21
\inst1|freq_2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_2[3]~3_combout\,
	sdata => \inst1|freq_1\(3),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_2\(3));

-- Location: LCCOMB_X51_Y3_N10
\inst1|BCD_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_3~2_combout\ = (\inst1|freq_3\(1) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_3\(1),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_3~2_combout\);

-- Location: LCFF_X51_Y3_N11
\inst1|BCD_3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_3~2_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_3\(1));

-- Location: LCCOMB_X51_Y3_N4
\inst1|freq_3[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_3[1]~1_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_4\(1))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(1),
	datab => \inst1|LessThan2~0_combout\,
	datad => \inst1|BCD_3\(1),
	combout => \inst1|freq_3[1]~1_combout\);

-- Location: LCFF_X51_Y3_N5
\inst1|freq_3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_3[1]~1_combout\,
	sdata => \inst1|freq_2\(1),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_3\(1));

-- Location: LCCOMB_X51_Y3_N22
\inst1|freq_2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_2[1]~1_combout\ = (\inst1|LessThan2~0_combout\ & ((\inst1|freq_3\(1)))) # (!\inst1|LessThan2~0_combout\ & (\inst1|BCD_2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_2\(1),
	datab => \inst1|LessThan2~0_combout\,
	datad => \inst1|freq_3\(1),
	combout => \inst1|freq_2[1]~1_combout\);

-- Location: LCFF_X51_Y3_N23
\inst1|freq_2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_2[1]~1_combout\,
	sdata => \inst1|freq_1\(1),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_2\(1));

-- Location: LCCOMB_X57_Y3_N4
\inst2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~0_combout\ = (\inst1|freq_2\(0) & ((\inst1|freq_2\(3)) # (\inst1|freq_2\(2) $ (\inst1|freq_2\(1))))) # (!\inst1|freq_2\(0) & ((\inst1|freq_2\(1)) # (\inst1|freq_2\(2) $ (\inst1|freq_2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(0),
	datab => \inst1|freq_2\(2),
	datac => \inst1|freq_2\(3),
	datad => \inst1|freq_2\(1),
	combout => \inst2|WideOr0~0_combout\);

-- Location: LCCOMB_X57_Y3_N6
\inst2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~0_combout\ = (\inst1|freq_2\(2) & (\inst1|freq_2\(0) & ((\inst1|freq_2\(3)) # (\inst1|freq_2\(1))))) # (!\inst1|freq_2\(2) & (!\inst1|freq_2\(3) & ((\inst1|freq_2\(0)) # (\inst1|freq_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(0),
	datab => \inst1|freq_2\(2),
	datac => \inst1|freq_2\(3),
	datad => \inst1|freq_2\(1),
	combout => \inst2|WideOr1~0_combout\);

-- Location: LCCOMB_X57_Y3_N12
\inst2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~0_combout\ = (\inst1|freq_2\(0) & ((\inst1|freq_2\(2) $ (!\inst1|freq_2\(1))) # (!\inst1|freq_2\(3)))) # (!\inst1|freq_2\(0) & (\inst1|freq_2\(2) & (!\inst1|freq_2\(3) & !\inst1|freq_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(0),
	datab => \inst1|freq_2\(2),
	datac => \inst1|freq_2\(3),
	datad => \inst1|freq_2\(1),
	combout => \inst2|WideOr2~0_combout\);

-- Location: LCCOMB_X57_Y3_N10
\inst2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr3~0_combout\ = (\inst1|freq_2\(1) & ((\inst1|freq_2\(0) & (\inst1|freq_2\(2))) # (!\inst1|freq_2\(0) & (!\inst1|freq_2\(2) & \inst1|freq_2\(3))))) # (!\inst1|freq_2\(1) & (!\inst1|freq_2\(3) & (\inst1|freq_2\(0) $ (\inst1|freq_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(0),
	datab => \inst1|freq_2\(2),
	datac => \inst1|freq_2\(3),
	datad => \inst1|freq_2\(1),
	combout => \inst2|WideOr3~0_combout\);

-- Location: LCCOMB_X57_Y3_N0
\inst2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~0_combout\ = (\inst1|freq_2\(2) & (\inst1|freq_2\(3) & ((\inst1|freq_2\(1)) # (!\inst1|freq_2\(0))))) # (!\inst1|freq_2\(2) & (!\inst1|freq_2\(0) & (!\inst1|freq_2\(3) & \inst1|freq_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(0),
	datab => \inst1|freq_2\(2),
	datac => \inst1|freq_2\(3),
	datad => \inst1|freq_2\(1),
	combout => \inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X57_Y3_N18
\inst2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr5~0_combout\ = (\inst1|freq_2\(3) & ((\inst1|freq_2\(0) & ((\inst1|freq_2\(1)))) # (!\inst1|freq_2\(0) & (\inst1|freq_2\(2))))) # (!\inst1|freq_2\(3) & (\inst1|freq_2\(2) & (\inst1|freq_2\(0) $ (\inst1|freq_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(0),
	datab => \inst1|freq_2\(2),
	datac => \inst1|freq_2\(3),
	datad => \inst1|freq_2\(1),
	combout => \inst2|WideOr5~0_combout\);

-- Location: LCCOMB_X57_Y3_N24
\inst2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr6~0_combout\ = (\inst1|freq_2\(0) & (\inst1|freq_2\(3) $ (((!\inst1|freq_2\(2) & !\inst1|freq_2\(1)))))) # (!\inst1|freq_2\(0) & (\inst1|freq_2\(2) & (!\inst1|freq_2\(3) & !\inst1|freq_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_2\(0),
	datab => \inst1|freq_2\(2),
	datac => \inst1|freq_2\(3),
	datad => \inst1|freq_2\(1),
	combout => \inst2|WideOr6~0_combout\);

-- Location: LCCOMB_X49_Y3_N0
\inst1|BCD_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_4~0_combout\ = (\inst1|freq_4\(3) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(3),
	datac => \SW~combout\(0),
	combout => \inst1|BCD_4~0_combout\);

-- Location: LCFF_X49_Y3_N1
\inst1|BCD_4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_4~0_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_4\(3));

-- Location: LCCOMB_X49_Y3_N28
\inst1|freq_4[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_4[3]~3_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_5\(3))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(3),
	datab => \inst1|BCD_4\(3),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_4[3]~3_combout\);

-- Location: LCFF_X49_Y3_N29
\inst1|freq_4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_4[3]~3_combout\,
	sdata => \inst1|freq_3\(3),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_4\(3));

-- Location: LCCOMB_X51_Y3_N30
\inst1|freq_3[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_3[3]~3_combout\ = (\inst1|LessThan2~0_combout\ & ((\inst1|freq_4\(3)))) # (!\inst1|LessThan2~0_combout\ & (\inst1|BCD_3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_3\(3),
	datab => \inst1|LessThan2~0_combout\,
	datad => \inst1|freq_4\(3),
	combout => \inst1|freq_3[3]~3_combout\);

-- Location: LCFF_X51_Y3_N31
\inst1|freq_3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_3[3]~3_combout\,
	sdata => \inst1|freq_2\(3),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_3\(3));

-- Location: LCCOMB_X51_Y4_N24
\inst1|BCD_3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_3~1_combout\ = (\SW~combout\(0) & \inst1|freq_3\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => \inst1|freq_3\(2),
	combout => \inst1|BCD_3~1_combout\);

-- Location: LCFF_X51_Y4_N25
\inst1|BCD_3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_3~1_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_3\(2));

-- Location: LCCOMB_X49_Y3_N4
\inst1|freq_3[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_3[2]~2_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_4\(2))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(2),
	datab => \inst1|BCD_3\(2),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_3[2]~2_combout\);

-- Location: LCFF_X49_Y3_N5
\inst1|freq_3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_3[2]~2_combout\,
	sdata => \inst1|freq_2\(2),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_3\(2));

-- Location: LCCOMB_X64_Y6_N0
\inst3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr0~0_combout\ = (\inst1|freq_3\(0) & ((\inst1|freq_3\(3)) # (\inst1|freq_3\(2) $ (\inst1|freq_3\(1))))) # (!\inst1|freq_3\(0) & ((\inst1|freq_3\(1)) # (\inst1|freq_3\(3) $ (\inst1|freq_3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_3\(0),
	datab => \inst1|freq_3\(3),
	datac => \inst1|freq_3\(2),
	datad => \inst1|freq_3\(1),
	combout => \inst3|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y6_N10
\inst3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr1~0_combout\ = (\inst1|freq_3\(2) & (\inst1|freq_3\(0) & ((\inst1|freq_3\(3)) # (\inst1|freq_3\(1))))) # (!\inst1|freq_3\(2) & (!\inst1|freq_3\(3) & ((\inst1|freq_3\(0)) # (\inst1|freq_3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_3\(0),
	datab => \inst1|freq_3\(3),
	datac => \inst1|freq_3\(2),
	datad => \inst1|freq_3\(1),
	combout => \inst3|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y6_N20
\inst3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr2~0_combout\ = (\inst1|freq_3\(0) & ((\inst1|freq_3\(2) $ (!\inst1|freq_3\(1))) # (!\inst1|freq_3\(3)))) # (!\inst1|freq_3\(0) & (!\inst1|freq_3\(3) & (\inst1|freq_3\(2) & !\inst1|freq_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_3\(0),
	datab => \inst1|freq_3\(3),
	datac => \inst1|freq_3\(2),
	datad => \inst1|freq_3\(1),
	combout => \inst3|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y6_N14
\inst3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr3~0_combout\ = (\inst1|freq_3\(1) & ((\inst1|freq_3\(0) & ((\inst1|freq_3\(2)))) # (!\inst1|freq_3\(0) & (\inst1|freq_3\(3) & !\inst1|freq_3\(2))))) # (!\inst1|freq_3\(1) & (!\inst1|freq_3\(3) & (\inst1|freq_3\(0) $ (\inst1|freq_3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_3\(0),
	datab => \inst1|freq_3\(3),
	datac => \inst1|freq_3\(2),
	datad => \inst1|freq_3\(1),
	combout => \inst3|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y6_N12
\inst3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr4~0_combout\ = (\inst1|freq_3\(3) & (\inst1|freq_3\(2) & ((\inst1|freq_3\(1)) # (!\inst1|freq_3\(0))))) # (!\inst1|freq_3\(3) & (!\inst1|freq_3\(0) & (!\inst1|freq_3\(2) & \inst1|freq_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_3\(0),
	datab => \inst1|freq_3\(3),
	datac => \inst1|freq_3\(2),
	datad => \inst1|freq_3\(1),
	combout => \inst3|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y6_N30
\inst3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr5~0_combout\ = (\inst1|freq_3\(3) & ((\inst1|freq_3\(0) & ((\inst1|freq_3\(1)))) # (!\inst1|freq_3\(0) & (\inst1|freq_3\(2))))) # (!\inst1|freq_3\(3) & (\inst1|freq_3\(2) & (\inst1|freq_3\(0) $ (\inst1|freq_3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_3\(0),
	datab => \inst1|freq_3\(3),
	datac => \inst1|freq_3\(2),
	datad => \inst1|freq_3\(1),
	combout => \inst3|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y6_N16
\inst3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr6~0_combout\ = (\inst1|freq_3\(0) & (\inst1|freq_3\(3) $ (((!\inst1|freq_3\(2) & !\inst1|freq_3\(1)))))) # (!\inst1|freq_3\(0) & (!\inst1|freq_3\(3) & (\inst1|freq_3\(2) & !\inst1|freq_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_3\(0),
	datab => \inst1|freq_3\(3),
	datac => \inst1|freq_3\(2),
	datad => \inst1|freq_3\(1),
	combout => \inst3|WideOr6~0_combout\);

-- Location: LCCOMB_X50_Y5_N0
\inst1|BCD_7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_7~3_combout\ = (\inst1|freq_7\(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_7\(2),
	datac => \SW~combout\(0),
	combout => \inst1|BCD_7~3_combout\);

-- Location: LCFF_X50_Y5_N1
\inst1|BCD_7[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_7~3_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_7\(2));

-- Location: LCCOMB_X50_Y5_N20
\inst1|freq_7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_7~4_combout\ = (\inst1|Equal16~0_combout\ & ((\inst1|freq_6\(2)))) # (!\inst1|Equal16~0_combout\ & (\inst1|BCD_7\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_7\(2),
	datac => \inst1|Equal16~0_combout\,
	datad => \inst1|freq_6\(2),
	combout => \inst1|freq_7~4_combout\);

-- Location: LCCOMB_X50_Y3_N26
\inst1|freq_7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_7~5_combout\ = (\inst1|freq_7~4_combout\ & (!\inst1|freq_2[3]~4_combout\ & ((\inst1|Equal16~0_combout\) # (!\inst1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal16~0_combout\,
	datab => \inst1|LessThan2~0_combout\,
	datac => \inst1|freq_7~4_combout\,
	datad => \inst1|freq_2[3]~4_combout\,
	combout => \inst1|freq_7~5_combout\);

-- Location: LCFF_X50_Y3_N27
\inst1|freq_7[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_7~5_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_7\(2));

-- Location: LCCOMB_X49_Y3_N22
\inst1|freq_6[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_6[2]~2_combout\ = (\inst1|LessThan2~0_combout\ & ((\inst1|freq_7\(2)))) # (!\inst1|LessThan2~0_combout\ & (\inst1|BCD_6\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(2),
	datab => \inst1|LessThan2~0_combout\,
	datad => \inst1|freq_7\(2),
	combout => \inst1|freq_6[2]~2_combout\);

-- Location: LCFF_X49_Y3_N23
\inst1|freq_6[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_6[2]~2_combout\,
	sdata => \inst1|freq_5\(2),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_6\(2));

-- Location: LCCOMB_X49_Y3_N8
\inst1|freq_5[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_5[2]~2_combout\ = (\inst1|LessThan2~0_combout\ & ((\inst1|freq_6\(2)))) # (!\inst1|LessThan2~0_combout\ & (\inst1|BCD_5\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(2),
	datab => \inst1|freq_6\(2),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_5[2]~2_combout\);

-- Location: LCFF_X49_Y3_N9
\inst1|freq_5[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_5[2]~2_combout\,
	sdata => \inst1|freq_4\(2),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_5\(2));

-- Location: LCCOMB_X54_Y3_N22
\inst1|BCD_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_4~1_combout\ = (\inst1|freq_4\(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_4\(2),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_4~1_combout\);

-- Location: LCFF_X54_Y3_N23
\inst1|BCD_4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_4~1_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_4\(2));

-- Location: LCCOMB_X49_Y3_N24
\inst1|freq_4[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_4[2]~2_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_5\(2))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan2~0_combout\,
	datab => \inst1|freq_5\(2),
	datad => \inst1|BCD_4\(2),
	combout => \inst1|freq_4[2]~2_combout\);

-- Location: LCFF_X49_Y3_N25
\inst1|freq_4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_4[2]~2_combout\,
	sdata => \inst1|freq_3\(2),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_4\(2));

-- Location: LCCOMB_X54_Y3_N6
\inst1|BCD_4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_4~3_combout\ = (\inst1|freq_4\(0) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_4\(0),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_4~3_combout\);

-- Location: LCFF_X54_Y3_N7
\inst1|BCD_4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_4~3_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_4\(0));

-- Location: LCCOMB_X50_Y3_N22
\inst1|freq_4[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_4[0]~0_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_5\(0))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(0),
	datab => \inst1|BCD_4\(0),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_4[0]~0_combout\);

-- Location: LCFF_X50_Y3_N23
\inst1|freq_4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_4[0]~0_combout\,
	sdata => \inst1|freq_3\(0),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_4\(0));

-- Location: LCCOMB_X50_Y4_N22
\inst1|BCD_5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_5~1_combout\ = (\SW~combout\(0) & \inst1|freq_5\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => \inst1|freq_5\(1),
	combout => \inst1|BCD_5~1_combout\);

-- Location: LCFF_X50_Y4_N23
\inst1|BCD_5[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_5~1_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_5\(1));

-- Location: LCCOMB_X51_Y3_N8
\inst1|freq_5[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_5[1]~1_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_6\(1))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(1),
	datab => \inst1|LessThan2~0_combout\,
	datad => \inst1|BCD_5\(1),
	combout => \inst1|freq_5[1]~1_combout\);

-- Location: LCFF_X51_Y3_N9
\inst1|freq_5[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_5[1]~1_combout\,
	sdata => \inst1|freq_4\(1),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_5\(1));

-- Location: LCCOMB_X51_Y3_N24
\inst1|freq_4[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_4[1]~1_combout\ = (\inst1|LessThan2~0_combout\ & ((\inst1|freq_5\(1)))) # (!\inst1|LessThan2~0_combout\ & (\inst1|BCD_4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(1),
	datab => \inst1|freq_5\(1),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_4[1]~1_combout\);

-- Location: LCFF_X51_Y3_N25
\inst1|freq_4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_4[1]~1_combout\,
	sdata => \inst1|freq_3\(1),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_4\(1));

-- Location: LCCOMB_X54_Y3_N16
\inst4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr0~0_combout\ = (\inst1|freq_4\(0) & ((\inst1|freq_4\(3)) # (\inst1|freq_4\(2) $ (\inst1|freq_4\(1))))) # (!\inst1|freq_4\(0) & ((\inst1|freq_4\(1)) # (\inst1|freq_4\(2) $ (\inst1|freq_4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(2),
	datab => \inst1|freq_4\(0),
	datac => \inst1|freq_4\(1),
	datad => \inst1|freq_4\(3),
	combout => \inst4|WideOr0~0_combout\);

-- Location: LCCOMB_X54_Y3_N26
\inst4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr1~0_combout\ = (\inst1|freq_4\(2) & (\inst1|freq_4\(0) & ((\inst1|freq_4\(1)) # (\inst1|freq_4\(3))))) # (!\inst1|freq_4\(2) & (!\inst1|freq_4\(3) & ((\inst1|freq_4\(0)) # (\inst1|freq_4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(2),
	datab => \inst1|freq_4\(0),
	datac => \inst1|freq_4\(1),
	datad => \inst1|freq_4\(3),
	combout => \inst4|WideOr1~0_combout\);

-- Location: LCCOMB_X54_Y3_N0
\inst4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr2~0_combout\ = (\inst1|freq_4\(2) & ((\inst1|freq_4\(1) & (\inst1|freq_4\(0))) # (!\inst1|freq_4\(1) & ((!\inst1|freq_4\(3)))))) # (!\inst1|freq_4\(2) & (\inst1|freq_4\(0) & ((!\inst1|freq_4\(3)) # (!\inst1|freq_4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(2),
	datab => \inst1|freq_4\(0),
	datac => \inst1|freq_4\(1),
	datad => \inst1|freq_4\(3),
	combout => \inst4|WideOr2~0_combout\);

-- Location: LCCOMB_X54_Y3_N30
\inst4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr3~0_combout\ = (\inst1|freq_4\(1) & ((\inst1|freq_4\(2) & (\inst1|freq_4\(0))) # (!\inst1|freq_4\(2) & (!\inst1|freq_4\(0) & \inst1|freq_4\(3))))) # (!\inst1|freq_4\(1) & (!\inst1|freq_4\(3) & (\inst1|freq_4\(2) $ (\inst1|freq_4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(2),
	datab => \inst1|freq_4\(0),
	datac => \inst1|freq_4\(1),
	datad => \inst1|freq_4\(3),
	combout => \inst4|WideOr3~0_combout\);

-- Location: LCCOMB_X54_Y3_N4
\inst4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr4~0_combout\ = (\inst1|freq_4\(2) & (\inst1|freq_4\(3) & ((\inst1|freq_4\(1)) # (!\inst1|freq_4\(0))))) # (!\inst1|freq_4\(2) & (!\inst1|freq_4\(0) & (\inst1|freq_4\(1) & !\inst1|freq_4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(2),
	datab => \inst1|freq_4\(0),
	datac => \inst1|freq_4\(1),
	datad => \inst1|freq_4\(3),
	combout => \inst4|WideOr4~0_combout\);

-- Location: LCCOMB_X54_Y3_N18
\inst4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr5~0_combout\ = (\inst1|freq_4\(1) & ((\inst1|freq_4\(0) & ((\inst1|freq_4\(3)))) # (!\inst1|freq_4\(0) & (\inst1|freq_4\(2))))) # (!\inst1|freq_4\(1) & (\inst1|freq_4\(2) & (\inst1|freq_4\(0) $ (\inst1|freq_4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(2),
	datab => \inst1|freq_4\(0),
	datac => \inst1|freq_4\(1),
	datad => \inst1|freq_4\(3),
	combout => \inst4|WideOr5~0_combout\);

-- Location: LCCOMB_X54_Y3_N24
\inst4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr6~0_combout\ = (\inst1|freq_4\(0) & (\inst1|freq_4\(3) $ (((!\inst1|freq_4\(2) & !\inst1|freq_4\(1)))))) # (!\inst1|freq_4\(0) & (\inst1|freq_4\(2) & (!\inst1|freq_4\(1) & !\inst1|freq_4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_4\(2),
	datab => \inst1|freq_4\(0),
	datac => \inst1|freq_4\(1),
	datad => \inst1|freq_4\(3),
	combout => \inst4|WideOr6~0_combout\);

-- Location: LCCOMB_X50_Y5_N22
\inst1|BCD_6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_6~3_combout\ = (\SW~combout\(0) & \inst1|freq_6\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(0),
	datad => \inst1|freq_6\(0),
	combout => \inst1|BCD_6~3_combout\);

-- Location: LCFF_X50_Y5_N23
\inst1|BCD_6[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_6~3_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_6\(0));

-- Location: LCCOMB_X50_Y3_N14
\inst1|freq_6[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_6[0]~0_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_7\(0))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_6\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_7\(0),
	datab => \inst1|LessThan2~0_combout\,
	datad => \inst1|BCD_6\(0),
	combout => \inst1|freq_6[0]~0_combout\);

-- Location: LCFF_X50_Y3_N15
\inst1|freq_6[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_6[0]~0_combout\,
	sdata => \inst1|freq_5\(0),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_6\(0));

-- Location: LCCOMB_X50_Y3_N20
\inst1|freq_5[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_5[0]~0_combout\ = (\inst1|LessThan2~0_combout\ & ((\inst1|freq_6\(0)))) # (!\inst1|LessThan2~0_combout\ & (\inst1|BCD_5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(0),
	datab => \inst1|freq_6\(0),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_5[0]~0_combout\);

-- Location: LCFF_X50_Y3_N21
\inst1|freq_5[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_5[0]~0_combout\,
	sdata => \inst1|freq_4\(0),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_5\(0));

-- Location: LCCOMB_X50_Y5_N16
\inst1|BCD_6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_6~0_combout\ = (\inst1|freq_6\(3) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(3),
	datac => \SW~combout\(0),
	combout => \inst1|BCD_6~0_combout\);

-- Location: LCFF_X50_Y5_N17
\inst1|BCD_6[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_6~0_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_6\(3));

-- Location: LCCOMB_X49_Y3_N2
\inst1|freq_6[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_6[3]~3_combout\ = (\inst1|LessThan2~0_combout\ & (\inst1|freq_7\(3))) # (!\inst1|LessThan2~0_combout\ & ((\inst1|BCD_6\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_7\(3),
	datab => \inst1|BCD_6\(3),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_6[3]~3_combout\);

-- Location: LCFF_X49_Y3_N3
\inst1|freq_6[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_6[3]~3_combout\,
	sdata => \inst1|freq_5\(3),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_6\(3));

-- Location: LCCOMB_X49_Y3_N26
\inst1|freq_5[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_5[3]~3_combout\ = (\inst1|LessThan2~0_combout\ & ((\inst1|freq_6\(3)))) # (!\inst1|LessThan2~0_combout\ & (\inst1|BCD_5\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(3),
	datab => \inst1|freq_6\(3),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|freq_5[3]~3_combout\);

-- Location: LCFF_X49_Y3_N27
\inst1|freq_5[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_5[3]~3_combout\,
	sdata => \inst1|freq_4\(3),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_5\(3));

-- Location: LCCOMB_X1_Y13_N8
\inst5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr0~0_combout\ = (\inst1|freq_5\(0) & ((\inst1|freq_5\(3)) # (\inst1|freq_5\(2) $ (\inst1|freq_5\(1))))) # (!\inst1|freq_5\(0) & ((\inst1|freq_5\(1)) # (\inst1|freq_5\(3) $ (\inst1|freq_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(0),
	datab => \inst1|freq_5\(3),
	datac => \inst1|freq_5\(2),
	datad => \inst1|freq_5\(1),
	combout => \inst5|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y13_N26
\inst5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr1~0_combout\ = (\inst1|freq_5\(2) & (\inst1|freq_5\(0) & ((\inst1|freq_5\(3)) # (\inst1|freq_5\(1))))) # (!\inst1|freq_5\(2) & (!\inst1|freq_5\(3) & ((\inst1|freq_5\(0)) # (\inst1|freq_5\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(0),
	datab => \inst1|freq_5\(3),
	datac => \inst1|freq_5\(2),
	datad => \inst1|freq_5\(1),
	combout => \inst5|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y13_N0
\inst5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr2~0_combout\ = (\inst1|freq_5\(0) & ((\inst1|freq_5\(2) $ (!\inst1|freq_5\(1))) # (!\inst1|freq_5\(3)))) # (!\inst1|freq_5\(0) & (!\inst1|freq_5\(3) & (\inst1|freq_5\(2) & !\inst1|freq_5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(0),
	datab => \inst1|freq_5\(3),
	datac => \inst1|freq_5\(2),
	datad => \inst1|freq_5\(1),
	combout => \inst5|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\inst5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr3~0_combout\ = (\inst1|freq_5\(1) & ((\inst1|freq_5\(0) & ((\inst1|freq_5\(2)))) # (!\inst1|freq_5\(0) & (\inst1|freq_5\(3) & !\inst1|freq_5\(2))))) # (!\inst1|freq_5\(1) & (!\inst1|freq_5\(3) & (\inst1|freq_5\(0) $ (\inst1|freq_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(0),
	datab => \inst1|freq_5\(3),
	datac => \inst1|freq_5\(2),
	datad => \inst1|freq_5\(1),
	combout => \inst5|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\inst5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr4~0_combout\ = (\inst1|freq_5\(3) & (\inst1|freq_5\(2) & ((\inst1|freq_5\(1)) # (!\inst1|freq_5\(0))))) # (!\inst1|freq_5\(3) & (!\inst1|freq_5\(0) & (!\inst1|freq_5\(2) & \inst1|freq_5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(0),
	datab => \inst1|freq_5\(3),
	datac => \inst1|freq_5\(2),
	datad => \inst1|freq_5\(1),
	combout => \inst5|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y13_N14
\inst5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr5~0_combout\ = (\inst1|freq_5\(3) & ((\inst1|freq_5\(0) & ((\inst1|freq_5\(1)))) # (!\inst1|freq_5\(0) & (\inst1|freq_5\(2))))) # (!\inst1|freq_5\(3) & (\inst1|freq_5\(2) & (\inst1|freq_5\(0) $ (\inst1|freq_5\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(0),
	datab => \inst1|freq_5\(3),
	datac => \inst1|freq_5\(2),
	datad => \inst1|freq_5\(1),
	combout => \inst5|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\inst5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr6~0_combout\ = (\inst1|freq_5\(0) & (\inst1|freq_5\(3) $ (((!\inst1|freq_5\(2) & !\inst1|freq_5\(1)))))) # (!\inst1|freq_5\(0) & (!\inst1|freq_5\(3) & (\inst1|freq_5\(2) & !\inst1|freq_5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(0),
	datab => \inst1|freq_5\(3),
	datac => \inst1|freq_5\(2),
	datad => \inst1|freq_5\(1),
	combout => \inst5|WideOr6~0_combout\);

-- Location: LCCOMB_X51_Y4_N0
\inst1|BCD_7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_7~0_combout\ = (\SW~combout\(0) & \inst1|freq_7\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \inst1|freq_7\(1),
	combout => \inst1|BCD_7~0_combout\);

-- Location: LCFF_X51_Y4_N1
\inst1|BCD_7[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_7~0_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_7\(1));

-- Location: LCCOMB_X51_Y4_N16
\inst1|freq_7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_7~2_combout\ = (\inst1|Equal16~0_combout\ & (\inst1|freq_6\(1))) # (!\inst1|Equal16~0_combout\ & ((\inst1|BCD_7\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_6\(1),
	datac => \inst1|BCD_7\(1),
	datad => \inst1|Equal16~0_combout\,
	combout => \inst1|freq_7~2_combout\);

-- Location: LCCOMB_X51_Y3_N28
\inst1|freq_7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_7~3_combout\ = (\inst1|freq_7~2_combout\ & (!\inst1|freq_2[3]~4_combout\ & ((\inst1|Equal16~0_combout\) # (!\inst1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal16~0_combout\,
	datab => \inst1|LessThan2~0_combout\,
	datac => \inst1|freq_7~2_combout\,
	datad => \inst1|freq_2[3]~4_combout\,
	combout => \inst1|freq_7~3_combout\);

-- Location: LCFF_X51_Y3_N29
\inst1|freq_7[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_7~3_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_7\(1));

-- Location: LCCOMB_X51_Y3_N26
\inst1|freq_6[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_6[1]~1_combout\ = (\inst1|LessThan2~0_combout\ & ((\inst1|freq_7\(1)))) # (!\inst1|LessThan2~0_combout\ & (\inst1|BCD_6\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(1),
	datab => \inst1|LessThan2~0_combout\,
	datad => \inst1|freq_7\(1),
	combout => \inst1|freq_6[1]~1_combout\);

-- Location: LCFF_X51_Y3_N27
\inst1|freq_6[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_6[1]~1_combout\,
	sdata => \inst1|freq_5\(1),
	sclr => \inst1|freq_2[3]~4_combout\,
	sload => \inst1|Equal16~0_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_6\(1));

-- Location: LCCOMB_X47_Y7_N26
\inst6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|WideOr0~0_combout\ = (\inst1|freq_6\(0) & ((\inst1|freq_6\(3)) # (\inst1|freq_6\(1) $ (\inst1|freq_6\(2))))) # (!\inst1|freq_6\(0) & ((\inst1|freq_6\(1)) # (\inst1|freq_6\(3) $ (\inst1|freq_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(3),
	datab => \inst1|freq_6\(0),
	datac => \inst1|freq_6\(1),
	datad => \inst1|freq_6\(2),
	combout => \inst6|WideOr0~0_combout\);

-- Location: LCCOMB_X47_Y6_N20
\inst6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|WideOr1~0_combout\ = (\inst1|freq_6\(1) & ((\inst1|freq_6\(2) & ((\inst1|freq_6\(0)))) # (!\inst1|freq_6\(2) & (!\inst1|freq_6\(3))))) # (!\inst1|freq_6\(1) & (\inst1|freq_6\(0) & (\inst1|freq_6\(3) $ (!\inst1|freq_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(3),
	datab => \inst1|freq_6\(1),
	datac => \inst1|freq_6\(2),
	datad => \inst1|freq_6\(0),
	combout => \inst6|WideOr1~0_combout\);

-- Location: LCCOMB_X47_Y6_N22
\inst6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|WideOr2~0_combout\ = (\inst1|freq_6\(3) & (\inst1|freq_6\(0) & (\inst1|freq_6\(1) $ (!\inst1|freq_6\(2))))) # (!\inst1|freq_6\(3) & ((\inst1|freq_6\(0)) # ((!\inst1|freq_6\(1) & \inst1|freq_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(3),
	datab => \inst1|freq_6\(1),
	datac => \inst1|freq_6\(2),
	datad => \inst1|freq_6\(0),
	combout => \inst6|WideOr2~0_combout\);

-- Location: LCCOMB_X47_Y7_N24
\inst6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|WideOr3~0_combout\ = (\inst1|freq_6\(1) & ((\inst1|freq_6\(0) & ((\inst1|freq_6\(2)))) # (!\inst1|freq_6\(0) & (\inst1|freq_6\(3) & !\inst1|freq_6\(2))))) # (!\inst1|freq_6\(1) & (!\inst1|freq_6\(3) & (\inst1|freq_6\(0) $ (\inst1|freq_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(3),
	datab => \inst1|freq_6\(0),
	datac => \inst1|freq_6\(1),
	datad => \inst1|freq_6\(2),
	combout => \inst6|WideOr3~0_combout\);

-- Location: LCCOMB_X47_Y7_N22
\inst6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|WideOr4~0_combout\ = (\inst1|freq_6\(3) & (\inst1|freq_6\(2) & ((\inst1|freq_6\(1)) # (!\inst1|freq_6\(0))))) # (!\inst1|freq_6\(3) & (!\inst1|freq_6\(0) & (\inst1|freq_6\(1) & !\inst1|freq_6\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(3),
	datab => \inst1|freq_6\(0),
	datac => \inst1|freq_6\(1),
	datad => \inst1|freq_6\(2),
	combout => \inst6|WideOr4~0_combout\);

-- Location: LCCOMB_X47_Y7_N28
\inst6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|WideOr5~0_combout\ = (\inst1|freq_6\(3) & ((\inst1|freq_6\(0) & (\inst1|freq_6\(1))) # (!\inst1|freq_6\(0) & ((\inst1|freq_6\(2)))))) # (!\inst1|freq_6\(3) & (\inst1|freq_6\(2) & (\inst1|freq_6\(0) $ (\inst1|freq_6\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(3),
	datab => \inst1|freq_6\(0),
	datac => \inst1|freq_6\(1),
	datad => \inst1|freq_6\(2),
	combout => \inst6|WideOr5~0_combout\);

-- Location: LCCOMB_X47_Y7_N30
\inst6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|WideOr6~0_combout\ = (\inst1|freq_6\(3) & (\inst1|freq_6\(0) & ((\inst1|freq_6\(1)) # (\inst1|freq_6\(2))))) # (!\inst1|freq_6\(3) & (!\inst1|freq_6\(1) & (\inst1|freq_6\(0) $ (\inst1|freq_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(3),
	datab => \inst1|freq_6\(0),
	datac => \inst1|freq_6\(1),
	datad => \inst1|freq_6\(2),
	combout => \inst6|WideOr6~0_combout\);

-- Location: LCCOMB_X50_Y5_N18
\inst1|BCD_7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_7~2_combout\ = (\SW~combout\(0) & \inst1|freq_7\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \inst1|freq_7\(3),
	combout => \inst1|BCD_7~2_combout\);

-- Location: LCFF_X50_Y5_N19
\inst1|BCD_7[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_7~2_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_7\(3));

-- Location: LCCOMB_X50_Y5_N2
\inst1|freq_7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_7~6_combout\ = (\inst1|Equal16~0_combout\ & (\inst1|freq_6\(3))) # (!\inst1|Equal16~0_combout\ & ((\inst1|BCD_7\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(3),
	datab => \inst1|BCD_7\(3),
	datac => \inst1|Equal16~0_combout\,
	combout => \inst1|freq_7~6_combout\);

-- Location: LCCOMB_X50_Y3_N6
\inst1|freq_7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_7~7_combout\ = (\inst1|freq_7~6_combout\ & (!\inst1|freq_2[3]~4_combout\ & ((\inst1|Equal16~0_combout\) # (!\inst1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal16~0_combout\,
	datab => \inst1|LessThan2~0_combout\,
	datac => \inst1|freq_7~6_combout\,
	datad => \inst1|freq_2[3]~4_combout\,
	combout => \inst1|freq_7~7_combout\);

-- Location: LCFF_X50_Y3_N7
\inst1|freq_7[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_7~7_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_7\(3));

-- Location: LCCOMB_X50_Y5_N24
\inst1|BCD_7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_7~1_combout\ = (\SW~combout\(0) & \inst1|freq_7\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datad => \inst1|freq_7\(0),
	combout => \inst1|BCD_7~1_combout\);

-- Location: LCFF_X50_Y5_N25
\inst1|BCD_7[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_7~1_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_7\(0));

-- Location: LCCOMB_X50_Y5_N26
\inst1|freq_7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_7~0_combout\ = (\inst1|Equal16~0_combout\ & (\inst1|freq_6\(0))) # (!\inst1|Equal16~0_combout\ & ((\inst1|BCD_7\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_6\(0),
	datab => \inst1|Equal16~0_combout\,
	datac => \inst1|BCD_7\(0),
	combout => \inst1|freq_7~0_combout\);

-- Location: LCCOMB_X49_Y3_N18
\inst1|freq_7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_7~1_combout\ = (!\inst1|freq_2[3]~4_combout\ & (\inst1|freq_7~0_combout\ & ((\inst1|Equal16~0_combout\) # (!\inst1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan2~0_combout\,
	datab => \inst1|Equal16~0_combout\,
	datac => \inst1|freq_2[3]~4_combout\,
	datad => \inst1|freq_7~0_combout\,
	combout => \inst1|freq_7~1_combout\);

-- Location: LCFF_X49_Y3_N19
\inst1|freq_7[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|freq_7~1_combout\,
	ena => \inst1|freq_2[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_7\(0));

-- Location: LCCOMB_X46_Y6_N0
\inst7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr0~0_combout\ = (\inst1|freq_7\(0) & ((\inst1|freq_7\(3)) # (\inst1|freq_7\(1) $ (\inst1|freq_7\(2))))) # (!\inst1|freq_7\(0) & ((\inst1|freq_7\(1)) # (\inst1|freq_7\(3) $ (\inst1|freq_7\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_7\(3),
	datab => \inst1|freq_7\(1),
	datac => \inst1|freq_7\(0),
	datad => \inst1|freq_7\(2),
	combout => \inst7|WideOr0~0_combout\);

-- Location: LCCOMB_X46_Y7_N4
\inst7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr1~0_combout\ = (\inst1|freq_7\(2) & (\inst1|freq_7\(0) & ((\inst1|freq_7\(3)) # (\inst1|freq_7\(1))))) # (!\inst1|freq_7\(2) & (!\inst1|freq_7\(3) & ((\inst1|freq_7\(0)) # (\inst1|freq_7\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_7\(3),
	datab => \inst1|freq_7\(2),
	datac => \inst1|freq_7\(0),
	datad => \inst1|freq_7\(1),
	combout => \inst7|WideOr1~0_combout\);

-- Location: LCCOMB_X46_Y7_N2
\inst7|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr2~0_combout\ = (\inst1|freq_7\(3) & (\inst1|freq_7\(0) & (\inst1|freq_7\(2) $ (!\inst1|freq_7\(1))))) # (!\inst1|freq_7\(3) & ((\inst1|freq_7\(0)) # ((\inst1|freq_7\(2) & !\inst1|freq_7\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_7\(3),
	datab => \inst1|freq_7\(2),
	datac => \inst1|freq_7\(0),
	datad => \inst1|freq_7\(1),
	combout => \inst7|WideOr2~0_combout\);

-- Location: LCCOMB_X46_Y6_N2
\inst7|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr3~0_combout\ = (\inst1|freq_7\(1) & ((\inst1|freq_7\(0) & ((\inst1|freq_7\(2)))) # (!\inst1|freq_7\(0) & (\inst1|freq_7\(3) & !\inst1|freq_7\(2))))) # (!\inst1|freq_7\(1) & (!\inst1|freq_7\(3) & (\inst1|freq_7\(0) $ (\inst1|freq_7\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_7\(3),
	datab => \inst1|freq_7\(1),
	datac => \inst1|freq_7\(0),
	datad => \inst1|freq_7\(2),
	combout => \inst7|WideOr3~0_combout\);

-- Location: LCCOMB_X46_Y6_N16
\inst7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr4~0_combout\ = (\inst1|freq_7\(3) & (\inst1|freq_7\(2) & ((\inst1|freq_7\(1)) # (!\inst1|freq_7\(0))))) # (!\inst1|freq_7\(3) & (\inst1|freq_7\(1) & (!\inst1|freq_7\(0) & !\inst1|freq_7\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_7\(3),
	datab => \inst1|freq_7\(1),
	datac => \inst1|freq_7\(0),
	datad => \inst1|freq_7\(2),
	combout => \inst7|WideOr4~0_combout\);

-- Location: LCCOMB_X46_Y6_N18
\inst7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr5~0_combout\ = (\inst1|freq_7\(3) & ((\inst1|freq_7\(0) & (\inst1|freq_7\(1))) # (!\inst1|freq_7\(0) & ((\inst1|freq_7\(2)))))) # (!\inst1|freq_7\(3) & (\inst1|freq_7\(2) & (\inst1|freq_7\(1) $ (\inst1|freq_7\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_7\(3),
	datab => \inst1|freq_7\(1),
	datac => \inst1|freq_7\(0),
	datad => \inst1|freq_7\(2),
	combout => \inst7|WideOr5~0_combout\);

-- Location: LCCOMB_X46_Y7_N0
\inst7|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WideOr6~0_combout\ = (\inst1|freq_7\(3) & (\inst1|freq_7\(0) & ((\inst1|freq_7\(2)) # (\inst1|freq_7\(1))))) # (!\inst1|freq_7\(3) & (!\inst1|freq_7\(1) & (\inst1|freq_7\(2) $ (\inst1|freq_7\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_7\(3),
	datab => \inst1|freq_7\(2),
	datac => \inst1|freq_7\(0),
	datad => \inst1|freq_7\(1),
	combout => \inst7|WideOr6~0_combout\);

-- Location: LCCOMB_X31_Y22_N18
\inst1|freq_div|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|count~3_combout\ = (\inst1|freq_div|Add0~14_combout\ & ((!\inst1|freq_div|Equal0~9_combout\) # (!\inst1|freq_div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|Add0~14_combout\,
	datab => \inst1|freq_div|Equal0~4_combout\,
	datad => \inst1|freq_div|Equal0~9_combout\,
	combout => \inst1|freq_div|count~3_combout\);

-- Location: LCFF_X31_Y22_N19
\inst1|freq_div|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(7));

-- Location: LCCOMB_X30_Y22_N0
\inst1|freq_div|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~0_combout\ = \inst1|freq_div|count\(0) $ (VCC)
-- \inst1|freq_div|Add0~1\ = CARRY(\inst1|freq_div|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(0),
	datad => VCC,
	combout => \inst1|freq_div|Add0~0_combout\,
	cout => \inst1|freq_div|Add0~1\);

-- Location: LCCOMB_X30_Y22_N2
\inst1|freq_div|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~2_combout\ = (\inst1|freq_div|count\(1) & (!\inst1|freq_div|Add0~1\)) # (!\inst1|freq_div|count\(1) & ((\inst1|freq_div|Add0~1\) # (GND)))
-- \inst1|freq_div|Add0~3\ = CARRY((!\inst1|freq_div|Add0~1\) # (!\inst1|freq_div|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(1),
	datad => VCC,
	cin => \inst1|freq_div|Add0~1\,
	combout => \inst1|freq_div|Add0~2_combout\,
	cout => \inst1|freq_div|Add0~3\);

-- Location: LCFF_X30_Y22_N3
\inst1|freq_div|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(1));

-- Location: LCCOMB_X30_Y22_N4
\inst1|freq_div|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~4_combout\ = (\inst1|freq_div|count\(2) & (\inst1|freq_div|Add0~3\ $ (GND))) # (!\inst1|freq_div|count\(2) & (!\inst1|freq_div|Add0~3\ & VCC))
-- \inst1|freq_div|Add0~5\ = CARRY((\inst1|freq_div|count\(2) & !\inst1|freq_div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(2),
	datad => VCC,
	cin => \inst1|freq_div|Add0~3\,
	combout => \inst1|freq_div|Add0~4_combout\,
	cout => \inst1|freq_div|Add0~5\);

-- Location: LCFF_X30_Y22_N5
\inst1|freq_div|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(2));

-- Location: LCCOMB_X30_Y22_N6
\inst1|freq_div|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~6_combout\ = (\inst1|freq_div|count\(3) & (!\inst1|freq_div|Add0~5\)) # (!\inst1|freq_div|count\(3) & ((\inst1|freq_div|Add0~5\) # (GND)))
-- \inst1|freq_div|Add0~7\ = CARRY((!\inst1|freq_div|Add0~5\) # (!\inst1|freq_div|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(3),
	datad => VCC,
	cin => \inst1|freq_div|Add0~5\,
	combout => \inst1|freq_div|Add0~6_combout\,
	cout => \inst1|freq_div|Add0~7\);

-- Location: LCCOMB_X31_Y22_N24
\inst1|freq_div|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|count~4_combout\ = (\inst1|freq_div|Add0~6_combout\ & ((!\inst1|freq_div|Equal0~9_combout\) # (!\inst1|freq_div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|Equal0~4_combout\,
	datac => \inst1|freq_div|Add0~6_combout\,
	datad => \inst1|freq_div|Equal0~9_combout\,
	combout => \inst1|freq_div|count~4_combout\);

-- Location: LCFF_X31_Y22_N25
\inst1|freq_div|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(3));

-- Location: LCCOMB_X30_Y22_N8
\inst1|freq_div|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~8_combout\ = (\inst1|freq_div|count\(4) & (\inst1|freq_div|Add0~7\ $ (GND))) # (!\inst1|freq_div|count\(4) & (!\inst1|freq_div|Add0~7\ & VCC))
-- \inst1|freq_div|Add0~9\ = CARRY((\inst1|freq_div|count\(4) & !\inst1|freq_div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(4),
	datad => VCC,
	cin => \inst1|freq_div|Add0~7\,
	combout => \inst1|freq_div|Add0~8_combout\,
	cout => \inst1|freq_div|Add0~9\);

-- Location: LCFF_X30_Y22_N9
\inst1|freq_div|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(4));

-- Location: LCCOMB_X30_Y22_N12
\inst1|freq_div|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~12_combout\ = (\inst1|freq_div|count\(6) & (\inst1|freq_div|Add0~11\ $ (GND))) # (!\inst1|freq_div|count\(6) & (!\inst1|freq_div|Add0~11\ & VCC))
-- \inst1|freq_div|Add0~13\ = CARRY((\inst1|freq_div|count\(6) & !\inst1|freq_div|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(6),
	datad => VCC,
	cin => \inst1|freq_div|Add0~11\,
	combout => \inst1|freq_div|Add0~12_combout\,
	cout => \inst1|freq_div|Add0~13\);

-- Location: LCFF_X30_Y22_N13
\inst1|freq_div|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(6));

-- Location: LCCOMB_X31_Y22_N22
\inst1|freq_div|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~7_combout\ = (!\inst1|freq_div|count\(5) & (\inst1|freq_div|count\(7) & (!\inst1|freq_div|count\(6) & !\inst1|freq_div|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(5),
	datab => \inst1|freq_div|count\(7),
	datac => \inst1|freq_div|count\(6),
	datad => \inst1|freq_div|count\(4),
	combout => \inst1|freq_div|Equal0~7_combout\);

-- Location: LCCOMB_X31_Y22_N4
\inst1|freq_div|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~5_combout\ = (!\inst1|freq_div|count\(15) & (!\inst1|freq_div|count\(13) & (\inst1|freq_div|count\(12) & !\inst1|freq_div|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(15),
	datab => \inst1|freq_div|count\(13),
	datac => \inst1|freq_div|count\(12),
	datad => \inst1|freq_div|count\(14),
	combout => \inst1|freq_div|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y22_N14
\inst1|freq_div|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|count~5_combout\ = (\inst1|freq_div|Add0~0_combout\ & ((!\inst1|freq_div|Equal0~4_combout\) # (!\inst1|freq_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|Equal0~9_combout\,
	datac => \inst1|freq_div|Add0~0_combout\,
	datad => \inst1|freq_div|Equal0~4_combout\,
	combout => \inst1|freq_div|count~5_combout\);

-- Location: LCFF_X30_Y22_N17
\inst1|freq_div|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \inst1|freq_div|count~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(0));

-- Location: LCCOMB_X31_Y22_N6
\inst1|freq_div|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~8_combout\ = (!\inst1|freq_div|count\(1) & (!\inst1|freq_div|count\(2) & (\inst1|freq_div|count\(3) & !\inst1|freq_div|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(1),
	datab => \inst1|freq_div|count\(2),
	datac => \inst1|freq_div|count\(3),
	datad => \inst1|freq_div|count\(0),
	combout => \inst1|freq_div|Equal0~8_combout\);

-- Location: LCCOMB_X31_Y22_N26
\inst1|freq_div|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~9_combout\ = (\inst1|freq_div|Equal0~6_combout\ & (\inst1|freq_div|Equal0~7_combout\ & (\inst1|freq_div|Equal0~5_combout\ & \inst1|freq_div|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|Equal0~6_combout\,
	datab => \inst1|freq_div|Equal0~7_combout\,
	datac => \inst1|freq_div|Equal0~5_combout\,
	datad => \inst1|freq_div|Equal0~8_combout\,
	combout => \inst1|freq_div|Equal0~9_combout\);

-- Location: LCCOMB_X30_Y22_N16
\inst1|freq_div|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~16_combout\ = (\inst1|freq_div|count\(8) & (\inst1|freq_div|Add0~15\ $ (GND))) # (!\inst1|freq_div|count\(8) & (!\inst1|freq_div|Add0~15\ & VCC))
-- \inst1|freq_div|Add0~17\ = CARRY((\inst1|freq_div|count\(8) & !\inst1|freq_div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(8),
	datad => VCC,
	cin => \inst1|freq_div|Add0~15\,
	combout => \inst1|freq_div|Add0~16_combout\,
	cout => \inst1|freq_div|Add0~17\);

-- Location: LCCOMB_X31_Y22_N12
\inst1|freq_div|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|count~2_combout\ = (\inst1|freq_div|Add0~16_combout\ & ((!\inst1|freq_div|Equal0~4_combout\) # (!\inst1|freq_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|Equal0~9_combout\,
	datac => \inst1|freq_div|Add0~16_combout\,
	datad => \inst1|freq_div|Equal0~4_combout\,
	combout => \inst1|freq_div|count~2_combout\);

-- Location: LCFF_X31_Y22_N13
\inst1|freq_div|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(8));

-- Location: LCCOMB_X30_Y22_N18
\inst1|freq_div|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~18_combout\ = (\inst1|freq_div|count\(9) & (!\inst1|freq_div|Add0~17\)) # (!\inst1|freq_div|count\(9) & ((\inst1|freq_div|Add0~17\) # (GND)))
-- \inst1|freq_div|Add0~19\ = CARRY((!\inst1|freq_div|Add0~17\) # (!\inst1|freq_div|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(9),
	datad => VCC,
	cin => \inst1|freq_div|Add0~17\,
	combout => \inst1|freq_div|Add0~18_combout\,
	cout => \inst1|freq_div|Add0~19\);

-- Location: LCCOMB_X31_Y22_N0
\inst1|freq_div|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|count~1_combout\ = (\inst1|freq_div|Add0~18_combout\ & ((!\inst1|freq_div|Equal0~4_combout\) # (!\inst1|freq_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|Equal0~9_combout\,
	datac => \inst1|freq_div|Add0~18_combout\,
	datad => \inst1|freq_div|Equal0~4_combout\,
	combout => \inst1|freq_div|count~1_combout\);

-- Location: LCFF_X31_Y22_N1
\inst1|freq_div|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(9));

-- Location: LCCOMB_X30_Y22_N22
\inst1|freq_div|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~22_combout\ = (\inst1|freq_div|count\(11) & (!\inst1|freq_div|Add0~21\)) # (!\inst1|freq_div|count\(11) & ((\inst1|freq_div|Add0~21\) # (GND)))
-- \inst1|freq_div|Add0~23\ = CARRY((!\inst1|freq_div|Add0~21\) # (!\inst1|freq_div|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(11),
	datad => VCC,
	cin => \inst1|freq_div|Add0~21\,
	combout => \inst1|freq_div|Add0~22_combout\,
	cout => \inst1|freq_div|Add0~23\);

-- Location: LCFF_X30_Y22_N23
\inst1|freq_div|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(11));

-- Location: LCCOMB_X30_Y22_N24
\inst1|freq_div|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~24_combout\ = (\inst1|freq_div|count\(12) & (\inst1|freq_div|Add0~23\ $ (GND))) # (!\inst1|freq_div|count\(12) & (!\inst1|freq_div|Add0~23\ & VCC))
-- \inst1|freq_div|Add0~25\ = CARRY((\inst1|freq_div|count\(12) & !\inst1|freq_div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(12),
	datad => VCC,
	cin => \inst1|freq_div|Add0~23\,
	combout => \inst1|freq_div|Add0~24_combout\,
	cout => \inst1|freq_div|Add0~25\);

-- Location: LCCOMB_X31_Y22_N30
\inst1|freq_div|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|count~0_combout\ = (\inst1|freq_div|Add0~24_combout\ & ((!\inst1|freq_div|Equal0~9_combout\) # (!\inst1|freq_div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|Equal0~4_combout\,
	datac => \inst1|freq_div|Equal0~9_combout\,
	datad => \inst1|freq_div|Add0~24_combout\,
	combout => \inst1|freq_div|count~0_combout\);

-- Location: LCFF_X31_Y22_N31
\inst1|freq_div|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(12));

-- Location: LCCOMB_X30_Y22_N26
\inst1|freq_div|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~26_combout\ = (\inst1|freq_div|count\(13) & (!\inst1|freq_div|Add0~25\)) # (!\inst1|freq_div|count\(13) & ((\inst1|freq_div|Add0~25\) # (GND)))
-- \inst1|freq_div|Add0~27\ = CARRY((!\inst1|freq_div|Add0~25\) # (!\inst1|freq_div|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(13),
	datad => VCC,
	cin => \inst1|freq_div|Add0~25\,
	combout => \inst1|freq_div|Add0~26_combout\,
	cout => \inst1|freq_div|Add0~27\);

-- Location: LCFF_X30_Y22_N27
\inst1|freq_div|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(13));

-- Location: LCCOMB_X30_Y22_N28
\inst1|freq_div|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~28_combout\ = (\inst1|freq_div|count\(14) & (\inst1|freq_div|Add0~27\ $ (GND))) # (!\inst1|freq_div|count\(14) & (!\inst1|freq_div|Add0~27\ & VCC))
-- \inst1|freq_div|Add0~29\ = CARRY((\inst1|freq_div|count\(14) & !\inst1|freq_div|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(14),
	datad => VCC,
	cin => \inst1|freq_div|Add0~27\,
	combout => \inst1|freq_div|Add0~28_combout\,
	cout => \inst1|freq_div|Add0~29\);

-- Location: LCFF_X30_Y22_N29
\inst1|freq_div|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(14));

-- Location: LCCOMB_X30_Y22_N30
\inst1|freq_div|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~30_combout\ = (\inst1|freq_div|count\(15) & (!\inst1|freq_div|Add0~29\)) # (!\inst1|freq_div|count\(15) & ((\inst1|freq_div|Add0~29\) # (GND)))
-- \inst1|freq_div|Add0~31\ = CARRY((!\inst1|freq_div|Add0~29\) # (!\inst1|freq_div|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(15),
	datad => VCC,
	cin => \inst1|freq_div|Add0~29\,
	combout => \inst1|freq_div|Add0~30_combout\,
	cout => \inst1|freq_div|Add0~31\);

-- Location: LCFF_X30_Y22_N31
\inst1|freq_div|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(15));

-- Location: LCCOMB_X30_Y21_N0
\inst1|freq_div|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~32_combout\ = (\inst1|freq_div|count\(16) & (\inst1|freq_div|Add0~31\ $ (GND))) # (!\inst1|freq_div|count\(16) & (!\inst1|freq_div|Add0~31\ & VCC))
-- \inst1|freq_div|Add0~33\ = CARRY((\inst1|freq_div|count\(16) & !\inst1|freq_div|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(16),
	datad => VCC,
	cin => \inst1|freq_div|Add0~31\,
	combout => \inst1|freq_div|Add0~32_combout\,
	cout => \inst1|freq_div|Add0~33\);

-- Location: LCFF_X30_Y21_N1
\inst1|freq_div|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(16));

-- Location: LCCOMB_X30_Y21_N2
\inst1|freq_div|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~34_combout\ = (\inst1|freq_div|count\(17) & (!\inst1|freq_div|Add0~33\)) # (!\inst1|freq_div|count\(17) & ((\inst1|freq_div|Add0~33\) # (GND)))
-- \inst1|freq_div|Add0~35\ = CARRY((!\inst1|freq_div|Add0~33\) # (!\inst1|freq_div|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(17),
	datad => VCC,
	cin => \inst1|freq_div|Add0~33\,
	combout => \inst1|freq_div|Add0~34_combout\,
	cout => \inst1|freq_div|Add0~35\);

-- Location: LCFF_X30_Y21_N3
\inst1|freq_div|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(17));

-- Location: LCCOMB_X30_Y21_N4
\inst1|freq_div|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~36_combout\ = (\inst1|freq_div|count\(18) & (\inst1|freq_div|Add0~35\ $ (GND))) # (!\inst1|freq_div|count\(18) & (!\inst1|freq_div|Add0~35\ & VCC))
-- \inst1|freq_div|Add0~37\ = CARRY((\inst1|freq_div|count\(18) & !\inst1|freq_div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(18),
	datad => VCC,
	cin => \inst1|freq_div|Add0~35\,
	combout => \inst1|freq_div|Add0~36_combout\,
	cout => \inst1|freq_div|Add0~37\);

-- Location: LCFF_X30_Y21_N5
\inst1|freq_div|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(18));

-- Location: LCCOMB_X30_Y21_N6
\inst1|freq_div|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~38_combout\ = (\inst1|freq_div|count\(19) & (!\inst1|freq_div|Add0~37\)) # (!\inst1|freq_div|count\(19) & ((\inst1|freq_div|Add0~37\) # (GND)))
-- \inst1|freq_div|Add0~39\ = CARRY((!\inst1|freq_div|Add0~37\) # (!\inst1|freq_div|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(19),
	datad => VCC,
	cin => \inst1|freq_div|Add0~37\,
	combout => \inst1|freq_div|Add0~38_combout\,
	cout => \inst1|freq_div|Add0~39\);

-- Location: LCCOMB_X30_Y21_N8
\inst1|freq_div|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~40_combout\ = (\inst1|freq_div|count\(20) & (\inst1|freq_div|Add0~39\ $ (GND))) # (!\inst1|freq_div|count\(20) & (!\inst1|freq_div|Add0~39\ & VCC))
-- \inst1|freq_div|Add0~41\ = CARRY((\inst1|freq_div|count\(20) & !\inst1|freq_div|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(20),
	datad => VCC,
	cin => \inst1|freq_div|Add0~39\,
	combout => \inst1|freq_div|Add0~40_combout\,
	cout => \inst1|freq_div|Add0~41\);

-- Location: LCFF_X30_Y21_N9
\inst1|freq_div|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(20));

-- Location: LCCOMB_X30_Y21_N14
\inst1|freq_div|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~46_combout\ = (\inst1|freq_div|count\(23) & (!\inst1|freq_div|Add0~45\)) # (!\inst1|freq_div|count\(23) & ((\inst1|freq_div|Add0~45\) # (GND)))
-- \inst1|freq_div|Add0~47\ = CARRY((!\inst1|freq_div|Add0~45\) # (!\inst1|freq_div|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(23),
	datad => VCC,
	cin => \inst1|freq_div|Add0~45\,
	combout => \inst1|freq_div|Add0~46_combout\,
	cout => \inst1|freq_div|Add0~47\);

-- Location: LCFF_X30_Y21_N15
\inst1|freq_div|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(23));

-- Location: LCCOMB_X30_Y21_N16
\inst1|freq_div|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~48_combout\ = (\inst1|freq_div|count\(24) & (\inst1|freq_div|Add0~47\ $ (GND))) # (!\inst1|freq_div|count\(24) & (!\inst1|freq_div|Add0~47\ & VCC))
-- \inst1|freq_div|Add0~49\ = CARRY((\inst1|freq_div|count\(24) & !\inst1|freq_div|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(24),
	datad => VCC,
	cin => \inst1|freq_div|Add0~47\,
	combout => \inst1|freq_div|Add0~48_combout\,
	cout => \inst1|freq_div|Add0~49\);

-- Location: LCFF_X30_Y21_N17
\inst1|freq_div|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(24));

-- Location: LCCOMB_X30_Y21_N18
\inst1|freq_div|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~50_combout\ = (\inst1|freq_div|count\(25) & (!\inst1|freq_div|Add0~49\)) # (!\inst1|freq_div|count\(25) & ((\inst1|freq_div|Add0~49\) # (GND)))
-- \inst1|freq_div|Add0~51\ = CARRY((!\inst1|freq_div|Add0~49\) # (!\inst1|freq_div|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(25),
	datad => VCC,
	cin => \inst1|freq_div|Add0~49\,
	combout => \inst1|freq_div|Add0~50_combout\,
	cout => \inst1|freq_div|Add0~51\);

-- Location: LCFF_X30_Y21_N19
\inst1|freq_div|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(25));

-- Location: LCCOMB_X30_Y21_N22
\inst1|freq_div|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~54_combout\ = (\inst1|freq_div|count\(27) & (!\inst1|freq_div|Add0~53\)) # (!\inst1|freq_div|count\(27) & ((\inst1|freq_div|Add0~53\) # (GND)))
-- \inst1|freq_div|Add0~55\ = CARRY((!\inst1|freq_div|Add0~53\) # (!\inst1|freq_div|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(27),
	datad => VCC,
	cin => \inst1|freq_div|Add0~53\,
	combout => \inst1|freq_div|Add0~54_combout\,
	cout => \inst1|freq_div|Add0~55\);

-- Location: LCFF_X30_Y21_N23
\inst1|freq_div|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(27));

-- Location: LCCOMB_X31_Y21_N2
\inst1|freq_div|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~1_combout\ = (!\inst1|freq_div|count\(26) & (!\inst1|freq_div|count\(24) & (!\inst1|freq_div|count\(27) & !\inst1|freq_div|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(26),
	datab => \inst1|freq_div|count\(24),
	datac => \inst1|freq_div|count\(27),
	datad => \inst1|freq_div|count\(25),
	combout => \inst1|freq_div|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y21_N24
\inst1|freq_div|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~56_combout\ = (\inst1|freq_div|count\(28) & (\inst1|freq_div|Add0~55\ $ (GND))) # (!\inst1|freq_div|count\(28) & (!\inst1|freq_div|Add0~55\ & VCC))
-- \inst1|freq_div|Add0~57\ = CARRY((\inst1|freq_div|count\(28) & !\inst1|freq_div|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(28),
	datad => VCC,
	cin => \inst1|freq_div|Add0~55\,
	combout => \inst1|freq_div|Add0~56_combout\,
	cout => \inst1|freq_div|Add0~57\);

-- Location: LCFF_X30_Y21_N25
\inst1|freq_div|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(28));

-- Location: LCCOMB_X30_Y21_N26
\inst1|freq_div|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Add0~58_combout\ = (\inst1|freq_div|count\(29) & (!\inst1|freq_div|Add0~57\)) # (!\inst1|freq_div|count\(29) & ((\inst1|freq_div|Add0~57\) # (GND)))
-- \inst1|freq_div|Add0~59\ = CARRY((!\inst1|freq_div|Add0~57\) # (!\inst1|freq_div|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|count\(29),
	datad => VCC,
	cin => \inst1|freq_div|Add0~57\,
	combout => \inst1|freq_div|Add0~58_combout\,
	cout => \inst1|freq_div|Add0~59\);

-- Location: LCFF_X30_Y21_N27
\inst1|freq_div|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(29));

-- Location: LCFF_X30_Y21_N29
\inst1|freq_div|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(30));

-- Location: LCCOMB_X31_Y21_N24
\inst1|freq_div|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~0_combout\ = (!\inst1|freq_div|count\(31) & (!\inst1|freq_div|count\(28) & (!\inst1|freq_div|count\(30) & !\inst1|freq_div|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(31),
	datab => \inst1|freq_div|count\(28),
	datac => \inst1|freq_div|count\(30),
	datad => \inst1|freq_div|count\(29),
	combout => \inst1|freq_div|Equal0~0_combout\);

-- Location: LCFF_X30_Y21_N7
\inst1|freq_div|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|count\(19));

-- Location: LCCOMB_X31_Y21_N18
\inst1|freq_div|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~3_combout\ = (!\inst1|freq_div|count\(16) & (!\inst1|freq_div|count\(19) & (!\inst1|freq_div|count\(18) & !\inst1|freq_div|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|count\(16),
	datab => \inst1|freq_div|count\(19),
	datac => \inst1|freq_div|count\(18),
	datad => \inst1|freq_div|count\(17),
	combout => \inst1|freq_div|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y21_N0
\inst1|freq_div|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|Equal0~4_combout\ = (\inst1|freq_div|Equal0~2_combout\ & (\inst1|freq_div|Equal0~1_combout\ & (\inst1|freq_div|Equal0~0_combout\ & \inst1|freq_div|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_div|Equal0~2_combout\,
	datab => \inst1|freq_div|Equal0~1_combout\,
	datac => \inst1|freq_div|Equal0~0_combout\,
	datad => \inst1|freq_div|Equal0~3_combout\,
	combout => \inst1|freq_div|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y22_N16
\inst1|freq_div|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|freq_div|q~0_combout\ = \inst1|freq_div|q~regout\ $ (((\inst1|freq_div|Equal0~4_combout\ & \inst1|freq_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_div|Equal0~4_combout\,
	datac => \inst1|freq_div|q~regout\,
	datad => \inst1|freq_div|Equal0~9_combout\,
	combout => \inst1|freq_div|q~0_combout\);

-- Location: LCFF_X31_Y22_N17
\inst1|freq_div|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|freq_div|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|freq_div|q~regout\);

-- Location: CLKCTRL_G11
\inst1|freq_div|q~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|freq_div|q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|freq_div|q~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y4_N2
\inst1|next_page~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|next_page~1_combout\ = (\inst1|next_page~regout\ & ((\inst1|debounced_keypad_pressed~regout\) # (!\inst1|keypad_mod_inst|data_valid~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounced_keypad_pressed~regout\,
	datac => \inst1|next_page~regout\,
	datad => \inst1|keypad_mod_inst|data_valid~regout\,
	combout => \inst1|next_page~1_combout\);

-- Location: LCCOMB_X49_Y4_N20
\inst1|Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal6~2_combout\ = (!\inst1|keypad_mod_inst|out_keys\(4) & !\inst1|keypad_mod_inst|out_keys\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keypad_mod_inst|out_keys\(4),
	datad => \inst1|keypad_mod_inst|out_keys\(3),
	combout => \inst1|Equal6~2_combout\);

-- Location: LCCOMB_X50_Y4_N20
\inst1|Equal15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal15~2_combout\ = (\inst1|Equal15~1_combout\ & (\inst1|Equal6~2_combout\ & (\inst1|keypad_mod_inst|out_keys\(15) & \inst1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal15~1_combout\,
	datab => \inst1|Equal6~2_combout\,
	datac => \inst1|keypad_mod_inst|out_keys\(15),
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|Equal15~2_combout\);

-- Location: LCCOMB_X51_Y4_N28
\inst1|next_page~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|next_page~2_combout\ = (\inst1|next_page~1_combout\) # ((\inst1|Equal15~2_combout\ & \inst1|next_page~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|next_page~1_combout\,
	datac => \inst1|Equal15~2_combout\,
	datad => \inst1|next_page~0_combout\,
	combout => \inst1|next_page~2_combout\);

-- Location: LCFF_X51_Y4_N29
\inst1|next_page\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|next_page~2_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|next_page~regout\);

-- Location: LCCOMB_X50_Y4_N8
\inst1|sel_C~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|sel_C~0_combout\ = \inst1|sel_C~regout\ $ (((\inst1|Equal14~1_combout\ & \inst1|next_page~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal14~1_combout\,
	datac => \inst1|sel_C~regout\,
	datad => \inst1|next_page~0_combout\,
	combout => \inst1|sel_C~0_combout\);

-- Location: LCFF_X50_Y4_N9
\inst1|sel_C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|sel_C~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sel_C~regout\);

-- Location: LCCOMB_X50_Y4_N30
\inst1|sel_B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|sel_B~0_combout\ = \inst1|sel_B~regout\ $ (((\inst1|next_page~0_combout\ & \inst1|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|next_page~0_combout\,
	datac => \inst1|sel_B~regout\,
	datad => \inst1|Equal13~1_combout\,
	combout => \inst1|sel_B~0_combout\);

-- Location: LCFF_X50_Y4_N31
\inst1|sel_B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|sel_B~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sel_B~regout\);

-- Location: LCCOMB_X51_Y4_N22
\inst1|sel_A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|sel_A~0_combout\ = \inst1|sel_A~regout\ $ (((\inst1|Equal12~0_combout\ & \inst1|next_page~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal12~0_combout\,
	datac => \inst1|sel_A~regout\,
	datad => \inst1|next_page~0_combout\,
	combout => \inst1|sel_A~0_combout\);

-- Location: LCFF_X51_Y4_N23
\inst1|sel_A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|sel_A~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sel_A~regout\);

-- Location: LCCOMB_X51_Y8_N18
\inst1|BCD_C2_conv_inst|Add25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add25~0_combout\ = (\inst1|BCD_7\(0) & (\inst1|BCD_7\(2) $ (VCC))) # (!\inst1|BCD_7\(0) & (\inst1|BCD_7\(2) & VCC))
-- \inst1|BCD_C2_conv_inst|Add25~1\ = CARRY((\inst1|BCD_7\(0) & \inst1|BCD_7\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(0),
	datab => \inst1|BCD_7\(2),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add25~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add25~1\);

-- Location: LCCOMB_X51_Y8_N0
\inst1|BCD_C2_conv_inst|Add26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add26~0_combout\ = (\inst1|BCD_7\(0) & (\inst1|BCD_7\(2) $ (VCC))) # (!\inst1|BCD_7\(0) & (\inst1|BCD_7\(2) & VCC))
-- \inst1|BCD_C2_conv_inst|Add26~1\ = CARRY((\inst1|BCD_7\(0) & \inst1|BCD_7\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(0),
	datab => \inst1|BCD_7\(2),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add26~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add26~1\);

-- Location: LCCOMB_X51_Y8_N2
\inst1|BCD_C2_conv_inst|Add26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add26~2_combout\ = (\inst1|BCD_7\(1) & ((\inst1|BCD_7\(3) & (\inst1|BCD_C2_conv_inst|Add26~1\ & VCC)) # (!\inst1|BCD_7\(3) & (!\inst1|BCD_C2_conv_inst|Add26~1\)))) # (!\inst1|BCD_7\(1) & ((\inst1|BCD_7\(3) & 
-- (!\inst1|BCD_C2_conv_inst|Add26~1\)) # (!\inst1|BCD_7\(3) & ((\inst1|BCD_C2_conv_inst|Add26~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add26~3\ = CARRY((\inst1|BCD_7\(1) & (!\inst1|BCD_7\(3) & !\inst1|BCD_C2_conv_inst|Add26~1\)) # (!\inst1|BCD_7\(1) & ((!\inst1|BCD_C2_conv_inst|Add26~1\) # (!\inst1|BCD_7\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(1),
	datab => \inst1|BCD_7\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add26~1\,
	combout => \inst1|BCD_C2_conv_inst|Add26~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add26~3\);

-- Location: LCCOMB_X51_Y8_N4
\inst1|BCD_C2_conv_inst|Add26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add26~4_combout\ = (\inst1|BCD_C2_conv_inst|Add25~0_combout\ & (\inst1|BCD_C2_conv_inst|Add26~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add25~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add26~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add26~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add25~0_combout\ & !\inst1|BCD_C2_conv_inst|Add26~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add25~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add26~3\,
	combout => \inst1|BCD_C2_conv_inst|Add26~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add26~5\);

-- Location: LCCOMB_X51_Y8_N6
\inst1|BCD_C2_conv_inst|Add26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add26~6_combout\ = (\inst1|BCD_C2_conv_inst|Add25~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add26~5\)) # (!\inst1|BCD_C2_conv_inst|Add25~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add26~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add26~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add26~5\) # (!\inst1|BCD_C2_conv_inst|Add25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add25~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add26~5\,
	combout => \inst1|BCD_C2_conv_inst|Add26~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add26~7\);

-- Location: LCCOMB_X51_Y9_N0
\inst1|BCD_C2_conv_inst|Add27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~0_combout\ = (\inst1|BCD_7\(0) & (\inst1|BCD_7\(1) $ (VCC))) # (!\inst1|BCD_7\(0) & (\inst1|BCD_7\(1) & VCC))
-- \inst1|BCD_C2_conv_inst|Add27~1\ = CARRY((\inst1|BCD_7\(0) & \inst1|BCD_7\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(0),
	datab => \inst1|BCD_7\(1),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add27~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~1\);

-- Location: LCCOMB_X51_Y9_N2
\inst1|BCD_C2_conv_inst|Add27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~2_combout\ = (\inst1|BCD_7\(2) & ((\inst1|BCD_7\(1) & (\inst1|BCD_C2_conv_inst|Add27~1\ & VCC)) # (!\inst1|BCD_7\(1) & (!\inst1|BCD_C2_conv_inst|Add27~1\)))) # (!\inst1|BCD_7\(2) & ((\inst1|BCD_7\(1) & 
-- (!\inst1|BCD_C2_conv_inst|Add27~1\)) # (!\inst1|BCD_7\(1) & ((\inst1|BCD_C2_conv_inst|Add27~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add27~3\ = CARRY((\inst1|BCD_7\(2) & (!\inst1|BCD_7\(1) & !\inst1|BCD_C2_conv_inst|Add27~1\)) # (!\inst1|BCD_7\(2) & ((!\inst1|BCD_C2_conv_inst|Add27~1\) # (!\inst1|BCD_7\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(2),
	datab => \inst1|BCD_7\(1),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~1\,
	combout => \inst1|BCD_C2_conv_inst|Add27~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~3\);

-- Location: LCCOMB_X51_Y9_N8
\inst1|BCD_C2_conv_inst|Add27~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~8_combout\ = (\inst1|BCD_7\(0) & (\inst1|BCD_C2_conv_inst|Add27~7\ $ (GND))) # (!\inst1|BCD_7\(0) & (!\inst1|BCD_C2_conv_inst|Add27~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add27~9\ = CARRY((\inst1|BCD_7\(0) & !\inst1|BCD_C2_conv_inst|Add27~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(0),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~7\,
	combout => \inst1|BCD_C2_conv_inst|Add27~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~9\);

-- Location: LCCOMB_X51_Y9_N10
\inst1|BCD_C2_conv_inst|Add27~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~10_combout\ = (\inst1|BCD_7\(1) & (!\inst1|BCD_C2_conv_inst|Add27~9\)) # (!\inst1|BCD_7\(1) & ((\inst1|BCD_C2_conv_inst|Add27~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add27~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add27~9\) # (!\inst1|BCD_7\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_7\(1),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~9\,
	combout => \inst1|BCD_C2_conv_inst|Add27~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~11\);

-- Location: LCCOMB_X51_Y9_N12
\inst1|BCD_C2_conv_inst|Add27~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~12_combout\ = (\inst1|BCD_C2_conv_inst|Add26~0_combout\ & (\inst1|BCD_C2_conv_inst|Add27~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add26~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add27~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add27~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add26~0_combout\ & !\inst1|BCD_C2_conv_inst|Add27~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add26~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~11\,
	combout => \inst1|BCD_C2_conv_inst|Add27~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~13\);

-- Location: LCCOMB_X51_Y9_N14
\inst1|BCD_C2_conv_inst|Add27~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~14_combout\ = (\inst1|BCD_C2_conv_inst|Add26~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add27~13\)) # (!\inst1|BCD_C2_conv_inst|Add26~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add27~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add27~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add27~13\) # (!\inst1|BCD_C2_conv_inst|Add26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add26~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~13\,
	combout => \inst1|BCD_C2_conv_inst|Add27~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~15\);

-- Location: LCCOMB_X51_Y9_N18
\inst1|BCD_C2_conv_inst|Add27~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~18_combout\ = (\inst1|BCD_C2_conv_inst|Add26~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add27~17\)) # (!\inst1|BCD_C2_conv_inst|Add26~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add27~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add27~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add27~17\) # (!\inst1|BCD_C2_conv_inst|Add26~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add26~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~17\,
	combout => \inst1|BCD_C2_conv_inst|Add27~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~19\);

-- Location: LCCOMB_X51_Y9_N20
\inst1|BCD_C2_conv_inst|Add27~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add27~20_combout\ = (\inst1|BCD_C2_conv_inst|Add26~8_combout\ & (\inst1|BCD_C2_conv_inst|Add27~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add26~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add27~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add27~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add26~8_combout\ & !\inst1|BCD_C2_conv_inst|Add27~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add26~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add27~19\,
	combout => \inst1|BCD_C2_conv_inst|Add27~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add27~21\);

-- Location: LCCOMB_X50_Y9_N0
\inst1|BCD_C2_conv_inst|Add28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~0_combout\ = (\inst1|BCD_7\(0) & (\inst1|BCD_7\(1) $ (VCC))) # (!\inst1|BCD_7\(0) & (\inst1|BCD_7\(1) & VCC))
-- \inst1|BCD_C2_conv_inst|Add28~1\ = CARRY((\inst1|BCD_7\(0) & \inst1|BCD_7\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(0),
	datab => \inst1|BCD_7\(1),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add28~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~1\);

-- Location: LCCOMB_X50_Y9_N8
\inst1|BCD_C2_conv_inst|Add28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~8_combout\ = (\inst1|BCD_C2_conv_inst|Add27~6_combout\ & (\inst1|BCD_C2_conv_inst|Add28~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add27~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add28~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add27~6_combout\ & !\inst1|BCD_C2_conv_inst|Add28~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add27~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~7\,
	combout => \inst1|BCD_C2_conv_inst|Add28~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~9\);

-- Location: LCCOMB_X50_Y9_N10
\inst1|BCD_C2_conv_inst|Add28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~10_combout\ = (\inst1|BCD_C2_conv_inst|Add27~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~9\)) # (!\inst1|BCD_C2_conv_inst|Add27~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add28~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add28~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add28~9\) # (!\inst1|BCD_C2_conv_inst|Add27~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add27~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~9\,
	combout => \inst1|BCD_C2_conv_inst|Add28~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~11\);

-- Location: LCCOMB_X50_Y9_N12
\inst1|BCD_C2_conv_inst|Add28~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~12_combout\ = (\inst1|BCD_C2_conv_inst|Add27~10_combout\ & (\inst1|BCD_C2_conv_inst|Add28~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add27~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add28~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add27~10_combout\ & !\inst1|BCD_C2_conv_inst|Add28~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add27~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~11\,
	combout => \inst1|BCD_C2_conv_inst|Add28~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~13\);

-- Location: LCCOMB_X50_Y9_N16
\inst1|BCD_C2_conv_inst|Add28~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~16_combout\ = (\inst1|BCD_C2_conv_inst|Add27~14_combout\ & (\inst1|BCD_C2_conv_inst|Add28~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add27~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add28~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add27~14_combout\ & !\inst1|BCD_C2_conv_inst|Add28~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add27~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~15\,
	combout => \inst1|BCD_C2_conv_inst|Add28~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~17\);

-- Location: LCCOMB_X50_Y9_N20
\inst1|BCD_C2_conv_inst|Add28~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~20_combout\ = (\inst1|BCD_C2_conv_inst|Add27~18_combout\ & (\inst1|BCD_C2_conv_inst|Add28~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add27~18_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add28~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add27~18_combout\ & !\inst1|BCD_C2_conv_inst|Add28~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add27~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~19\,
	combout => \inst1|BCD_C2_conv_inst|Add28~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~21\);

-- Location: LCCOMB_X50_Y9_N22
\inst1|BCD_C2_conv_inst|Add28~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add28~22_combout\ = (\inst1|BCD_C2_conv_inst|Add27~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add28~21\)) # (!\inst1|BCD_C2_conv_inst|Add27~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add28~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add28~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add28~21\) # (!\inst1|BCD_C2_conv_inst|Add27~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add27~20_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add28~21\,
	combout => \inst1|BCD_C2_conv_inst|Add28~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add28~23\);

-- Location: LCCOMB_X49_Y9_N18
\inst1|BCD_C2_conv_inst|Add29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~2_combout\ = (\inst1|BCD_7\(2) & ((\inst1|BCD_C2_conv_inst|Add28~0_combout\ & (\inst1|BCD_C2_conv_inst|Add29~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add28~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~1\)))) # 
-- (!\inst1|BCD_7\(2) & ((\inst1|BCD_C2_conv_inst|Add28~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~1\)) # (!\inst1|BCD_C2_conv_inst|Add28~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add29~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add29~3\ = CARRY((\inst1|BCD_7\(2) & (!\inst1|BCD_C2_conv_inst|Add28~0_combout\ & !\inst1|BCD_C2_conv_inst|Add29~1\)) # (!\inst1|BCD_7\(2) & ((!\inst1|BCD_C2_conv_inst|Add29~1\) # (!\inst1|BCD_C2_conv_inst|Add28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(2),
	datab => \inst1|BCD_C2_conv_inst|Add28~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~1\,
	combout => \inst1|BCD_C2_conv_inst|Add29~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~3\);

-- Location: LCCOMB_X49_Y9_N20
\inst1|BCD_C2_conv_inst|Add29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~4_combout\ = ((\inst1|BCD_C2_conv_inst|Add28~2_combout\ $ (\inst1|BCD_7\(3) $ (!\inst1|BCD_C2_conv_inst|Add29~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add29~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add28~2_combout\ & ((\inst1|BCD_7\(3)) # (!\inst1|BCD_C2_conv_inst|Add29~3\))) # (!\inst1|BCD_C2_conv_inst|Add28~2_combout\ & (\inst1|BCD_7\(3) & !\inst1|BCD_C2_conv_inst|Add29~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add28~2_combout\,
	datab => \inst1|BCD_7\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~3\,
	combout => \inst1|BCD_C2_conv_inst|Add29~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~5\);

-- Location: LCCOMB_X49_Y9_N24
\inst1|BCD_C2_conv_inst|Add29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~8_combout\ = (\inst1|BCD_C2_conv_inst|Add28~6_combout\ & (\inst1|BCD_C2_conv_inst|Add29~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add28~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add29~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add28~6_combout\ & !\inst1|BCD_C2_conv_inst|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add28~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~7\,
	combout => \inst1|BCD_C2_conv_inst|Add29~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~9\);

-- Location: LCCOMB_X49_Y9_N28
\inst1|BCD_C2_conv_inst|Add29~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~12_combout\ = (\inst1|BCD_C2_conv_inst|Add28~10_combout\ & (\inst1|BCD_C2_conv_inst|Add29~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add28~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add29~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add28~10_combout\ & !\inst1|BCD_C2_conv_inst|Add29~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add28~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~11\,
	combout => \inst1|BCD_C2_conv_inst|Add29~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~13\);

-- Location: LCCOMB_X49_Y9_N30
\inst1|BCD_C2_conv_inst|Add29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~14_combout\ = (\inst1|BCD_C2_conv_inst|Add28~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~13\)) # (!\inst1|BCD_C2_conv_inst|Add28~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add29~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add29~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add29~13\) # (!\inst1|BCD_C2_conv_inst|Add28~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add28~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~13\,
	combout => \inst1|BCD_C2_conv_inst|Add29~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~15\);

-- Location: LCCOMB_X49_Y8_N0
\inst1|BCD_C2_conv_inst|Add29~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~16_combout\ = (\inst1|BCD_C2_conv_inst|Add28~14_combout\ & (\inst1|BCD_C2_conv_inst|Add29~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add28~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add29~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add28~14_combout\ & !\inst1|BCD_C2_conv_inst|Add29~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add28~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~15\,
	combout => \inst1|BCD_C2_conv_inst|Add29~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~17\);

-- Location: LCCOMB_X49_Y8_N8
\inst1|BCD_C2_conv_inst|Add29~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~24_combout\ = (\inst1|BCD_C2_conv_inst|Add28~22_combout\ & (\inst1|BCD_C2_conv_inst|Add29~23\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add28~22_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~23\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add29~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add28~22_combout\ & !\inst1|BCD_C2_conv_inst|Add29~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add28~22_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~23\,
	combout => \inst1|BCD_C2_conv_inst|Add29~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~25\);

-- Location: LCCOMB_X49_Y8_N10
\inst1|BCD_C2_conv_inst|Add29~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~26_combout\ = (\inst1|BCD_C2_conv_inst|Add28~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~25\)) # (!\inst1|BCD_C2_conv_inst|Add28~24_combout\ & ((\inst1|BCD_C2_conv_inst|Add29~25\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add29~27\ = CARRY((!\inst1|BCD_C2_conv_inst|Add29~25\) # (!\inst1|BCD_C2_conv_inst|Add28~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add28~24_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~25\,
	combout => \inst1|BCD_C2_conv_inst|Add29~26_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~27\);

-- Location: LCCOMB_X49_Y8_N12
\inst1|BCD_C2_conv_inst|Add29~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add29~28_combout\ = (\inst1|BCD_C2_conv_inst|Add28~26_combout\ & (\inst1|BCD_C2_conv_inst|Add29~27\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add28~26_combout\ & (!\inst1|BCD_C2_conv_inst|Add29~27\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add29~29\ = CARRY((\inst1|BCD_C2_conv_inst|Add28~26_combout\ & !\inst1|BCD_C2_conv_inst|Add29~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add28~26_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add29~27\,
	combout => \inst1|BCD_C2_conv_inst|Add29~28_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add29~29\);

-- Location: LCCOMB_X48_Y9_N14
\inst1|BCD_C2_conv_inst|Add30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~0_combout\ = (\inst1|BCD_7\(2) & (\inst1|BCD_7\(0) $ (VCC))) # (!\inst1|BCD_7\(2) & (\inst1|BCD_7\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add30~1\ = CARRY((\inst1|BCD_7\(2) & \inst1|BCD_7\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(2),
	datab => \inst1|BCD_7\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add30~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~1\);

-- Location: LCCOMB_X48_Y9_N18
\inst1|BCD_C2_conv_inst|Add30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~4_combout\ = (\inst1|BCD_C2_conv_inst|Add29~2_combout\ & (\inst1|BCD_C2_conv_inst|Add30~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add29~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add30~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add29~2_combout\ & !\inst1|BCD_C2_conv_inst|Add30~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~3\,
	combout => \inst1|BCD_C2_conv_inst|Add30~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~5\);

-- Location: LCCOMB_X48_Y9_N20
\inst1|BCD_C2_conv_inst|Add30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~6_combout\ = (\inst1|BCD_C2_conv_inst|Add29~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~5\)) # (!\inst1|BCD_C2_conv_inst|Add29~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add30~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add30~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add30~5\) # (!\inst1|BCD_C2_conv_inst|Add29~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~5\,
	combout => \inst1|BCD_C2_conv_inst|Add30~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~7\);

-- Location: LCCOMB_X48_Y9_N22
\inst1|BCD_C2_conv_inst|Add30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~8_combout\ = (\inst1|BCD_C2_conv_inst|Add29~6_combout\ & (\inst1|BCD_C2_conv_inst|Add30~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add29~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add30~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add29~6_combout\ & !\inst1|BCD_C2_conv_inst|Add30~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add29~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~7\,
	combout => \inst1|BCD_C2_conv_inst|Add30~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~9\);

-- Location: LCCOMB_X48_Y9_N24
\inst1|BCD_C2_conv_inst|Add30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~10_combout\ = (\inst1|BCD_C2_conv_inst|Add29~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~9\)) # (!\inst1|BCD_C2_conv_inst|Add29~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add30~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add30~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add30~9\) # (!\inst1|BCD_C2_conv_inst|Add29~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~9\,
	combout => \inst1|BCD_C2_conv_inst|Add30~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~11\);

-- Location: LCCOMB_X48_Y9_N28
\inst1|BCD_C2_conv_inst|Add30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~14_combout\ = (\inst1|BCD_C2_conv_inst|Add29~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~13\)) # (!\inst1|BCD_C2_conv_inst|Add29~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add30~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add30~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add30~13\) # (!\inst1|BCD_C2_conv_inst|Add29~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~13\,
	combout => \inst1|BCD_C2_conv_inst|Add30~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~15\);

-- Location: LCCOMB_X48_Y8_N0
\inst1|BCD_C2_conv_inst|Add30~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~18_combout\ = (\inst1|BCD_C2_conv_inst|Add29~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~17\)) # (!\inst1|BCD_C2_conv_inst|Add29~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add30~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add30~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add30~17\) # (!\inst1|BCD_C2_conv_inst|Add29~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~17\,
	combout => \inst1|BCD_C2_conv_inst|Add30~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~19\);

-- Location: LCCOMB_X48_Y8_N8
\inst1|BCD_C2_conv_inst|Add30~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~26_combout\ = (\inst1|BCD_C2_conv_inst|Add29~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~25\)) # (!\inst1|BCD_C2_conv_inst|Add29~24_combout\ & ((\inst1|BCD_C2_conv_inst|Add30~25\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add30~27\ = CARRY((!\inst1|BCD_C2_conv_inst|Add30~25\) # (!\inst1|BCD_C2_conv_inst|Add29~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~24_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~25\,
	combout => \inst1|BCD_C2_conv_inst|Add30~26_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~27\);

-- Location: LCCOMB_X48_Y8_N10
\inst1|BCD_C2_conv_inst|Add30~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~28_combout\ = (\inst1|BCD_C2_conv_inst|Add29~26_combout\ & (\inst1|BCD_C2_conv_inst|Add30~27\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add29~26_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~27\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add30~29\ = CARRY((\inst1|BCD_C2_conv_inst|Add29~26_combout\ & !\inst1|BCD_C2_conv_inst|Add30~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~26_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~27\,
	combout => \inst1|BCD_C2_conv_inst|Add30~28_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~29\);

-- Location: LCCOMB_X48_Y8_N12
\inst1|BCD_C2_conv_inst|Add30~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add30~30_combout\ = (\inst1|BCD_C2_conv_inst|Add29~28_combout\ & (!\inst1|BCD_C2_conv_inst|Add30~29\)) # (!\inst1|BCD_C2_conv_inst|Add29~28_combout\ & ((\inst1|BCD_C2_conv_inst|Add30~29\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add30~31\ = CARRY((!\inst1|BCD_C2_conv_inst|Add30~29\) # (!\inst1|BCD_C2_conv_inst|Add29~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add29~28_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add30~29\,
	combout => \inst1|BCD_C2_conv_inst|Add30~30_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add30~31\);

-- Location: LCCOMB_X47_Y9_N12
\inst1|BCD_C2_conv_inst|Add31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~0_combout\ = (\inst1|BCD_7\(1) & (\inst1|BCD_7\(0) $ (VCC))) # (!\inst1|BCD_7\(1) & (\inst1|BCD_7\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add31~1\ = CARRY((\inst1|BCD_7\(1) & \inst1|BCD_7\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(1),
	datab => \inst1|BCD_7\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add31~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~1\);

-- Location: LCCOMB_X47_Y9_N18
\inst1|BCD_C2_conv_inst|Add31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~6_combout\ = (\inst1|BCD_C2_conv_inst|Add30~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~5\)) # (!\inst1|BCD_C2_conv_inst|Add30~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add31~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add31~5\) # (!\inst1|BCD_C2_conv_inst|Add30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add30~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~5\,
	combout => \inst1|BCD_C2_conv_inst|Add31~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~7\);

-- Location: LCCOMB_X47_Y9_N22
\inst1|BCD_C2_conv_inst|Add31~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~10_combout\ = (\inst1|BCD_C2_conv_inst|Add30~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~9\)) # (!\inst1|BCD_C2_conv_inst|Add30~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add31~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add31~9\) # (!\inst1|BCD_C2_conv_inst|Add30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~9\,
	combout => \inst1|BCD_C2_conv_inst|Add31~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~11\);

-- Location: LCCOMB_X47_Y9_N24
\inst1|BCD_C2_conv_inst|Add31~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~12_combout\ = (\inst1|BCD_C2_conv_inst|Add30~8_combout\ & (\inst1|BCD_C2_conv_inst|Add31~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add30~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add31~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add30~8_combout\ & !\inst1|BCD_C2_conv_inst|Add31~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~11\,
	combout => \inst1|BCD_C2_conv_inst|Add31~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~13\);

-- Location: LCCOMB_X47_Y9_N28
\inst1|BCD_C2_conv_inst|Add31~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~16_combout\ = (\inst1|BCD_C2_conv_inst|Add30~12_combout\ & (\inst1|BCD_C2_conv_inst|Add31~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add30~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add31~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add30~12_combout\ & !\inst1|BCD_C2_conv_inst|Add31~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add30~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~15\,
	combout => \inst1|BCD_C2_conv_inst|Add31~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~17\);

-- Location: LCCOMB_X47_Y8_N0
\inst1|BCD_C2_conv_inst|Add31~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~20_combout\ = (\inst1|BCD_C2_conv_inst|Add30~16_combout\ & (\inst1|BCD_C2_conv_inst|Add31~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add30~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add31~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add30~16_combout\ & !\inst1|BCD_C2_conv_inst|Add31~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add30~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~19\,
	combout => \inst1|BCD_C2_conv_inst|Add31~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~21\);

-- Location: LCCOMB_X47_Y8_N8
\inst1|BCD_C2_conv_inst|Add31~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~28_combout\ = (\inst1|BCD_C2_conv_inst|Add30~24_combout\ & (\inst1|BCD_C2_conv_inst|Add31~27\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add30~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~27\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add31~29\ = CARRY((\inst1|BCD_C2_conv_inst|Add30~24_combout\ & !\inst1|BCD_C2_conv_inst|Add31~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add30~24_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~27\,
	combout => \inst1|BCD_C2_conv_inst|Add31~28_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~29\);

-- Location: LCCOMB_X47_Y8_N10
\inst1|BCD_C2_conv_inst|Add31~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~30_combout\ = (\inst1|BCD_C2_conv_inst|Add30~26_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~29\)) # (!\inst1|BCD_C2_conv_inst|Add30~26_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~29\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add31~31\ = CARRY((!\inst1|BCD_C2_conv_inst|Add31~29\) # (!\inst1|BCD_C2_conv_inst|Add30~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~26_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~29\,
	combout => \inst1|BCD_C2_conv_inst|Add31~30_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~31\);

-- Location: LCCOMB_X47_Y8_N12
\inst1|BCD_C2_conv_inst|Add31~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~32_combout\ = (\inst1|BCD_C2_conv_inst|Add30~28_combout\ & (\inst1|BCD_C2_conv_inst|Add31~31\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add30~28_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~31\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add31~33\ = CARRY((\inst1|BCD_C2_conv_inst|Add30~28_combout\ & !\inst1|BCD_C2_conv_inst|Add31~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~28_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~31\,
	combout => \inst1|BCD_C2_conv_inst|Add31~32_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~33\);

-- Location: LCCOMB_X47_Y8_N14
\inst1|BCD_C2_conv_inst|Add31~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~34_combout\ = (\inst1|BCD_C2_conv_inst|Add30~30_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~33\)) # (!\inst1|BCD_C2_conv_inst|Add30~30_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~33\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add31~35\ = CARRY((!\inst1|BCD_C2_conv_inst|Add31~33\) # (!\inst1|BCD_C2_conv_inst|Add30~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add30~30_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add31~33\,
	combout => \inst1|BCD_C2_conv_inst|Add31~34_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add31~35\);

-- Location: LCCOMB_X49_Y3_N12
\inst1|BCD_5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_5~3_combout\ = (\inst1|freq_5\(3) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|freq_5\(3),
	datac => \SW~combout\(0),
	combout => \inst1|BCD_5~3_combout\);

-- Location: LCFF_X49_Y3_N13
\inst1|BCD_5[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_5~3_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_5\(3));

-- Location: LCCOMB_X49_Y3_N6
\inst1|BCD_5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_5~4_combout\ = (\inst1|freq_5\(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_5\(2),
	datac => \SW~combout\(0),
	combout => \inst1|BCD_5~4_combout\);

-- Location: LCFF_X49_Y3_N7
\inst1|BCD_5[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_5~4_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_5\(2));

-- Location: LCCOMB_X51_Y4_N14
\inst1|BCD_5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_5~2_combout\ = (\SW~combout\(0) & \inst1|freq_5\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(0),
	datad => \inst1|freq_5\(0),
	combout => \inst1|BCD_5~2_combout\);

-- Location: LCFF_X51_Y4_N15
\inst1|BCD_5[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_5~2_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_5\(0));

-- Location: LCCOMB_X49_Y6_N14
\inst1|BCD_C2_conv_inst|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add7~2_combout\ = \inst1|BCD_5\(3) $ (((\inst1|BCD_5\(1) & (!\inst1|BCD_5\(2) & \inst1|BCD_5\(0))) # (!\inst1|BCD_5\(1) & (\inst1|BCD_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(1),
	datab => \inst1|BCD_5\(2),
	datac => \inst1|BCD_5\(0),
	datad => \inst1|BCD_5\(3),
	combout => \inst1|BCD_C2_conv_inst|Add7~2_combout\);

-- Location: LCCOMB_X50_Y6_N28
\inst1|BCD_C2_conv_inst|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add7~0_combout\ = \inst1|BCD_5\(2) $ (((!\inst1|BCD_5\(0) & \inst1|BCD_5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(2),
	datac => \inst1|BCD_5\(0),
	datad => \inst1|BCD_5\(1),
	combout => \inst1|BCD_C2_conv_inst|Add7~0_combout\);

-- Location: LCCOMB_X49_Y6_N2
\inst1|BCD_C2_conv_inst|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add8~2_combout\ = (\inst1|BCD_C2_conv_inst|Add9~1_combout\ & ((\inst1|BCD_5\(3) & (\inst1|BCD_C2_conv_inst|Add8~1\ & VCC)) # (!\inst1|BCD_5\(3) & (!\inst1|BCD_C2_conv_inst|Add8~1\)))) # (!\inst1|BCD_C2_conv_inst|Add9~1_combout\ & 
-- ((\inst1|BCD_5\(3) & (!\inst1|BCD_C2_conv_inst|Add8~1\)) # (!\inst1|BCD_5\(3) & ((\inst1|BCD_C2_conv_inst|Add8~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add8~3\ = CARRY((\inst1|BCD_C2_conv_inst|Add9~1_combout\ & (!\inst1|BCD_5\(3) & !\inst1|BCD_C2_conv_inst|Add8~1\)) # (!\inst1|BCD_C2_conv_inst|Add9~1_combout\ & ((!\inst1|BCD_C2_conv_inst|Add8~1\) # (!\inst1|BCD_5\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add9~1_combout\,
	datab => \inst1|BCD_5\(3),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add8~1\,
	combout => \inst1|BCD_C2_conv_inst|Add8~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add8~3\);

-- Location: LCCOMB_X49_Y6_N4
\inst1|BCD_C2_conv_inst|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add8~4_combout\ = (\inst1|BCD_C2_conv_inst|Add7~0_combout\ & (\inst1|BCD_C2_conv_inst|Add8~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add7~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add8~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add8~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add7~0_combout\ & !\inst1|BCD_C2_conv_inst|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add7~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add8~3\,
	combout => \inst1|BCD_C2_conv_inst|Add8~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add8~5\);

-- Location: LCCOMB_X49_Y6_N16
\inst1|BCD_C2_conv_inst|Add9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add9~1_combout\ = (\inst1|BCD_5\(1) & (\inst1|BCD_5\(0) $ (VCC))) # (!\inst1|BCD_5\(1) & (\inst1|BCD_5\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add9~2\ = CARRY((\inst1|BCD_5\(1) & \inst1|BCD_5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(1),
	datab => \inst1|BCD_5\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add9~1_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add9~2\);

-- Location: LCCOMB_X49_Y6_N22
\inst1|BCD_C2_conv_inst|Add9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add9~7_combout\ = (\inst1|BCD_C2_conv_inst|Add8~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add9~6\)) # (!\inst1|BCD_C2_conv_inst|Add8~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add9~6\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add9~8\ = CARRY((!\inst1|BCD_C2_conv_inst|Add9~6\) # (!\inst1|BCD_C2_conv_inst|Add8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add8~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add9~6\,
	combout => \inst1|BCD_C2_conv_inst|Add9~7_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add9~8\);

-- Location: LCCOMB_X49_Y6_N24
\inst1|BCD_C2_conv_inst|Add9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add9~9_combout\ = (\inst1|BCD_C2_conv_inst|Add8~4_combout\ & (\inst1|BCD_C2_conv_inst|Add9~8\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add8~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add9~8\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add9~10\ = CARRY((\inst1|BCD_C2_conv_inst|Add8~4_combout\ & !\inst1|BCD_C2_conv_inst|Add9~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add8~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add9~8\,
	combout => \inst1|BCD_C2_conv_inst|Add9~9_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add9~10\);

-- Location: LCCOMB_X50_Y6_N16
\inst1|BCD_C2_conv_inst|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add10~8_combout\ = (\inst1|BCD_C2_conv_inst|Add9~7_combout\ & (\inst1|BCD_C2_conv_inst|Add10~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add9~7_combout\ & (!\inst1|BCD_C2_conv_inst|Add10~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add10~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add9~7_combout\ & !\inst1|BCD_C2_conv_inst|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add9~7_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add10~7\,
	combout => \inst1|BCD_C2_conv_inst|Add10~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add10~9\);

-- Location: LCCOMB_X50_Y6_N18
\inst1|BCD_C2_conv_inst|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add10~10_combout\ = (\inst1|BCD_C2_conv_inst|Add9~9_combout\ & (!\inst1|BCD_C2_conv_inst|Add10~9\)) # (!\inst1|BCD_C2_conv_inst|Add9~9_combout\ & ((\inst1|BCD_C2_conv_inst|Add10~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add10~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add10~9\) # (!\inst1|BCD_C2_conv_inst|Add9~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add9~9_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add10~9\,
	combout => \inst1|BCD_C2_conv_inst|Add10~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add10~11\);

-- Location: LCCOMB_X51_Y6_N4
\inst1|BCD_C2_conv_inst|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~0_combout\ = (\inst1|BCD_5\(1) & (\inst1|BCD_5\(0) $ (VCC))) # (!\inst1|BCD_5\(1) & (\inst1|BCD_5\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add11~1\ = CARRY((\inst1|BCD_5\(1) & \inst1|BCD_5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(1),
	datab => \inst1|BCD_5\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add11~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add11~1\);

-- Location: LCCOMB_X51_Y6_N6
\inst1|BCD_C2_conv_inst|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~2_combout\ = (\inst1|BCD_C2_conv_inst|Add10~0_combout\ & ((\inst1|BCD_5\(2) & (\inst1|BCD_C2_conv_inst|Add11~1\ & VCC)) # (!\inst1|BCD_5\(2) & (!\inst1|BCD_C2_conv_inst|Add11~1\)))) # 
-- (!\inst1|BCD_C2_conv_inst|Add10~0_combout\ & ((\inst1|BCD_5\(2) & (!\inst1|BCD_C2_conv_inst|Add11~1\)) # (!\inst1|BCD_5\(2) & ((\inst1|BCD_C2_conv_inst|Add11~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add11~3\ = CARRY((\inst1|BCD_C2_conv_inst|Add10~0_combout\ & (!\inst1|BCD_5\(2) & !\inst1|BCD_C2_conv_inst|Add11~1\)) # (!\inst1|BCD_C2_conv_inst|Add10~0_combout\ & ((!\inst1|BCD_C2_conv_inst|Add11~1\) # (!\inst1|BCD_5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add10~0_combout\,
	datab => \inst1|BCD_5\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add11~1\,
	combout => \inst1|BCD_C2_conv_inst|Add11~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add11~3\);

-- Location: LCCOMB_X51_Y6_N10
\inst1|BCD_C2_conv_inst|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~6_combout\ = (\inst1|BCD_C2_conv_inst|Add10~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add11~5\)) # (!\inst1|BCD_C2_conv_inst|Add10~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add11~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add11~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add11~5\) # (!\inst1|BCD_C2_conv_inst|Add10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add10~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add11~5\,
	combout => \inst1|BCD_C2_conv_inst|Add11~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add11~7\);

-- Location: LCCOMB_X51_Y6_N12
\inst1|BCD_C2_conv_inst|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~8_combout\ = (\inst1|BCD_C2_conv_inst|Add10~6_combout\ & (\inst1|BCD_C2_conv_inst|Add11~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add10~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add11~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add11~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add10~6_combout\ & !\inst1|BCD_C2_conv_inst|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add10~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add11~7\,
	combout => \inst1|BCD_C2_conv_inst|Add11~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add11~9\);

-- Location: LCCOMB_X51_Y6_N14
\inst1|BCD_C2_conv_inst|Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add11~10_combout\ = (\inst1|BCD_C2_conv_inst|Add10~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add11~9\)) # (!\inst1|BCD_C2_conv_inst|Add10~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add11~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add11~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add11~9\) # (!\inst1|BCD_C2_conv_inst|Add10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add10~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add11~9\,
	combout => \inst1|BCD_C2_conv_inst|Add11~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add11~11\);

-- Location: LCCOMB_X51_Y7_N10
\inst1|BCD_C2_conv_inst|Add12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~0_combout\ = (\inst1|BCD_5\(0) & (\inst1|BCD_5\(2) $ (VCC))) # (!\inst1|BCD_5\(0) & (\inst1|BCD_5\(2) & VCC))
-- \inst1|BCD_C2_conv_inst|Add12~1\ = CARRY((\inst1|BCD_5\(0) & \inst1|BCD_5\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(0),
	datab => \inst1|BCD_5\(2),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add12~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~1\);

-- Location: LCCOMB_X51_Y7_N12
\inst1|BCD_C2_conv_inst|Add12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~2_combout\ = (\inst1|BCD_5\(3) & ((\inst1|BCD_C2_conv_inst|Add11~0_combout\ & (\inst1|BCD_C2_conv_inst|Add12~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add11~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~1\)))) # 
-- (!\inst1|BCD_5\(3) & ((\inst1|BCD_C2_conv_inst|Add11~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~1\)) # (!\inst1|BCD_C2_conv_inst|Add11~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add12~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add12~3\ = CARRY((\inst1|BCD_5\(3) & (!\inst1|BCD_C2_conv_inst|Add11~0_combout\ & !\inst1|BCD_C2_conv_inst|Add12~1\)) # (!\inst1|BCD_5\(3) & ((!\inst1|BCD_C2_conv_inst|Add12~1\) # (!\inst1|BCD_C2_conv_inst|Add11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(3),
	datab => \inst1|BCD_C2_conv_inst|Add11~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add12~1\,
	combout => \inst1|BCD_C2_conv_inst|Add12~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~3\);

-- Location: LCCOMB_X51_Y7_N14
\inst1|BCD_C2_conv_inst|Add12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~4_combout\ = (\inst1|BCD_C2_conv_inst|Add11~2_combout\ & (\inst1|BCD_C2_conv_inst|Add12~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add11~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add12~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add11~2_combout\ & !\inst1|BCD_C2_conv_inst|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add11~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add12~3\,
	combout => \inst1|BCD_C2_conv_inst|Add12~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~5\);

-- Location: LCCOMB_X51_Y7_N18
\inst1|BCD_C2_conv_inst|Add12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~8_combout\ = (\inst1|BCD_C2_conv_inst|Add11~6_combout\ & (\inst1|BCD_C2_conv_inst|Add12~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add11~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add12~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add11~6_combout\ & !\inst1|BCD_C2_conv_inst|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add11~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add12~7\,
	combout => \inst1|BCD_C2_conv_inst|Add12~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~9\);

-- Location: LCCOMB_X51_Y7_N20
\inst1|BCD_C2_conv_inst|Add12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~10_combout\ = (\inst1|BCD_C2_conv_inst|Add11~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~9\)) # (!\inst1|BCD_C2_conv_inst|Add11~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add12~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add12~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add12~9\) # (!\inst1|BCD_C2_conv_inst|Add11~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add11~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add12~9\,
	combout => \inst1|BCD_C2_conv_inst|Add12~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~11\);

-- Location: LCCOMB_X51_Y7_N22
\inst1|BCD_C2_conv_inst|Add12~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~12_combout\ = (\inst1|BCD_C2_conv_inst|Add11~10_combout\ & (\inst1|BCD_C2_conv_inst|Add12~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add11~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add12~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add11~10_combout\ & !\inst1|BCD_C2_conv_inst|Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add11~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add12~11\,
	combout => \inst1|BCD_C2_conv_inst|Add12~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~13\);

-- Location: LCCOMB_X51_Y7_N24
\inst1|BCD_C2_conv_inst|Add12~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add12~14_combout\ = (\inst1|BCD_C2_conv_inst|Add11~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add12~13\)) # (!\inst1|BCD_C2_conv_inst|Add11~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add12~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add12~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add12~13\) # (!\inst1|BCD_C2_conv_inst|Add11~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add11~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add12~13\,
	combout => \inst1|BCD_C2_conv_inst|Add12~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add12~15\);

-- Location: LCCOMB_X50_Y7_N0
\inst1|BCD_C2_conv_inst|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~0_combout\ = (\inst1|BCD_5\(1) & (\inst1|BCD_5\(0) $ (VCC))) # (!\inst1|BCD_5\(1) & (\inst1|BCD_5\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add13~1\ = CARRY((\inst1|BCD_5\(1) & \inst1|BCD_5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(1),
	datab => \inst1|BCD_5\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add13~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~1\);

-- Location: LCCOMB_X50_Y7_N4
\inst1|BCD_C2_conv_inst|Add13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~4_combout\ = ((\inst1|BCD_5\(3) $ (\inst1|BCD_C2_conv_inst|Add12~0_combout\ $ (!\inst1|BCD_C2_conv_inst|Add13~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add13~5\ = CARRY((\inst1|BCD_5\(3) & ((\inst1|BCD_C2_conv_inst|Add12~0_combout\) # (!\inst1|BCD_C2_conv_inst|Add13~3\))) # (!\inst1|BCD_5\(3) & (\inst1|BCD_C2_conv_inst|Add12~0_combout\ & !\inst1|BCD_C2_conv_inst|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_5\(3),
	datab => \inst1|BCD_C2_conv_inst|Add12~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~3\,
	combout => \inst1|BCD_C2_conv_inst|Add13~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~5\);

-- Location: LCCOMB_X50_Y7_N8
\inst1|BCD_C2_conv_inst|Add13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~8_combout\ = (\inst1|BCD_C2_conv_inst|Add12~4_combout\ & (\inst1|BCD_C2_conv_inst|Add13~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add12~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add13~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add12~4_combout\ & !\inst1|BCD_C2_conv_inst|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add12~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~7\,
	combout => \inst1|BCD_C2_conv_inst|Add13~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~9\);

-- Location: LCCOMB_X50_Y7_N10
\inst1|BCD_C2_conv_inst|Add13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~10_combout\ = (\inst1|BCD_C2_conv_inst|Add12~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~9\)) # (!\inst1|BCD_C2_conv_inst|Add12~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add13~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add13~9\) # (!\inst1|BCD_C2_conv_inst|Add12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add12~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~9\,
	combout => \inst1|BCD_C2_conv_inst|Add13~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~11\);

-- Location: LCCOMB_X50_Y7_N12
\inst1|BCD_C2_conv_inst|Add13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~12_combout\ = (\inst1|BCD_C2_conv_inst|Add12~8_combout\ & (\inst1|BCD_C2_conv_inst|Add13~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add12~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add13~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add12~8_combout\ & !\inst1|BCD_C2_conv_inst|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add12~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~11\,
	combout => \inst1|BCD_C2_conv_inst|Add13~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~13\);

-- Location: LCCOMB_X50_Y7_N14
\inst1|BCD_C2_conv_inst|Add13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~14_combout\ = (\inst1|BCD_C2_conv_inst|Add12~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~13\)) # (!\inst1|BCD_C2_conv_inst|Add12~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add13~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add13~13\) # (!\inst1|BCD_C2_conv_inst|Add12~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add12~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~13\,
	combout => \inst1|BCD_C2_conv_inst|Add13~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~15\);

-- Location: LCCOMB_X50_Y7_N16
\inst1|BCD_C2_conv_inst|Add13~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~16_combout\ = (\inst1|BCD_C2_conv_inst|Add12~12_combout\ & (\inst1|BCD_C2_conv_inst|Add13~15\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add12~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~15\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add13~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add12~12_combout\ & !\inst1|BCD_C2_conv_inst|Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add12~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~15\,
	combout => \inst1|BCD_C2_conv_inst|Add13~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~17\);

-- Location: LCCOMB_X50_Y7_N18
\inst1|BCD_C2_conv_inst|Add13~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~18_combout\ = (\inst1|BCD_C2_conv_inst|Add12~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~17\)) # (!\inst1|BCD_C2_conv_inst|Add12~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~17\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add13~19\ = CARRY((!\inst1|BCD_C2_conv_inst|Add13~17\) # (!\inst1|BCD_C2_conv_inst|Add12~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add12~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~17\,
	combout => \inst1|BCD_C2_conv_inst|Add13~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~19\);

-- Location: LCCOMB_X50_Y7_N20
\inst1|BCD_C2_conv_inst|Add13~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add13~20_combout\ = (\inst1|BCD_C2_conv_inst|Add12~16_combout\ & (\inst1|BCD_C2_conv_inst|Add13~19\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add12~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~19\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add13~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add12~16_combout\ & !\inst1|BCD_C2_conv_inst|Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add12~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add13~19\,
	combout => \inst1|BCD_C2_conv_inst|Add13~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add13~21\);

-- Location: LCCOMB_X53_Y2_N0
\inst1|BCD_C2_conv_inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add2~0_combout\ = (\inst1|BCD_3\(3) & (\inst1|BCD_3\(0) $ (VCC))) # (!\inst1|BCD_3\(3) & (\inst1|BCD_3\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add2~1\ = CARRY((\inst1|BCD_3\(3) & \inst1|BCD_3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_3\(3),
	datab => \inst1|BCD_3\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add2~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add2~1\);

-- Location: LCCOMB_X51_Y3_N16
\inst1|BCD_2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_2~3_combout\ = (\inst1|freq_2\(0) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_2\(0),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_2~3_combout\);

-- Location: LCFF_X51_Y3_N17
\inst1|BCD_2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_2~3_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_2\(0));

-- Location: LCCOMB_X51_Y3_N6
\inst1|BCD_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_2~2_combout\ = (\inst1|freq_2\(1) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_2\(1),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_2~2_combout\);

-- Location: LCFF_X51_Y3_N7
\inst1|BCD_2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_2~2_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_2\(1));

-- Location: LCCOMB_X54_Y2_N28
\inst1|BCD_C2_conv_inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add0~0_combout\ = (\inst1|BCD_2\(2) & ((\inst1|BCD_2\(3) & ((\inst1|BCD_2\(0)) # (\inst1|BCD_2\(1)))) # (!\inst1|BCD_2\(3) & (\inst1|BCD_2\(0) & \inst1|BCD_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_2\(3),
	datab => \inst1|BCD_2\(0),
	datac => \inst1|BCD_2\(1),
	datad => \inst1|BCD_2\(2),
	combout => \inst1|BCD_C2_conv_inst|Add0~0_combout\);

-- Location: LCCOMB_X54_Y2_N2
\inst1|BCD_C2_conv_inst|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add0~1_combout\ = (\inst1|BCD_2\(3) & ((\inst1|BCD_2\(1)) # ((\inst1|BCD_2\(0) & \inst1|BCD_2\(2))))) # (!\inst1|BCD_2\(3) & (\inst1|BCD_2\(0) & (\inst1|BCD_2\(1) & \inst1|BCD_2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_2\(3),
	datab => \inst1|BCD_2\(0),
	datac => \inst1|BCD_2\(1),
	datad => \inst1|BCD_2\(2),
	combout => \inst1|BCD_C2_conv_inst|Add0~1_combout\);

-- Location: LCCOMB_X54_Y2_N4
\inst1|BCD_C2_conv_inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add0~2_combout\ = \inst1|BCD_2\(3) $ (\inst1|BCD_2\(1) $ (((\inst1|BCD_2\(0) & \inst1|BCD_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_2\(3),
	datab => \inst1|BCD_2\(0),
	datac => \inst1|BCD_2\(1),
	datad => \inst1|BCD_2\(2),
	combout => \inst1|BCD_C2_conv_inst|Add0~2_combout\);

-- Location: LCCOMB_X54_Y2_N30
\inst1|BCD_C2_conv_inst|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add0~3_combout\ = \inst1|BCD_2\(0) $ (\inst1|BCD_2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BCD_2\(0),
	datad => \inst1|BCD_2\(2),
	combout => \inst1|BCD_C2_conv_inst|Add0~3_combout\);

-- Location: LCCOMB_X50_Y2_N18
\inst1|BCD_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_1~1_combout\ = (\inst1|freq_1\(2) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_1\(2),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_1~1_combout\);

-- Location: LCFF_X50_Y2_N19
\inst1|BCD_1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_1~1_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_1\(2));

-- Location: LCCOMB_X54_Y2_N14
\inst1|BCD_C2_conv_inst|Add32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add32~0_combout\ = (\inst1|BCD_1\(1) & (\inst1|BCD_2\(0) $ (VCC))) # (!\inst1|BCD_1\(1) & (\inst1|BCD_2\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add32~1\ = CARRY((\inst1|BCD_1\(1) & \inst1|BCD_2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_1\(1),
	datab => \inst1|BCD_2\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add32~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add32~1\);

-- Location: LCCOMB_X54_Y2_N18
\inst1|BCD_C2_conv_inst|Add32~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add32~4_combout\ = ((\inst1|BCD_1\(3) $ (\inst1|BCD_C2_conv_inst|Add0~3_combout\ $ (!\inst1|BCD_C2_conv_inst|Add32~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add32~5\ = CARRY((\inst1|BCD_1\(3) & ((\inst1|BCD_C2_conv_inst|Add0~3_combout\) # (!\inst1|BCD_C2_conv_inst|Add32~3\))) # (!\inst1|BCD_1\(3) & (\inst1|BCD_C2_conv_inst|Add0~3_combout\ & !\inst1|BCD_C2_conv_inst|Add32~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_1\(3),
	datab => \inst1|BCD_C2_conv_inst|Add0~3_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add32~3\,
	combout => \inst1|BCD_C2_conv_inst|Add32~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add32~5\);

-- Location: LCCOMB_X53_Y2_N14
\inst1|BCD_C2_conv_inst|Add33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add33~0_combout\ = (\inst1|BCD_C2_conv_inst|Add32~2_combout\ & (\inst1|BCD_3\(0) $ (VCC))) # (!\inst1|BCD_C2_conv_inst|Add32~2_combout\ & (\inst1|BCD_3\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add33~1\ = CARRY((\inst1|BCD_C2_conv_inst|Add32~2_combout\ & \inst1|BCD_3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add32~2_combout\,
	datab => \inst1|BCD_3\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add33~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add33~1\);

-- Location: LCCOMB_X53_Y2_N16
\inst1|BCD_C2_conv_inst|Add33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add33~2_combout\ = (\inst1|BCD_3\(1) & ((\inst1|BCD_C2_conv_inst|Add32~4_combout\ & (\inst1|BCD_C2_conv_inst|Add33~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add32~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add33~1\)))) # 
-- (!\inst1|BCD_3\(1) & ((\inst1|BCD_C2_conv_inst|Add32~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add33~1\)) # (!\inst1|BCD_C2_conv_inst|Add32~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add33~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add33~3\ = CARRY((\inst1|BCD_3\(1) & (!\inst1|BCD_C2_conv_inst|Add32~4_combout\ & !\inst1|BCD_C2_conv_inst|Add33~1\)) # (!\inst1|BCD_3\(1) & ((!\inst1|BCD_C2_conv_inst|Add33~1\) # (!\inst1|BCD_C2_conv_inst|Add32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_3\(1),
	datab => \inst1|BCD_C2_conv_inst|Add32~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add33~1\,
	combout => \inst1|BCD_C2_conv_inst|Add33~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add33~3\);

-- Location: LCCOMB_X53_Y2_N22
\inst1|BCD_C2_conv_inst|Add33~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add33~8_combout\ = ((\inst1|BCD_C2_conv_inst|Add2~2_combout\ $ (\inst1|BCD_C2_conv_inst|Add32~10_combout\ $ (!\inst1|BCD_C2_conv_inst|Add33~7\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add33~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add2~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add32~10_combout\) # (!\inst1|BCD_C2_conv_inst|Add33~7\))) # (!\inst1|BCD_C2_conv_inst|Add2~2_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add32~10_combout\ & !\inst1|BCD_C2_conv_inst|Add33~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add2~2_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add32~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add33~7\,
	combout => \inst1|BCD_C2_conv_inst|Add33~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add33~9\);

-- Location: LCCOMB_X54_Y3_N20
\inst1|BCD_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_4~2_combout\ = (\inst1|freq_4\(1) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|freq_4\(1),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_4~2_combout\);

-- Location: LCFF_X54_Y3_N21
\inst1|BCD_4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_4~2_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_4\(1));

-- Location: LCCOMB_X54_Y5_N14
\inst1|BCD_C2_conv_inst|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add6~0_combout\ = (\inst1|BCD_4\(0) & (\inst1|BCD_4\(2) $ (VCC))) # (!\inst1|BCD_4\(0) & (\inst1|BCD_4\(2) & VCC))
-- \inst1|BCD_C2_conv_inst|Add6~1\ = CARRY((\inst1|BCD_4\(0) & \inst1|BCD_4\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(0),
	datab => \inst1|BCD_4\(2),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add6~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add6~1\);

-- Location: LCCOMB_X53_Y5_N10
\inst1|BCD_C2_conv_inst|Add34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~0_combout\ = (\inst1|BCD_4\(0) & (\inst1|BCD_C2_conv_inst|Add33~2_combout\ $ (VCC))) # (!\inst1|BCD_4\(0) & (\inst1|BCD_C2_conv_inst|Add33~2_combout\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add34~1\ = CARRY((\inst1|BCD_4\(0) & \inst1|BCD_C2_conv_inst|Add33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_4\(0),
	datab => \inst1|BCD_C2_conv_inst|Add33~2_combout\,
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add34~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~1\);

-- Location: LCCOMB_X53_Y5_N12
\inst1|BCD_C2_conv_inst|Add34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~2_combout\ = (\inst1|BCD_C2_conv_inst|Add33~4_combout\ & ((\inst1|BCD_4\(1) & (\inst1|BCD_C2_conv_inst|Add34~1\ & VCC)) # (!\inst1|BCD_4\(1) & (!\inst1|BCD_C2_conv_inst|Add34~1\)))) # 
-- (!\inst1|BCD_C2_conv_inst|Add33~4_combout\ & ((\inst1|BCD_4\(1) & (!\inst1|BCD_C2_conv_inst|Add34~1\)) # (!\inst1|BCD_4\(1) & ((\inst1|BCD_C2_conv_inst|Add34~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add34~3\ = CARRY((\inst1|BCD_C2_conv_inst|Add33~4_combout\ & (!\inst1|BCD_4\(1) & !\inst1|BCD_C2_conv_inst|Add34~1\)) # (!\inst1|BCD_C2_conv_inst|Add33~4_combout\ & ((!\inst1|BCD_C2_conv_inst|Add34~1\) # (!\inst1|BCD_4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add33~4_combout\,
	datab => \inst1|BCD_4\(1),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add34~1\,
	combout => \inst1|BCD_C2_conv_inst|Add34~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~3\);

-- Location: LCCOMB_X53_Y5_N16
\inst1|BCD_C2_conv_inst|Add34~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add34~6_combout\ = (\inst1|BCD_C2_conv_inst|Add6~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add33~8_combout\ & (\inst1|BCD_C2_conv_inst|Add34~5\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add33~8_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add34~5\)))) # (!\inst1|BCD_C2_conv_inst|Add6~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add33~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add34~5\)) # (!\inst1|BCD_C2_conv_inst|Add33~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add34~5\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add34~7\ = CARRY((\inst1|BCD_C2_conv_inst|Add6~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add33~8_combout\ & !\inst1|BCD_C2_conv_inst|Add34~5\)) # (!\inst1|BCD_C2_conv_inst|Add6~2_combout\ & ((!\inst1|BCD_C2_conv_inst|Add34~5\) # 
-- (!\inst1|BCD_C2_conv_inst|Add33~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add6~2_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add33~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add34~5\,
	combout => \inst1|BCD_C2_conv_inst|Add34~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add34~7\);

-- Location: LCCOMB_X49_Y7_N8
\inst1|BCD_C2_conv_inst|Add35~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~4_combout\ = ((\inst1|BCD_C2_conv_inst|Add13~2_combout\ $ (\inst1|BCD_C2_conv_inst|Add34~6_combout\ $ (!\inst1|BCD_C2_conv_inst|Add35~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add35~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add13~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add34~6_combout\) # (!\inst1|BCD_C2_conv_inst|Add35~3\))) # (!\inst1|BCD_C2_conv_inst|Add13~2_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add34~6_combout\ & !\inst1|BCD_C2_conv_inst|Add35~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add13~2_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add34~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~3\,
	combout => \inst1|BCD_C2_conv_inst|Add35~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~5\);

-- Location: LCCOMB_X49_Y7_N10
\inst1|BCD_C2_conv_inst|Add35~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~6_combout\ = (\inst1|BCD_C2_conv_inst|Add34~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~4_combout\ & (\inst1|BCD_C2_conv_inst|Add35~5\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add13~4_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add35~5\)))) # (!\inst1|BCD_C2_conv_inst|Add34~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~5\)) # (!\inst1|BCD_C2_conv_inst|Add13~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~5\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add35~7\ = CARRY((\inst1|BCD_C2_conv_inst|Add34~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~4_combout\ & !\inst1|BCD_C2_conv_inst|Add35~5\)) # (!\inst1|BCD_C2_conv_inst|Add34~8_combout\ & ((!\inst1|BCD_C2_conv_inst|Add35~5\) # 
-- (!\inst1|BCD_C2_conv_inst|Add13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add34~8_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add13~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~5\,
	combout => \inst1|BCD_C2_conv_inst|Add35~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~7\);

-- Location: LCCOMB_X49_Y7_N12
\inst1|BCD_C2_conv_inst|Add35~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~8_combout\ = ((\inst1|BCD_C2_conv_inst|Add13~6_combout\ $ (\inst1|BCD_C2_conv_inst|Add34~10_combout\ $ (!\inst1|BCD_C2_conv_inst|Add35~7\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add35~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add13~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add34~10_combout\) # (!\inst1|BCD_C2_conv_inst|Add35~7\))) # (!\inst1|BCD_C2_conv_inst|Add13~6_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add34~10_combout\ & !\inst1|BCD_C2_conv_inst|Add35~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add13~6_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add34~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~7\,
	combout => \inst1|BCD_C2_conv_inst|Add35~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~9\);

-- Location: LCCOMB_X49_Y7_N20
\inst1|BCD_C2_conv_inst|Add35~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~16_combout\ = ((\inst1|BCD_C2_conv_inst|Add34~18_combout\ $ (\inst1|BCD_C2_conv_inst|Add13~14_combout\ $ (!\inst1|BCD_C2_conv_inst|Add35~15\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add35~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add34~18_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~14_combout\) # (!\inst1|BCD_C2_conv_inst|Add35~15\))) # (!\inst1|BCD_C2_conv_inst|Add34~18_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add13~14_combout\ & !\inst1|BCD_C2_conv_inst|Add35~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add34~18_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add13~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~15\,
	combout => \inst1|BCD_C2_conv_inst|Add35~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~17\);

-- Location: LCCOMB_X49_Y7_N22
\inst1|BCD_C2_conv_inst|Add35~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~18_combout\ = (\inst1|BCD_C2_conv_inst|Add34~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~16_combout\ & (\inst1|BCD_C2_conv_inst|Add35~17\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add13~16_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add35~17\)))) # (!\inst1|BCD_C2_conv_inst|Add34~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add13~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~17\)) # (!\inst1|BCD_C2_conv_inst|Add13~16_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add35~17\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add35~19\ = CARRY((\inst1|BCD_C2_conv_inst|Add34~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add13~16_combout\ & !\inst1|BCD_C2_conv_inst|Add35~17\)) # (!\inst1|BCD_C2_conv_inst|Add34~20_combout\ & ((!\inst1|BCD_C2_conv_inst|Add35~17\) 
-- # (!\inst1|BCD_C2_conv_inst|Add13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add34~20_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add13~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~17\,
	combout => \inst1|BCD_C2_conv_inst|Add35~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~19\);

-- Location: LCCOMB_X49_Y7_N26
\inst1|BCD_C2_conv_inst|Add35~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add35~22_combout\ = (\inst1|BCD_C2_conv_inst|Add13~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~21\)) # (!\inst1|BCD_C2_conv_inst|Add13~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~21\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add35~23\ = CARRY((!\inst1|BCD_C2_conv_inst|Add35~21\) # (!\inst1|BCD_C2_conv_inst|Add13~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add13~20_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add35~21\,
	combout => \inst1|BCD_C2_conv_inst|Add35~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add35~23\);

-- Location: LCCOMB_X51_Y3_N12
\inst1|BCD_6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_6~1_combout\ = (\inst1|freq_6\(1) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|freq_6\(1),
	datad => \SW~combout\(0),
	combout => \inst1|BCD_6~1_combout\);

-- Location: LCFF_X51_Y3_N13
\inst1|BCD_6[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_6~1_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_6\(1));

-- Location: LCCOMB_X50_Y4_N12
\inst1|BCD_6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_6~2_combout\ = (\SW~combout\(0) & \inst1|freq_6\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \inst1|freq_6\(2),
	combout => \inst1|BCD_6~2_combout\);

-- Location: LCFF_X50_Y4_N13
\inst1|BCD_6[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|freq_div|q~clkctrl_outclk\,
	datain => \inst1|BCD_6~2_combout\,
	ena => \inst1|BCD_5[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|BCD_6\(2));

-- Location: LCCOMB_X48_Y7_N10
\inst1|BCD_C2_conv_inst|Add17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add17~0_combout\ = (\inst1|BCD_6\(0) & (\inst1|BCD_6\(2) $ (VCC))) # (!\inst1|BCD_6\(0) & (\inst1|BCD_6\(2) & VCC))
-- \inst1|BCD_C2_conv_inst|Add17~1\ = CARRY((\inst1|BCD_6\(0) & \inst1|BCD_6\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(0),
	datab => \inst1|BCD_6\(2),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add17~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add17~1\);

-- Location: LCCOMB_X48_Y7_N12
\inst1|BCD_C2_conv_inst|Add17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add17~2_combout\ = (\inst1|BCD_6\(3) & ((\inst1|BCD_6\(1) & (\inst1|BCD_C2_conv_inst|Add17~1\ & VCC)) # (!\inst1|BCD_6\(1) & (!\inst1|BCD_C2_conv_inst|Add17~1\)))) # (!\inst1|BCD_6\(3) & ((\inst1|BCD_6\(1) & 
-- (!\inst1|BCD_C2_conv_inst|Add17~1\)) # (!\inst1|BCD_6\(1) & ((\inst1|BCD_C2_conv_inst|Add17~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add17~3\ = CARRY((\inst1|BCD_6\(3) & (!\inst1|BCD_6\(1) & !\inst1|BCD_C2_conv_inst|Add17~1\)) # (!\inst1|BCD_6\(3) & ((!\inst1|BCD_C2_conv_inst|Add17~1\) # (!\inst1|BCD_6\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(3),
	datab => \inst1|BCD_6\(1),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add17~1\,
	combout => \inst1|BCD_C2_conv_inst|Add17~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add17~3\);

-- Location: LCCOMB_X47_Y7_N0
\inst1|BCD_C2_conv_inst|Add18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add18~0_combout\ = (\inst1|BCD_6\(2) & (\inst1|BCD_6\(0) $ (VCC))) # (!\inst1|BCD_6\(2) & (\inst1|BCD_6\(0) & VCC))
-- \inst1|BCD_C2_conv_inst|Add18~1\ = CARRY((\inst1|BCD_6\(2) & \inst1|BCD_6\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(2),
	datab => \inst1|BCD_6\(0),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add18~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add18~1\);

-- Location: LCCOMB_X46_Y7_N8
\inst1|BCD_C2_conv_inst|Add19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~2_combout\ = (\inst1|BCD_6\(1) & ((\inst1|BCD_6\(2) & (\inst1|BCD_C2_conv_inst|Add19~1\ & VCC)) # (!\inst1|BCD_6\(2) & (!\inst1|BCD_C2_conv_inst|Add19~1\)))) # (!\inst1|BCD_6\(1) & ((\inst1|BCD_6\(2) & 
-- (!\inst1|BCD_C2_conv_inst|Add19~1\)) # (!\inst1|BCD_6\(2) & ((\inst1|BCD_C2_conv_inst|Add19~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add19~3\ = CARRY((\inst1|BCD_6\(1) & (!\inst1|BCD_6\(2) & !\inst1|BCD_C2_conv_inst|Add19~1\)) # (!\inst1|BCD_6\(1) & ((!\inst1|BCD_C2_conv_inst|Add19~1\) # (!\inst1|BCD_6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(1),
	datab => \inst1|BCD_6\(2),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~1\,
	combout => \inst1|BCD_C2_conv_inst|Add19~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~3\);

-- Location: LCCOMB_X46_Y7_N10
\inst1|BCD_C2_conv_inst|Add19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~4_combout\ = ((\inst1|BCD_6\(3) $ (\inst1|BCD_C2_conv_inst|Add18~0_combout\ $ (!\inst1|BCD_C2_conv_inst|Add19~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add19~5\ = CARRY((\inst1|BCD_6\(3) & ((\inst1|BCD_C2_conv_inst|Add18~0_combout\) # (!\inst1|BCD_C2_conv_inst|Add19~3\))) # (!\inst1|BCD_6\(3) & (\inst1|BCD_C2_conv_inst|Add18~0_combout\ & !\inst1|BCD_C2_conv_inst|Add19~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(3),
	datab => \inst1|BCD_C2_conv_inst|Add18~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~3\,
	combout => \inst1|BCD_C2_conv_inst|Add19~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~5\);

-- Location: LCCOMB_X46_Y7_N12
\inst1|BCD_C2_conv_inst|Add19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~6_combout\ = (\inst1|BCD_C2_conv_inst|Add18~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add19~5\)) # (!\inst1|BCD_C2_conv_inst|Add18~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add19~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add19~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add19~5\) # (!\inst1|BCD_C2_conv_inst|Add18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add18~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~5\,
	combout => \inst1|BCD_C2_conv_inst|Add19~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~7\);

-- Location: LCCOMB_X46_Y7_N14
\inst1|BCD_C2_conv_inst|Add19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add19~8_combout\ = (\inst1|BCD_C2_conv_inst|Add18~4_combout\ & (\inst1|BCD_C2_conv_inst|Add19~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add18~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add19~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add19~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add18~4_combout\ & !\inst1|BCD_C2_conv_inst|Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add18~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add19~7\,
	combout => \inst1|BCD_C2_conv_inst|Add19~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add19~9\);

-- Location: LCCOMB_X45_Y7_N2
\inst1|BCD_C2_conv_inst|Add20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~0_combout\ = (\inst1|BCD_6\(0) & (\inst1|BCD_6\(3) $ (VCC))) # (!\inst1|BCD_6\(0) & (\inst1|BCD_6\(3) & VCC))
-- \inst1|BCD_C2_conv_inst|Add20~1\ = CARRY((\inst1|BCD_6\(0) & \inst1|BCD_6\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(0),
	datab => \inst1|BCD_6\(3),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add20~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~1\);

-- Location: LCCOMB_X45_Y7_N6
\inst1|BCD_C2_conv_inst|Add20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~4_combout\ = (\inst1|BCD_C2_conv_inst|Add19~2_combout\ & (\inst1|BCD_C2_conv_inst|Add20~3\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add19~2_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~3\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add20~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add19~2_combout\ & !\inst1|BCD_C2_conv_inst|Add20~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add19~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~3\,
	combout => \inst1|BCD_C2_conv_inst|Add20~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~5\);

-- Location: LCCOMB_X45_Y7_N8
\inst1|BCD_C2_conv_inst|Add20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~6_combout\ = (\inst1|BCD_C2_conv_inst|Add19~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~5\)) # (!\inst1|BCD_C2_conv_inst|Add19~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add20~5\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add20~7\ = CARRY((!\inst1|BCD_C2_conv_inst|Add20~5\) # (!\inst1|BCD_C2_conv_inst|Add19~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add19~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~5\,
	combout => \inst1|BCD_C2_conv_inst|Add20~6_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~7\);

-- Location: LCCOMB_X45_Y7_N10
\inst1|BCD_C2_conv_inst|Add20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~8_combout\ = (\inst1|BCD_C2_conv_inst|Add19~6_combout\ & (\inst1|BCD_C2_conv_inst|Add20~7\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add19~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~7\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add20~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add19~6_combout\ & !\inst1|BCD_C2_conv_inst|Add20~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add19~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~7\,
	combout => \inst1|BCD_C2_conv_inst|Add20~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~9\);

-- Location: LCCOMB_X45_Y7_N12
\inst1|BCD_C2_conv_inst|Add20~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~10_combout\ = (\inst1|BCD_C2_conv_inst|Add19~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~9\)) # (!\inst1|BCD_C2_conv_inst|Add19~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add20~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add20~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add20~9\) # (!\inst1|BCD_C2_conv_inst|Add19~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add19~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~9\,
	combout => \inst1|BCD_C2_conv_inst|Add20~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~11\);

-- Location: LCCOMB_X45_Y7_N14
\inst1|BCD_C2_conv_inst|Add20~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add20~12_combout\ = (\inst1|BCD_C2_conv_inst|Add19~10_combout\ & (\inst1|BCD_C2_conv_inst|Add20~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add19~10_combout\ & (!\inst1|BCD_C2_conv_inst|Add20~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add20~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add19~10_combout\ & !\inst1|BCD_C2_conv_inst|Add20~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add19~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add20~11\,
	combout => \inst1|BCD_C2_conv_inst|Add20~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add20~13\);

-- Location: LCCOMB_X44_Y9_N16
\inst1|BCD_C2_conv_inst|Add21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~0_combout\ = (\inst1|BCD_6\(0) & (\inst1|BCD_6\(1) $ (VCC))) # (!\inst1|BCD_6\(0) & (\inst1|BCD_6\(1) & VCC))
-- \inst1|BCD_C2_conv_inst|Add21~1\ = CARRY((\inst1|BCD_6\(0) & \inst1|BCD_6\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(0),
	datab => \inst1|BCD_6\(1),
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add21~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~1\);

-- Location: LCCOMB_X44_Y9_N18
\inst1|BCD_C2_conv_inst|Add21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~2_combout\ = (\inst1|BCD_6\(2) & ((\inst1|BCD_6\(1) & (\inst1|BCD_C2_conv_inst|Add21~1\ & VCC)) # (!\inst1|BCD_6\(1) & (!\inst1|BCD_C2_conv_inst|Add21~1\)))) # (!\inst1|BCD_6\(2) & ((\inst1|BCD_6\(1) & 
-- (!\inst1|BCD_C2_conv_inst|Add21~1\)) # (!\inst1|BCD_6\(1) & ((\inst1|BCD_C2_conv_inst|Add21~1\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add21~3\ = CARRY((\inst1|BCD_6\(2) & (!\inst1|BCD_6\(1) & !\inst1|BCD_C2_conv_inst|Add21~1\)) # (!\inst1|BCD_6\(2) & ((!\inst1|BCD_C2_conv_inst|Add21~1\) # (!\inst1|BCD_6\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_6\(2),
	datab => \inst1|BCD_6\(1),
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~1\,
	combout => \inst1|BCD_C2_conv_inst|Add21~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~3\);

-- Location: LCCOMB_X44_Y9_N26
\inst1|BCD_C2_conv_inst|Add21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~10_combout\ = (\inst1|BCD_C2_conv_inst|Add20~4_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~9\)) # (!\inst1|BCD_C2_conv_inst|Add20~4_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~9\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add21~11\ = CARRY((!\inst1|BCD_C2_conv_inst|Add21~9\) # (!\inst1|BCD_C2_conv_inst|Add20~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~4_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~9\,
	combout => \inst1|BCD_C2_conv_inst|Add21~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~11\);

-- Location: LCCOMB_X44_Y9_N28
\inst1|BCD_C2_conv_inst|Add21~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~12_combout\ = (\inst1|BCD_C2_conv_inst|Add20~6_combout\ & (\inst1|BCD_C2_conv_inst|Add21~11\ $ (GND))) # (!\inst1|BCD_C2_conv_inst|Add20~6_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~11\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add21~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add20~6_combout\ & !\inst1|BCD_C2_conv_inst|Add21~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~11\,
	combout => \inst1|BCD_C2_conv_inst|Add21~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~13\);

-- Location: LCCOMB_X44_Y9_N30
\inst1|BCD_C2_conv_inst|Add21~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add21~14_combout\ = (\inst1|BCD_C2_conv_inst|Add20~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~13\)) # (!\inst1|BCD_C2_conv_inst|Add20~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~13\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add21~15\ = CARRY((!\inst1|BCD_C2_conv_inst|Add21~13\) # (!\inst1|BCD_C2_conv_inst|Add20~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add20~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add21~13\,
	combout => \inst1|BCD_C2_conv_inst|Add21~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add21~15\);

-- Location: LCCOMB_X45_Y9_N16
\inst1|BCD_C2_conv_inst|Add36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~2_combout\ = (\inst1|BCD_C2_conv_inst|Add35~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~0_combout\ & (\inst1|BCD_C2_conv_inst|Add36~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add21~0_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add36~1\)))) # (!\inst1|BCD_C2_conv_inst|Add35~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~1\)) # (!\inst1|BCD_C2_conv_inst|Add21~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~1\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add36~3\ = CARRY((\inst1|BCD_C2_conv_inst|Add35~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~0_combout\ & !\inst1|BCD_C2_conv_inst|Add36~1\)) # (!\inst1|BCD_C2_conv_inst|Add35~0_combout\ & ((!\inst1|BCD_C2_conv_inst|Add36~1\) # 
-- (!\inst1|BCD_C2_conv_inst|Add21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add35~0_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add21~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~1\,
	combout => \inst1|BCD_C2_conv_inst|Add36~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~3\);

-- Location: LCCOMB_X45_Y9_N18
\inst1|BCD_C2_conv_inst|Add36~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~4_combout\ = ((\inst1|BCD_C2_conv_inst|Add35~2_combout\ $ (\inst1|BCD_C2_conv_inst|Add21~2_combout\ $ (!\inst1|BCD_C2_conv_inst|Add36~3\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add36~5\ = CARRY((\inst1|BCD_C2_conv_inst|Add35~2_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~2_combout\) # (!\inst1|BCD_C2_conv_inst|Add36~3\))) # (!\inst1|BCD_C2_conv_inst|Add35~2_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add21~2_combout\ & !\inst1|BCD_C2_conv_inst|Add36~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add35~2_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add21~2_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~3\,
	combout => \inst1|BCD_C2_conv_inst|Add36~4_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~5\);

-- Location: LCCOMB_X45_Y9_N22
\inst1|BCD_C2_conv_inst|Add36~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~8_combout\ = ((\inst1|BCD_C2_conv_inst|Add21~6_combout\ $ (\inst1|BCD_C2_conv_inst|Add35~6_combout\ $ (!\inst1|BCD_C2_conv_inst|Add36~7\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add36~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add21~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~6_combout\) # (!\inst1|BCD_C2_conv_inst|Add36~7\))) # (!\inst1|BCD_C2_conv_inst|Add21~6_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add35~6_combout\ & !\inst1|BCD_C2_conv_inst|Add36~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~6_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add35~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~7\,
	combout => \inst1|BCD_C2_conv_inst|Add36~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~9\);

-- Location: LCCOMB_X45_Y9_N28
\inst1|BCD_C2_conv_inst|Add36~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~14_combout\ = (\inst1|BCD_C2_conv_inst|Add35~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~12_combout\ & (\inst1|BCD_C2_conv_inst|Add36~13\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add21~12_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add36~13\)))) # (!\inst1|BCD_C2_conv_inst|Add35~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~13\)) # (!\inst1|BCD_C2_conv_inst|Add21~12_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add36~13\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add36~15\ = CARRY((\inst1|BCD_C2_conv_inst|Add35~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~12_combout\ & !\inst1|BCD_C2_conv_inst|Add36~13\)) # (!\inst1|BCD_C2_conv_inst|Add35~12_combout\ & ((!\inst1|BCD_C2_conv_inst|Add36~13\) 
-- # (!\inst1|BCD_C2_conv_inst|Add21~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add35~12_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add21~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~13\,
	combout => \inst1|BCD_C2_conv_inst|Add36~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~15\);

-- Location: LCCOMB_X45_Y8_N0
\inst1|BCD_C2_conv_inst|Add36~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~18_combout\ = (\inst1|BCD_C2_conv_inst|Add21~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~16_combout\ & (\inst1|BCD_C2_conv_inst|Add36~17\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add35~16_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add36~17\)))) # (!\inst1|BCD_C2_conv_inst|Add21~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~17\)) # (!\inst1|BCD_C2_conv_inst|Add35~16_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add36~17\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add36~19\ = CARRY((\inst1|BCD_C2_conv_inst|Add21~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add35~16_combout\ & !\inst1|BCD_C2_conv_inst|Add36~17\)) # (!\inst1|BCD_C2_conv_inst|Add21~16_combout\ & ((!\inst1|BCD_C2_conv_inst|Add36~17\) 
-- # (!\inst1|BCD_C2_conv_inst|Add35~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~16_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add35~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~17\,
	combout => \inst1|BCD_C2_conv_inst|Add36~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~19\);

-- Location: LCCOMB_X45_Y8_N4
\inst1|BCD_C2_conv_inst|Add36~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~22_combout\ = (\inst1|BCD_C2_conv_inst|Add35~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~20_combout\ & (\inst1|BCD_C2_conv_inst|Add36~21\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add21~20_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add36~21\)))) # (!\inst1|BCD_C2_conv_inst|Add35~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add21~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~21\)) # (!\inst1|BCD_C2_conv_inst|Add21~20_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add36~21\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add36~23\ = CARRY((\inst1|BCD_C2_conv_inst|Add35~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add21~20_combout\ & !\inst1|BCD_C2_conv_inst|Add36~21\)) # (!\inst1|BCD_C2_conv_inst|Add35~20_combout\ & ((!\inst1|BCD_C2_conv_inst|Add36~21\) 
-- # (!\inst1|BCD_C2_conv_inst|Add21~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add35~20_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add21~20_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~21\,
	combout => \inst1|BCD_C2_conv_inst|Add36~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~23\);

-- Location: LCCOMB_X45_Y8_N6
\inst1|BCD_C2_conv_inst|Add36~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add36~24_combout\ = ((\inst1|BCD_C2_conv_inst|Add21~22_combout\ $ (\inst1|BCD_C2_conv_inst|Add35~22_combout\ $ (!\inst1|BCD_C2_conv_inst|Add36~23\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add36~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add21~22_combout\ & ((\inst1|BCD_C2_conv_inst|Add35~22_combout\) # (!\inst1|BCD_C2_conv_inst|Add36~23\))) # (!\inst1|BCD_C2_conv_inst|Add21~22_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add35~22_combout\ & !\inst1|BCD_C2_conv_inst|Add36~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add21~22_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add35~22_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add36~23\,
	combout => \inst1|BCD_C2_conv_inst|Add36~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add36~25\);

-- Location: LCCOMB_X46_Y9_N12
\inst1|BCD_C2_conv_inst|Add37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~0_combout\ = (\inst1|BCD_7\(0) & (\inst1|BCD_C2_conv_inst|Add33~0_combout\ $ (VCC))) # (!\inst1|BCD_7\(0) & (\inst1|BCD_C2_conv_inst|Add33~0_combout\ & VCC))
-- \inst1|BCD_C2_conv_inst|Add37~1\ = CARRY((\inst1|BCD_7\(0) & \inst1|BCD_C2_conv_inst|Add33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_7\(0),
	datab => \inst1|BCD_C2_conv_inst|Add33~0_combout\,
	datad => VCC,
	combout => \inst1|BCD_C2_conv_inst|Add37~0_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~1\);

-- Location: LCCOMB_X46_Y9_N14
\inst1|BCD_C2_conv_inst|Add37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~2_combout\ = (\inst1|BCD_C2_conv_inst|Add36~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~0_combout\ & (\inst1|BCD_C2_conv_inst|Add37~1\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add31~0_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add37~1\)))) # (!\inst1|BCD_C2_conv_inst|Add36~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~1\)) # (!\inst1|BCD_C2_conv_inst|Add31~0_combout\ & ((\inst1|BCD_C2_conv_inst|Add37~1\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add37~3\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~0_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~0_combout\ & !\inst1|BCD_C2_conv_inst|Add37~1\)) # (!\inst1|BCD_C2_conv_inst|Add36~0_combout\ & ((!\inst1|BCD_C2_conv_inst|Add37~1\) # 
-- (!\inst1|BCD_C2_conv_inst|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~0_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~0_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~1\,
	combout => \inst1|BCD_C2_conv_inst|Add37~2_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~3\);

-- Location: LCCOMB_X46_Y9_N20
\inst1|BCD_C2_conv_inst|Add37~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~8_combout\ = ((\inst1|BCD_C2_conv_inst|Add36~6_combout\ $ (\inst1|BCD_C2_conv_inst|Add31~6_combout\ $ (!\inst1|BCD_C2_conv_inst|Add37~7\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add37~9\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~6_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~6_combout\) # (!\inst1|BCD_C2_conv_inst|Add37~7\))) # (!\inst1|BCD_C2_conv_inst|Add36~6_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add31~6_combout\ & !\inst1|BCD_C2_conv_inst|Add37~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~6_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~6_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~7\,
	combout => \inst1|BCD_C2_conv_inst|Add37~8_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~9\);

-- Location: LCCOMB_X46_Y9_N22
\inst1|BCD_C2_conv_inst|Add37~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~10_combout\ = (\inst1|BCD_C2_conv_inst|Add31~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~8_combout\ & (\inst1|BCD_C2_conv_inst|Add37~9\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add36~8_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add37~9\)))) # (!\inst1|BCD_C2_conv_inst|Add31~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~9\)) # (!\inst1|BCD_C2_conv_inst|Add36~8_combout\ & ((\inst1|BCD_C2_conv_inst|Add37~9\) # 
-- (GND)))))
-- \inst1|BCD_C2_conv_inst|Add37~11\ = CARRY((\inst1|BCD_C2_conv_inst|Add31~8_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~8_combout\ & !\inst1|BCD_C2_conv_inst|Add37~9\)) # (!\inst1|BCD_C2_conv_inst|Add31~8_combout\ & ((!\inst1|BCD_C2_conv_inst|Add37~9\) # 
-- (!\inst1|BCD_C2_conv_inst|Add36~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add31~8_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add36~8_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~9\,
	combout => \inst1|BCD_C2_conv_inst|Add37~10_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~11\);

-- Location: LCCOMB_X46_Y9_N24
\inst1|BCD_C2_conv_inst|Add37~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~12_combout\ = ((\inst1|BCD_C2_conv_inst|Add36~10_combout\ $ (\inst1|BCD_C2_conv_inst|Add31~10_combout\ $ (!\inst1|BCD_C2_conv_inst|Add37~11\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add37~13\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~10_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~10_combout\) # (!\inst1|BCD_C2_conv_inst|Add37~11\))) # (!\inst1|BCD_C2_conv_inst|Add36~10_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add31~10_combout\ & !\inst1|BCD_C2_conv_inst|Add37~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~10_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~10_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~11\,
	combout => \inst1|BCD_C2_conv_inst|Add37~12_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~13\);

-- Location: LCCOMB_X46_Y9_N26
\inst1|BCD_C2_conv_inst|Add37~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~14_combout\ = (\inst1|BCD_C2_conv_inst|Add36~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~12_combout\ & (\inst1|BCD_C2_conv_inst|Add37~13\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add31~12_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add37~13\)))) # (!\inst1|BCD_C2_conv_inst|Add36~12_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~13\)) # (!\inst1|BCD_C2_conv_inst|Add31~12_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add37~13\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add37~15\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~12_combout\ & !\inst1|BCD_C2_conv_inst|Add37~13\)) # (!\inst1|BCD_C2_conv_inst|Add36~12_combout\ & ((!\inst1|BCD_C2_conv_inst|Add37~13\) 
-- # (!\inst1|BCD_C2_conv_inst|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~12_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~12_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~13\,
	combout => \inst1|BCD_C2_conv_inst|Add37~14_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~15\);

-- Location: LCCOMB_X46_Y9_N28
\inst1|BCD_C2_conv_inst|Add37~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~16_combout\ = ((\inst1|BCD_C2_conv_inst|Add31~14_combout\ $ (\inst1|BCD_C2_conv_inst|Add36~14_combout\ $ (!\inst1|BCD_C2_conv_inst|Add37~15\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add37~17\ = CARRY((\inst1|BCD_C2_conv_inst|Add31~14_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~14_combout\) # (!\inst1|BCD_C2_conv_inst|Add37~15\))) # (!\inst1|BCD_C2_conv_inst|Add31~14_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add36~14_combout\ & !\inst1|BCD_C2_conv_inst|Add37~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add31~14_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add36~14_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~15\,
	combout => \inst1|BCD_C2_conv_inst|Add37~16_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~17\);

-- Location: LCCOMB_X46_Y9_N30
\inst1|BCD_C2_conv_inst|Add37~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~18_combout\ = (\inst1|BCD_C2_conv_inst|Add36~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~16_combout\ & (\inst1|BCD_C2_conv_inst|Add37~17\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add31~16_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add37~17\)))) # (!\inst1|BCD_C2_conv_inst|Add36~16_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~17\)) # (!\inst1|BCD_C2_conv_inst|Add31~16_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add37~17\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add37~19\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~16_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~16_combout\ & !\inst1|BCD_C2_conv_inst|Add37~17\)) # (!\inst1|BCD_C2_conv_inst|Add36~16_combout\ & ((!\inst1|BCD_C2_conv_inst|Add37~17\) 
-- # (!\inst1|BCD_C2_conv_inst|Add31~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~16_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~16_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~17\,
	combout => \inst1|BCD_C2_conv_inst|Add37~18_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~19\);

-- Location: LCCOMB_X46_Y8_N0
\inst1|BCD_C2_conv_inst|Add37~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~20_combout\ = ((\inst1|BCD_C2_conv_inst|Add31~18_combout\ $ (\inst1|BCD_C2_conv_inst|Add36~18_combout\ $ (!\inst1|BCD_C2_conv_inst|Add37~19\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add37~21\ = CARRY((\inst1|BCD_C2_conv_inst|Add31~18_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~18_combout\) # (!\inst1|BCD_C2_conv_inst|Add37~19\))) # (!\inst1|BCD_C2_conv_inst|Add31~18_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add36~18_combout\ & !\inst1|BCD_C2_conv_inst|Add37~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add31~18_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add36~18_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~19\,
	combout => \inst1|BCD_C2_conv_inst|Add37~20_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~21\);

-- Location: LCCOMB_X46_Y8_N2
\inst1|BCD_C2_conv_inst|Add37~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~22_combout\ = (\inst1|BCD_C2_conv_inst|Add36~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~20_combout\ & (\inst1|BCD_C2_conv_inst|Add37~21\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add31~20_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add37~21\)))) # (!\inst1|BCD_C2_conv_inst|Add36~20_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~21\)) # (!\inst1|BCD_C2_conv_inst|Add31~20_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add37~21\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add37~23\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~20_combout\ & !\inst1|BCD_C2_conv_inst|Add37~21\)) # (!\inst1|BCD_C2_conv_inst|Add36~20_combout\ & ((!\inst1|BCD_C2_conv_inst|Add37~21\) 
-- # (!\inst1|BCD_C2_conv_inst|Add31~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~20_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~20_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~21\,
	combout => \inst1|BCD_C2_conv_inst|Add37~22_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~23\);

-- Location: LCCOMB_X46_Y8_N4
\inst1|BCD_C2_conv_inst|Add37~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~24_combout\ = ((\inst1|BCD_C2_conv_inst|Add31~22_combout\ $ (\inst1|BCD_C2_conv_inst|Add36~22_combout\ $ (!\inst1|BCD_C2_conv_inst|Add37~23\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add37~25\ = CARRY((\inst1|BCD_C2_conv_inst|Add31~22_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~22_combout\) # (!\inst1|BCD_C2_conv_inst|Add37~23\))) # (!\inst1|BCD_C2_conv_inst|Add31~22_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add36~22_combout\ & !\inst1|BCD_C2_conv_inst|Add37~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add31~22_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add36~22_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~23\,
	combout => \inst1|BCD_C2_conv_inst|Add37~24_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~25\);

-- Location: LCCOMB_X46_Y8_N6
\inst1|BCD_C2_conv_inst|Add37~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~26_combout\ = (\inst1|BCD_C2_conv_inst|Add31~24_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~24_combout\ & (\inst1|BCD_C2_conv_inst|Add37~25\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add36~24_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add37~25\)))) # (!\inst1|BCD_C2_conv_inst|Add31~24_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~25\)) # (!\inst1|BCD_C2_conv_inst|Add36~24_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add37~25\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add37~27\ = CARRY((\inst1|BCD_C2_conv_inst|Add31~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add36~24_combout\ & !\inst1|BCD_C2_conv_inst|Add37~25\)) # (!\inst1|BCD_C2_conv_inst|Add31~24_combout\ & ((!\inst1|BCD_C2_conv_inst|Add37~25\) 
-- # (!\inst1|BCD_C2_conv_inst|Add36~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add31~24_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add36~24_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~25\,
	combout => \inst1|BCD_C2_conv_inst|Add37~26_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~27\);

-- Location: LCCOMB_X46_Y8_N8
\inst1|BCD_C2_conv_inst|Add37~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~28_combout\ = ((\inst1|BCD_C2_conv_inst|Add31~26_combout\ $ (\inst1|BCD_C2_conv_inst|Add36~26_combout\ $ (!\inst1|BCD_C2_conv_inst|Add37~27\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add37~29\ = CARRY((\inst1|BCD_C2_conv_inst|Add31~26_combout\ & ((\inst1|BCD_C2_conv_inst|Add36~26_combout\) # (!\inst1|BCD_C2_conv_inst|Add37~27\))) # (!\inst1|BCD_C2_conv_inst|Add31~26_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add36~26_combout\ & !\inst1|BCD_C2_conv_inst|Add37~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add31~26_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add36~26_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~27\,
	combout => \inst1|BCD_C2_conv_inst|Add37~28_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~29\);

-- Location: LCCOMB_X46_Y8_N10
\inst1|BCD_C2_conv_inst|Add37~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~30_combout\ = (\inst1|BCD_C2_conv_inst|Add36~28_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~28_combout\ & (\inst1|BCD_C2_conv_inst|Add37~29\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add31~28_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add37~29\)))) # (!\inst1|BCD_C2_conv_inst|Add36~28_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~28_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~29\)) # (!\inst1|BCD_C2_conv_inst|Add31~28_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add37~29\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add37~31\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~28_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~28_combout\ & !\inst1|BCD_C2_conv_inst|Add37~29\)) # (!\inst1|BCD_C2_conv_inst|Add36~28_combout\ & ((!\inst1|BCD_C2_conv_inst|Add37~29\) 
-- # (!\inst1|BCD_C2_conv_inst|Add31~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~28_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~28_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~29\,
	combout => \inst1|BCD_C2_conv_inst|Add37~30_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~31\);

-- Location: LCCOMB_X46_Y8_N12
\inst1|BCD_C2_conv_inst|Add37~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~32_combout\ = ((\inst1|BCD_C2_conv_inst|Add36~30_combout\ $ (\inst1|BCD_C2_conv_inst|Add31~30_combout\ $ (!\inst1|BCD_C2_conv_inst|Add37~31\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add37~33\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~30_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~30_combout\) # (!\inst1|BCD_C2_conv_inst|Add37~31\))) # (!\inst1|BCD_C2_conv_inst|Add36~30_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add31~30_combout\ & !\inst1|BCD_C2_conv_inst|Add37~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~30_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~30_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~31\,
	combout => \inst1|BCD_C2_conv_inst|Add37~32_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~33\);

-- Location: LCCOMB_X46_Y8_N14
\inst1|BCD_C2_conv_inst|Add37~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~34_combout\ = (\inst1|BCD_C2_conv_inst|Add36~32_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~32_combout\ & (\inst1|BCD_C2_conv_inst|Add37~33\ & VCC)) # (!\inst1|BCD_C2_conv_inst|Add31~32_combout\ & 
-- (!\inst1|BCD_C2_conv_inst|Add37~33\)))) # (!\inst1|BCD_C2_conv_inst|Add36~32_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~32_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~33\)) # (!\inst1|BCD_C2_conv_inst|Add31~32_combout\ & 
-- ((\inst1|BCD_C2_conv_inst|Add37~33\) # (GND)))))
-- \inst1|BCD_C2_conv_inst|Add37~35\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~32_combout\ & (!\inst1|BCD_C2_conv_inst|Add31~32_combout\ & !\inst1|BCD_C2_conv_inst|Add37~33\)) # (!\inst1|BCD_C2_conv_inst|Add36~32_combout\ & ((!\inst1|BCD_C2_conv_inst|Add37~33\) 
-- # (!\inst1|BCD_C2_conv_inst|Add31~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~32_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~32_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~33\,
	combout => \inst1|BCD_C2_conv_inst|Add37~34_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~35\);

-- Location: LCCOMB_X46_Y8_N16
\inst1|BCD_C2_conv_inst|Add37~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~36_combout\ = ((\inst1|BCD_C2_conv_inst|Add36~34_combout\ $ (\inst1|BCD_C2_conv_inst|Add31~34_combout\ $ (!\inst1|BCD_C2_conv_inst|Add37~35\)))) # (GND)
-- \inst1|BCD_C2_conv_inst|Add37~37\ = CARRY((\inst1|BCD_C2_conv_inst|Add36~34_combout\ & ((\inst1|BCD_C2_conv_inst|Add31~34_combout\) # (!\inst1|BCD_C2_conv_inst|Add37~35\))) # (!\inst1|BCD_C2_conv_inst|Add36~34_combout\ & 
-- (\inst1|BCD_C2_conv_inst|Add31~34_combout\ & !\inst1|BCD_C2_conv_inst|Add37~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add36~34_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add31~34_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~35\,
	combout => \inst1|BCD_C2_conv_inst|Add37~36_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~37\);

-- Location: LCCOMB_X46_Y8_N18
\inst1|BCD_C2_conv_inst|Add37~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~38_combout\ = (\inst1|BCD_C2_conv_inst|Add31~36_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~37\)) # (!\inst1|BCD_C2_conv_inst|Add31~36_combout\ & ((\inst1|BCD_C2_conv_inst|Add37~37\) # (GND)))
-- \inst1|BCD_C2_conv_inst|Add37~39\ = CARRY((!\inst1|BCD_C2_conv_inst|Add37~37\) # (!\inst1|BCD_C2_conv_inst|Add31~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add31~36_combout\,
	datad => VCC,
	cin => \inst1|BCD_C2_conv_inst|Add37~37\,
	combout => \inst1|BCD_C2_conv_inst|Add37~38_combout\,
	cout => \inst1|BCD_C2_conv_inst|Add37~39\);

-- Location: LCCOMB_X47_Y10_N26
\inst1|DDFS_freq_conv_inst|freq_control[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[2]~3_combout\ = (\inst1|BCD_C2_conv_inst|Add37~32_combout\) # (\inst1|BCD_C2_conv_inst|Add37~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BCD_C2_conv_inst|Add37~32_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~30_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[2]~3_combout\);

-- Location: LCCOMB_X46_Y8_N30
\inst1|DDFS_freq_conv_inst|freq_control[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[1]~0_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~24_combout\ & !\inst1|BCD_C2_conv_inst|Add37~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BCD_C2_conv_inst|Add37~24_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~22_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[1]~0_combout\);

-- Location: LCCOMB_X46_Y10_N30
\inst1|DDFS_freq_conv_inst|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan2~2_combout\ = (\inst1|BCD_C2_conv_inst|Add37~14_combout\ & ((\inst1|DDFS_freq_conv_inst|LessThan2~1_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~12_combout\) # (\inst1|BCD_C2_conv_inst|Add37~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|LessThan2~1_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~12_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~14_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~10_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan2~2_combout\);

-- Location: LCCOMB_X46_Y10_N16
\inst1|DDFS_freq_conv_inst|freq_control[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[1]~1_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~20_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~18_combout\ & !\inst1|BCD_C2_conv_inst|Add37~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add37~20_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~18_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~16_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[1]~1_combout\);

-- Location: LCCOMB_X47_Y10_N0
\inst1|DDFS_freq_conv_inst|freq_control[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[2]~2_combout\ = (\inst1|BCD_C2_conv_inst|Add37~28_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~26_combout\) # ((\inst1|DDFS_freq_conv_inst|LessThan2~2_combout\) # 
-- (!\inst1|DDFS_freq_conv_inst|freq_control[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~28_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~26_combout\,
	datac => \inst1|DDFS_freq_conv_inst|LessThan2~2_combout\,
	datad => \inst1|DDFS_freq_conv_inst|freq_control[1]~1_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[2]~2_combout\);

-- Location: LCCOMB_X47_Y10_N4
\inst1|DDFS_freq_conv_inst|freq_control[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\ = (\inst1|BCD_C2_conv_inst|Add37~34_combout\) # ((\inst1|DDFS_freq_conv_inst|freq_control[2]~3_combout\) # ((\inst1|DDFS_freq_conv_inst|freq_control[2]~2_combout\) # 
-- (!\inst1|DDFS_freq_conv_inst|freq_control[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~34_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[2]~3_combout\,
	datac => \inst1|DDFS_freq_conv_inst|freq_control[1]~0_combout\,
	datad => \inst1|DDFS_freq_conv_inst|freq_control[2]~2_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\);

-- Location: LCCOMB_X47_Y8_N18
\inst1|BCD_C2_conv_inst|Add31~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add31~38_combout\ = \inst1|BCD_C2_conv_inst|Add30~34_combout\ $ (\inst1|BCD_C2_conv_inst|Add31~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add30~34_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add31~37\,
	combout => \inst1|BCD_C2_conv_inst|Add31~38_combout\);

-- Location: LCCOMB_X46_Y8_N20
\inst1|BCD_C2_conv_inst|Add37~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|BCD_C2_conv_inst|Add37~40_combout\ = \inst1|BCD_C2_conv_inst|Add37~39\ $ (!\inst1|BCD_C2_conv_inst|Add31~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BCD_C2_conv_inst|Add31~38_combout\,
	cin => \inst1|BCD_C2_conv_inst|Add37~39\,
	combout => \inst1|BCD_C2_conv_inst|Add37~40_combout\);

-- Location: LCCOMB_X47_Y10_N30
\inst1|DDFS_freq_conv_inst|freq_control[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[2]~5_combout\ = (\inst1|BCD_C2_conv_inst|Add37~38_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~36_combout\) # ((\inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\) # (\inst1|BCD_C2_conv_inst|Add37~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~38_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~36_combout\,
	datac => \inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~40_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[2]~5_combout\);

-- Location: LCCOMB_X47_Y10_N2
\inst1|DDFS_freq_conv_inst|freq_control[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[1]~12_combout\ = (\inst1|DDFS_freq_conv_inst|freq_control[1]~11_combout\ & (\inst1|DDFS_freq_conv_inst|freq_control[1]~1_combout\ & !\inst1|DDFS_freq_conv_inst|LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control[1]~11_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[1]~1_combout\,
	datac => \inst1|DDFS_freq_conv_inst|LessThan2~2_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[1]~12_combout\);

-- Location: LCCOMB_X46_Y8_N26
\inst1|DDFS_freq_conv_inst|freq_control~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control~10_combout\ = (\inst1|DDFS_freq_conv_inst|freq_control~9_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~30_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~28_combout\) # (\inst1|BCD_C2_conv_inst|Add37~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control~9_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~30_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~28_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~32_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control~10_combout\);

-- Location: LCCOMB_X47_Y10_N16
\inst1|DDFS_freq_conv_inst|freq_control[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[1]~13_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~34_combout\ & (!\inst1|DDFS_freq_conv_inst|freq_control[1]~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~36_combout\ & 
-- !\inst1|DDFS_freq_conv_inst|freq_control~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~34_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[1]~12_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~36_combout\,
	datad => \inst1|DDFS_freq_conv_inst|freq_control~10_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[1]~13_combout\);

-- Location: LCCOMB_X47_Y10_N20
\inst1|DDFS_freq_conv_inst|freq_control[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[1]~11_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~30_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~26_combout\ & (\inst1|DDFS_freq_conv_inst|freq_control[1]~0_combout\ & !\inst1|BCD_C2_conv_inst|Add37~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~30_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~26_combout\,
	datac => \inst1|DDFS_freq_conv_inst|freq_control[1]~0_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~28_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[1]~11_combout\);

-- Location: LCCOMB_X46_Y10_N4
\inst1|DDFS_freq_conv_inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan0~1_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~4_combout\ & !\inst1|BCD_C2_conv_inst|Add37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~4_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~2_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X45_Y10_N4
\inst1|DDFS_freq_conv_inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan0~0_combout\ = (\inst1|BCD_C2_conv_inst|Add37~6_combout\) # ((\inst1|BCD_C2_conv_inst|Add37~0_combout\ & (\inst1|BCD_C2_conv_inst|Add32~0_combout\ & \inst1|BCD_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~6_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~0_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add32~0_combout\,
	datad => \inst1|BCD_1\(0),
	combout => \inst1|DDFS_freq_conv_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y10_N10
\inst1|DDFS_freq_conv_inst|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan4~0_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~12_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~10_combout\ & !\inst1|BCD_C2_conv_inst|Add37~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~14_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~12_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~10_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~8_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan4~0_combout\);

-- Location: LCCOMB_X46_Y10_N18
\inst1|DDFS_freq_conv_inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan0~2_combout\ = (\inst1|BCD_C2_conv_inst|Add37~36_combout\) # (((\inst1|DDFS_freq_conv_inst|LessThan0~0_combout\) # (!\inst1|DDFS_freq_conv_inst|LessThan4~0_combout\)) # (!\inst1|DDFS_freq_conv_inst|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~36_combout\,
	datab => \inst1|DDFS_freq_conv_inst|LessThan0~1_combout\,
	datac => \inst1|DDFS_freq_conv_inst|LessThan0~0_combout\,
	datad => \inst1|DDFS_freq_conv_inst|LessThan4~0_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X47_Y10_N12
\inst1|DDFS_freq_conv_inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|LessThan0~3_combout\ = (((\inst1|DDFS_freq_conv_inst|LessThan0~2_combout\) # (!\inst1|DDFS_freq_conv_inst|freq_control[1]~11_combout\)) # (!\inst1|DDFS_freq_conv_inst|freq_control[1]~1_combout\)) # 
-- (!\inst1|DDFS_freq_conv_inst|freq_control[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control[0]~14_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[1]~1_combout\,
	datac => \inst1|DDFS_freq_conv_inst|freq_control[1]~11_combout\,
	datad => \inst1|DDFS_freq_conv_inst|LessThan0~2_combout\,
	combout => \inst1|DDFS_freq_conv_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X47_Y10_N14
\inst1|DDFS_freq_conv_inst|freq_control[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[1]~15_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~40_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~38_combout\ & ((\inst1|DDFS_freq_conv_inst|freq_control[1]~13_combout\) # 
-- (!\inst1|DDFS_freq_conv_inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control[1]~13_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~40_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~38_combout\,
	datad => \inst1|DDFS_freq_conv_inst|LessThan0~3_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[1]~15_combout\);

-- Location: LCCOMB_X47_Y10_N24
\inst1|DDFS_freq_conv_inst|freq_control[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~21_combout\ = (\inst1|DDFS_freq_conv_inst|LessThan0~3_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~36_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~38_combout\ & !\inst1|BCD_C2_conv_inst|Add37~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|LessThan0~3_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~36_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~38_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~40_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~21_combout\);

-- Location: LCCOMB_X47_Y10_N22
\inst1|DDFS_freq_conv_inst|freq_control[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~28_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~30_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~32_combout\ & \inst1|BCD_C2_conv_inst|Add37~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~30_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~32_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~34_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~28_combout\);

-- Location: LCCOMB_X46_Y8_N28
\inst1|DDFS_freq_conv_inst|freq_control[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~26_combout\ = (!\inst1|BCD_C2_conv_inst|Add37~22_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~24_combout\ & !\inst1|BCD_C2_conv_inst|Add37~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BCD_C2_conv_inst|Add37~22_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~24_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~20_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~26_combout\);

-- Location: LCCOMB_X46_Y9_N8
\inst1|DDFS_freq_conv_inst|freq_control[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~25_combout\ = ((\inst1|DDFS_freq_conv_inst|freq_control[0]~24_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~14_combout\ & !\inst1|BCD_C2_conv_inst|Add37~16_combout\))) # (!\inst1|BCD_C2_conv_inst|Add37~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control[0]~24_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~14_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~18_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~16_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~25_combout\);

-- Location: LCCOMB_X46_Y8_N22
\inst1|DDFS_freq_conv_inst|freq_control[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~27_combout\ = (((\inst1|DDFS_freq_conv_inst|freq_control[0]~26_combout\ & \inst1|DDFS_freq_conv_inst|freq_control[0]~25_combout\)) # (!\inst1|BCD_C2_conv_inst|Add37~28_combout\)) # 
-- (!\inst1|BCD_C2_conv_inst|Add37~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BCD_C2_conv_inst|Add37~26_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[0]~26_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~28_combout\,
	datad => \inst1|DDFS_freq_conv_inst|freq_control[0]~25_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~27_combout\);

-- Location: LCCOMB_X47_Y10_N8
\inst1|DDFS_freq_conv_inst|freq_control[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~29_combout\ = (\inst1|DDFS_freq_conv_inst|freq_control~10_combout\ & (((\inst1|DDFS_freq_conv_inst|freq_control[0]~28_combout\ & \inst1|DDFS_freq_conv_inst|freq_control[0]~27_combout\)) # 
-- (!\inst1|BCD_C2_conv_inst|Add37~34_combout\))) # (!\inst1|DDFS_freq_conv_inst|freq_control~10_combout\ & (\inst1|DDFS_freq_conv_inst|freq_control[0]~28_combout\ & (\inst1|DDFS_freq_conv_inst|freq_control[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control~10_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[0]~28_combout\,
	datac => \inst1|DDFS_freq_conv_inst|freq_control[0]~27_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~34_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~29_combout\);

-- Location: LCCOMB_X47_Y10_N28
\inst1|DDFS_freq_conv_inst|freq_control[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~19_combout\ = (\inst1|DDFS_freq_conv_inst|freq_control[0]~14_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~36_combout\ & (!\inst1|BCD_C2_conv_inst|Add37~38_combout\ & !\inst1|BCD_C2_conv_inst|Add37~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control[0]~14_combout\,
	datab => \inst1|BCD_C2_conv_inst|Add37~36_combout\,
	datac => \inst1|BCD_C2_conv_inst|Add37~38_combout\,
	datad => \inst1|BCD_C2_conv_inst|Add37~40_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~19_combout\);

-- Location: LCCOMB_X47_Y10_N6
\inst1|DDFS_freq_conv_inst|freq_control[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~20_combout\ = (\inst1|DDFS_freq_conv_inst|freq_control[0]~18_combout\ & (\inst1|DDFS_freq_conv_inst|freq_control[0]~19_combout\ & (\inst1|DDFS_freq_conv_inst|freq_control[1]~11_combout\ & 
-- \inst1|DDFS_freq_conv_inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control[0]~18_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[0]~19_combout\,
	datac => \inst1|DDFS_freq_conv_inst|freq_control[1]~11_combout\,
	datad => \inst1|DDFS_freq_conv_inst|LessThan0~3_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~20_combout\);

-- Location: LCCOMB_X47_Y10_N18
\inst1|DDFS_freq_conv_inst|freq_control[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|DDFS_freq_conv_inst|freq_control[0]~30_combout\ = (\inst1|DDFS_freq_conv_inst|freq_control[0]~20_combout\) # ((\inst1|DDFS_freq_conv_inst|freq_control[0]~21_combout\ & (\inst1|DDFS_freq_conv_inst|freq_control[0]~29_combout\ & 
-- \inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DDFS_freq_conv_inst|freq_control[0]~21_combout\,
	datab => \inst1|DDFS_freq_conv_inst|freq_control[0]~29_combout\,
	datac => \inst1|DDFS_freq_conv_inst|freq_control[2]~4_combout\,
	datad => \inst1|DDFS_freq_conv_inst|freq_control[0]~20_combout\,
	combout => \inst1|DDFS_freq_conv_inst|freq_control[0]~30_combout\);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|keypad_mod_inst|column[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(3));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|keypad_mod_inst|column[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(2));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|keypad_mod_inst|column[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(1));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|keypad_mod_inst|column[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|debounced_keypad_pressed~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|next_page~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|sel_C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|sel_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|sel_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|digit_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|digit_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|digit_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|DDFS_freq_conv_inst|ALT_INV_freq_control[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|DDFS_freq_conv_inst|freq_control[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|DDFS_freq_conv_inst|freq_control[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));
END structure;


