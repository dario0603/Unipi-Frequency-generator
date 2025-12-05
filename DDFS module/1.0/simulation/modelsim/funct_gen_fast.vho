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

-- DATE "11/14/2025 11:16:22"

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

ENTITY 	funct_gen IS
    PORT (
	LEDG : OUT std_logic_vector(7 DOWNTO 7);
	SW : IN std_logic_vector(10 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(11 DOWNTO 0)
	);
END funct_gen;

-- Design Ports Information
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF funct_gen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 7);
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|f_div_inst|count[19]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[7]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~0_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~2_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~6_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~10_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~14_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~22_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~24_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~26_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~32_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~36_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~2_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~4_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~12_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~30_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~32_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~34_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~52_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~55_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~57_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~58_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~69_combout\ : std_logic;
SIGNAL \inst1|always3~0_combout\ : std_logic;
SIGNAL \inst1|always3~1_combout\ : std_logic;
SIGNAL \inst1|always3~4_combout\ : std_logic;
SIGNAL \inst1|always3~7_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst1|Add1~1_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~3_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~14_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~18_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~19_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count[19]~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|f_div_inst|Decoder1~0_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|end_cnt~0_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|end_cnt~1_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Decoder1~1_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Decoder1~2_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~1\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~3\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~5\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~7\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~9\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~11\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~13\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~15\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~17\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~19\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~21\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~23\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~25\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~27\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~29\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~31\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~33\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~35\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~37\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~38_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count[19]~1_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~5_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~1\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~3\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~5\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~6_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~17_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~7\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~8_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~16_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~9\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~10_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~15_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~11\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~13\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~14_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~13_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~15\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~16_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~12_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~17\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~18_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~11_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~19\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~20_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~10_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~21\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~22_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~9_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~23\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~24_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~8_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~25\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~27\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~28_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~6_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~29\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~31\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~33\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~35\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~36_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~2_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~34_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~4_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~30_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~28_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~26_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~7_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~20_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~18_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~16_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~12_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~8_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add0~4_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~20_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~0_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~21_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~15_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~17_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~19_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~21_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~23_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~25_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~27_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~29_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~31_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~33_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~35_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~37_cout\ : std_logic;
SIGNAL \inst1|f_div_inst|LessThan0~38_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~37\ : std_logic;
SIGNAL \inst1|f_div_inst|Add1~38_combout\ : std_logic;
SIGNAL \inst1|f_div_inst|count~0_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|cont[0]~10\ : std_logic;
SIGNAL \inst1|cont[1]~12\ : std_logic;
SIGNAL \inst1|cont[2]~13_combout\ : std_logic;
SIGNAL \SW[7]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|cont[5]~20\ : std_logic;
SIGNAL \inst1|cont[6]~21_combout\ : std_logic;
SIGNAL \inst1|cont[6]~22\ : std_logic;
SIGNAL \inst1|cont[7]~24\ : std_logic;
SIGNAL \inst1|cont[8]~25_combout\ : std_logic;
SIGNAL \inst1|cont[7]~23_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|cont[2]~14\ : std_logic;
SIGNAL \inst1|cont[3]~16\ : std_logic;
SIGNAL \inst1|cont[4]~17_combout\ : std_logic;
SIGNAL \inst1|cont[4]~18\ : std_logic;
SIGNAL \inst1|cont[5]~19_combout\ : std_logic;
SIGNAL \inst1|cont[3]~15_combout\ : std_logic;
SIGNAL \inst1|LessThan5~0_combout\ : std_logic;
SIGNAL \inst1|always4~0_combout\ : std_logic;
SIGNAL \inst1|LessThan10~0_combout\ : std_logic;
SIGNAL \inst1|always4~5_combout\ : std_logic;
SIGNAL \inst1|always4~6_combout\ : std_logic;
SIGNAL \inst1|q[11]~1_combout\ : std_logic;
SIGNAL \inst1|cont[0]~9_combout\ : std_logic;
SIGNAL \inst1|always4~1_combout\ : std_logic;
SIGNAL \inst1|always4~2_combout\ : std_logic;
SIGNAL \inst1|always4~3_combout\ : std_logic;
SIGNAL \inst1|always4~4_combout\ : std_logic;
SIGNAL \inst1|q[11]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~56_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~59_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ : std_logic;
SIGNAL \inst1|cont[1]~11_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~15_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~82_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~15_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\ : std_logic;
SIGNAL \inst1|Add3~1_cout\ : std_logic;
SIGNAL \inst1|Add3~3\ : std_logic;
SIGNAL \inst1|Add3~5\ : std_logic;
SIGNAL \inst1|Add3~7\ : std_logic;
SIGNAL \inst1|Add3~9\ : std_logic;
SIGNAL \inst1|Add3~10_combout\ : std_logic;
SIGNAL \inst1|always3~2_combout\ : std_logic;
SIGNAL \inst1|always3~3_combout\ : std_logic;
SIGNAL \inst1|always3~5_combout\ : std_logic;
SIGNAL \inst1|always3~6_combout\ : std_logic;
SIGNAL \inst1|always3~8_combout\ : std_logic;
SIGNAL \inst1|addr[4]~0_combout\ : std_logic;
SIGNAL \inst1|Add3~15_combout\ : std_logic;
SIGNAL \inst1|Add3~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73_combout\ : std_logic;
SIGNAL \inst1|Add3~17_combout\ : std_logic;
SIGNAL \inst1|Add3~4_combout\ : std_logic;
SIGNAL \inst1|Add3~18_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add3~2_combout\ : std_logic;
SIGNAL \inst1|Add3~19_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72_combout\ : std_logic;
SIGNAL \inst1|Add3~8_combout\ : std_logic;
SIGNAL \inst1|Add3~16_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[70]~70_combout\ : std_logic;
SIGNAL \inst1|Add3~11\ : std_logic;
SIGNAL \inst1|Add3~12_combout\ : std_logic;
SIGNAL \inst1|Add3~14_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst1|Add0~17_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst1|Add0~19_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst1|q_tmp[4]~0_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst1|q_tmp[2]~2_combout\ : std_logic;
SIGNAL \inst1|Add4~1_cout\ : std_logic;
SIGNAL \inst1|Add4~3\ : std_logic;
SIGNAL \inst1|Add4~5\ : std_logic;
SIGNAL \inst1|Add4~7\ : std_logic;
SIGNAL \inst1|Add4~9\ : std_logic;
SIGNAL \inst1|Add4~11\ : std_logic;
SIGNAL \inst1|Add4~13\ : std_logic;
SIGNAL \inst1|Add4~15\ : std_logic;
SIGNAL \inst1|Add4~17\ : std_logic;
SIGNAL \inst1|Add4~19\ : std_logic;
SIGNAL \inst1|Add4~21\ : std_logic;
SIGNAL \inst1|Add4~22_combout\ : std_logic;
SIGNAL \inst1|q[11]~2_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add4~20_combout\ : std_logic;
SIGNAL \inst1|always4~7_combout\ : std_logic;
SIGNAL \inst1|q[2]~3_combout\ : std_logic;
SIGNAL \inst1|q[10]~4_combout\ : std_logic;
SIGNAL \inst1|Add4~18_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst1|Add0~15_combout\ : std_logic;
SIGNAL \inst1|q[9]~5_combout\ : std_logic;
SIGNAL \inst1|Add4~16_combout\ : std_logic;
SIGNAL \inst1|q[8]~6_combout\ : std_logic;
SIGNAL \inst1|Add4~14_combout\ : std_logic;
SIGNAL \inst1|q[7]~7_combout\ : std_logic;
SIGNAL \inst1|Add4~12_combout\ : std_logic;
SIGNAL \inst1|q[6]~8_combout\ : std_logic;
SIGNAL \inst1|Add4~10_combout\ : std_logic;
SIGNAL \inst1|q[5]~9_combout\ : std_logic;
SIGNAL \inst1|Add4~8_combout\ : std_logic;
SIGNAL \inst1|q[4]~10_combout\ : std_logic;
SIGNAL \inst1|Add4~6_combout\ : std_logic;
SIGNAL \inst1|q[3]~11_combout\ : std_logic;
SIGNAL \inst1|Add4~4_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst1|q_tmp[3]~1_combout\ : std_logic;
SIGNAL \inst1|q[2]~12_combout\ : std_logic;
SIGNAL \inst1|Add4~2_combout\ : std_logic;
SIGNAL \inst1|q[1]~13_combout\ : std_logic;
SIGNAL \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \inst1|q_tmp[1]~3_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|cont\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|f_div_inst|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst1|cont_rt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_SW[7]~clkctrl_outclk\ : std_logic;

BEGIN

LEDG <= ww_LEDG;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst1|Add3~14_combout\ & \inst1|Add3~15_combout\ & \inst1|Add3~16_combout\ & \inst1|Add3~17_combout\ & \inst1|Add3~18_combout\ & \inst1|Add3~19_combout\ & 
\inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\);

\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a2\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a3\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a4\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a5\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a6\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(5);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a7\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(6);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a8\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(7);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a9\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(8);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a10\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(9);
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a11\ <= \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(10);

\inst1|f_div_inst|count[19]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|f_div_inst|count\(19));

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\SW[7]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SW~combout\(7));
\ALT_INV_SW[7]~clkctrl_outclk\ <= NOT \SW[7]~clkctrl_outclk\;

-- Location: LCCOMB_X31_Y20_N14
\inst1|Mod0|auto_generated|divider|divider|op_5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_5~0_combout\ = \inst1|cont\(2) $ (VCC)
-- \inst1|Mod0|auto_generated|divider|divider|op_5~1\ = CARRY(\inst1|cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(2),
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X31_Y20_N18
\inst1|Mod0|auto_generated|divider|divider|op_5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_5~4_combout\ = (\inst1|cont\(4) & (\inst1|Mod0|auto_generated|divider|divider|op_5~3\ $ (GND))) # (!\inst1|cont\(4) & (!\inst1|Mod0|auto_generated|divider|divider|op_5~3\ & VCC))
-- \inst1|Mod0|auto_generated|divider|divider|op_5~5\ = CARRY((\inst1|cont\(4) & !\inst1|Mod0|auto_generated|divider|divider|op_5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(4),
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_5~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X31_Y20_N26
\inst1|Mod0|auto_generated|divider|divider|op_5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_5~12_combout\ = (\inst1|cont\(8) & (\inst1|Mod0|auto_generated|divider|divider|op_5~11\ $ (GND))) # (!\inst1|cont\(8) & (!\inst1|Mod0|auto_generated|divider|divider|op_5~11\ & VCC))
-- \inst1|Mod0|auto_generated|divider|divider|op_5~13\ = CARRY((\inst1|cont\(8) & !\inst1|Mod0|auto_generated|divider|divider|op_5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(8),
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_5~11\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X30_Y20_N14
\inst1|Mod0|auto_generated|divider|divider|op_6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_6~0_combout\ = \inst1|cont\(1) $ (VCC)
-- \inst1|Mod0|auto_generated|divider|divider|op_6~1\ = CARRY(\inst1|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(1),
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X30_Y20_N16
\inst1|Mod0|auto_generated|divider|divider|op_6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_6~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_6~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_6~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_6~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X30_Y20_N26
\inst1|Mod0|auto_generated|divider|divider|op_6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_6~12_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~11\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_6~11\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|op_6~13\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|op_6~11\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_6~11\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X28_Y20_N4
\inst1|Mod0|auto_generated|divider|divider|op_7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_7~0_combout\ = \inst1|cont\(0) $ (VCC)
-- \inst1|Mod0|auto_generated|divider|divider|op_7~1\ = CARRY(\inst1|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(0),
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X25_Y20_N16
\inst1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|Add3~19_combout\ & ((\inst1|Add3~18_combout\ & (\inst1|Add0~1\ & VCC)) # (!\inst1|Add3~18_combout\ & (!\inst1|Add0~1\)))) # (!\inst1|Add3~19_combout\ & ((\inst1|Add3~18_combout\ & (!\inst1|Add0~1\)) # 
-- (!\inst1|Add3~18_combout\ & ((\inst1|Add0~1\) # (GND)))))
-- \inst1|Add0~3\ = CARRY((\inst1|Add3~19_combout\ & (!\inst1|Add3~18_combout\ & !\inst1|Add0~1\)) # (!\inst1|Add3~19_combout\ & ((!\inst1|Add0~1\) # (!\inst1|Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~19_combout\,
	datab => \inst1|Add3~18_combout\,
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X25_Y20_N20
\inst1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|Add3~16_combout\ & ((\inst1|Add3~17_combout\ & (\inst1|Add0~5\ & VCC)) # (!\inst1|Add3~17_combout\ & (!\inst1|Add0~5\)))) # (!\inst1|Add3~16_combout\ & ((\inst1|Add3~17_combout\ & (!\inst1|Add0~5\)) # 
-- (!\inst1|Add3~17_combout\ & ((\inst1|Add0~5\) # (GND)))))
-- \inst1|Add0~7\ = CARRY((\inst1|Add3~16_combout\ & (!\inst1|Add3~17_combout\ & !\inst1|Add0~5\)) # (!\inst1|Add3~16_combout\ & ((!\inst1|Add0~5\) # (!\inst1|Add3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~16_combout\,
	datab => \inst1|Add3~17_combout\,
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X25_Y20_N24
\inst1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|Add3~14_combout\ & ((\inst1|Add3~15_combout\ & (\inst1|Add0~9\ & VCC)) # (!\inst1|Add3~15_combout\ & (!\inst1|Add0~9\)))) # (!\inst1|Add3~14_combout\ & ((\inst1|Add3~15_combout\ & (!\inst1|Add0~9\)) # 
-- (!\inst1|Add3~15_combout\ & ((\inst1|Add0~9\) # (GND)))))
-- \inst1|Add0~11\ = CARRY((\inst1|Add3~14_combout\ & (!\inst1|Add3~15_combout\ & !\inst1|Add0~9\)) # (!\inst1|Add3~14_combout\ & ((!\inst1|Add0~9\) # (!\inst1|Add3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~14_combout\,
	datab => \inst1|Add3~15_combout\,
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: M4K_X26_Y20
\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFBFE7F9FEDFCBF6FE8FC5F6FEA7CCF87EE7D7FA4F31E33BFF71EC7D53A2F34E47C4B806EDDB3B175869BD0B9BF2C640C5183EFB5DCB8569EC6570AA94DE8D4FC9BD2FE504818C3106103FF7BCEF1CD3786AACC987AEC590A913FA5B46C844F61C73445F0AB1312163945F8990E413013000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/funct_gen.ram0_sin_lut_a282ea11.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ddfs:inst1|sin_lut:lut_inst|altsyncram:rom_rtl_0|altsyncram_o171:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 11,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 11,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y28_N12
\inst1|f_div_inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~0_combout\ = (((!\SW~combout\(10) & !\SW~combout\(9))))
-- \inst1|f_div_inst|Add0~1\ = CARRY((!\SW~combout\(10) & !\SW~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \SW~combout\(9),
	datad => VCC,
	combout => \inst1|f_div_inst|Add0~0_combout\,
	cout => \inst1|f_div_inst|Add0~1\);

-- Location: LCCOMB_X32_Y28_N14
\inst1|f_div_inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~2_combout\ = (\inst1|f_div_inst|Decoder1~2_combout\ & (\inst1|f_div_inst|Add0~1\ & VCC)) # (!\inst1|f_div_inst|Decoder1~2_combout\ & (!\inst1|f_div_inst|Add0~1\))
-- \inst1|f_div_inst|Add0~3\ = CARRY((!\inst1|f_div_inst|Decoder1~2_combout\ & !\inst1|f_div_inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|Decoder1~2_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~1\,
	combout => \inst1|f_div_inst|Add0~2_combout\,
	cout => \inst1|f_div_inst|Add0~3\);

-- Location: LCCOMB_X32_Y28_N18
\inst1|f_div_inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~6_combout\ = (\inst1|f_div_inst|Decoder1~1_combout\ & (\inst1|f_div_inst|Add0~5\ & VCC)) # (!\inst1|f_div_inst|Decoder1~1_combout\ & (!\inst1|f_div_inst|Add0~5\))
-- \inst1|f_div_inst|Add0~7\ = CARRY((!\inst1|f_div_inst|Decoder1~1_combout\ & !\inst1|f_div_inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|Decoder1~1_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~5\,
	combout => \inst1|f_div_inst|Add0~6_combout\,
	cout => \inst1|f_div_inst|Add0~7\);

-- Location: LCCOMB_X32_Y28_N22
\inst1|f_div_inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~10_combout\ = (\SW~combout\(9) & (\inst1|f_div_inst|Add0~9\ & VCC)) # (!\SW~combout\(9) & (!\inst1|f_div_inst|Add0~9\))
-- \inst1|f_div_inst|Add0~11\ = CARRY((!\SW~combout\(9) & !\inst1|f_div_inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~9\,
	combout => \inst1|f_div_inst|Add0~10_combout\,
	cout => \inst1|f_div_inst|Add0~11\);

-- Location: LCCOMB_X32_Y28_N26
\inst1|f_div_inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~14_combout\ = (\inst1|f_div_inst|end_cnt~0_combout\ & (!\inst1|f_div_inst|Add0~13\)) # (!\inst1|f_div_inst|end_cnt~0_combout\ & (\inst1|f_div_inst|Add0~13\ & VCC))
-- \inst1|f_div_inst|Add0~15\ = CARRY((\inst1|f_div_inst|end_cnt~0_combout\ & !\inst1|f_div_inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|end_cnt~0_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~13\,
	combout => \inst1|f_div_inst|Add0~14_combout\,
	cout => \inst1|f_div_inst|Add0~15\);

-- Location: LCCOMB_X32_Y27_N2
\inst1|f_div_inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~22_combout\ = !\inst1|f_div_inst|Add0~21\
-- \inst1|f_div_inst|Add0~23\ = CARRY(!\inst1|f_div_inst|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~21\,
	combout => \inst1|f_div_inst|Add0~22_combout\,
	cout => \inst1|f_div_inst|Add0~23\);

-- Location: LCCOMB_X32_Y27_N4
\inst1|f_div_inst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~24_combout\ = (\inst1|f_div_inst|Decoder1~1_combout\ & ((GND) # (!\inst1|f_div_inst|Add0~23\))) # (!\inst1|f_div_inst|Decoder1~1_combout\ & (\inst1|f_div_inst|Add0~23\ $ (GND)))
-- \inst1|f_div_inst|Add0~25\ = CARRY((\inst1|f_div_inst|Decoder1~1_combout\) # (!\inst1|f_div_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Decoder1~1_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~23\,
	combout => \inst1|f_div_inst|Add0~24_combout\,
	cout => \inst1|f_div_inst|Add0~25\);

-- Location: LCCOMB_X32_Y27_N6
\inst1|f_div_inst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~26_combout\ = (\SW~combout\(9) & ((\SW~combout\(10) & (\inst1|f_div_inst|Add0~25\ & VCC)) # (!\SW~combout\(10) & (!\inst1|f_div_inst|Add0~25\)))) # (!\SW~combout\(9) & (((!\inst1|f_div_inst|Add0~25\))))
-- \inst1|f_div_inst|Add0~27\ = CARRY((!\inst1|f_div_inst|Add0~25\ & ((!\SW~combout\(10)) # (!\SW~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~25\,
	combout => \inst1|f_div_inst|Add0~26_combout\,
	cout => \inst1|f_div_inst|Add0~27\);

-- Location: LCCOMB_X32_Y27_N12
\inst1|f_div_inst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~32_combout\ = (\inst1|f_div_inst|Add0~31\ & ((((\SW~combout\(9) & \SW~combout\(10)))))) # (!\inst1|f_div_inst|Add0~31\ & (((\SW~combout\(9) & \SW~combout\(10))) # (GND)))
-- \inst1|f_div_inst|Add0~33\ = CARRY(((\SW~combout\(9) & \SW~combout\(10))) # (!\inst1|f_div_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~31\,
	combout => \inst1|f_div_inst|Add0~32_combout\,
	cout => \inst1|f_div_inst|Add0~33\);

-- Location: LCCOMB_X32_Y27_N16
\inst1|f_div_inst|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~36_combout\ = (\inst1|f_div_inst|Add0~35\ & ((((\SW~combout\(9) & \SW~combout\(10)))))) # (!\inst1|f_div_inst|Add0~35\ & (((\SW~combout\(9) & \SW~combout\(10))) # (GND)))
-- \inst1|f_div_inst|Add0~37\ = CARRY(((\SW~combout\(9) & \SW~combout\(10))) # (!\inst1|f_div_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~35\,
	combout => \inst1|f_div_inst|Add0~36_combout\,
	cout => \inst1|f_div_inst|Add0~37\);

-- Location: LCCOMB_X30_Y28_N14
\inst1|f_div_inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~2_combout\ = (\inst1|f_div_inst|count\(1) & (!\inst1|f_div_inst|Add1~1\)) # (!\inst1|f_div_inst|count\(1) & ((\inst1|f_div_inst|Add1~1\) # (GND)))
-- \inst1|f_div_inst|Add1~3\ = CARRY((!\inst1|f_div_inst|Add1~1\) # (!\inst1|f_div_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(1),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~1\,
	combout => \inst1|f_div_inst|Add1~2_combout\,
	cout => \inst1|f_div_inst|Add1~3\);

-- Location: LCCOMB_X30_Y28_N16
\inst1|f_div_inst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~4_combout\ = (\inst1|f_div_inst|count\(2) & (\inst1|f_div_inst|Add1~3\ $ (GND))) # (!\inst1|f_div_inst|count\(2) & (!\inst1|f_div_inst|Add1~3\ & VCC))
-- \inst1|f_div_inst|Add1~5\ = CARRY((\inst1|f_div_inst|count\(2) & !\inst1|f_div_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(2),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~3\,
	combout => \inst1|f_div_inst|Add1~4_combout\,
	cout => \inst1|f_div_inst|Add1~5\);

-- Location: LCCOMB_X30_Y28_N24
\inst1|f_div_inst|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~12_combout\ = (\inst1|f_div_inst|count\(6) & (\inst1|f_div_inst|Add1~11\ $ (GND))) # (!\inst1|f_div_inst|count\(6) & (!\inst1|f_div_inst|Add1~11\ & VCC))
-- \inst1|f_div_inst|Add1~13\ = CARRY((\inst1|f_div_inst|count\(6) & !\inst1|f_div_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(6),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~11\,
	combout => \inst1|f_div_inst|Add1~12_combout\,
	cout => \inst1|f_div_inst|Add1~13\);

-- Location: LCCOMB_X30_Y27_N10
\inst1|f_div_inst|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~30_combout\ = (\inst1|f_div_inst|count\(15) & (!\inst1|f_div_inst|Add1~29\)) # (!\inst1|f_div_inst|count\(15) & ((\inst1|f_div_inst|Add1~29\) # (GND)))
-- \inst1|f_div_inst|Add1~31\ = CARRY((!\inst1|f_div_inst|Add1~29\) # (!\inst1|f_div_inst|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(15),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~29\,
	combout => \inst1|f_div_inst|Add1~30_combout\,
	cout => \inst1|f_div_inst|Add1~31\);

-- Location: LCCOMB_X30_Y27_N12
\inst1|f_div_inst|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~32_combout\ = (\inst1|f_div_inst|count\(16) & (\inst1|f_div_inst|Add1~31\ $ (GND))) # (!\inst1|f_div_inst|count\(16) & (!\inst1|f_div_inst|Add1~31\ & VCC))
-- \inst1|f_div_inst|Add1~33\ = CARRY((\inst1|f_div_inst|count\(16) & !\inst1|f_div_inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(16),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~31\,
	combout => \inst1|f_div_inst|Add1~32_combout\,
	cout => \inst1|f_div_inst|Add1~33\);

-- Location: LCCOMB_X30_Y27_N14
\inst1|f_div_inst|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~34_combout\ = (\inst1|f_div_inst|count\(17) & (!\inst1|f_div_inst|Add1~33\)) # (!\inst1|f_div_inst|count\(17) & ((\inst1|f_div_inst|Add1~33\) # (GND)))
-- \inst1|f_div_inst|Add1~35\ = CARRY((!\inst1|f_div_inst|Add1~33\) # (!\inst1|f_div_inst|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(17),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~33\,
	combout => \inst1|f_div_inst|Add1~34_combout\,
	cout => \inst1|f_div_inst|Add1~35\);

-- Location: LCFF_X29_Y20_N17
\inst1|cont_rt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst1|cont\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont_rt\(1));

-- Location: LCCOMB_X30_Y20_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_5~12_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_5~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\);

-- Location: LCCOMB_X30_Y20_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_5~10_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\);

-- Location: LCCOMB_X31_Y20_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~52_combout\ = (\inst1|cont\(6) & \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cont\(6),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~52_combout\);

-- Location: LCCOMB_X30_Y20_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~55_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_5~6_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~55_combout\);

-- Location: LCCOMB_X30_Y20_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~57_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_5~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~57_combout\);

-- Location: LCCOMB_X31_Y20_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~58_combout\ = (\inst1|cont\(3) & \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cont\(3),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~58_combout\);

-- Location: LCCOMB_X31_Y20_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_5~0_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X29_Y20_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~0_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68_combout\);

-- Location: LCCOMB_X29_Y20_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~69_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~69_combout\);

-- Location: LCCOMB_X32_Y20_N4
\inst1|always3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always3~0_combout\ = (!\inst1|cont\(4) & (((!\inst1|cont\(2) & !\inst1|cont\(1))) # (!\inst1|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(3),
	datab => \inst1|cont\(2),
	datac => \inst1|cont\(1),
	datad => \inst1|cont\(4),
	combout => \inst1|always3~0_combout\);

-- Location: LCCOMB_X33_Y20_N6
\inst1|always3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always3~1_combout\ = (\inst1|cont\(7) & (!\inst1|cont\(6) & ((\inst1|always3~0_combout\) # (!\inst1|cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(5),
	datab => \inst1|cont\(7),
	datac => \inst1|always3~0_combout\,
	datad => \inst1|cont\(6),
	combout => \inst1|always3~1_combout\);

-- Location: LCCOMB_X31_Y20_N10
\inst1|always3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always3~4_combout\ = (\inst1|cont\(4) & (\inst1|cont\(2) & (\inst1|cont\(3) & \inst1|cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(4),
	datab => \inst1|cont\(2),
	datac => \inst1|cont\(3),
	datad => \inst1|cont\(5),
	combout => \inst1|always3~4_combout\);

-- Location: LCCOMB_X32_Y20_N8
\inst1|always3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always3~7_combout\ = (!\inst1|cont\(5) & (((!\inst1|cont\(3) & !\inst1|cont\(2))) # (!\inst1|cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(3),
	datab => \inst1|cont\(4),
	datac => \inst1|cont\(2),
	datad => \inst1|cont\(5),
	combout => \inst1|always3~7_combout\);

-- Location: LCCOMB_X32_Y28_N6
\inst1|f_div_inst|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|WideOr3~0_combout\ = (\SW~combout\(9) & ((!\SW~combout\(10)))) # (!\SW~combout\(9) & (\SW~combout\(8) & \SW~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(9),
	datac => \SW~combout\(10),
	combout => \inst1|f_div_inst|WideOr3~0_combout\);

-- Location: LCFF_X30_Y27_N21
\inst1|f_div_inst|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(17));

-- Location: LCFF_X30_Y28_N11
\inst1|f_div_inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(6));

-- Location: LCFF_X31_Y28_N7
\inst1|f_div_inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(2));

-- Location: LCCOMB_X32_Y16_N2
\inst1|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~1_combout\ = \SW~combout\(6) $ (((\SW~combout\(4) & \SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \inst1|Add1~1_combout\);

-- Location: LCCOMB_X30_Y27_N20
\inst1|f_div_inst|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~3_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~34_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & (((!\SW~combout\(10))) # (!\SW~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(10),
	datac => \inst1|f_div_inst|Add1~34_combout\,
	datad => \inst1|f_div_inst|count[19]~1_combout\,
	combout => \inst1|f_div_inst|count~3_combout\);

-- Location: LCCOMB_X30_Y28_N10
\inst1|f_div_inst|count~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~14_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~12_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & (((!\inst1|f_div_inst|end_cnt~1_combout\)) # (!\SW~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \inst1|f_div_inst|end_cnt~1_combout\,
	datac => \inst1|f_div_inst|count[19]~1_combout\,
	datad => \inst1|f_div_inst|Add1~12_combout\,
	combout => \inst1|f_div_inst|count~14_combout\);

-- Location: LCCOMB_X32_Y28_N10
\inst1|f_div_inst|count~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~18_combout\ = (\SW~combout\(9)) # (!\SW~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datac => \SW~combout\(9),
	combout => \inst1|f_div_inst|count~18_combout\);

-- Location: LCCOMB_X31_Y28_N6
\inst1|f_div_inst|count~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~19_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~4_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & (!\SW~combout\(10) & ((\inst1|f_div_inst|count~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \inst1|f_div_inst|Add1~4_combout\,
	datac => \inst1|f_div_inst|count[19]~1_combout\,
	datad => \inst1|f_div_inst|count~18_combout\,
	combout => \inst1|f_div_inst|count~19_combout\);

-- Location: LCCOMB_X29_Y20_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & ((\inst1|cont\(4)))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_5~4_combout\,
	datac => \inst1|cont\(4),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79_combout\);

-- Location: LCCOMB_X29_Y20_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & (\inst1|cont\(3))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(3),
	datab => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80_combout\);

-- Location: LCCOMB_X29_Y20_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & ((\inst1|cont\(2)))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_5~0_combout\,
	datab => \inst1|cont\(2),
	datac => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: CLKCTRL_G8
\inst1|f_div_inst|count[19]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|f_div_inst|count[19]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|f_div_inst|count[19]~clkctrl_outclk\);

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

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
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
	padio => ww_SW(10),
	combout => \SW~combout\(10));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCCOMB_X32_Y27_N30
\inst1|f_div_inst|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Decoder1~0_combout\ = (\SW~combout\(10) & (!\SW~combout\(9) & \SW~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(10),
	datac => \SW~combout\(9),
	datad => \SW~combout\(8),
	combout => \inst1|f_div_inst|Decoder1~0_combout\);

-- Location: LCCOMB_X32_Y28_N2
\inst1|f_div_inst|end_cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|end_cnt~0_combout\ = (\SW~combout\(8) & ((\SW~combout\(10)) # (!\SW~combout\(9)))) # (!\SW~combout\(8) & ((\SW~combout\(9)) # (!\SW~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(9),
	datac => \SW~combout\(10),
	combout => \inst1|f_div_inst|end_cnt~0_combout\);

-- Location: LCCOMB_X32_Y28_N4
\inst1|f_div_inst|end_cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|end_cnt~1_combout\ = \SW~combout\(9) $ (\SW~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datac => \SW~combout\(10),
	combout => \inst1|f_div_inst|end_cnt~1_combout\);

-- Location: LCCOMB_X32_Y27_N20
\inst1|f_div_inst|Decoder1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Decoder1~1_combout\ = (\SW~combout\(10) & (!\SW~combout\(9) & !\SW~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(10),
	datac => \SW~combout\(9),
	datad => \SW~combout\(8),
	combout => \inst1|f_div_inst|Decoder1~1_combout\);

-- Location: LCCOMB_X32_Y28_N0
\inst1|f_div_inst|Decoder1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Decoder1~2_combout\ = (!\SW~combout\(8) & (\SW~combout\(9) & !\SW~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(9),
	datac => \SW~combout\(10),
	combout => \inst1|f_div_inst|Decoder1~2_combout\);

-- Location: LCCOMB_X32_Y28_N16
\inst1|f_div_inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~4_combout\ = (\inst1|f_div_inst|Add0~3\ & ((((\SW~combout\(8) & !\SW~combout\(10)))))) # (!\inst1|f_div_inst|Add0~3\ & (((\SW~combout\(8) & !\SW~combout\(10))) # (GND)))
-- \inst1|f_div_inst|Add0~5\ = CARRY(((\SW~combout\(8) & !\SW~combout\(10))) # (!\inst1|f_div_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~3\,
	combout => \inst1|f_div_inst|Add0~4_combout\,
	cout => \inst1|f_div_inst|Add0~5\);

-- Location: LCCOMB_X32_Y28_N20
\inst1|f_div_inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~8_combout\ = (\inst1|f_div_inst|WideOr3~0_combout\ & ((GND) # (!\inst1|f_div_inst|Add0~7\))) # (!\inst1|f_div_inst|WideOr3~0_combout\ & (\inst1|f_div_inst|Add0~7\ $ (GND)))
-- \inst1|f_div_inst|Add0~9\ = CARRY((\inst1|f_div_inst|WideOr3~0_combout\) # (!\inst1|f_div_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|WideOr3~0_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~7\,
	combout => \inst1|f_div_inst|Add0~8_combout\,
	cout => \inst1|f_div_inst|Add0~9\);

-- Location: LCCOMB_X32_Y28_N24
\inst1|f_div_inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~12_combout\ = (\inst1|f_div_inst|Add0~11\ & ((((\SW~combout\(8) & \inst1|f_div_inst|end_cnt~1_combout\))))) # (!\inst1|f_div_inst|Add0~11\ & (((\SW~combout\(8) & \inst1|f_div_inst|end_cnt~1_combout\)) # (GND)))
-- \inst1|f_div_inst|Add0~13\ = CARRY(((\SW~combout\(8) & \inst1|f_div_inst|end_cnt~1_combout\)) # (!\inst1|f_div_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \inst1|f_div_inst|end_cnt~1_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~11\,
	combout => \inst1|f_div_inst|Add0~12_combout\,
	cout => \inst1|f_div_inst|Add0~13\);

-- Location: LCCOMB_X32_Y28_N28
\inst1|f_div_inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~16_combout\ = (\inst1|f_div_inst|Add0~15\ & ((((\SW~combout\(10)) # (!\inst1|f_div_inst|WideOr2~0_combout\))))) # (!\inst1|f_div_inst|Add0~15\ & (((\SW~combout\(10)) # (GND)) # (!\inst1|f_div_inst|WideOr2~0_combout\)))
-- \inst1|f_div_inst|Add0~17\ = CARRY(((\SW~combout\(10)) # (!\inst1|f_div_inst|Add0~15\)) # (!\inst1|f_div_inst|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|WideOr2~0_combout\,
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~15\,
	combout => \inst1|f_div_inst|Add0~16_combout\,
	cout => \inst1|f_div_inst|Add0~17\);

-- Location: LCCOMB_X32_Y28_N30
\inst1|f_div_inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~18_combout\ = (\SW~combout\(10) & ((\SW~combout\(9) & (!\inst1|f_div_inst|Add0~17\)) # (!\SW~combout\(9) & (\inst1|f_div_inst|Add0~17\ & VCC)))) # (!\SW~combout\(10) & (((!\inst1|f_div_inst|Add0~17\))))
-- \inst1|f_div_inst|Add0~19\ = CARRY((!\inst1|f_div_inst|Add0~17\ & ((\SW~combout\(9)) # (!\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~17\,
	combout => \inst1|f_div_inst|Add0~18_combout\,
	cout => \inst1|f_div_inst|Add0~19\);

-- Location: LCCOMB_X32_Y27_N0
\inst1|f_div_inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~20_combout\ = \inst1|f_div_inst|Add0~19\ $ (GND)
-- \inst1|f_div_inst|Add0~21\ = CARRY(!\inst1|f_div_inst|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~19\,
	combout => \inst1|f_div_inst|Add0~20_combout\,
	cout => \inst1|f_div_inst|Add0~21\);

-- Location: LCCOMB_X32_Y27_N8
\inst1|f_div_inst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~28_combout\ = (\inst1|f_div_inst|Decoder1~0_combout\ & ((GND) # (!\inst1|f_div_inst|Add0~27\))) # (!\inst1|f_div_inst|Decoder1~0_combout\ & (\inst1|f_div_inst|Add0~27\ $ (GND)))
-- \inst1|f_div_inst|Add0~29\ = CARRY((\inst1|f_div_inst|Decoder1~0_combout\) # (!\inst1|f_div_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|Decoder1~0_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~27\,
	combout => \inst1|f_div_inst|Add0~28_combout\,
	cout => \inst1|f_div_inst|Add0~29\);

-- Location: LCCOMB_X32_Y27_N10
\inst1|f_div_inst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~30_combout\ = (\inst1|f_div_inst|WideOr1~0_combout\ & ((\SW~combout\(10) & (\inst1|f_div_inst|Add0~29\ & VCC)) # (!\SW~combout\(10) & (!\inst1|f_div_inst|Add0~29\)))) # (!\inst1|f_div_inst|WideOr1~0_combout\ & 
-- (((!\inst1|f_div_inst|Add0~29\))))
-- \inst1|f_div_inst|Add0~31\ = CARRY((!\inst1|f_div_inst|Add0~29\ & ((!\SW~combout\(10)) # (!\inst1|f_div_inst|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|WideOr1~0_combout\,
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~29\,
	combout => \inst1|f_div_inst|Add0~30_combout\,
	cout => \inst1|f_div_inst|Add0~31\);

-- Location: LCCOMB_X32_Y27_N14
\inst1|f_div_inst|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~34_combout\ = (\SW~combout\(9) & ((\SW~combout\(10) & (\inst1|f_div_inst|Add0~33\ & VCC)) # (!\SW~combout\(10) & (!\inst1|f_div_inst|Add0~33\)))) # (!\SW~combout\(9) & (((!\inst1|f_div_inst|Add0~33\))))
-- \inst1|f_div_inst|Add0~35\ = CARRY((!\inst1|f_div_inst|Add0~33\ & ((!\SW~combout\(10)) # (!\SW~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(10),
	datad => VCC,
	cin => \inst1|f_div_inst|Add0~33\,
	combout => \inst1|f_div_inst|Add0~34_combout\,
	cout => \inst1|f_div_inst|Add0~35\);

-- Location: LCCOMB_X32_Y27_N18
\inst1|f_div_inst|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add0~38_combout\ = \inst1|f_div_inst|Add0~37\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|f_div_inst|Add0~37\,
	combout => \inst1|f_div_inst|Add0~38_combout\);

-- Location: LCCOMB_X32_Y27_N24
\inst1|f_div_inst|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|WideOr1~0_combout\ = (\SW~combout\(9)) # (\SW~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(9),
	datad => \SW~combout\(8),
	combout => \inst1|f_div_inst|WideOr1~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X31_Y27_N22
\inst1|f_div_inst|count[19]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count[19]~1_combout\ = (\SW~combout\(7) & \inst1|f_div_inst|LessThan0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(7),
	datad => \inst1|f_div_inst|LessThan0~38_combout\,
	combout => \inst1|f_div_inst|count[19]~1_combout\);

-- Location: LCCOMB_X31_Y27_N24
\inst1|f_div_inst|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~5_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (\inst1|f_div_inst|Add1~30_combout\)) # (!\inst1|f_div_inst|count[19]~1_combout\ & (((!\inst1|f_div_inst|WideOr1~0_combout\) # (!\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add1~30_combout\,
	datab => \SW~combout\(10),
	datac => \inst1|f_div_inst|WideOr1~0_combout\,
	datad => \inst1|f_div_inst|count[19]~1_combout\,
	combout => \inst1|f_div_inst|count~5_combout\);

-- Location: LCFF_X31_Y27_N25
\inst1|f_div_inst|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(15));

-- Location: LCCOMB_X30_Y28_N12
\inst1|f_div_inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~0_combout\ = \inst1|f_div_inst|count\(0) $ (VCC)
-- \inst1|f_div_inst|Add1~1\ = CARRY(\inst1|f_div_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(0),
	datad => VCC,
	combout => \inst1|f_div_inst|Add1~0_combout\,
	cout => \inst1|f_div_inst|Add1~1\);

-- Location: LCCOMB_X30_Y28_N18
\inst1|f_div_inst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~6_combout\ = (\inst1|f_div_inst|count\(3) & (!\inst1|f_div_inst|Add1~5\)) # (!\inst1|f_div_inst|count\(3) & ((\inst1|f_div_inst|Add1~5\) # (GND)))
-- \inst1|f_div_inst|Add1~7\ = CARRY((!\inst1|f_div_inst|Add1~5\) # (!\inst1|f_div_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(3),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~5\,
	combout => \inst1|f_div_inst|Add1~6_combout\,
	cout => \inst1|f_div_inst|Add1~7\);

-- Location: LCCOMB_X31_Y28_N8
\inst1|f_div_inst|count~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~17_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~6_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & (((!\inst1|f_div_inst|WideOr1~0_combout\)) # (!\SW~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \inst1|f_div_inst|WideOr1~0_combout\,
	datac => \inst1|f_div_inst|count[19]~1_combout\,
	datad => \inst1|f_div_inst|Add1~6_combout\,
	combout => \inst1|f_div_inst|count~17_combout\);

-- Location: LCFF_X31_Y28_N9
\inst1|f_div_inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(3));

-- Location: LCCOMB_X30_Y28_N20
\inst1|f_div_inst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~8_combout\ = (\inst1|f_div_inst|count\(4) & (\inst1|f_div_inst|Add1~7\ $ (GND))) # (!\inst1|f_div_inst|count\(4) & (!\inst1|f_div_inst|Add1~7\ & VCC))
-- \inst1|f_div_inst|Add1~9\ = CARRY((\inst1|f_div_inst|count\(4) & !\inst1|f_div_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(4),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~7\,
	combout => \inst1|f_div_inst|Add1~8_combout\,
	cout => \inst1|f_div_inst|Add1~9\);

-- Location: LCCOMB_X31_Y28_N10
\inst1|f_div_inst|count~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~16_combout\ = (\SW~combout\(7) & ((\inst1|f_div_inst|LessThan0~38_combout\ & ((\inst1|f_div_inst|Add1~8_combout\))) # (!\inst1|f_div_inst|LessThan0~38_combout\ & (!\SW~combout\(9))))) # (!\SW~combout\(7) & (!\SW~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(7),
	datac => \inst1|f_div_inst|Add1~8_combout\,
	datad => \inst1|f_div_inst|LessThan0~38_combout\,
	combout => \inst1|f_div_inst|count~16_combout\);

-- Location: LCFF_X31_Y28_N11
\inst1|f_div_inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(4));

-- Location: LCCOMB_X30_Y28_N22
\inst1|f_div_inst|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~10_combout\ = (\inst1|f_div_inst|count\(5) & (!\inst1|f_div_inst|Add1~9\)) # (!\inst1|f_div_inst|count\(5) & ((\inst1|f_div_inst|Add1~9\) # (GND)))
-- \inst1|f_div_inst|Add1~11\ = CARRY((!\inst1|f_div_inst|Add1~9\) # (!\inst1|f_div_inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(5),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~9\,
	combout => \inst1|f_div_inst|Add1~10_combout\,
	cout => \inst1|f_div_inst|Add1~11\);

-- Location: LCCOMB_X30_Y28_N4
\inst1|f_div_inst|count~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~15_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~10_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & (((\SW~combout\(10))) # (!\SW~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \inst1|f_div_inst|Add1~10_combout\,
	datac => \inst1|f_div_inst|count[19]~1_combout\,
	datad => \SW~combout\(10),
	combout => \inst1|f_div_inst|count~15_combout\);

-- Location: LCFF_X30_Y28_N5
\inst1|f_div_inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(5));

-- Location: LCCOMB_X30_Y28_N26
\inst1|f_div_inst|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~14_combout\ = (\inst1|f_div_inst|count\(7) & (!\inst1|f_div_inst|Add1~13\)) # (!\inst1|f_div_inst|count\(7) & ((\inst1|f_div_inst|Add1~13\) # (GND)))
-- \inst1|f_div_inst|Add1~15\ = CARRY((!\inst1|f_div_inst|Add1~13\) # (!\inst1|f_div_inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(7),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~13\,
	combout => \inst1|f_div_inst|Add1~14_combout\,
	cout => \inst1|f_div_inst|Add1~15\);

-- Location: LCCOMB_X31_Y28_N0
\inst1|f_div_inst|count~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~13_combout\ = (\SW~combout\(7) & ((\inst1|f_div_inst|LessThan0~38_combout\ & ((\inst1|f_div_inst|Add1~14_combout\))) # (!\inst1|f_div_inst|LessThan0~38_combout\ & (\inst1|f_div_inst|end_cnt~0_combout\)))) # (!\SW~combout\(7) & 
-- (\inst1|f_div_inst|end_cnt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|end_cnt~0_combout\,
	datab => \inst1|f_div_inst|Add1~14_combout\,
	datac => \SW~combout\(7),
	datad => \inst1|f_div_inst|LessThan0~38_combout\,
	combout => \inst1|f_div_inst|count~13_combout\);

-- Location: LCFF_X31_Y28_N1
\inst1|f_div_inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(7));

-- Location: LCCOMB_X30_Y28_N28
\inst1|f_div_inst|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~16_combout\ = (\inst1|f_div_inst|count\(8) & (\inst1|f_div_inst|Add1~15\ $ (GND))) # (!\inst1|f_div_inst|count\(8) & (!\inst1|f_div_inst|Add1~15\ & VCC))
-- \inst1|f_div_inst|Add1~17\ = CARRY((\inst1|f_div_inst|count\(8) & !\inst1|f_div_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(8),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~15\,
	combout => \inst1|f_div_inst|Add1~16_combout\,
	cout => \inst1|f_div_inst|Add1~17\);

-- Location: LCCOMB_X30_Y28_N0
\inst1|f_div_inst|count~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~12_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~16_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & (\inst1|f_div_inst|WideOr2~0_combout\ & ((!\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|WideOr2~0_combout\,
	datab => \inst1|f_div_inst|Add1~16_combout\,
	datac => \inst1|f_div_inst|count[19]~1_combout\,
	datad => \SW~combout\(10),
	combout => \inst1|f_div_inst|count~12_combout\);

-- Location: LCFF_X30_Y28_N1
\inst1|f_div_inst|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(8));

-- Location: LCCOMB_X30_Y28_N30
\inst1|f_div_inst|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~18_combout\ = (\inst1|f_div_inst|count\(9) & (!\inst1|f_div_inst|Add1~17\)) # (!\inst1|f_div_inst|count\(9) & ((\inst1|f_div_inst|Add1~17\) # (GND)))
-- \inst1|f_div_inst|Add1~19\ = CARRY((!\inst1|f_div_inst|Add1~17\) # (!\inst1|f_div_inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(9),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~17\,
	combout => \inst1|f_div_inst|Add1~18_combout\,
	cout => \inst1|f_div_inst|Add1~19\);

-- Location: LCCOMB_X31_Y27_N20
\inst1|f_div_inst|count~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~11_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~18_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & ((\SW~combout\(9)) # ((!\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(10),
	datac => \inst1|f_div_inst|Add1~18_combout\,
	datad => \inst1|f_div_inst|count[19]~1_combout\,
	combout => \inst1|f_div_inst|count~11_combout\);

-- Location: LCFF_X31_Y27_N21
\inst1|f_div_inst|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(9));

-- Location: LCCOMB_X30_Y27_N0
\inst1|f_div_inst|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~20_combout\ = (\inst1|f_div_inst|count\(10) & (\inst1|f_div_inst|Add1~19\ $ (GND))) # (!\inst1|f_div_inst|count\(10) & (!\inst1|f_div_inst|Add1~19\ & VCC))
-- \inst1|f_div_inst|Add1~21\ = CARRY((\inst1|f_div_inst|count\(10) & !\inst1|f_div_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(10),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~19\,
	combout => \inst1|f_div_inst|Add1~20_combout\,
	cout => \inst1|f_div_inst|Add1~21\);

-- Location: LCCOMB_X31_Y27_N30
\inst1|f_div_inst|count~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~10_combout\ = ((\inst1|f_div_inst|Add1~20_combout\) # (!\inst1|f_div_inst|LessThan0~38_combout\)) # (!\SW~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(7),
	datac => \inst1|f_div_inst|Add1~20_combout\,
	datad => \inst1|f_div_inst|LessThan0~38_combout\,
	combout => \inst1|f_div_inst|count~10_combout\);

-- Location: LCFF_X31_Y27_N31
\inst1|f_div_inst|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(10));

-- Location: LCCOMB_X30_Y27_N2
\inst1|f_div_inst|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~22_combout\ = (\inst1|f_div_inst|count\(11) & (!\inst1|f_div_inst|Add1~21\)) # (!\inst1|f_div_inst|count\(11) & ((\inst1|f_div_inst|Add1~21\) # (GND)))
-- \inst1|f_div_inst|Add1~23\ = CARRY((!\inst1|f_div_inst|Add1~21\) # (!\inst1|f_div_inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(11),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~21\,
	combout => \inst1|f_div_inst|Add1~22_combout\,
	cout => \inst1|f_div_inst|Add1~23\);

-- Location: LCCOMB_X31_Y27_N28
\inst1|f_div_inst|count~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~9_combout\ = ((\inst1|f_div_inst|Add1~22_combout\) # (!\SW~combout\(7))) # (!\inst1|f_div_inst|LessThan0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|LessThan0~38_combout\,
	datac => \SW~combout\(7),
	datad => \inst1|f_div_inst|Add1~22_combout\,
	combout => \inst1|f_div_inst|count~9_combout\);

-- Location: LCFF_X31_Y27_N29
\inst1|f_div_inst|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(11));

-- Location: LCCOMB_X30_Y27_N4
\inst1|f_div_inst|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~24_combout\ = (\inst1|f_div_inst|count\(12) & (\inst1|f_div_inst|Add1~23\ $ (GND))) # (!\inst1|f_div_inst|count\(12) & (!\inst1|f_div_inst|Add1~23\ & VCC))
-- \inst1|f_div_inst|Add1~25\ = CARRY((\inst1|f_div_inst|count\(12) & !\inst1|f_div_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(12),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~23\,
	combout => \inst1|f_div_inst|Add1~24_combout\,
	cout => \inst1|f_div_inst|Add1~25\);

-- Location: LCCOMB_X30_Y27_N22
\inst1|f_div_inst|count~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~8_combout\ = (\SW~combout\(7) & ((\inst1|f_div_inst|LessThan0~38_combout\ & ((\inst1|f_div_inst|Add1~24_combout\))) # (!\inst1|f_div_inst|LessThan0~38_combout\ & (!\inst1|f_div_inst|Decoder1~1_combout\)))) # (!\SW~combout\(7) & 
-- (!\inst1|f_div_inst|Decoder1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \inst1|f_div_inst|Decoder1~1_combout\,
	datac => \inst1|f_div_inst|Add1~24_combout\,
	datad => \inst1|f_div_inst|LessThan0~38_combout\,
	combout => \inst1|f_div_inst|count~8_combout\);

-- Location: LCFF_X30_Y27_N23
\inst1|f_div_inst|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(12));

-- Location: LCCOMB_X30_Y27_N6
\inst1|f_div_inst|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~26_combout\ = (\inst1|f_div_inst|count\(13) & (!\inst1|f_div_inst|Add1~25\)) # (!\inst1|f_div_inst|count\(13) & ((\inst1|f_div_inst|Add1~25\) # (GND)))
-- \inst1|f_div_inst|Add1~27\ = CARRY((!\inst1|f_div_inst|Add1~25\) # (!\inst1|f_div_inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(13),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~25\,
	combout => \inst1|f_div_inst|Add1~26_combout\,
	cout => \inst1|f_div_inst|Add1~27\);

-- Location: LCCOMB_X30_Y27_N8
\inst1|f_div_inst|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~28_combout\ = (\inst1|f_div_inst|count\(14) & (\inst1|f_div_inst|Add1~27\ $ (GND))) # (!\inst1|f_div_inst|count\(14) & (!\inst1|f_div_inst|Add1~27\ & VCC))
-- \inst1|f_div_inst|Add1~29\ = CARRY((\inst1|f_div_inst|count\(14) & !\inst1|f_div_inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(14),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~27\,
	combout => \inst1|f_div_inst|Add1~28_combout\,
	cout => \inst1|f_div_inst|Add1~29\);

-- Location: LCCOMB_X30_Y27_N30
\inst1|f_div_inst|count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~6_combout\ = (\SW~combout\(7) & ((\inst1|f_div_inst|LessThan0~38_combout\ & ((\inst1|f_div_inst|Add1~28_combout\))) # (!\inst1|f_div_inst|LessThan0~38_combout\ & (!\inst1|f_div_inst|Decoder1~0_combout\)))) # (!\SW~combout\(7) & 
-- (!\inst1|f_div_inst|Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Decoder1~0_combout\,
	datab => \SW~combout\(7),
	datac => \inst1|f_div_inst|Add1~28_combout\,
	datad => \inst1|f_div_inst|LessThan0~38_combout\,
	combout => \inst1|f_div_inst|count~6_combout\);

-- Location: LCFF_X30_Y27_N31
\inst1|f_div_inst|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(14));

-- Location: LCCOMB_X30_Y27_N16
\inst1|f_div_inst|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~36_combout\ = (\inst1|f_div_inst|count\(18) & (\inst1|f_div_inst|Add1~35\ $ (GND))) # (!\inst1|f_div_inst|count\(18) & (!\inst1|f_div_inst|Add1~35\ & VCC))
-- \inst1|f_div_inst|Add1~37\ = CARRY((\inst1|f_div_inst|count\(18) & !\inst1|f_div_inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|count\(18),
	datad => VCC,
	cin => \inst1|f_div_inst|Add1~35\,
	combout => \inst1|f_div_inst|Add1~36_combout\,
	cout => \inst1|f_div_inst|Add1~37\);

-- Location: LCCOMB_X30_Y27_N26
\inst1|f_div_inst|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~2_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~36_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & (((!\SW~combout\(10))) # (!\SW~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(10),
	datac => \inst1|f_div_inst|Add1~36_combout\,
	datad => \inst1|f_div_inst|count[19]~1_combout\,
	combout => \inst1|f_div_inst|count~2_combout\);

-- Location: LCFF_X30_Y27_N27
\inst1|f_div_inst|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(18));

-- Location: LCCOMB_X30_Y27_N24
\inst1|f_div_inst|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~4_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (\inst1|f_div_inst|Add1~32_combout\)) # (!\inst1|f_div_inst|count[19]~1_combout\ & (((!\SW~combout\(9)) # (!\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add1~32_combout\,
	datab => \SW~combout\(10),
	datac => \SW~combout\(9),
	datad => \inst1|f_div_inst|count[19]~1_combout\,
	combout => \inst1|f_div_inst|count~4_combout\);

-- Location: LCFF_X30_Y27_N25
\inst1|f_div_inst|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(16));

-- Location: LCCOMB_X31_Y27_N26
\inst1|f_div_inst|count~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~7_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~26_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & (((!\SW~combout\(10))) # (!\SW~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SW~combout\(10),
	datac => \inst1|f_div_inst|Add1~26_combout\,
	datad => \inst1|f_div_inst|count[19]~1_combout\,
	combout => \inst1|f_div_inst|count~7_combout\);

-- Location: LCFF_X31_Y27_N27
\inst1|f_div_inst|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(13));

-- Location: LCCOMB_X32_Y28_N8
\inst1|f_div_inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|WideOr2~0_combout\ = (!\SW~combout\(9)) # (!\SW~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datac => \SW~combout\(9),
	combout => \inst1|f_div_inst|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y28_N4
\inst1|f_div_inst|count~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~20_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (\inst1|f_div_inst|Add1~2_combout\)) # (!\inst1|f_div_inst|count[19]~1_combout\ & (((!\SW~combout\(10) & \inst1|f_div_inst|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add1~2_combout\,
	datab => \SW~combout\(10),
	datac => \inst1|f_div_inst|count[19]~1_combout\,
	datad => \inst1|f_div_inst|WideOr2~0_combout\,
	combout => \inst1|f_div_inst|count~20_combout\);

-- Location: LCFF_X31_Y28_N5
\inst1|f_div_inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(1));

-- Location: LCCOMB_X31_Y28_N2
\inst1|f_div_inst|count~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~21_combout\ = (\inst1|f_div_inst|count[19]~1_combout\ & (((\inst1|f_div_inst|Add1~0_combout\)))) # (!\inst1|f_div_inst|count[19]~1_combout\ & (!\SW~combout\(9) & ((!\SW~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \inst1|f_div_inst|Add1~0_combout\,
	datac => \inst1|f_div_inst|count[19]~1_combout\,
	datad => \SW~combout\(10),
	combout => \inst1|f_div_inst|count~21_combout\);

-- Location: LCFF_X31_Y28_N3
\inst1|f_div_inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(0));

-- Location: LCCOMB_X31_Y28_N12
\inst1|f_div_inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~1_cout\ = CARRY((\inst1|f_div_inst|Add0~0_combout\ & !\inst1|f_div_inst|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~0_combout\,
	datab => \inst1|f_div_inst|count\(0),
	datad => VCC,
	cout => \inst1|f_div_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X31_Y28_N14
\inst1|f_div_inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~3_cout\ = CARRY((\inst1|f_div_inst|Add0~2_combout\ & (\inst1|f_div_inst|count\(1) & !\inst1|f_div_inst|LessThan0~1_cout\)) # (!\inst1|f_div_inst|Add0~2_combout\ & ((\inst1|f_div_inst|count\(1)) # 
-- (!\inst1|f_div_inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~2_combout\,
	datab => \inst1|f_div_inst|count\(1),
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~1_cout\,
	cout => \inst1|f_div_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X31_Y28_N16
\inst1|f_div_inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~5_cout\ = CARRY((\inst1|f_div_inst|count\(2) & (\inst1|f_div_inst|Add0~4_combout\ & !\inst1|f_div_inst|LessThan0~3_cout\)) # (!\inst1|f_div_inst|count\(2) & ((\inst1|f_div_inst|Add0~4_combout\) # 
-- (!\inst1|f_div_inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(2),
	datab => \inst1|f_div_inst|Add0~4_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~3_cout\,
	cout => \inst1|f_div_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X31_Y28_N18
\inst1|f_div_inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~7_cout\ = CARRY((\inst1|f_div_inst|Add0~6_combout\ & (\inst1|f_div_inst|count\(3) & !\inst1|f_div_inst|LessThan0~5_cout\)) # (!\inst1|f_div_inst|Add0~6_combout\ & ((\inst1|f_div_inst|count\(3)) # 
-- (!\inst1|f_div_inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~6_combout\,
	datab => \inst1|f_div_inst|count\(3),
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~5_cout\,
	cout => \inst1|f_div_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X31_Y28_N20
\inst1|f_div_inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~9_cout\ = CARRY((\inst1|f_div_inst|count\(4) & (\inst1|f_div_inst|Add0~8_combout\ & !\inst1|f_div_inst|LessThan0~7_cout\)) # (!\inst1|f_div_inst|count\(4) & ((\inst1|f_div_inst|Add0~8_combout\) # 
-- (!\inst1|f_div_inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(4),
	datab => \inst1|f_div_inst|Add0~8_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~7_cout\,
	cout => \inst1|f_div_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X31_Y28_N22
\inst1|f_div_inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~11_cout\ = CARRY((\inst1|f_div_inst|Add0~10_combout\ & (\inst1|f_div_inst|count\(5) & !\inst1|f_div_inst|LessThan0~9_cout\)) # (!\inst1|f_div_inst|Add0~10_combout\ & ((\inst1|f_div_inst|count\(5)) # 
-- (!\inst1|f_div_inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~10_combout\,
	datab => \inst1|f_div_inst|count\(5),
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~9_cout\,
	cout => \inst1|f_div_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X31_Y28_N24
\inst1|f_div_inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~13_cout\ = CARRY((\inst1|f_div_inst|count\(6) & (\inst1|f_div_inst|Add0~12_combout\ & !\inst1|f_div_inst|LessThan0~11_cout\)) # (!\inst1|f_div_inst|count\(6) & ((\inst1|f_div_inst|Add0~12_combout\) # 
-- (!\inst1|f_div_inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(6),
	datab => \inst1|f_div_inst|Add0~12_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~11_cout\,
	cout => \inst1|f_div_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X31_Y28_N26
\inst1|f_div_inst|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~15_cout\ = CARRY((\inst1|f_div_inst|Add0~14_combout\ & (\inst1|f_div_inst|count\(7) & !\inst1|f_div_inst|LessThan0~13_cout\)) # (!\inst1|f_div_inst|Add0~14_combout\ & ((\inst1|f_div_inst|count\(7)) # 
-- (!\inst1|f_div_inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~14_combout\,
	datab => \inst1|f_div_inst|count\(7),
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~13_cout\,
	cout => \inst1|f_div_inst|LessThan0~15_cout\);

-- Location: LCCOMB_X31_Y28_N28
\inst1|f_div_inst|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~17_cout\ = CARRY((\inst1|f_div_inst|count\(8) & (\inst1|f_div_inst|Add0~16_combout\ & !\inst1|f_div_inst|LessThan0~15_cout\)) # (!\inst1|f_div_inst|count\(8) & ((\inst1|f_div_inst|Add0~16_combout\) # 
-- (!\inst1|f_div_inst|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(8),
	datab => \inst1|f_div_inst|Add0~16_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~15_cout\,
	cout => \inst1|f_div_inst|LessThan0~17_cout\);

-- Location: LCCOMB_X31_Y28_N30
\inst1|f_div_inst|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~19_cout\ = CARRY((\inst1|f_div_inst|count\(9) & ((!\inst1|f_div_inst|LessThan0~17_cout\) # (!\inst1|f_div_inst|Add0~18_combout\))) # (!\inst1|f_div_inst|count\(9) & (!\inst1|f_div_inst|Add0~18_combout\ & 
-- !\inst1|f_div_inst|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(9),
	datab => \inst1|f_div_inst|Add0~18_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~17_cout\,
	cout => \inst1|f_div_inst|LessThan0~19_cout\);

-- Location: LCCOMB_X31_Y27_N0
\inst1|f_div_inst|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~21_cout\ = CARRY((\inst1|f_div_inst|count\(10) & (\inst1|f_div_inst|Add0~20_combout\ & !\inst1|f_div_inst|LessThan0~19_cout\)) # (!\inst1|f_div_inst|count\(10) & ((\inst1|f_div_inst|Add0~20_combout\) # 
-- (!\inst1|f_div_inst|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(10),
	datab => \inst1|f_div_inst|Add0~20_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~19_cout\,
	cout => \inst1|f_div_inst|LessThan0~21_cout\);

-- Location: LCCOMB_X31_Y27_N2
\inst1|f_div_inst|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~23_cout\ = CARRY((\inst1|f_div_inst|Add0~22_combout\ & (\inst1|f_div_inst|count\(11) & !\inst1|f_div_inst|LessThan0~21_cout\)) # (!\inst1|f_div_inst|Add0~22_combout\ & ((\inst1|f_div_inst|count\(11)) # 
-- (!\inst1|f_div_inst|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~22_combout\,
	datab => \inst1|f_div_inst|count\(11),
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~21_cout\,
	cout => \inst1|f_div_inst|LessThan0~23_cout\);

-- Location: LCCOMB_X31_Y27_N4
\inst1|f_div_inst|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~25_cout\ = CARRY((\inst1|f_div_inst|Add0~24_combout\ & ((!\inst1|f_div_inst|LessThan0~23_cout\) # (!\inst1|f_div_inst|count\(12)))) # (!\inst1|f_div_inst|Add0~24_combout\ & (!\inst1|f_div_inst|count\(12) & 
-- !\inst1|f_div_inst|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~24_combout\,
	datab => \inst1|f_div_inst|count\(12),
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~23_cout\,
	cout => \inst1|f_div_inst|LessThan0~25_cout\);

-- Location: LCCOMB_X31_Y27_N6
\inst1|f_div_inst|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~27_cout\ = CARRY((\inst1|f_div_inst|Add0~26_combout\ & (\inst1|f_div_inst|count\(13) & !\inst1|f_div_inst|LessThan0~25_cout\)) # (!\inst1|f_div_inst|Add0~26_combout\ & ((\inst1|f_div_inst|count\(13)) # 
-- (!\inst1|f_div_inst|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~26_combout\,
	datab => \inst1|f_div_inst|count\(13),
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~25_cout\,
	cout => \inst1|f_div_inst|LessThan0~27_cout\);

-- Location: LCCOMB_X31_Y27_N8
\inst1|f_div_inst|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~29_cout\ = CARRY((\inst1|f_div_inst|count\(14) & (\inst1|f_div_inst|Add0~28_combout\ & !\inst1|f_div_inst|LessThan0~27_cout\)) # (!\inst1|f_div_inst|count\(14) & ((\inst1|f_div_inst|Add0~28_combout\) # 
-- (!\inst1|f_div_inst|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(14),
	datab => \inst1|f_div_inst|Add0~28_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~27_cout\,
	cout => \inst1|f_div_inst|LessThan0~29_cout\);

-- Location: LCCOMB_X31_Y27_N10
\inst1|f_div_inst|LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~31_cout\ = CARRY((\inst1|f_div_inst|count\(15) & ((!\inst1|f_div_inst|LessThan0~29_cout\) # (!\inst1|f_div_inst|Add0~30_combout\))) # (!\inst1|f_div_inst|count\(15) & (!\inst1|f_div_inst|Add0~30_combout\ & 
-- !\inst1|f_div_inst|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(15),
	datab => \inst1|f_div_inst|Add0~30_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~29_cout\,
	cout => \inst1|f_div_inst|LessThan0~31_cout\);

-- Location: LCCOMB_X31_Y27_N12
\inst1|f_div_inst|LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~33_cout\ = CARRY((\inst1|f_div_inst|Add0~32_combout\ & ((!\inst1|f_div_inst|LessThan0~31_cout\) # (!\inst1|f_div_inst|count\(16)))) # (!\inst1|f_div_inst|Add0~32_combout\ & (!\inst1|f_div_inst|count\(16) & 
-- !\inst1|f_div_inst|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~32_combout\,
	datab => \inst1|f_div_inst|count\(16),
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~31_cout\,
	cout => \inst1|f_div_inst|LessThan0~33_cout\);

-- Location: LCCOMB_X31_Y27_N14
\inst1|f_div_inst|LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~35_cout\ = CARRY((\inst1|f_div_inst|count\(17) & ((!\inst1|f_div_inst|LessThan0~33_cout\) # (!\inst1|f_div_inst|Add0~34_combout\))) # (!\inst1|f_div_inst|count\(17) & (!\inst1|f_div_inst|Add0~34_combout\ & 
-- !\inst1|f_div_inst|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|count\(17),
	datab => \inst1|f_div_inst|Add0~34_combout\,
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~33_cout\,
	cout => \inst1|f_div_inst|LessThan0~35_cout\);

-- Location: LCCOMB_X31_Y27_N16
\inst1|f_div_inst|LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~37_cout\ = CARRY((\inst1|f_div_inst|Add0~36_combout\ & ((!\inst1|f_div_inst|LessThan0~35_cout\) # (!\inst1|f_div_inst|count\(18)))) # (!\inst1|f_div_inst|Add0~36_combout\ & (!\inst1|f_div_inst|count\(18) & 
-- !\inst1|f_div_inst|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|f_div_inst|Add0~36_combout\,
	datab => \inst1|f_div_inst|count\(18),
	datad => VCC,
	cin => \inst1|f_div_inst|LessThan0~35_cout\,
	cout => \inst1|f_div_inst|LessThan0~37_cout\);

-- Location: LCCOMB_X31_Y27_N18
\inst1|f_div_inst|LessThan0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|LessThan0~38_combout\ = (\inst1|f_div_inst|Add0~38_combout\ & ((\inst1|f_div_inst|LessThan0~37_cout\) # (!\inst1|f_div_inst|count\(19)))) # (!\inst1|f_div_inst|Add0~38_combout\ & (\inst1|f_div_inst|LessThan0~37_cout\ & 
-- !\inst1|f_div_inst|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|Add0~38_combout\,
	datad => \inst1|f_div_inst|count\(19),
	cin => \inst1|f_div_inst|LessThan0~37_cout\,
	combout => \inst1|f_div_inst|LessThan0~38_combout\);

-- Location: LCCOMB_X30_Y27_N18
\inst1|f_div_inst|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|Add1~38_combout\ = \inst1|f_div_inst|Add1~37\ $ (\inst1|f_div_inst|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|f_div_inst|count\(19),
	cin => \inst1|f_div_inst|Add1~37\,
	combout => \inst1|f_div_inst|Add1~38_combout\);

-- Location: LCCOMB_X30_Y27_N28
\inst1|f_div_inst|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|f_div_inst|count~0_combout\ = (\inst1|f_div_inst|LessThan0~38_combout\ & (\SW~combout\(7) & \inst1|f_div_inst|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|f_div_inst|LessThan0~38_combout\,
	datac => \SW~combout\(7),
	datad => \inst1|f_div_inst|Add1~38_combout\,
	combout => \inst1|f_div_inst|count~0_combout\);

-- Location: LCFF_X30_Y27_N29
\inst1|f_div_inst|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst1|f_div_inst|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|f_div_inst|count\(19));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCCOMB_X32_Y16_N4
\inst1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = (\SW~combout\(4) & (\SW~combout\(5) & \SW~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \inst1|Add1~0_combout\);

-- Location: LCCOMB_X32_Y16_N24
\inst1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = \SW~combout\(4) $ (\SW~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datad => \SW~combout\(5),
	combout => \inst1|Add1~2_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCCOMB_X32_Y20_N10
\inst1|cont[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[0]~9_combout\ = (\inst1|cont\(0) & (\SW~combout\(4) $ (GND))) # (!\inst1|cont\(0) & (!\SW~combout\(4) & VCC))
-- \inst1|cont[0]~10\ = CARRY((\inst1|cont\(0) & !\SW~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(0),
	datab => \SW~combout\(4),
	datad => VCC,
	combout => \inst1|cont[0]~9_combout\,
	cout => \inst1|cont[0]~10\);

-- Location: LCCOMB_X32_Y20_N12
\inst1|cont[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[1]~11_combout\ = (\inst1|cont\(1) & ((\inst1|Add1~2_combout\ & (\inst1|cont[0]~10\ & VCC)) # (!\inst1|Add1~2_combout\ & (!\inst1|cont[0]~10\)))) # (!\inst1|cont\(1) & ((\inst1|Add1~2_combout\ & (!\inst1|cont[0]~10\)) # (!\inst1|Add1~2_combout\ 
-- & ((\inst1|cont[0]~10\) # (GND)))))
-- \inst1|cont[1]~12\ = CARRY((\inst1|cont\(1) & (!\inst1|Add1~2_combout\ & !\inst1|cont[0]~10\)) # (!\inst1|cont\(1) & ((!\inst1|cont[0]~10\) # (!\inst1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(1),
	datab => \inst1|Add1~2_combout\,
	datad => VCC,
	cin => \inst1|cont[0]~10\,
	combout => \inst1|cont[1]~11_combout\,
	cout => \inst1|cont[1]~12\);

-- Location: LCCOMB_X32_Y20_N14
\inst1|cont[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[2]~13_combout\ = ((\inst1|Add1~1_combout\ $ (\inst1|cont\(2) $ (!\inst1|cont[1]~12\)))) # (GND)
-- \inst1|cont[2]~14\ = CARRY((\inst1|Add1~1_combout\ & ((\inst1|cont\(2)) # (!\inst1|cont[1]~12\))) # (!\inst1|Add1~1_combout\ & (\inst1|cont\(2) & !\inst1|cont[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~1_combout\,
	datab => \inst1|cont\(2),
	datad => VCC,
	cin => \inst1|cont[1]~12\,
	combout => \inst1|cont[2]~13_combout\,
	cout => \inst1|cont[2]~14\);

-- Location: CLKCTRL_G11
\SW[7]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[7]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[7]~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y20_N20
\inst1|cont[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[5]~19_combout\ = (\inst1|cont\(5) & (!\inst1|cont[4]~18\)) # (!\inst1|cont\(5) & ((\inst1|cont[4]~18\) # (GND)))
-- \inst1|cont[5]~20\ = CARRY((!\inst1|cont[4]~18\) # (!\inst1|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(5),
	datad => VCC,
	cin => \inst1|cont[4]~18\,
	combout => \inst1|cont[5]~19_combout\,
	cout => \inst1|cont[5]~20\);

-- Location: LCCOMB_X32_Y20_N22
\inst1|cont[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[6]~21_combout\ = (\inst1|cont\(6) & (\inst1|cont[5]~20\ $ (GND))) # (!\inst1|cont\(6) & (!\inst1|cont[5]~20\ & VCC))
-- \inst1|cont[6]~22\ = CARRY((\inst1|cont\(6) & !\inst1|cont[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(6),
	datad => VCC,
	cin => \inst1|cont[5]~20\,
	combout => \inst1|cont[6]~21_combout\,
	cout => \inst1|cont[6]~22\);

-- Location: LCFF_X32_Y20_N23
\inst1|cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst1|cont[6]~21_combout\,
	aclr => \ALT_INV_SW[7]~clkctrl_outclk\,
	sclr => \inst1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(6));

-- Location: LCCOMB_X32_Y20_N24
\inst1|cont[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[7]~23_combout\ = (\inst1|cont\(7) & (!\inst1|cont[6]~22\)) # (!\inst1|cont\(7) & ((\inst1|cont[6]~22\) # (GND)))
-- \inst1|cont[7]~24\ = CARRY((!\inst1|cont[6]~22\) # (!\inst1|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(7),
	datad => VCC,
	cin => \inst1|cont[6]~22\,
	combout => \inst1|cont[7]~23_combout\,
	cout => \inst1|cont[7]~24\);

-- Location: LCCOMB_X32_Y20_N26
\inst1|cont[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[8]~25_combout\ = \inst1|cont[7]~24\ $ (!\inst1|cont\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cont\(8),
	cin => \inst1|cont[7]~24\,
	combout => \inst1|cont[8]~25_combout\);

-- Location: LCFF_X32_Y20_N27
\inst1|cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst1|cont[8]~25_combout\,
	aclr => \ALT_INV_SW[7]~clkctrl_outclk\,
	sclr => \inst1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(8));

-- Location: LCFF_X32_Y20_N25
\inst1|cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst1|cont[7]~23_combout\,
	aclr => \ALT_INV_SW[7]~clkctrl_outclk\,
	sclr => \inst1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(7));

-- Location: LCCOMB_X32_Y20_N28
\inst1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|cont\(7) & (((!\inst1|cont\(5) & !\inst1|cont\(4))) # (!\inst1|cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(5),
	datab => \inst1|cont\(4),
	datac => \inst1|cont\(7),
	datad => \inst1|cont\(6),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y20_N2
\inst1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|cont\(8) & !\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(8),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCFF_X32_Y20_N15
\inst1|cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst1|cont[2]~13_combout\,
	aclr => \ALT_INV_SW[7]~clkctrl_outclk\,
	sclr => \inst1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(2));

-- Location: LCCOMB_X32_Y20_N16
\inst1|cont[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[3]~15_combout\ = (\inst1|cont\(3) & ((\inst1|Add1~0_combout\ & (\inst1|cont[2]~14\ & VCC)) # (!\inst1|Add1~0_combout\ & (!\inst1|cont[2]~14\)))) # (!\inst1|cont\(3) & ((\inst1|Add1~0_combout\ & (!\inst1|cont[2]~14\)) # (!\inst1|Add1~0_combout\ 
-- & ((\inst1|cont[2]~14\) # (GND)))))
-- \inst1|cont[3]~16\ = CARRY((\inst1|cont\(3) & (!\inst1|Add1~0_combout\ & !\inst1|cont[2]~14\)) # (!\inst1|cont\(3) & ((!\inst1|cont[2]~14\) # (!\inst1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(3),
	datab => \inst1|Add1~0_combout\,
	datad => VCC,
	cin => \inst1|cont[2]~14\,
	combout => \inst1|cont[3]~15_combout\,
	cout => \inst1|cont[3]~16\);

-- Location: LCCOMB_X32_Y20_N18
\inst1|cont[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cont[4]~17_combout\ = (\inst1|cont\(4) & (\inst1|cont[3]~16\ $ (GND))) # (!\inst1|cont\(4) & (!\inst1|cont[3]~16\ & VCC))
-- \inst1|cont[4]~18\ = CARRY((\inst1|cont\(4) & !\inst1|cont[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(4),
	datad => VCC,
	cin => \inst1|cont[3]~16\,
	combout => \inst1|cont[4]~17_combout\,
	cout => \inst1|cont[4]~18\);

-- Location: LCFF_X32_Y20_N19
\inst1|cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst1|cont[4]~17_combout\,
	aclr => \ALT_INV_SW[7]~clkctrl_outclk\,
	sclr => \inst1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(4));

-- Location: LCFF_X32_Y20_N21
\inst1|cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst1|cont[5]~19_combout\,
	aclr => \ALT_INV_SW[7]~clkctrl_outclk\,
	sclr => \inst1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(5));

-- Location: LCFF_X29_Y20_N1
\inst1|cont_rt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst1|cont\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont_rt\(5));

-- Location: LCFF_X29_Y20_N19
\inst1|cont_rt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst1|cont\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont_rt\(2));

-- Location: LCFF_X32_Y20_N17
\inst1|cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst1|cont[3]~15_combout\,
	aclr => \ALT_INV_SW[7]~clkctrl_outclk\,
	sclr => \inst1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(3));

-- Location: LCFF_X29_Y20_N21
\inst1|cont_rt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst1|cont\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont_rt\(3));

-- Location: LCFF_X29_Y20_N11
\inst1|cont_rt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst1|cont\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont_rt\(4));

-- Location: LCCOMB_X29_Y20_N20
\inst1|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan5~0_combout\ = (\inst1|cont_rt\(4)) # ((\inst1|cont_rt\(3) & ((\inst1|cont_rt\(1)) # (\inst1|cont_rt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont_rt\(1),
	datab => \inst1|cont_rt\(2),
	datac => \inst1|cont_rt\(3),
	datad => \inst1|cont_rt\(4),
	combout => \inst1|LessThan5~0_combout\);

-- Location: LCFF_X31_Y20_N3
\inst1|cont_rt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst1|cont\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont_rt\(6));

-- Location: LCCOMB_X33_Y20_N28
\inst1|always4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always4~0_combout\ = (!\inst1|cont_rt\(6) & ((!\inst1|LessThan5~0_combout\) # (!\inst1|cont_rt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont_rt\(5),
	datac => \inst1|LessThan5~0_combout\,
	datad => \inst1|cont_rt\(6),
	combout => \inst1|always4~0_combout\);

-- Location: LCFF_X31_Y20_N13
\inst1|cont_rt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst1|cont\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont_rt\(8));

-- Location: LCCOMB_X29_Y20_N22
\inst1|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan10~0_combout\ = (\inst1|cont_rt\(5)) # ((\inst1|cont_rt\(4) & ((\inst1|cont_rt\(2)) # (\inst1|cont_rt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont_rt\(5),
	datab => \inst1|cont_rt\(2),
	datac => \inst1|cont_rt\(3),
	datad => \inst1|cont_rt\(4),
	combout => \inst1|LessThan10~0_combout\);

-- Location: LCCOMB_X33_Y20_N30
\inst1|always4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always4~5_combout\ = (!\inst1|cont_rt\(7) & (\inst1|cont_rt\(8) & ((!\inst1|cont_rt\(6)) # (!\inst1|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont_rt\(7),
	datab => \inst1|cont_rt\(8),
	datac => \inst1|LessThan10~0_combout\,
	datad => \inst1|cont_rt\(6),
	combout => \inst1|always4~5_combout\);

-- Location: LCCOMB_X33_Y20_N10
\inst1|always4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always4~6_combout\ = (\inst1|always4~5_combout\) # ((\inst1|cont_rt\(7) & (!\inst1|always4~0_combout\ & !\inst1|cont_rt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont_rt\(7),
	datab => \inst1|always4~0_combout\,
	datac => \inst1|cont_rt\(8),
	datad => \inst1|always4~5_combout\,
	combout => \inst1|always4~6_combout\);

-- Location: LCCOMB_X33_Y20_N16
\inst1|q[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[11]~1_combout\ = (\SW~combout\(3) & !\inst1|always4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datad => \inst1|always4~6_combout\,
	combout => \inst1|q[11]~1_combout\);

-- Location: LCFF_X32_Y20_N11
\inst1|cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst1|cont[0]~9_combout\,
	aclr => \ALT_INV_SW[7]~clkctrl_outclk\,
	sclr => \inst1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(0));

-- Location: LCFF_X29_Y20_N31
\inst1|cont_rt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst1|cont\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont_rt\(0));

-- Location: LCFF_X31_Y20_N25
\inst1|cont_rt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst1|cont\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont_rt\(7));

-- Location: LCCOMB_X29_Y20_N30
\inst1|always4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always4~1_combout\ = (\inst1|cont_rt\(1) & ((\inst1|cont_rt\(0)) # (!\inst1|cont_rt\(7)))) # (!\inst1|cont_rt\(1) & (\inst1|cont_rt\(0) & !\inst1|cont_rt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont_rt\(1),
	datac => \inst1|cont_rt\(0),
	datad => \inst1|cont_rt\(7),
	combout => \inst1|always4~1_combout\);

-- Location: LCCOMB_X29_Y20_N12
\inst1|always4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always4~2_combout\ = (\inst1|cont_rt\(5) & (\inst1|cont_rt\(2) & (\inst1|cont_rt\(3) & \inst1|always4~1_combout\))) # (!\inst1|cont_rt\(5) & ((\inst1|cont_rt\(3)) # ((\inst1|cont_rt\(2) & \inst1|always4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont_rt\(5),
	datab => \inst1|cont_rt\(2),
	datac => \inst1|cont_rt\(3),
	datad => \inst1|always4~1_combout\,
	combout => \inst1|always4~2_combout\);

-- Location: LCCOMB_X33_Y20_N14
\inst1|always4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always4~3_combout\ = (\inst1|cont_rt\(5) & (((\inst1|cont_rt\(4) & \inst1|always4~2_combout\)) # (!\inst1|cont_rt\(7)))) # (!\inst1|cont_rt\(5) & (\inst1|cont_rt\(4) & (\inst1|always4~2_combout\ & !\inst1|cont_rt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont_rt\(4),
	datab => \inst1|always4~2_combout\,
	datac => \inst1|cont_rt\(5),
	datad => \inst1|cont_rt\(7),
	combout => \inst1|always4~3_combout\);

-- Location: LCCOMB_X33_Y20_N12
\inst1|always4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always4~4_combout\ = (\inst1|cont_rt\(6) & ((\inst1|always4~3_combout\) # ((\inst1|always4~0_combout\ & \inst1|cont_rt\(7))))) # (!\inst1|cont_rt\(6) & (\inst1|always4~0_combout\ & ((\inst1|cont_rt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont_rt\(6),
	datab => \inst1|always4~0_combout\,
	datac => \inst1|always4~3_combout\,
	datad => \inst1|cont_rt\(7),
	combout => \inst1|always4~4_combout\);

-- Location: LCCOMB_X33_Y20_N4
\inst1|q[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[11]~0_combout\ = (!\SW~combout\(3) & (!\inst1|always4~5_combout\ & ((\inst1|cont_rt\(8)) # (!\inst1|always4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \inst1|always4~5_combout\,
	datac => \inst1|cont_rt\(8),
	datad => \inst1|always4~4_combout\,
	combout => \inst1|q[11]~0_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X31_Y20_N16
\inst1|Mod0|auto_generated|divider|divider|op_5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_5~2_combout\ = (\inst1|cont\(3) & (\inst1|Mod0|auto_generated|divider|divider|op_5~1\ & VCC)) # (!\inst1|cont\(3) & (!\inst1|Mod0|auto_generated|divider|divider|op_5~1\))
-- \inst1|Mod0|auto_generated|divider|divider|op_5~3\ = CARRY((!\inst1|cont\(3) & !\inst1|Mod0|auto_generated|divider|divider|op_5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(3),
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_5~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X31_Y20_N20
\inst1|Mod0|auto_generated|divider|divider|op_5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_5~6_combout\ = (\inst1|cont\(5) & (\inst1|Mod0|auto_generated|divider|divider|op_5~5\ & VCC)) # (!\inst1|cont\(5) & (!\inst1|Mod0|auto_generated|divider|divider|op_5~5\))
-- \inst1|Mod0|auto_generated|divider|divider|op_5~7\ = CARRY((!\inst1|cont\(5) & !\inst1|Mod0|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(5),
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_5~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X31_Y20_N22
\inst1|Mod0|auto_generated|divider|divider|op_5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_5~8_combout\ = (\inst1|cont\(6) & (\inst1|Mod0|auto_generated|divider|divider|op_5~7\ $ (GND))) # (!\inst1|cont\(6) & (!\inst1|Mod0|auto_generated|divider|divider|op_5~7\ & VCC))
-- \inst1|Mod0|auto_generated|divider|divider|op_5~9\ = CARRY((\inst1|cont\(6) & !\inst1|Mod0|auto_generated|divider|divider|op_5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(6),
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_5~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X31_Y20_N24
\inst1|Mod0|auto_generated|divider|divider|op_5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_5~10_combout\ = (\inst1|cont\(7) & (\inst1|Mod0|auto_generated|divider|divider|op_5~9\ & VCC)) # (!\inst1|cont\(7) & (!\inst1|Mod0|auto_generated|divider|divider|op_5~9\))
-- \inst1|Mod0|auto_generated|divider|divider|op_5~11\ = CARRY((!\inst1|cont\(7) & !\inst1|Mod0|auto_generated|divider|divider|op_5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(7),
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_5~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X31_Y20_N28
\inst1|Mod0|auto_generated|divider|divider|op_5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ = !\inst1|Mod0|auto_generated|divider|divider|op_5~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|op_5~13\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\);

-- Location: LCCOMB_X31_Y20_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ = (\inst1|cont\(5) & \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(5),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\);

-- Location: LCCOMB_X31_Y20_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~56_combout\ = (\inst1|cont\(4) & \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cont\(4),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~56_combout\);

-- Location: LCCOMB_X31_Y20_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~59_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_5~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~59_combout\);

-- Location: LCCOMB_X31_Y20_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ = (\inst1|cont\(2) & \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cont\(2),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\);

-- Location: LCFF_X32_Y20_N13
\inst1|cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst1|cont[1]~11_combout\,
	aclr => \ALT_INV_SW[7]~clkctrl_outclk\,
	sclr => \inst1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cont\(1));

-- Location: LCCOMB_X30_Y20_N18
\inst1|Mod0|auto_generated|divider|divider|op_6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_6~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~58_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~59_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_6~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~58_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~59_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|op_6~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|op_6~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~58_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~58_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~59_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_6~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X30_Y20_N20
\inst1|Mod0|auto_generated|divider|divider|op_6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_6~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~5\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~57_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~56_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_6~5\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~57_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~56_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_6~7\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~57_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~56_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~57_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~56_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_6~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X30_Y20_N22
\inst1|Mod0|auto_generated|divider|divider|op_6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_6~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~7\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~55_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_6~7\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~55_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|op_6~9\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|op_6~7\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~55_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~55_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_6~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X30_Y20_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\ = (\inst1|cont\(8) & \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cont\(8),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\);

-- Location: LCCOMB_X30_Y20_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\ = (\inst1|cont\(7) & \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(7),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\);

-- Location: LCCOMB_X30_Y20_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_5~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\);

-- Location: LCCOMB_X30_Y20_N24
\inst1|Mod0|auto_generated|divider|divider|op_6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_6~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~9\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~52_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_6~9\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~52_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_6~11\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~52_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~52_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_6~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X30_Y20_N28
\inst1|Mod0|auto_generated|divider|divider|op_6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_6~15_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_6~13\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_6~15_cout\);

-- Location: LCCOMB_X30_Y20_N30
\inst1|Mod0|auto_generated|divider|divider|op_6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\ = \inst1|Mod0|auto_generated|divider|divider|op_6~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|op_6~15_cout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\);

-- Location: LCCOMB_X29_Y20_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63_combout\);

-- Location: LCCOMB_X29_Y20_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~6_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64_combout\);

-- Location: LCCOMB_X29_Y20_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65_combout\);

-- Location: LCCOMB_X29_Y20_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66_combout\);

-- Location: LCCOMB_X29_Y20_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67_combout\ = (\inst1|cont\(1) & \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(1),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67_combout\);

-- Location: LCCOMB_X28_Y20_N6
\inst1|Mod0|auto_generated|divider|divider|op_7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_7~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_7~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_7~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X28_Y20_N8
\inst1|Mod0|auto_generated|divider|divider|op_7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_7~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|op_7~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|op_7~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_7~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X28_Y20_N10
\inst1|Mod0|auto_generated|divider|divider|op_7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_7~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~5\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~5\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_7~7\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_7~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X28_Y20_N12
\inst1|Mod0|auto_generated|divider|divider|op_7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_7~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~7\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~7\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|op_7~9\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|op_7~7\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_7~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X28_Y20_N14
\inst1|Mod0|auto_generated|divider|divider|op_7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_7~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~9\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~9\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_7~11\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_7~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_7~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X28_Y20_N22
\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~82_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & (\inst1|cont\(7))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(7),
	datab => \inst1|Mod0|auto_generated|divider|divider|op_5~10_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~82_combout\);

-- Location: LCCOMB_X29_Y20_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~10_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62_combout\);

-- Location: LCCOMB_X28_Y20_N16
\inst1|Mod0|auto_generated|divider|divider|op_7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_7~12_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~11\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~11\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|op_7~13\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|op_7~11\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_7~11\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X28_Y20_N18
\inst1|Mod0|auto_generated|divider|divider|op_7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_7~15_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~69_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~82_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~69_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~82_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_7~13\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_7~15_cout\);

-- Location: LCCOMB_X28_Y20_N20
\inst1|Mod0|auto_generated|divider|divider|op_7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ = \inst1|Mod0|auto_generated|divider|divider|op_7~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|op_7~15_cout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\);

-- Location: LCCOMB_X29_Y20_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & (\inst1|cont\(5))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(5),
	datab => \inst1|Mod0|auto_generated|divider|divider|op_5~6_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78_combout\);

-- Location: LCCOMB_X28_Y20_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|op_7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~63_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_7~10_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~78_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71_combout\);

-- Location: LCCOMB_X28_Y20_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|op_7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~81_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~66_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_7~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74_combout\);

-- Location: LCCOMB_X28_Y20_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~68_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~67_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_7~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75_combout\);

-- Location: LCCOMB_X27_Y20_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & ((\inst1|cont\(0)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|op_7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_7~0_combout\,
	datac => \inst1|cont\(0),
	datad => \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\);

-- Location: LCCOMB_X27_Y20_N14
\inst1|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~1_cout\ = CARRY(!\inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\,
	datad => VCC,
	cout => \inst1|Add3~1_cout\);

-- Location: LCCOMB_X27_Y20_N16
\inst1|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75_combout\ & ((\inst1|Add3~1_cout\) # (GND))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75_combout\ & (!\inst1|Add3~1_cout\))
-- \inst1|Add3~3\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75_combout\) # (!\inst1|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75_combout\,
	datad => VCC,
	cin => \inst1|Add3~1_cout\,
	combout => \inst1|Add3~2_combout\,
	cout => \inst1|Add3~3\);

-- Location: LCCOMB_X27_Y20_N18
\inst1|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74_combout\ & (\inst1|Add3~3\ $ (GND))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74_combout\ & ((GND) # (!\inst1|Add3~3\)))
-- \inst1|Add3~5\ = CARRY((!\inst1|Add3~3\) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74_combout\,
	datad => VCC,
	cin => \inst1|Add3~3\,
	combout => \inst1|Add3~4_combout\,
	cout => \inst1|Add3~5\);

-- Location: LCCOMB_X27_Y20_N20
\inst1|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73_combout\ & ((\inst1|Add3~5\) # (GND))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73_combout\ & (!\inst1|Add3~5\))
-- \inst1|Add3~7\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73_combout\) # (!\inst1|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73_combout\,
	datad => VCC,
	cin => \inst1|Add3~5\,
	combout => \inst1|Add3~6_combout\,
	cout => \inst1|Add3~7\);

-- Location: LCCOMB_X27_Y20_N22
\inst1|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72_combout\ & (\inst1|Add3~7\ $ (GND))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72_combout\ & ((GND) # (!\inst1|Add3~7\)))
-- \inst1|Add3~9\ = CARRY((!\inst1|Add3~7\) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72_combout\,
	datad => VCC,
	cin => \inst1|Add3~7\,
	combout => \inst1|Add3~8_combout\,
	cout => \inst1|Add3~9\);

-- Location: LCCOMB_X27_Y20_N24
\inst1|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71_combout\ & ((\inst1|Add3~9\) # (GND))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71_combout\ & (!\inst1|Add3~9\))
-- \inst1|Add3~11\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71_combout\) # (!\inst1|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71_combout\,
	datad => VCC,
	cin => \inst1|Add3~9\,
	combout => \inst1|Add3~10_combout\,
	cout => \inst1|Add3~11\);

-- Location: LCCOMB_X32_Y20_N30
\inst1|always3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always3~2_combout\ = (\inst1|cont\(3)) # ((\inst1|cont\(2) & ((\inst1|cont\(0)) # (\inst1|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(3),
	datab => \inst1|cont\(0),
	datac => \inst1|cont\(2),
	datad => \inst1|cont\(1),
	combout => \inst1|always3~2_combout\);

-- Location: LCCOMB_X32_Y20_N0
\inst1|always3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always3~3_combout\ = (!\inst1|cont\(7) & ((\inst1|cont\(5)) # ((\inst1|cont\(4) & \inst1|always3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(7),
	datab => \inst1|cont\(5),
	datac => \inst1|cont\(4),
	datad => \inst1|always3~2_combout\,
	combout => \inst1|always3~3_combout\);

-- Location: LCCOMB_X32_Y20_N6
\inst1|always3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always3~5_combout\ = (\inst1|always3~3_combout\) # ((\inst1|always3~4_combout\ & (\inst1|cont\(0) & \inst1|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|always3~4_combout\,
	datab => \inst1|cont\(0),
	datac => \inst1|cont\(1),
	datad => \inst1|always3~3_combout\,
	combout => \inst1|always3~5_combout\);

-- Location: LCCOMB_X33_Y20_N20
\inst1|always3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always3~6_combout\ = (!\inst1|cont\(8) & ((\inst1|always3~1_combout\) # ((\inst1|always3~5_combout\ & \inst1|cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|always3~1_combout\,
	datab => \inst1|cont\(8),
	datac => \inst1|always3~5_combout\,
	datad => \inst1|cont\(6),
	combout => \inst1|always3~6_combout\);

-- Location: LCCOMB_X33_Y20_N18
\inst1|always3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always3~8_combout\ = (!\inst1|cont\(7) & (\inst1|cont\(8) & ((\inst1|always3~7_combout\) # (!\inst1|cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|always3~7_combout\,
	datab => \inst1|cont\(6),
	datac => \inst1|cont\(7),
	datad => \inst1|cont\(8),
	combout => \inst1|always3~8_combout\);

-- Location: LCCOMB_X33_Y20_N0
\inst1|addr[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|addr[4]~0_combout\ = ((!\inst1|always3~6_combout\ & !\inst1|always3~8_combout\)) # (!\SW~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst1|always3~6_combout\,
	datad => \inst1|always3~8_combout\,
	combout => \inst1|addr[4]~0_combout\);

-- Location: LCCOMB_X27_Y20_N6
\inst1|Add3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~15_combout\ = (\inst1|addr[4]~0_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71_combout\)) # (!\inst1|addr[4]~0_combout\ & ((\inst1|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[69]~71_combout\,
	datac => \inst1|Add3~10_combout\,
	datad => \inst1|addr[4]~0_combout\,
	combout => \inst1|Add3~15_combout\);

-- Location: LCCOMB_X28_Y20_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|op_7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~80_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~65_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73_combout\);

-- Location: LCCOMB_X27_Y20_N10
\inst1|Add3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~17_combout\ = (\inst1|addr[4]~0_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73_combout\))) # (!\inst1|addr[4]~0_combout\ & (\inst1|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|addr[4]~0_combout\,
	datac => \inst1|Add3~6_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[67]~73_combout\,
	combout => \inst1|Add3~17_combout\);

-- Location: LCCOMB_X27_Y20_N4
\inst1|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~18_combout\ = (\inst1|addr[4]~0_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74_combout\)) # (!\inst1|addr[4]~0_combout\ & ((\inst1|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|addr[4]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[66]~74_combout\,
	datad => \inst1|Add3~4_combout\,
	combout => \inst1|Add3~18_combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = (\inst1|Add3~19_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\ $ (VCC))) # (!\inst1|Add3~19_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\ & VCC))
-- \inst1|Add0~1\ = CARRY((\inst1|Add3~19_combout\ & \inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~19_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\,
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X25_Y20_N18
\inst1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = ((\inst1|Add3~17_combout\ $ (\inst1|Add3~18_combout\ $ (!\inst1|Add0~3\)))) # (GND)
-- \inst1|Add0~5\ = CARRY((\inst1|Add3~17_combout\ & ((\inst1|Add3~18_combout\) # (!\inst1|Add0~3\))) # (!\inst1|Add3~17_combout\ & (\inst1|Add3~18_combout\ & !\inst1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~17_combout\,
	datab => \inst1|Add3~18_combout\,
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X25_Y20_N22
\inst1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = ((\inst1|Add3~16_combout\ $ (\inst1|Add3~15_combout\ $ (!\inst1|Add0~7\)))) # (GND)
-- \inst1|Add0~9\ = CARRY((\inst1|Add3~16_combout\ & ((\inst1|Add3~15_combout\) # (!\inst1|Add0~7\))) # (!\inst1|Add3~16_combout\ & (\inst1|Add3~15_combout\ & !\inst1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~16_combout\,
	datab => \inst1|Add3~15_combout\,
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

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

-- Location: LCCOMB_X25_Y20_N4
\inst1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\SW~combout\(0) & (\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a9\)) # (!\SW~combout\(0) & (((\inst1|Add0~8_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a9\,
	datab => \inst1|Add0~8_combout\,
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \inst1|Add0~16_combout\);

-- Location: LCCOMB_X27_Y20_N8
\inst1|Add3~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~19_combout\ = (\inst1|addr[4]~0_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75_combout\))) # (!\inst1|addr[4]~0_combout\ & (\inst1|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|addr[4]~0_combout\,
	datac => \inst1|Add3~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[65]~75_combout\,
	combout => \inst1|Add3~19_combout\);

-- Location: LCCOMB_X28_Y20_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|op_7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~79_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~64_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_7~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72_combout\);

-- Location: LCCOMB_X27_Y20_N12
\inst1|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~16_combout\ = (\inst1|addr[4]~0_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72_combout\)) # (!\inst1|addr[4]~0_combout\ & ((\inst1|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|addr[4]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[68]~72_combout\,
	datad => \inst1|Add3~8_combout\,
	combout => \inst1|Add3~16_combout\);

-- Location: LCCOMB_X28_Y20_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & (\inst1|cont\(6))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(6),
	datab => \inst1|Mod0|auto_generated|divider|divider|op_5~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77_combout\);

-- Location: LCCOMB_X27_Y20_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[70]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[70]~70_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~62_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~77_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_7~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_7~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[70]~70_combout\);

-- Location: LCCOMB_X27_Y20_N26
\inst1|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~12_combout\ = \inst1|Add3~11\ $ (!\inst1|Mod0|auto_generated|divider|divider|StageOut[70]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[70]~70_combout\,
	cin => \inst1|Add3~11\,
	combout => \inst1|Add3~12_combout\);

-- Location: LCCOMB_X27_Y20_N28
\inst1|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add3~14_combout\ = (\inst1|addr[4]~0_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[70]~70_combout\)) # (!\inst1|addr[4]~0_combout\ & ((\inst1|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[70]~70_combout\,
	datac => \inst1|addr[4]~0_combout\,
	datad => \inst1|Add3~12_combout\,
	combout => \inst1|Add3~14_combout\);

-- Location: LCCOMB_X25_Y20_N6
\inst1|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_combout\ = (\SW~combout\(0) & (((\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a8\)))) # (!\SW~combout\(0) & ((\inst1|Add0~6_combout\) # ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \SW~combout\(1),
	datac => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a8\,
	datad => \SW~combout\(0),
	combout => \inst1|Add0~17_combout\);

-- Location: LCCOMB_X25_Y20_N0
\inst1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\SW~combout\(0) & (\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a7\)) # (!\SW~combout\(0) & (((\inst1|Add0~4_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a7\,
	datac => \SW~combout\(1),
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|Add0~18_combout\);

-- Location: LCCOMB_X25_Y20_N10
\inst1|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~19_combout\ = (\SW~combout\(0) & (((\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a6\)))) # (!\SW~combout\(0) & ((\inst1|Add0~2_combout\) # ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datab => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a6\,
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \inst1|Add0~19_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\SW~combout\(0) & (\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a5\)) # (!\SW~combout\(0) & (((\inst1|Add0~0_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a5\,
	datab => \inst1|Add0~0_combout\,
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \inst1|Add0~20_combout\);

-- Location: LCCOMB_X25_Y20_N8
\inst1|q_tmp[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q_tmp[4]~0_combout\ = (\SW~combout\(0) & (((\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a4\)))) # (!\SW~combout\(0) & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\) # ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[64]~76_combout\,
	datac => \SW~combout\(1),
	datad => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst1|q_tmp[4]~0_combout\);

-- Location: LCCOMB_X34_Y20_N20
\inst1|q_tmp[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q_tmp[2]~2_combout\ = (\SW~combout\(0) & ((\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a2\))) # (!\SW~combout\(0) & (!\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a2\,
	combout => \inst1|q_tmp[2]~2_combout\);

-- Location: LCCOMB_X32_Y17_N8
\inst1|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~1_cout\ = CARRY(!\inst1|q_tmp[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|q_tmp[1]~3_combout\,
	datad => VCC,
	cout => \inst1|Add4~1_cout\);

-- Location: LCCOMB_X32_Y17_N10
\inst1|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~2_combout\ = (\inst1|q_tmp[2]~2_combout\ & ((\inst1|Add4~1_cout\) # (GND))) # (!\inst1|q_tmp[2]~2_combout\ & (!\inst1|Add4~1_cout\))
-- \inst1|Add4~3\ = CARRY((\inst1|q_tmp[2]~2_combout\) # (!\inst1|Add4~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|q_tmp[2]~2_combout\,
	datad => VCC,
	cin => \inst1|Add4~1_cout\,
	combout => \inst1|Add4~2_combout\,
	cout => \inst1|Add4~3\);

-- Location: LCCOMB_X32_Y17_N12
\inst1|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~4_combout\ = (\inst1|q_tmp[3]~1_combout\ & (!\inst1|Add4~3\ & VCC)) # (!\inst1|q_tmp[3]~1_combout\ & (\inst1|Add4~3\ $ (GND)))
-- \inst1|Add4~5\ = CARRY((!\inst1|q_tmp[3]~1_combout\ & !\inst1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|q_tmp[3]~1_combout\,
	datad => VCC,
	cin => \inst1|Add4~3\,
	combout => \inst1|Add4~4_combout\,
	cout => \inst1|Add4~5\);

-- Location: LCCOMB_X32_Y17_N14
\inst1|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~6_combout\ = (\inst1|q_tmp[4]~0_combout\ & ((\inst1|Add4~5\) # (GND))) # (!\inst1|q_tmp[4]~0_combout\ & (!\inst1|Add4~5\))
-- \inst1|Add4~7\ = CARRY((\inst1|q_tmp[4]~0_combout\) # (!\inst1|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|q_tmp[4]~0_combout\,
	datad => VCC,
	cin => \inst1|Add4~5\,
	combout => \inst1|Add4~6_combout\,
	cout => \inst1|Add4~7\);

-- Location: LCCOMB_X32_Y17_N16
\inst1|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~8_combout\ = (\inst1|Add0~20_combout\ & (!\inst1|Add4~7\ & VCC)) # (!\inst1|Add0~20_combout\ & (\inst1|Add4~7\ $ (GND)))
-- \inst1|Add4~9\ = CARRY((!\inst1|Add0~20_combout\ & !\inst1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~20_combout\,
	datad => VCC,
	cin => \inst1|Add4~7\,
	combout => \inst1|Add4~8_combout\,
	cout => \inst1|Add4~9\);

-- Location: LCCOMB_X32_Y17_N18
\inst1|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~10_combout\ = (\inst1|Add0~19_combout\ & ((\inst1|Add4~9\) # (GND))) # (!\inst1|Add0~19_combout\ & (!\inst1|Add4~9\))
-- \inst1|Add4~11\ = CARRY((\inst1|Add0~19_combout\) # (!\inst1|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~19_combout\,
	datad => VCC,
	cin => \inst1|Add4~9\,
	combout => \inst1|Add4~10_combout\,
	cout => \inst1|Add4~11\);

-- Location: LCCOMB_X32_Y17_N20
\inst1|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~12_combout\ = (\inst1|Add0~18_combout\ & (!\inst1|Add4~11\ & VCC)) # (!\inst1|Add0~18_combout\ & (\inst1|Add4~11\ $ (GND)))
-- \inst1|Add4~13\ = CARRY((!\inst1|Add0~18_combout\ & !\inst1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~18_combout\,
	datad => VCC,
	cin => \inst1|Add4~11\,
	combout => \inst1|Add4~12_combout\,
	cout => \inst1|Add4~13\);

-- Location: LCCOMB_X32_Y17_N22
\inst1|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~14_combout\ = (\inst1|Add0~17_combout\ & ((\inst1|Add4~13\) # (GND))) # (!\inst1|Add0~17_combout\ & (!\inst1|Add4~13\))
-- \inst1|Add4~15\ = CARRY((\inst1|Add0~17_combout\) # (!\inst1|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~17_combout\,
	datad => VCC,
	cin => \inst1|Add4~13\,
	combout => \inst1|Add4~14_combout\,
	cout => \inst1|Add4~15\);

-- Location: LCCOMB_X32_Y17_N24
\inst1|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~16_combout\ = (\inst1|Add0~16_combout\ & (!\inst1|Add4~15\ & VCC)) # (!\inst1|Add0~16_combout\ & (\inst1|Add4~15\ $ (GND)))
-- \inst1|Add4~17\ = CARRY((!\inst1|Add0~16_combout\ & !\inst1|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~16_combout\,
	datad => VCC,
	cin => \inst1|Add4~15\,
	combout => \inst1|Add4~16_combout\,
	cout => \inst1|Add4~17\);

-- Location: LCCOMB_X32_Y17_N26
\inst1|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~18_combout\ = (\inst1|Add0~15_combout\ & ((\inst1|Add4~17\) # (GND))) # (!\inst1|Add0~15_combout\ & (!\inst1|Add4~17\))
-- \inst1|Add4~19\ = CARRY((\inst1|Add0~15_combout\) # (!\inst1|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~15_combout\,
	datad => VCC,
	cin => \inst1|Add4~17\,
	combout => \inst1|Add4~18_combout\,
	cout => \inst1|Add4~19\);

-- Location: LCCOMB_X32_Y17_N28
\inst1|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~20_combout\ = (\inst1|Add0~14_combout\ & (!\inst1|Add4~19\ & VCC)) # (!\inst1|Add0~14_combout\ & (\inst1|Add4~19\ $ (GND)))
-- \inst1|Add4~21\ = CARRY((!\inst1|Add0~14_combout\ & !\inst1|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datad => VCC,
	cin => \inst1|Add4~19\,
	combout => \inst1|Add4~20_combout\,
	cout => \inst1|Add4~21\);

-- Location: LCCOMB_X32_Y17_N30
\inst1|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add4~22_combout\ = \inst1|Add4~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add4~21\,
	combout => \inst1|Add4~22_combout\);

-- Location: LCCOMB_X33_Y20_N26
\inst1|q[11]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[11]~2_combout\ = (\inst1|q[11]~1_combout\) # ((\inst1|q[11]~0_combout\) # ((\inst1|Add4~22_combout\) # (!\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|q[11]~1_combout\,
	datab => \inst1|q[11]~0_combout\,
	datac => \SW~combout\(2),
	datad => \inst1|Add4~22_combout\,
	combout => \inst1|q[11]~2_combout\);

-- Location: LCCOMB_X25_Y20_N26
\inst1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = \inst1|Add3~14_combout\ $ (!\inst1|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~14_combout\,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\);

-- Location: LCCOMB_X25_Y20_N12
\inst1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\SW~combout\(0) & (\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a11\)) # (!\SW~combout\(0) & (((\inst1|Add0~12_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a11\,
	datac => \SW~combout\(1),
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|Add0~14_combout\);

-- Location: LCCOMB_X33_Y20_N24
\inst1|always4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|always4~7_combout\ = (\inst1|always4~5_combout\) # ((\inst1|always4~4_combout\ & !\inst1|cont_rt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|always4~4_combout\,
	datac => \inst1|cont_rt\(8),
	datad => \inst1|always4~5_combout\,
	combout => \inst1|always4~7_combout\);

-- Location: LCCOMB_X33_Y20_N22
\inst1|q[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[2]~3_combout\ = (\SW~combout\(2) & ((\SW~combout\(3) & ((\inst1|always4~6_combout\))) # (!\SW~combout\(3) & (\inst1|always4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(2),
	datac => \inst1|always4~7_combout\,
	datad => \inst1|always4~6_combout\,
	combout => \inst1|q[2]~3_combout\);

-- Location: LCCOMB_X32_Y17_N0
\inst1|q[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[10]~4_combout\ = (\inst1|q[2]~3_combout\ & ((\inst1|Add4~20_combout\))) # (!\inst1|q[2]~3_combout\ & (\inst1|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datab => \inst1|Add4~20_combout\,
	datad => \inst1|q[2]~3_combout\,
	combout => \inst1|q[10]~4_combout\);

-- Location: LCCOMB_X25_Y20_N2
\inst1|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~15_combout\ = (\SW~combout\(0) & (((\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a10\)))) # (!\SW~combout\(0) & ((\inst1|Add0~10_combout\) # ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datab => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a10\,
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \inst1|Add0~15_combout\);

-- Location: LCCOMB_X33_Y17_N20
\inst1|q[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[9]~5_combout\ = (\inst1|q[2]~3_combout\ & (\inst1|Add4~18_combout\)) # (!\inst1|q[2]~3_combout\ & ((\inst1|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|q[2]~3_combout\,
	datab => \inst1|Add4~18_combout\,
	datad => \inst1|Add0~15_combout\,
	combout => \inst1|q[9]~5_combout\);

-- Location: LCCOMB_X33_Y17_N30
\inst1|q[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[8]~6_combout\ = (\inst1|q[2]~3_combout\ & (\inst1|Add4~16_combout\)) # (!\inst1|q[2]~3_combout\ & ((\inst1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|q[2]~3_combout\,
	datab => \inst1|Add4~16_combout\,
	datac => \inst1|Add0~16_combout\,
	combout => \inst1|q[8]~6_combout\);

-- Location: LCCOMB_X32_Y17_N2
\inst1|q[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[7]~7_combout\ = (\inst1|q[2]~3_combout\ & (\inst1|Add4~14_combout\)) # (!\inst1|q[2]~3_combout\ & ((\inst1|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add4~14_combout\,
	datac => \inst1|Add0~17_combout\,
	datad => \inst1|q[2]~3_combout\,
	combout => \inst1|q[7]~7_combout\);

-- Location: LCCOMB_X32_Y17_N4
\inst1|q[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[6]~8_combout\ = (\inst1|q[2]~3_combout\ & ((\inst1|Add4~12_combout\))) # (!\inst1|q[2]~3_combout\ & (\inst1|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Add4~12_combout\,
	datad => \inst1|q[2]~3_combout\,
	combout => \inst1|q[6]~8_combout\);

-- Location: LCCOMB_X33_Y17_N12
\inst1|q[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[5]~9_combout\ = (\inst1|q[2]~3_combout\ & (\inst1|Add4~10_combout\)) # (!\inst1|q[2]~3_combout\ & ((\inst1|Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|q[2]~3_combout\,
	datab => \inst1|Add4~10_combout\,
	datac => \inst1|Add0~19_combout\,
	combout => \inst1|q[5]~9_combout\);

-- Location: LCCOMB_X33_Y17_N2
\inst1|q[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[4]~10_combout\ = (\inst1|q[2]~3_combout\ & (\inst1|Add4~8_combout\)) # (!\inst1|q[2]~3_combout\ & ((\inst1|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|q[2]~3_combout\,
	datab => \inst1|Add4~8_combout\,
	datac => \inst1|Add0~20_combout\,
	combout => \inst1|q[4]~10_combout\);

-- Location: LCCOMB_X32_Y17_N6
\inst1|q[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[3]~11_combout\ = (\inst1|q[2]~3_combout\ & ((\inst1|Add4~6_combout\))) # (!\inst1|q[2]~3_combout\ & (\inst1|q_tmp[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|q_tmp[4]~0_combout\,
	datac => \inst1|Add4~6_combout\,
	datad => \inst1|q[2]~3_combout\,
	combout => \inst1|q[3]~11_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst1|q_tmp[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q_tmp[3]~1_combout\ = (\SW~combout\(0) & (\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a3\)) # (!\SW~combout\(0) & ((!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a3\,
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \inst1|q_tmp[3]~1_combout\);

-- Location: LCCOMB_X33_Y17_N16
\inst1|q[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[2]~12_combout\ = (\inst1|q[2]~3_combout\ & (\inst1|Add4~4_combout\)) # (!\inst1|q[2]~3_combout\ & ((\inst1|q_tmp[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~4_combout\,
	datac => \inst1|q[2]~3_combout\,
	datad => \inst1|q_tmp[3]~1_combout\,
	combout => \inst1|q[2]~12_combout\);

-- Location: LCCOMB_X33_Y17_N18
\inst1|q[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[1]~13_combout\ = (\inst1|q[2]~3_combout\ & (\inst1|Add4~2_combout\)) # (!\inst1|q[2]~3_combout\ & ((\inst1|q_tmp[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~2_combout\,
	datac => \inst1|q[2]~3_combout\,
	datad => \inst1|q_tmp[2]~2_combout\,
	combout => \inst1|q[1]~13_combout\);

-- Location: LCCOMB_X34_Y20_N18
\inst1|q_tmp[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q_tmp[1]~3_combout\ = (\SW~combout\(0) & ((\inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\))) # (!\SW~combout\(0) & (!\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \inst1|lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \inst1|q_tmp[1]~3_combout\);

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
	datain => \inst1|f_div_inst|count\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
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
	datain => \inst1|q[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
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
	datain => \inst1|q[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

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
	datain => \inst1|q[9]~5_combout\,
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
	datain => \inst1|q[8]~6_combout\,
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
	datain => \inst1|q[7]~7_combout\,
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
	datain => \inst1|q[6]~8_combout\,
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
	datain => \inst1|q[5]~9_combout\,
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
	datain => \inst1|q[4]~10_combout\,
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
	datain => \inst1|q[3]~11_combout\,
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
	datain => \inst1|q[2]~12_combout\,
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
	datain => \inst1|q[1]~13_combout\,
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
	datain => \inst1|q_tmp[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));
END structure;


