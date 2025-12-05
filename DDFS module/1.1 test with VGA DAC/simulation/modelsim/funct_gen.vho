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

-- DATE "12/02/2025 10:42:34"

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
	VGA_BLANK : OUT std_logic;
	SW : IN std_logic_vector(14 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	VGA_SYNC : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_G : OUT std_logic_vector(9 DOWNTO 0)
	);
END funct_gen;

-- Design Ports Information
-- VGA_BLANK	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLK	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_SW : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SW[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|f_div_inst|count[19]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~22_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~28_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~32_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|always4~0_combout\ : std_logic;
SIGNAL \inst|f_div_inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Decoder1~2_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~14_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~21_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~23_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~25_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~37_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count[19]~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \inst|f_div_inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Decoder1~0_combout\ : std_logic;
SIGNAL \inst|f_div_inst|end_cnt~0_combout\ : std_logic;
SIGNAL \inst|f_div_inst|end_cnt~1_combout\ : std_logic;
SIGNAL \inst|f_div_inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~1\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~3\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~5\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~7\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~9\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~11\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~13\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~15\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~17\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~19\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~21\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~23\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~25\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~27\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~29\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~31\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~33\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~35\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~37\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~36_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~12_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~16_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~11_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~19_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~26_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~1\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~3\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~5\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~35_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~29_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~7\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~28_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~9\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~27_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~11\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~13\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~24_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~15\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~17\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~22_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~19\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~20_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~20_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~21\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~23\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~25\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~26_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~17_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Decoder1~1_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~24_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~18_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~30_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~31_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~36_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~32_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~33_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~34_combout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~15_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~17_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~19_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~21_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~23_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~25_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~27_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~29_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~31_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~33_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~35_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~37_cout\ : std_logic;
SIGNAL \inst|f_div_inst|LessThan0~38_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~27\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~29\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~30_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~15_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~31\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~33\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~34_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~13_combout\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~35\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~37\ : std_logic;
SIGNAL \inst|f_div_inst|Add1~38_combout\ : std_logic;
SIGNAL \inst|f_div_inst|count~10_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|cont[0]~13\ : std_logic;
SIGNAL \inst|cont[1]~14_combout\ : std_logic;
SIGNAL \SW[11]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|cont[7]~26_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|cont[10]~33\ : std_logic;
SIGNAL \inst|cont[11]~34_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|cont[0]~12_combout\ : std_logic;
SIGNAL \inst|cont[3]~18_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|cont[1]~15\ : std_logic;
SIGNAL \inst|cont[2]~17\ : std_logic;
SIGNAL \inst|cont[3]~19\ : std_logic;
SIGNAL \inst|cont[4]~20_combout\ : std_logic;
SIGNAL \inst|cont[4]~21\ : std_logic;
SIGNAL \inst|cont[5]~23\ : std_logic;
SIGNAL \inst|cont[6]~24_combout\ : std_logic;
SIGNAL \inst|cont[6]~25\ : std_logic;
SIGNAL \inst|cont[7]~27\ : std_logic;
SIGNAL \inst|cont[8]~28_combout\ : std_logic;
SIGNAL \inst|cont[8]~29\ : std_logic;
SIGNAL \inst|cont[9]~31\ : std_logic;
SIGNAL \inst|cont[10]~32_combout\ : std_logic;
SIGNAL \inst|addr[0]~9_combout\ : std_logic;
SIGNAL \inst|addr[1]~8_combout\ : std_logic;
SIGNAL \inst|cont[2]~16_combout\ : std_logic;
SIGNAL \inst|addr[2]~7_combout\ : std_logic;
SIGNAL \inst|addr[3]~6_combout\ : std_logic;
SIGNAL \inst|addr[4]~5_combout\ : std_logic;
SIGNAL \inst|cont[5]~22_combout\ : std_logic;
SIGNAL \inst|addr[5]~4_combout\ : std_logic;
SIGNAL \inst|addr[6]~3_combout\ : std_logic;
SIGNAL \inst|addr[7]~2_combout\ : std_logic;
SIGNAL \inst|addr[8]~1_combout\ : std_logic;
SIGNAL \inst|cont[9]~30_combout\ : std_logic;
SIGNAL \inst|addr[9]~0_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst|q_tmp[11]~0_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst|q_tmp[10]~1_combout\ : std_logic;
SIGNAL \inst|q_tmp[8]~3_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst|q_tmp[7]~4_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst|q_tmp[6]~5_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst|q_tmp[5]~6_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst|q_tmp[2]~9_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \inst|q_tmp[1]~10_combout\ : std_logic;
SIGNAL \inst|Add2~1_cout\ : std_logic;
SIGNAL \inst|Add2~3_cout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~17\ : std_logic;
SIGNAL \inst|Add2~19\ : std_logic;
SIGNAL \inst|Add2~21\ : std_logic;
SIGNAL \inst|Add2~22_combout\ : std_logic;
SIGNAL \inst|q_VGA[9]~3_combout\ : std_logic;
SIGNAL \inst|q_VGA[9]~2_combout\ : std_logic;
SIGNAL \inst|q_VGA[9]~4_combout\ : std_logic;
SIGNAL \inst|Add2~20_combout\ : std_logic;
SIGNAL \inst|q_VGA[8]~5_combout\ : std_logic;
SIGNAL \inst|q_VGA[8]~15_combout\ : std_logic;
SIGNAL \inst|q_VGA[8]~6_combout\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|q_VGA[7]~7_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst|q_tmp[9]~2_combout\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|q_VGA[6]~8_combout\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|q_VGA[5]~9_combout\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|q_VGA[4]~10_combout\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|q_VGA[3]~11_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|q_VGA[2]~12_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \inst|q_tmp[4]~7_combout\ : std_logic;
SIGNAL \inst|q_VGA[1]~13_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst|q_tmp[3]~8_combout\ : std_logic;
SIGNAL \inst|q_VGA[0]~14_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst|cont\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|cont_rt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|f_div_inst|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_SW[11]~clkctrl_outclk\ : std_logic;

BEGIN

VGA_BLANK <= ww_VGA_BLANK;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
VGA_SYNC <= ww_VGA_SYNC;
VGA_CLK <= ww_VGA_CLK;
VGA_G <= ww_VGA_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst|addr[9]~0_combout\ & \inst|addr[8]~1_combout\ & \inst|addr[7]~2_combout\ & \inst|addr[6]~3_combout\ & \inst|addr[5]~4_combout\ & \inst|addr[4]~5_combout\ & 
\inst|addr[3]~6_combout\ & \inst|addr[2]~7_combout\ & \inst|addr[1]~8_combout\ & \inst|addr[0]~9_combout\);

\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a9\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a10\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a11\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);

\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst|addr[9]~0_combout\ & \inst|addr[8]~1_combout\ & \inst|addr[7]~2_combout\ & \inst|addr[6]~3_combout\ & \inst|addr[5]~4_combout\ & \inst|addr[4]~5_combout\ & 
\inst|addr[3]~6_combout\ & \inst|addr[2]~7_combout\ & \inst|addr[1]~8_combout\ & \inst|addr[0]~9_combout\);

\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a5\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a6\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a7\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|addr[9]~0_combout\ & \inst|addr[8]~1_combout\ & \inst|addr[7]~2_combout\ & \inst|addr[6]~3_combout\ & \inst|addr[5]~4_combout\ & \inst|addr[4]~5_combout\ & 
\inst|addr[3]~6_combout\ & \inst|addr[2]~7_combout\ & \inst|addr[1]~8_combout\ & \inst|addr[0]~9_combout\);

\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a2\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a3\ <= \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);

\SW[11]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SW~combout\(11));

\inst|f_div_inst|count[19]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|f_div_inst|count\(19));

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_SW[11]~clkctrl_outclk\ <= NOT \SW[11]~clkctrl_outclk\;

-- Location: M4K_X52_Y21
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
	mem_init0 => X"BBBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA99999999999999999999999999999999999999999999999999888888888888888888888888888888888888888888888888777777777777777777777777777777777777777777777776666666666666666666666666666666666666666666655555555555555555555555555555555555555555554444444444444444444444444444444444444444444333333333333333333333333333333333333333333222222222222222222222222222222222222222221111111111111111111111111111111111111111100000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/funct_gen.ram0_sin_lut_da7c88ef.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ddfs:inst|sin_lut:lut_inst|altsyncram:rom_rtl_0|altsyncram_3871:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X3_Y15_N12
\inst|f_div_inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~0_combout\ = (((!\SW~combout\(13) & !\SW~combout\(14))))
-- \inst|f_div_inst|Add0~1\ = CARRY((!\SW~combout\(13) & !\SW~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(14),
	datad => VCC,
	combout => \inst|f_div_inst|Add0~0_combout\,
	cout => \inst|f_div_inst|Add0~1\);

-- Location: LCCOMB_X3_Y15_N14
\inst|f_div_inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~2_combout\ = (\inst|f_div_inst|Decoder1~2_combout\ & (\inst|f_div_inst|Add0~1\ & VCC)) # (!\inst|f_div_inst|Decoder1~2_combout\ & (!\inst|f_div_inst|Add0~1\))
-- \inst|f_div_inst|Add0~3\ = CARRY((!\inst|f_div_inst|Decoder1~2_combout\ & !\inst|f_div_inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Decoder1~2_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|Add0~1\,
	combout => \inst|f_div_inst|Add0~2_combout\,
	cout => \inst|f_div_inst|Add0~3\);

-- Location: LCCOMB_X3_Y15_N16
\inst|f_div_inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~4_combout\ = (\inst|f_div_inst|Add0~3\ & ((((\SW~combout\(12) & !\SW~combout\(14)))))) # (!\inst|f_div_inst|Add0~3\ & (((\SW~combout\(12) & !\SW~combout\(14))) # (GND)))
-- \inst|f_div_inst|Add0~5\ = CARRY(((\SW~combout\(12) & !\SW~combout\(14))) # (!\inst|f_div_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(14),
	datad => VCC,
	cin => \inst|f_div_inst|Add0~3\,
	combout => \inst|f_div_inst|Add0~4_combout\,
	cout => \inst|f_div_inst|Add0~5\);

-- Location: LCCOMB_X3_Y15_N20
\inst|f_div_inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~8_combout\ = (\inst|f_div_inst|WideOr3~0_combout\ & ((GND) # (!\inst|f_div_inst|Add0~7\))) # (!\inst|f_div_inst|WideOr3~0_combout\ & (\inst|f_div_inst|Add0~7\ $ (GND)))
-- \inst|f_div_inst|Add0~9\ = CARRY((\inst|f_div_inst|WideOr3~0_combout\) # (!\inst|f_div_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|WideOr3~0_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|Add0~7\,
	combout => \inst|f_div_inst|Add0~8_combout\,
	cout => \inst|f_div_inst|Add0~9\);

-- Location: LCCOMB_X3_Y15_N22
\inst|f_div_inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~10_combout\ = (\SW~combout\(13) & (\inst|f_div_inst|Add0~9\ & VCC)) # (!\SW~combout\(13) & (!\inst|f_div_inst|Add0~9\))
-- \inst|f_div_inst|Add0~11\ = CARRY((!\SW~combout\(13) & !\inst|f_div_inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datad => VCC,
	cin => \inst|f_div_inst|Add0~9\,
	combout => \inst|f_div_inst|Add0~10_combout\,
	cout => \inst|f_div_inst|Add0~11\);

-- Location: LCCOMB_X3_Y15_N26
\inst|f_div_inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~14_combout\ = (\inst|f_div_inst|end_cnt~0_combout\ & (!\inst|f_div_inst|Add0~13\)) # (!\inst|f_div_inst|end_cnt~0_combout\ & (\inst|f_div_inst|Add0~13\ & VCC))
-- \inst|f_div_inst|Add0~15\ = CARRY((\inst|f_div_inst|end_cnt~0_combout\ & !\inst|f_div_inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|end_cnt~0_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|Add0~13\,
	combout => \inst|f_div_inst|Add0~14_combout\,
	cout => \inst|f_div_inst|Add0~15\);

-- Location: LCCOMB_X3_Y14_N0
\inst|f_div_inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~20_combout\ = \inst|f_div_inst|Add0~19\ $ (GND)
-- \inst|f_div_inst|Add0~21\ = CARRY(!\inst|f_div_inst|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|f_div_inst|Add0~19\,
	combout => \inst|f_div_inst|Add0~20_combout\,
	cout => \inst|f_div_inst|Add0~21\);

-- Location: LCCOMB_X3_Y14_N4
\inst|f_div_inst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~24_combout\ = (\inst|f_div_inst|Decoder1~1_combout\ & ((GND) # (!\inst|f_div_inst|Add0~23\))) # (!\inst|f_div_inst|Decoder1~1_combout\ & (\inst|f_div_inst|Add0~23\ $ (GND)))
-- \inst|f_div_inst|Add0~25\ = CARRY((\inst|f_div_inst|Decoder1~1_combout\) # (!\inst|f_div_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Decoder1~1_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|Add0~23\,
	combout => \inst|f_div_inst|Add0~24_combout\,
	cout => \inst|f_div_inst|Add0~25\);

-- Location: LCCOMB_X3_Y14_N6
\inst|f_div_inst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~26_combout\ = (\SW~combout\(14) & ((\SW~combout\(13) & (\inst|f_div_inst|Add0~25\ & VCC)) # (!\SW~combout\(13) & (!\inst|f_div_inst|Add0~25\)))) # (!\SW~combout\(14) & (((!\inst|f_div_inst|Add0~25\))))
-- \inst|f_div_inst|Add0~27\ = CARRY((!\inst|f_div_inst|Add0~25\ & ((!\SW~combout\(13)) # (!\SW~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datad => VCC,
	cin => \inst|f_div_inst|Add0~25\,
	combout => \inst|f_div_inst|Add0~26_combout\,
	cout => \inst|f_div_inst|Add0~27\);

-- Location: LCCOMB_X3_Y14_N8
\inst|f_div_inst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~28_combout\ = (\inst|f_div_inst|Decoder1~0_combout\ & ((GND) # (!\inst|f_div_inst|Add0~27\))) # (!\inst|f_div_inst|Decoder1~0_combout\ & (\inst|f_div_inst|Add0~27\ $ (GND)))
-- \inst|f_div_inst|Add0~29\ = CARRY((\inst|f_div_inst|Decoder1~0_combout\) # (!\inst|f_div_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|Decoder1~0_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|Add0~27\,
	combout => \inst|f_div_inst|Add0~28_combout\,
	cout => \inst|f_div_inst|Add0~29\);

-- Location: LCCOMB_X3_Y14_N16
\inst|f_div_inst|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~36_combout\ = (\inst|f_div_inst|Add0~35\ & ((((\SW~combout\(14) & \SW~combout\(13)))))) # (!\inst|f_div_inst|Add0~35\ & (((\SW~combout\(14) & \SW~combout\(13))) # (GND)))
-- \inst|f_div_inst|Add0~37\ = CARRY(((\SW~combout\(14) & \SW~combout\(13))) # (!\inst|f_div_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datad => VCC,
	cin => \inst|f_div_inst|Add0~35\,
	combout => \inst|f_div_inst|Add0~36_combout\,
	cout => \inst|f_div_inst|Add0~37\);

-- Location: LCCOMB_X1_Y15_N12
\inst|f_div_inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~0_combout\ = \inst|f_div_inst|count\(0) $ (VCC)
-- \inst|f_div_inst|Add1~1\ = CARRY(\inst|f_div_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(0),
	datad => VCC,
	combout => \inst|f_div_inst|Add1~0_combout\,
	cout => \inst|f_div_inst|Add1~1\);

-- Location: LCCOMB_X1_Y15_N24
\inst|f_div_inst|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~12_combout\ = (\inst|f_div_inst|count\(6) & (\inst|f_div_inst|Add1~11\ $ (GND))) # (!\inst|f_div_inst|count\(6) & (!\inst|f_div_inst|Add1~11\ & VCC))
-- \inst|f_div_inst|Add1~13\ = CARRY((\inst|f_div_inst|count\(6) & !\inst|f_div_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(6),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~11\,
	combout => \inst|f_div_inst|Add1~12_combout\,
	cout => \inst|f_div_inst|Add1~13\);

-- Location: LCCOMB_X1_Y15_N28
\inst|f_div_inst|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~16_combout\ = (\inst|f_div_inst|count\(8) & (\inst|f_div_inst|Add1~15\ $ (GND))) # (!\inst|f_div_inst|count\(8) & (!\inst|f_div_inst|Add1~15\ & VCC))
-- \inst|f_div_inst|Add1~17\ = CARRY((\inst|f_div_inst|count\(8) & !\inst|f_div_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(8),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~15\,
	combout => \inst|f_div_inst|Add1~16_combout\,
	cout => \inst|f_div_inst|Add1~17\);

-- Location: LCCOMB_X1_Y14_N2
\inst|f_div_inst|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~22_combout\ = (\inst|f_div_inst|count\(11) & (!\inst|f_div_inst|Add1~21\)) # (!\inst|f_div_inst|count\(11) & ((\inst|f_div_inst|Add1~21\) # (GND)))
-- \inst|f_div_inst|Add1~23\ = CARRY((!\inst|f_div_inst|Add1~21\) # (!\inst|f_div_inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(11),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~21\,
	combout => \inst|f_div_inst|Add1~22_combout\,
	cout => \inst|f_div_inst|Add1~23\);

-- Location: LCCOMB_X1_Y14_N8
\inst|f_div_inst|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~28_combout\ = (\inst|f_div_inst|count\(14) & (\inst|f_div_inst|Add1~27\ $ (GND))) # (!\inst|f_div_inst|count\(14) & (!\inst|f_div_inst|Add1~27\ & VCC))
-- \inst|f_div_inst|Add1~29\ = CARRY((\inst|f_div_inst|count\(14) & !\inst|f_div_inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(14),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~27\,
	combout => \inst|f_div_inst|Add1~28_combout\,
	cout => \inst|f_div_inst|Add1~29\);

-- Location: LCCOMB_X1_Y14_N12
\inst|f_div_inst|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~32_combout\ = (\inst|f_div_inst|count\(16) & (\inst|f_div_inst|Add1~31\ $ (GND))) # (!\inst|f_div_inst|count\(16) & (!\inst|f_div_inst|Add1~31\ & VCC))
-- \inst|f_div_inst|Add1~33\ = CARRY((\inst|f_div_inst|count\(16) & !\inst|f_div_inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(16),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~31\,
	combout => \inst|f_div_inst|Add1~32_combout\,
	cout => \inst|f_div_inst|Add1~33\);

-- Location: LCCOMB_X42_Y21_N16
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\SW~combout\(5) & (!\inst|Add0~1\)) # (!\SW~combout\(5) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\SW~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X42_Y21_N22
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\SW~combout\(8) & (\inst|Add0~7\ $ (GND))) # (!\SW~combout\(8) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\SW~combout\(8) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X42_Y21_N26
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\SW~combout\(10) & (\inst|Add0~11\ $ (GND))) # (!\SW~combout\(10) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\SW~combout\(10) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X53_Y21_N16
\inst|always4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always4~0_combout\ = (\SW~combout\(3) & \SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \inst|always4~0_combout\);

-- Location: LCCOMB_X3_Y14_N26
\inst|f_div_inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|WideOr2~0_combout\ = (!\SW~combout\(12)) # (!\SW~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datad => \SW~combout\(12),
	combout => \inst|f_div_inst|WideOr2~0_combout\);

-- Location: LCCOMB_X3_Y15_N6
\inst|f_div_inst|Decoder1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Decoder1~2_combout\ = (\SW~combout\(13) & (!\SW~combout\(14) & !\SW~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(14),
	datac => \SW~combout\(12),
	combout => \inst|f_div_inst|Decoder1~2_combout\);

-- Location: LCFF_X1_Y14_N21
\inst|f_div_inst|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(16));

-- Location: LCFF_X1_Y15_N11
\inst|f_div_inst|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(8));

-- Location: LCFF_X2_Y15_N7
\inst|f_div_inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(6));

-- Location: LCCOMB_X1_Y14_N20
\inst|f_div_inst|count~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~14_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|Add1~32_combout\)) # (!\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|count~11_combout\))))) # (!\SW~combout\(11) & 
-- (((\inst|f_div_inst|count~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add1~32_combout\,
	datab => \SW~combout\(11),
	datac => \inst|f_div_inst|count~11_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~14_combout\);

-- Location: LCCOMB_X1_Y14_N26
\inst|f_div_inst|count~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~21_combout\ = (\SW~combout\(13)) # (!\SW~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datad => \SW~combout\(14),
	combout => \inst|f_div_inst|count~21_combout\);

-- Location: LCCOMB_X1_Y15_N10
\inst|f_div_inst|count~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~23_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|Add1~16_combout\)) # (!\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|count~36_combout\))))) # (!\SW~combout\(11) & 
-- (((\inst|f_div_inst|count~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \inst|f_div_inst|Add1~16_combout\,
	datac => \inst|f_div_inst|LessThan0~38_combout\,
	datad => \inst|f_div_inst|count~36_combout\,
	combout => \inst|f_div_inst|count~23_combout\);

-- Location: LCCOMB_X2_Y15_N6
\inst|f_div_inst|count~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~25_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|Add1~12_combout\)) # (!\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|count~37_combout\))))) # (!\SW~combout\(11) & 
-- (((\inst|f_div_inst|count~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \inst|f_div_inst|Add1~12_combout\,
	datac => \inst|f_div_inst|count~37_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~25_combout\);

-- Location: LCCOMB_X3_Y15_N10
\inst|f_div_inst|count~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~37_combout\ = (\SW~combout\(13) $ (!\SW~combout\(14))) # (!\SW~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(14),
	datac => \SW~combout\(12),
	combout => \inst|f_div_inst|count~37_combout\);

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

-- Location: CLKCTRL_G0
\inst|f_div_inst|count[19]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|f_div_inst|count[19]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|f_div_inst|count[19]~clkctrl_outclk\);

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

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
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
	padio => ww_SW(11),
	combout => \SW~combout\(11));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
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
	padio => ww_SW(13),
	combout => \SW~combout\(13));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
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
	padio => ww_SW(12),
	combout => \SW~combout\(12));

-- Location: LCCOMB_X3_Y14_N28
\inst|f_div_inst|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|WideOr1~0_combout\ = (\SW~combout\(13)) # (\SW~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datad => \SW~combout\(12),
	combout => \inst|f_div_inst|WideOr1~0_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
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
	padio => ww_SW(14),
	combout => \SW~combout\(14));

-- Location: LCCOMB_X3_Y14_N30
\inst|f_div_inst|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Decoder1~0_combout\ = (!\SW~combout\(13) & (\SW~combout\(14) & \SW~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datac => \SW~combout\(14),
	datad => \SW~combout\(12),
	combout => \inst|f_div_inst|Decoder1~0_combout\);

-- Location: LCCOMB_X3_Y15_N4
\inst|f_div_inst|end_cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|end_cnt~0_combout\ = (\SW~combout\(13) & ((\SW~combout\(14)) # (!\SW~combout\(12)))) # (!\SW~combout\(13) & ((\SW~combout\(12)) # (!\SW~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(14),
	datac => \SW~combout\(12),
	combout => \inst|f_div_inst|end_cnt~0_combout\);

-- Location: LCCOMB_X3_Y15_N2
\inst|f_div_inst|end_cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|end_cnt~1_combout\ = \SW~combout\(13) $ (\SW~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datac => \SW~combout\(14),
	combout => \inst|f_div_inst|end_cnt~1_combout\);

-- Location: LCCOMB_X3_Y15_N0
\inst|f_div_inst|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|WideOr3~0_combout\ = (\SW~combout\(13) & (!\SW~combout\(14))) # (!\SW~combout\(13) & (\SW~combout\(14) & \SW~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(14),
	datac => \SW~combout\(12),
	combout => \inst|f_div_inst|WideOr3~0_combout\);

-- Location: LCCOMB_X3_Y15_N18
\inst|f_div_inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~6_combout\ = (\inst|f_div_inst|Decoder1~1_combout\ & (\inst|f_div_inst|Add0~5\ & VCC)) # (!\inst|f_div_inst|Decoder1~1_combout\ & (!\inst|f_div_inst|Add0~5\))
-- \inst|f_div_inst|Add0~7\ = CARRY((!\inst|f_div_inst|Decoder1~1_combout\ & !\inst|f_div_inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Decoder1~1_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|Add0~5\,
	combout => \inst|f_div_inst|Add0~6_combout\,
	cout => \inst|f_div_inst|Add0~7\);

-- Location: LCCOMB_X3_Y15_N24
\inst|f_div_inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~12_combout\ = (\inst|f_div_inst|Add0~11\ & ((((\SW~combout\(12) & \inst|f_div_inst|end_cnt~1_combout\))))) # (!\inst|f_div_inst|Add0~11\ & (((\SW~combout\(12) & \inst|f_div_inst|end_cnt~1_combout\)) # (GND)))
-- \inst|f_div_inst|Add0~13\ = CARRY(((\SW~combout\(12) & \inst|f_div_inst|end_cnt~1_combout\)) # (!\inst|f_div_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \inst|f_div_inst|end_cnt~1_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|Add0~11\,
	combout => \inst|f_div_inst|Add0~12_combout\,
	cout => \inst|f_div_inst|Add0~13\);

-- Location: LCCOMB_X3_Y15_N28
\inst|f_div_inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~16_combout\ = (\inst|f_div_inst|Add0~15\ & ((((\SW~combout\(14)) # (!\inst|f_div_inst|WideOr2~0_combout\))))) # (!\inst|f_div_inst|Add0~15\ & (((\SW~combout\(14)) # (GND)) # (!\inst|f_div_inst|WideOr2~0_combout\)))
-- \inst|f_div_inst|Add0~17\ = CARRY(((\SW~combout\(14)) # (!\inst|f_div_inst|Add0~15\)) # (!\inst|f_div_inst|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|WideOr2~0_combout\,
	datab => \SW~combout\(14),
	datad => VCC,
	cin => \inst|f_div_inst|Add0~15\,
	combout => \inst|f_div_inst|Add0~16_combout\,
	cout => \inst|f_div_inst|Add0~17\);

-- Location: LCCOMB_X3_Y15_N30
\inst|f_div_inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~18_combout\ = (\SW~combout\(13) & (((!\inst|f_div_inst|Add0~17\)))) # (!\SW~combout\(13) & ((\SW~combout\(14) & (\inst|f_div_inst|Add0~17\ & VCC)) # (!\SW~combout\(14) & (!\inst|f_div_inst|Add0~17\))))
-- \inst|f_div_inst|Add0~19\ = CARRY((!\inst|f_div_inst|Add0~17\ & ((\SW~combout\(13)) # (!\SW~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(14),
	datad => VCC,
	cin => \inst|f_div_inst|Add0~17\,
	combout => \inst|f_div_inst|Add0~18_combout\,
	cout => \inst|f_div_inst|Add0~19\);

-- Location: LCCOMB_X3_Y14_N2
\inst|f_div_inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~22_combout\ = !\inst|f_div_inst|Add0~21\
-- \inst|f_div_inst|Add0~23\ = CARRY(!\inst|f_div_inst|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|f_div_inst|Add0~21\,
	combout => \inst|f_div_inst|Add0~22_combout\,
	cout => \inst|f_div_inst|Add0~23\);

-- Location: LCCOMB_X3_Y14_N10
\inst|f_div_inst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~30_combout\ = (\SW~combout\(14) & ((\inst|f_div_inst|WideOr1~0_combout\ & (\inst|f_div_inst|Add0~29\ & VCC)) # (!\inst|f_div_inst|WideOr1~0_combout\ & (!\inst|f_div_inst|Add0~29\)))) # (!\SW~combout\(14) & 
-- (((!\inst|f_div_inst|Add0~29\))))
-- \inst|f_div_inst|Add0~31\ = CARRY((!\inst|f_div_inst|Add0~29\ & ((!\inst|f_div_inst|WideOr1~0_combout\) # (!\SW~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \inst|f_div_inst|WideOr1~0_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|Add0~29\,
	combout => \inst|f_div_inst|Add0~30_combout\,
	cout => \inst|f_div_inst|Add0~31\);

-- Location: LCCOMB_X3_Y14_N12
\inst|f_div_inst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~32_combout\ = (\inst|f_div_inst|Add0~31\ & ((((\SW~combout\(14) & \SW~combout\(13)))))) # (!\inst|f_div_inst|Add0~31\ & (((\SW~combout\(14) & \SW~combout\(13))) # (GND)))
-- \inst|f_div_inst|Add0~33\ = CARRY(((\SW~combout\(14) & \SW~combout\(13))) # (!\inst|f_div_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datad => VCC,
	cin => \inst|f_div_inst|Add0~31\,
	combout => \inst|f_div_inst|Add0~32_combout\,
	cout => \inst|f_div_inst|Add0~33\);

-- Location: LCCOMB_X3_Y14_N14
\inst|f_div_inst|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~34_combout\ = (\SW~combout\(14) & ((\SW~combout\(13) & (\inst|f_div_inst|Add0~33\ & VCC)) # (!\SW~combout\(13) & (!\inst|f_div_inst|Add0~33\)))) # (!\SW~combout\(14) & (((!\inst|f_div_inst|Add0~33\))))
-- \inst|f_div_inst|Add0~35\ = CARRY((!\inst|f_div_inst|Add0~33\ & ((!\SW~combout\(13)) # (!\SW~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \SW~combout\(13),
	datad => VCC,
	cin => \inst|f_div_inst|Add0~33\,
	combout => \inst|f_div_inst|Add0~34_combout\,
	cout => \inst|f_div_inst|Add0~35\);

-- Location: LCCOMB_X3_Y14_N18
\inst|f_div_inst|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add0~38_combout\ = \inst|f_div_inst|Add0~37\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|f_div_inst|Add0~37\,
	combout => \inst|f_div_inst|Add0~38_combout\);

-- Location: LCCOMB_X1_Y14_N16
\inst|f_div_inst|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~36_combout\ = (\inst|f_div_inst|count\(18) & (\inst|f_div_inst|Add1~35\ $ (GND))) # (!\inst|f_div_inst|count\(18) & (!\inst|f_div_inst|Add1~35\ & VCC))
-- \inst|f_div_inst|Add1~37\ = CARRY((\inst|f_div_inst|count\(18) & !\inst|f_div_inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(18),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~35\,
	combout => \inst|f_div_inst|Add1~36_combout\,
	cout => \inst|f_div_inst|Add1~37\);

-- Location: LCCOMB_X1_Y14_N24
\inst|f_div_inst|count~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~12_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|Add1~36_combout\))) # (!\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|count~11_combout\)))) # (!\SW~combout\(11) & 
-- (\inst|f_div_inst|count~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count~11_combout\,
	datab => \SW~combout\(11),
	datac => \inst|f_div_inst|Add1~36_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~12_combout\);

-- Location: LCFF_X1_Y14_N25
\inst|f_div_inst|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(18));

-- Location: LCCOMB_X2_Y14_N22
\inst|f_div_inst|count~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~16_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|Add1~28_combout\)) # (!\inst|f_div_inst|LessThan0~38_combout\ & ((!\inst|f_div_inst|Decoder1~0_combout\))))) # (!\SW~combout\(11) & 
-- (((!\inst|f_div_inst|Decoder1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add1~28_combout\,
	datab => \inst|f_div_inst|Decoder1~0_combout\,
	datac => \SW~combout\(11),
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~16_combout\);

-- Location: LCFF_X2_Y14_N23
\inst|f_div_inst|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(14));

-- Location: LCCOMB_X3_Y14_N20
\inst|f_div_inst|count~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~11_combout\ = (!\SW~combout\(14)) # (!\SW~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datac => \SW~combout\(14),
	combout => \inst|f_div_inst|count~11_combout\);

-- Location: LCCOMB_X2_Y14_N20
\inst|f_div_inst|count~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~19_combout\ = (\inst|f_div_inst|Add1~22_combout\) # ((!\inst|f_div_inst|LessThan0~38_combout\) # (!\SW~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add1~22_combout\,
	datac => \SW~combout\(11),
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~19_combout\);

-- Location: LCFF_X2_Y14_N21
\inst|f_div_inst|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(11));

-- Location: LCCOMB_X1_Y14_N28
\inst|f_div_inst|count~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~26_combout\ = (\SW~combout\(14)) # (!\SW~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datad => \SW~combout\(14),
	combout => \inst|f_div_inst|count~26_combout\);

-- Location: LCCOMB_X1_Y15_N14
\inst|f_div_inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~2_combout\ = (\inst|f_div_inst|count\(1) & (!\inst|f_div_inst|Add1~1\)) # (!\inst|f_div_inst|count\(1) & ((\inst|f_div_inst|Add1~1\) # (GND)))
-- \inst|f_div_inst|Add1~3\ = CARRY((!\inst|f_div_inst|Add1~1\) # (!\inst|f_div_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(1),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~1\,
	combout => \inst|f_div_inst|Add1~2_combout\,
	cout => \inst|f_div_inst|Add1~3\);

-- Location: LCCOMB_X1_Y15_N16
\inst|f_div_inst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~4_combout\ = (\inst|f_div_inst|count\(2) & (\inst|f_div_inst|Add1~3\ $ (GND))) # (!\inst|f_div_inst|count\(2) & (!\inst|f_div_inst|Add1~3\ & VCC))
-- \inst|f_div_inst|Add1~5\ = CARRY((\inst|f_div_inst|count\(2) & !\inst|f_div_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(2),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~3\,
	combout => \inst|f_div_inst|Add1~4_combout\,
	cout => \inst|f_div_inst|Add1~5\);

-- Location: LCCOMB_X1_Y15_N18
\inst|f_div_inst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~6_combout\ = (\inst|f_div_inst|count\(3) & (!\inst|f_div_inst|Add1~5\)) # (!\inst|f_div_inst|count\(3) & ((\inst|f_div_inst|Add1~5\) # (GND)))
-- \inst|f_div_inst|Add1~7\ = CARRY((!\inst|f_div_inst|Add1~5\) # (!\inst|f_div_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(3),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~5\,
	combout => \inst|f_div_inst|Add1~6_combout\,
	cout => \inst|f_div_inst|Add1~7\);

-- Location: LCCOMB_X3_Y14_N22
\inst|f_div_inst|count~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~35_combout\ = ((!\SW~combout\(13) & !\SW~combout\(12))) # (!\SW~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datac => \SW~combout\(14),
	datad => \SW~combout\(12),
	combout => \inst|f_div_inst|count~35_combout\);

-- Location: LCCOMB_X2_Y15_N10
\inst|f_div_inst|count~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~29_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|Add1~6_combout\)) # (!\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|count~35_combout\))))) # (!\SW~combout\(11) & 
-- (((\inst|f_div_inst|count~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \inst|f_div_inst|Add1~6_combout\,
	datac => \inst|f_div_inst|count~35_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~29_combout\);

-- Location: LCFF_X2_Y15_N11
\inst|f_div_inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(3));

-- Location: LCCOMB_X1_Y15_N20
\inst|f_div_inst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~8_combout\ = (\inst|f_div_inst|count\(4) & (\inst|f_div_inst|Add1~7\ $ (GND))) # (!\inst|f_div_inst|count\(4) & (!\inst|f_div_inst|Add1~7\ & VCC))
-- \inst|f_div_inst|Add1~9\ = CARRY((\inst|f_div_inst|count\(4) & !\inst|f_div_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(4),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~7\,
	combout => \inst|f_div_inst|Add1~8_combout\,
	cout => \inst|f_div_inst|Add1~9\);

-- Location: LCCOMB_X2_Y15_N8
\inst|f_div_inst|count~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~28_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|Add1~8_combout\))) # (!\inst|f_div_inst|LessThan0~38_combout\ & (!\SW~combout\(13))))) # (!\SW~combout\(11) & (!\SW~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \SW~combout\(13),
	datac => \inst|f_div_inst|Add1~8_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~28_combout\);

-- Location: LCFF_X2_Y15_N9
\inst|f_div_inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(4));

-- Location: LCCOMB_X1_Y15_N22
\inst|f_div_inst|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~10_combout\ = (\inst|f_div_inst|count\(5) & (!\inst|f_div_inst|Add1~9\)) # (!\inst|f_div_inst|count\(5) & ((\inst|f_div_inst|Add1~9\) # (GND)))
-- \inst|f_div_inst|Add1~11\ = CARRY((!\inst|f_div_inst|Add1~9\) # (!\inst|f_div_inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(5),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~9\,
	combout => \inst|f_div_inst|Add1~10_combout\,
	cout => \inst|f_div_inst|Add1~11\);

-- Location: LCCOMB_X1_Y15_N4
\inst|f_div_inst|count~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~27_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|Add1~10_combout\))) # (!\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|count~26_combout\)))) # (!\SW~combout\(11) & 
-- (\inst|f_div_inst|count~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \inst|f_div_inst|count~26_combout\,
	datac => \inst|f_div_inst|LessThan0~38_combout\,
	datad => \inst|f_div_inst|Add1~10_combout\,
	combout => \inst|f_div_inst|count~27_combout\);

-- Location: LCFF_X1_Y15_N5
\inst|f_div_inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(5));

-- Location: LCCOMB_X1_Y15_N26
\inst|f_div_inst|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~14_combout\ = (\inst|f_div_inst|count\(7) & (!\inst|f_div_inst|Add1~13\)) # (!\inst|f_div_inst|count\(7) & ((\inst|f_div_inst|Add1~13\) # (GND)))
-- \inst|f_div_inst|Add1~15\ = CARRY((!\inst|f_div_inst|Add1~13\) # (!\inst|f_div_inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(7),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~13\,
	combout => \inst|f_div_inst|Add1~14_combout\,
	cout => \inst|f_div_inst|Add1~15\);

-- Location: LCCOMB_X2_Y15_N0
\inst|f_div_inst|count~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~24_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|Add1~14_combout\))) # (!\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|end_cnt~0_combout\)))) # (!\SW~combout\(11) & 
-- (\inst|f_div_inst|end_cnt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|end_cnt~0_combout\,
	datab => \inst|f_div_inst|Add1~14_combout\,
	datac => \SW~combout\(11),
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~24_combout\);

-- Location: LCFF_X2_Y15_N1
\inst|f_div_inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(7));

-- Location: LCCOMB_X1_Y15_N30
\inst|f_div_inst|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~18_combout\ = (\inst|f_div_inst|count\(9) & (!\inst|f_div_inst|Add1~17\)) # (!\inst|f_div_inst|count\(9) & ((\inst|f_div_inst|Add1~17\) # (GND)))
-- \inst|f_div_inst|Add1~19\ = CARRY((!\inst|f_div_inst|Add1~17\) # (!\inst|f_div_inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(9),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~17\,
	combout => \inst|f_div_inst|Add1~18_combout\,
	cout => \inst|f_div_inst|Add1~19\);

-- Location: LCCOMB_X1_Y15_N0
\inst|f_div_inst|count~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~22_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|Add1~18_combout\))) # (!\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|count~21_combout\)))) # (!\SW~combout\(11) & 
-- (\inst|f_div_inst|count~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count~21_combout\,
	datab => \SW~combout\(11),
	datac => \inst|f_div_inst|LessThan0~38_combout\,
	datad => \inst|f_div_inst|Add1~18_combout\,
	combout => \inst|f_div_inst|count~22_combout\);

-- Location: LCFF_X1_Y15_N1
\inst|f_div_inst|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(9));

-- Location: LCCOMB_X1_Y14_N0
\inst|f_div_inst|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~20_combout\ = (\inst|f_div_inst|count\(10) & (\inst|f_div_inst|Add1~19\ $ (GND))) # (!\inst|f_div_inst|count\(10) & (!\inst|f_div_inst|Add1~19\ & VCC))
-- \inst|f_div_inst|Add1~21\ = CARRY((\inst|f_div_inst|count\(10) & !\inst|f_div_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(10),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~19\,
	combout => \inst|f_div_inst|Add1~20_combout\,
	cout => \inst|f_div_inst|Add1~21\);

-- Location: LCCOMB_X2_Y14_N30
\inst|f_div_inst|count~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~20_combout\ = ((\inst|f_div_inst|Add1~20_combout\) # (!\inst|f_div_inst|LessThan0~38_combout\)) # (!\SW~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datac => \inst|f_div_inst|Add1~20_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~20_combout\);

-- Location: LCFF_X2_Y14_N31
\inst|f_div_inst|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(10));

-- Location: LCCOMB_X1_Y14_N4
\inst|f_div_inst|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~24_combout\ = (\inst|f_div_inst|count\(12) & (\inst|f_div_inst|Add1~23\ $ (GND))) # (!\inst|f_div_inst|count\(12) & (!\inst|f_div_inst|Add1~23\ & VCC))
-- \inst|f_div_inst|Add1~25\ = CARRY((\inst|f_div_inst|count\(12) & !\inst|f_div_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(12),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~23\,
	combout => \inst|f_div_inst|Add1~24_combout\,
	cout => \inst|f_div_inst|Add1~25\);

-- Location: LCCOMB_X1_Y14_N6
\inst|f_div_inst|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~26_combout\ = (\inst|f_div_inst|count\(13) & (!\inst|f_div_inst|Add1~25\)) # (!\inst|f_div_inst|count\(13) & ((\inst|f_div_inst|Add1~25\) # (GND)))
-- \inst|f_div_inst|Add1~27\ = CARRY((!\inst|f_div_inst|Add1~25\) # (!\inst|f_div_inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(13),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~25\,
	combout => \inst|f_div_inst|Add1~26_combout\,
	cout => \inst|f_div_inst|Add1~27\);

-- Location: LCCOMB_X2_Y14_N28
\inst|f_div_inst|count~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~17_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|Add1~26_combout\))) # (!\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|count~11_combout\)))) # (!\SW~combout\(11) & 
-- (\inst|f_div_inst|count~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \inst|f_div_inst|count~11_combout\,
	datac => \inst|f_div_inst|Add1~26_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~17_combout\);

-- Location: LCFF_X2_Y14_N29
\inst|f_div_inst|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(13));

-- Location: LCCOMB_X3_Y14_N24
\inst|f_div_inst|Decoder1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Decoder1~1_combout\ = (!\SW~combout\(13) & (\SW~combout\(14) & !\SW~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datac => \SW~combout\(14),
	datad => \SW~combout\(12),
	combout => \inst|f_div_inst|Decoder1~1_combout\);

-- Location: LCCOMB_X2_Y14_N26
\inst|f_div_inst|count~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~18_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|Add1~24_combout\))) # (!\inst|f_div_inst|LessThan0~38_combout\ & (!\inst|f_div_inst|Decoder1~1_combout\)))) # (!\SW~combout\(11) & 
-- (!\inst|f_div_inst|Decoder1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \inst|f_div_inst|Decoder1~1_combout\,
	datac => \inst|f_div_inst|Add1~24_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~18_combout\);

-- Location: LCFF_X2_Y14_N27
\inst|f_div_inst|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(12));

-- Location: LCCOMB_X3_Y15_N8
\inst|f_div_inst|count~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~30_combout\ = (\SW~combout\(14)) # ((!\SW~combout\(13) & \SW~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datab => \SW~combout\(14),
	datac => \SW~combout\(12),
	combout => \inst|f_div_inst|count~30_combout\);

-- Location: LCCOMB_X2_Y15_N4
\inst|f_div_inst|count~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~31_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|Add1~4_combout\)) # (!\inst|f_div_inst|LessThan0~38_combout\ & ((!\inst|f_div_inst|count~30_combout\))))) # (!\SW~combout\(11) & 
-- (((!\inst|f_div_inst|count~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \inst|f_div_inst|Add1~4_combout\,
	datac => \inst|f_div_inst|count~30_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~31_combout\);

-- Location: LCFF_X2_Y15_N5
\inst|f_div_inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(2));

-- Location: LCCOMB_X1_Y15_N2
\inst|f_div_inst|count~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~36_combout\ = (!\SW~combout\(14) & ((!\SW~combout\(12)) # (!\SW~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datac => \SW~combout\(14),
	datad => \SW~combout\(12),
	combout => \inst|f_div_inst|count~36_combout\);

-- Location: LCCOMB_X1_Y15_N6
\inst|f_div_inst|count~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~32_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|Add1~2_combout\)) # (!\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|count~36_combout\))))) # (!\SW~combout\(11) & 
-- (((\inst|f_div_inst|count~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \inst|f_div_inst|Add1~2_combout\,
	datac => \inst|f_div_inst|LessThan0~38_combout\,
	datad => \inst|f_div_inst|count~36_combout\,
	combout => \inst|f_div_inst|count~32_combout\);

-- Location: LCFF_X1_Y15_N7
\inst|f_div_inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(1));

-- Location: LCCOMB_X1_Y15_N8
\inst|f_div_inst|count~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~33_combout\ = (!\SW~combout\(13) & !\SW~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(13),
	datac => \SW~combout\(14),
	combout => \inst|f_div_inst|count~33_combout\);

-- Location: LCCOMB_X2_Y15_N2
\inst|f_div_inst|count~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~34_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|Add1~0_combout\)) # (!\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|count~33_combout\))))) # (!\SW~combout\(11) & 
-- (((\inst|f_div_inst|count~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add1~0_combout\,
	datab => \inst|f_div_inst|count~33_combout\,
	datac => \SW~combout\(11),
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~34_combout\);

-- Location: LCFF_X2_Y15_N3
\inst|f_div_inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(0));

-- Location: LCCOMB_X2_Y15_N12
\inst|f_div_inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~1_cout\ = CARRY((\inst|f_div_inst|Add0~0_combout\ & !\inst|f_div_inst|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~0_combout\,
	datab => \inst|f_div_inst|count\(0),
	datad => VCC,
	cout => \inst|f_div_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X2_Y15_N14
\inst|f_div_inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~3_cout\ = CARRY((\inst|f_div_inst|Add0~2_combout\ & (\inst|f_div_inst|count\(1) & !\inst|f_div_inst|LessThan0~1_cout\)) # (!\inst|f_div_inst|Add0~2_combout\ & ((\inst|f_div_inst|count\(1)) # 
-- (!\inst|f_div_inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~2_combout\,
	datab => \inst|f_div_inst|count\(1),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~1_cout\,
	cout => \inst|f_div_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X2_Y15_N16
\inst|f_div_inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~5_cout\ = CARRY((\inst|f_div_inst|Add0~4_combout\ & ((!\inst|f_div_inst|LessThan0~3_cout\) # (!\inst|f_div_inst|count\(2)))) # (!\inst|f_div_inst|Add0~4_combout\ & (!\inst|f_div_inst|count\(2) & 
-- !\inst|f_div_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~4_combout\,
	datab => \inst|f_div_inst|count\(2),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~3_cout\,
	cout => \inst|f_div_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X2_Y15_N18
\inst|f_div_inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~7_cout\ = CARRY((\inst|f_div_inst|count\(3) & ((!\inst|f_div_inst|LessThan0~5_cout\) # (!\inst|f_div_inst|Add0~6_combout\))) # (!\inst|f_div_inst|count\(3) & (!\inst|f_div_inst|Add0~6_combout\ & 
-- !\inst|f_div_inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(3),
	datab => \inst|f_div_inst|Add0~6_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~5_cout\,
	cout => \inst|f_div_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X2_Y15_N20
\inst|f_div_inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~9_cout\ = CARRY((\inst|f_div_inst|Add0~8_combout\ & ((!\inst|f_div_inst|LessThan0~7_cout\) # (!\inst|f_div_inst|count\(4)))) # (!\inst|f_div_inst|Add0~8_combout\ & (!\inst|f_div_inst|count\(4) & 
-- !\inst|f_div_inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~8_combout\,
	datab => \inst|f_div_inst|count\(4),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~7_cout\,
	cout => \inst|f_div_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X2_Y15_N22
\inst|f_div_inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~11_cout\ = CARRY((\inst|f_div_inst|Add0~10_combout\ & (\inst|f_div_inst|count\(5) & !\inst|f_div_inst|LessThan0~9_cout\)) # (!\inst|f_div_inst|Add0~10_combout\ & ((\inst|f_div_inst|count\(5)) # 
-- (!\inst|f_div_inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~10_combout\,
	datab => \inst|f_div_inst|count\(5),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~9_cout\,
	cout => \inst|f_div_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X2_Y15_N24
\inst|f_div_inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~13_cout\ = CARRY((\inst|f_div_inst|count\(6) & (\inst|f_div_inst|Add0~12_combout\ & !\inst|f_div_inst|LessThan0~11_cout\)) # (!\inst|f_div_inst|count\(6) & ((\inst|f_div_inst|Add0~12_combout\) # 
-- (!\inst|f_div_inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(6),
	datab => \inst|f_div_inst|Add0~12_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~11_cout\,
	cout => \inst|f_div_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X2_Y15_N26
\inst|f_div_inst|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~15_cout\ = CARRY((\inst|f_div_inst|Add0~14_combout\ & (\inst|f_div_inst|count\(7) & !\inst|f_div_inst|LessThan0~13_cout\)) # (!\inst|f_div_inst|Add0~14_combout\ & ((\inst|f_div_inst|count\(7)) # 
-- (!\inst|f_div_inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~14_combout\,
	datab => \inst|f_div_inst|count\(7),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~13_cout\,
	cout => \inst|f_div_inst|LessThan0~15_cout\);

-- Location: LCCOMB_X2_Y15_N28
\inst|f_div_inst|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~17_cout\ = CARRY((\inst|f_div_inst|count\(8) & (\inst|f_div_inst|Add0~16_combout\ & !\inst|f_div_inst|LessThan0~15_cout\)) # (!\inst|f_div_inst|count\(8) & ((\inst|f_div_inst|Add0~16_combout\) # 
-- (!\inst|f_div_inst|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(8),
	datab => \inst|f_div_inst|Add0~16_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~15_cout\,
	cout => \inst|f_div_inst|LessThan0~17_cout\);

-- Location: LCCOMB_X2_Y15_N30
\inst|f_div_inst|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~19_cout\ = CARRY((\inst|f_div_inst|count\(9) & ((!\inst|f_div_inst|LessThan0~17_cout\) # (!\inst|f_div_inst|Add0~18_combout\))) # (!\inst|f_div_inst|count\(9) & (!\inst|f_div_inst|Add0~18_combout\ & 
-- !\inst|f_div_inst|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(9),
	datab => \inst|f_div_inst|Add0~18_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~17_cout\,
	cout => \inst|f_div_inst|LessThan0~19_cout\);

-- Location: LCCOMB_X2_Y14_N0
\inst|f_div_inst|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~21_cout\ = CARRY((\inst|f_div_inst|Add0~20_combout\ & ((!\inst|f_div_inst|LessThan0~19_cout\) # (!\inst|f_div_inst|count\(10)))) # (!\inst|f_div_inst|Add0~20_combout\ & (!\inst|f_div_inst|count\(10) & 
-- !\inst|f_div_inst|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~20_combout\,
	datab => \inst|f_div_inst|count\(10),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~19_cout\,
	cout => \inst|f_div_inst|LessThan0~21_cout\);

-- Location: LCCOMB_X2_Y14_N2
\inst|f_div_inst|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~23_cout\ = CARRY((\inst|f_div_inst|count\(11) & ((!\inst|f_div_inst|LessThan0~21_cout\) # (!\inst|f_div_inst|Add0~22_combout\))) # (!\inst|f_div_inst|count\(11) & (!\inst|f_div_inst|Add0~22_combout\ & 
-- !\inst|f_div_inst|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(11),
	datab => \inst|f_div_inst|Add0~22_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~21_cout\,
	cout => \inst|f_div_inst|LessThan0~23_cout\);

-- Location: LCCOMB_X2_Y14_N4
\inst|f_div_inst|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~25_cout\ = CARRY((\inst|f_div_inst|Add0~24_combout\ & ((!\inst|f_div_inst|LessThan0~23_cout\) # (!\inst|f_div_inst|count\(12)))) # (!\inst|f_div_inst|Add0~24_combout\ & (!\inst|f_div_inst|count\(12) & 
-- !\inst|f_div_inst|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~24_combout\,
	datab => \inst|f_div_inst|count\(12),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~23_cout\,
	cout => \inst|f_div_inst|LessThan0~25_cout\);

-- Location: LCCOMB_X2_Y14_N6
\inst|f_div_inst|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~27_cout\ = CARRY((\inst|f_div_inst|Add0~26_combout\ & (\inst|f_div_inst|count\(13) & !\inst|f_div_inst|LessThan0~25_cout\)) # (!\inst|f_div_inst|Add0~26_combout\ & ((\inst|f_div_inst|count\(13)) # 
-- (!\inst|f_div_inst|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~26_combout\,
	datab => \inst|f_div_inst|count\(13),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~25_cout\,
	cout => \inst|f_div_inst|LessThan0~27_cout\);

-- Location: LCCOMB_X2_Y14_N8
\inst|f_div_inst|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~29_cout\ = CARRY((\inst|f_div_inst|Add0~28_combout\ & ((!\inst|f_div_inst|LessThan0~27_cout\) # (!\inst|f_div_inst|count\(14)))) # (!\inst|f_div_inst|Add0~28_combout\ & (!\inst|f_div_inst|count\(14) & 
-- !\inst|f_div_inst|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~28_combout\,
	datab => \inst|f_div_inst|count\(14),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~27_cout\,
	cout => \inst|f_div_inst|LessThan0~29_cout\);

-- Location: LCCOMB_X2_Y14_N10
\inst|f_div_inst|LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~31_cout\ = CARRY((\inst|f_div_inst|count\(15) & ((!\inst|f_div_inst|LessThan0~29_cout\) # (!\inst|f_div_inst|Add0~30_combout\))) # (!\inst|f_div_inst|count\(15) & (!\inst|f_div_inst|Add0~30_combout\ & 
-- !\inst|f_div_inst|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(15),
	datab => \inst|f_div_inst|Add0~30_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~29_cout\,
	cout => \inst|f_div_inst|LessThan0~31_cout\);

-- Location: LCCOMB_X2_Y14_N12
\inst|f_div_inst|LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~33_cout\ = CARRY((\inst|f_div_inst|count\(16) & (\inst|f_div_inst|Add0~32_combout\ & !\inst|f_div_inst|LessThan0~31_cout\)) # (!\inst|f_div_inst|count\(16) & ((\inst|f_div_inst|Add0~32_combout\) # 
-- (!\inst|f_div_inst|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(16),
	datab => \inst|f_div_inst|Add0~32_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~31_cout\,
	cout => \inst|f_div_inst|LessThan0~33_cout\);

-- Location: LCCOMB_X2_Y14_N14
\inst|f_div_inst|LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~35_cout\ = CARRY((\inst|f_div_inst|count\(17) & ((!\inst|f_div_inst|LessThan0~33_cout\) # (!\inst|f_div_inst|Add0~34_combout\))) # (!\inst|f_div_inst|count\(17) & (!\inst|f_div_inst|Add0~34_combout\ & 
-- !\inst|f_div_inst|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count\(17),
	datab => \inst|f_div_inst|Add0~34_combout\,
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~33_cout\,
	cout => \inst|f_div_inst|LessThan0~35_cout\);

-- Location: LCCOMB_X2_Y14_N16
\inst|f_div_inst|LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~37_cout\ = CARRY((\inst|f_div_inst|Add0~36_combout\ & ((!\inst|f_div_inst|LessThan0~35_cout\) # (!\inst|f_div_inst|count\(18)))) # (!\inst|f_div_inst|Add0~36_combout\ & (!\inst|f_div_inst|count\(18) & 
-- !\inst|f_div_inst|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|Add0~36_combout\,
	datab => \inst|f_div_inst|count\(18),
	datad => VCC,
	cin => \inst|f_div_inst|LessThan0~35_cout\,
	cout => \inst|f_div_inst|LessThan0~37_cout\);

-- Location: LCCOMB_X2_Y14_N18
\inst|f_div_inst|LessThan0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|LessThan0~38_combout\ = (\inst|f_div_inst|Add0~38_combout\ & ((\inst|f_div_inst|LessThan0~37_cout\) # (!\inst|f_div_inst|count\(19)))) # (!\inst|f_div_inst|Add0~38_combout\ & (\inst|f_div_inst|LessThan0~37_cout\ & 
-- !\inst|f_div_inst|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|Add0~38_combout\,
	datad => \inst|f_div_inst|count\(19),
	cin => \inst|f_div_inst|LessThan0~37_cout\,
	combout => \inst|f_div_inst|LessThan0~38_combout\);

-- Location: LCCOMB_X1_Y14_N10
\inst|f_div_inst|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~30_combout\ = (\inst|f_div_inst|count\(15) & (!\inst|f_div_inst|Add1~29\)) # (!\inst|f_div_inst|count\(15) & ((\inst|f_div_inst|Add1~29\) # (GND)))
-- \inst|f_div_inst|Add1~31\ = CARRY((!\inst|f_div_inst|Add1~29\) # (!\inst|f_div_inst|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(15),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~29\,
	combout => \inst|f_div_inst|Add1~30_combout\,
	cout => \inst|f_div_inst|Add1~31\);

-- Location: LCCOMB_X2_Y14_N24
\inst|f_div_inst|count~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~15_combout\ = (\inst|f_div_inst|LessThan0~38_combout\ & ((\SW~combout\(11) & ((\inst|f_div_inst|Add1~30_combout\))) # (!\SW~combout\(11) & (\inst|f_div_inst|count~35_combout\)))) # (!\inst|f_div_inst|LessThan0~38_combout\ & 
-- (\inst|f_div_inst|count~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count~35_combout\,
	datab => \inst|f_div_inst|LessThan0~38_combout\,
	datac => \SW~combout\(11),
	datad => \inst|f_div_inst|Add1~30_combout\,
	combout => \inst|f_div_inst|count~15_combout\);

-- Location: LCFF_X2_Y14_N25
\inst|f_div_inst|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(15));

-- Location: LCCOMB_X1_Y14_N14
\inst|f_div_inst|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~34_combout\ = (\inst|f_div_inst|count\(17) & (!\inst|f_div_inst|Add1~33\)) # (!\inst|f_div_inst|count\(17) & ((\inst|f_div_inst|Add1~33\) # (GND)))
-- \inst|f_div_inst|Add1~35\ = CARRY((!\inst|f_div_inst|Add1~33\) # (!\inst|f_div_inst|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|f_div_inst|count\(17),
	datad => VCC,
	cin => \inst|f_div_inst|Add1~33\,
	combout => \inst|f_div_inst|Add1~34_combout\,
	cout => \inst|f_div_inst|Add1~35\);

-- Location: LCCOMB_X1_Y14_N30
\inst|f_div_inst|count~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~13_combout\ = (\SW~combout\(11) & ((\inst|f_div_inst|LessThan0~38_combout\ & ((\inst|f_div_inst|Add1~34_combout\))) # (!\inst|f_div_inst|LessThan0~38_combout\ & (\inst|f_div_inst|count~11_combout\)))) # (!\SW~combout\(11) & 
-- (\inst|f_div_inst|count~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_div_inst|count~11_combout\,
	datab => \SW~combout\(11),
	datac => \inst|f_div_inst|Add1~34_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~13_combout\);

-- Location: LCFF_X1_Y14_N31
\inst|f_div_inst|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(17));

-- Location: LCCOMB_X1_Y14_N18
\inst|f_div_inst|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|Add1~38_combout\ = \inst|f_div_inst|Add1~37\ $ (\inst|f_div_inst|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|f_div_inst|count\(19),
	cin => \inst|f_div_inst|Add1~37\,
	combout => \inst|f_div_inst|Add1~38_combout\);

-- Location: LCCOMB_X1_Y14_N22
\inst|f_div_inst|count~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|f_div_inst|count~10_combout\ = (\SW~combout\(11) & (\inst|f_div_inst|Add1~38_combout\ & \inst|f_div_inst|LessThan0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(11),
	datac => \inst|f_div_inst|Add1~38_combout\,
	datad => \inst|f_div_inst|LessThan0~38_combout\,
	combout => \inst|f_div_inst|count~10_combout\);

-- Location: LCFF_X1_Y14_N23
\inst|f_div_inst|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|f_div_inst|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|f_div_inst|count\(19));

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

-- Location: LCCOMB_X42_Y21_N14
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \SW~combout\(4) $ (VCC)
-- \inst|Add0~1\ = CARRY(\SW~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X42_Y21_N18
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\SW~combout\(6) & (\inst|Add0~3\ $ (GND))) # (!\SW~combout\(6) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\SW~combout\(6) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(6),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X42_Y21_N20
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\SW~combout\(7) & (!\inst|Add0~5\)) # (!\SW~combout\(7) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\SW~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X42_Y21_N24
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\SW~combout\(9) & (!\inst|Add0~9\)) # (!\SW~combout\(9) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\SW~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X42_Y21_N28
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = \inst|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X54_Y21_N6
\inst|cont[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[0]~12_combout\ = (\inst|cont\(0) & (\inst|Add0~0_combout\ $ (VCC))) # (!\inst|cont\(0) & (\inst|Add0~0_combout\ & VCC))
-- \inst|cont[0]~13\ = CARRY((\inst|cont\(0) & \inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(0),
	datab => \inst|Add0~0_combout\,
	datad => VCC,
	combout => \inst|cont[0]~12_combout\,
	cout => \inst|cont[0]~13\);

-- Location: LCCOMB_X54_Y21_N8
\inst|cont[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[1]~14_combout\ = (\inst|Add0~2_combout\ & ((\inst|cont\(1) & (\inst|cont[0]~13\ & VCC)) # (!\inst|cont\(1) & (!\inst|cont[0]~13\)))) # (!\inst|Add0~2_combout\ & ((\inst|cont\(1) & (!\inst|cont[0]~13\)) # (!\inst|cont\(1) & ((\inst|cont[0]~13\) 
-- # (GND)))))
-- \inst|cont[1]~15\ = CARRY((\inst|Add0~2_combout\ & (!\inst|cont\(1) & !\inst|cont[0]~13\)) # (!\inst|Add0~2_combout\ & ((!\inst|cont[0]~13\) # (!\inst|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|cont\(1),
	datad => VCC,
	cin => \inst|cont[0]~13\,
	combout => \inst|cont[1]~14_combout\,
	cout => \inst|cont[1]~15\);

-- Location: CLKCTRL_G3
\SW[11]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[11]~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y21_N20
\inst|cont[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[7]~26_combout\ = (\inst|cont\(7) & ((\inst|Add0~14_combout\ & (\inst|cont[6]~25\ & VCC)) # (!\inst|Add0~14_combout\ & (!\inst|cont[6]~25\)))) # (!\inst|cont\(7) & ((\inst|Add0~14_combout\ & (!\inst|cont[6]~25\)) # (!\inst|Add0~14_combout\ & 
-- ((\inst|cont[6]~25\) # (GND)))))
-- \inst|cont[7]~27\ = CARRY((\inst|cont\(7) & (!\inst|Add0~14_combout\ & !\inst|cont[6]~25\)) # (!\inst|cont\(7) & ((!\inst|cont[6]~25\) # (!\inst|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(7),
	datab => \inst|Add0~14_combout\,
	datad => VCC,
	cin => \inst|cont[6]~25\,
	combout => \inst|cont[7]~26_combout\,
	cout => \inst|cont[7]~27\);

-- Location: LCFF_X54_Y21_N21
\inst|cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[7]~26_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(7));

-- Location: LCCOMB_X54_Y21_N30
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (((!\inst|cont\(6)) # (!\inst|cont\(7))) # (!\inst|cont\(4))) # (!\inst|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(5),
	datab => \inst|cont\(4),
	datac => \inst|cont\(7),
	datad => \inst|cont\(6),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X54_Y21_N26
\inst|cont[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[10]~32_combout\ = (\inst|cont\(10) & (\inst|cont[9]~31\ $ (GND))) # (!\inst|cont\(10) & (!\inst|cont[9]~31\ & VCC))
-- \inst|cont[10]~33\ = CARRY((\inst|cont\(10) & !\inst|cont[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cont\(10),
	datad => VCC,
	cin => \inst|cont[9]~31\,
	combout => \inst|cont[10]~32_combout\,
	cout => \inst|cont[10]~33\);

-- Location: LCCOMB_X54_Y21_N28
\inst|cont[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[11]~34_combout\ = \inst|cont[10]~33\ $ (\inst|cont\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cont\(11),
	cin => \inst|cont[10]~33\,
	combout => \inst|cont[11]~34_combout\);

-- Location: LCFF_X54_Y21_N29
\inst|cont[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[11]~34_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(11));

-- Location: LCCOMB_X54_Y21_N4
\inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (((!\inst|cont\(11)) # (!\inst|cont\(10))) # (!\inst|cont\(8))) # (!\inst|cont\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(9),
	datab => \inst|cont\(8),
	datac => \inst|cont\(10),
	datad => \inst|cont\(11),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCFF_X54_Y21_N7
\inst|cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[0]~12_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(0));

-- Location: LCCOMB_X54_Y21_N12
\inst|cont[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[3]~18_combout\ = (\inst|cont\(3) & ((\inst|Add0~6_combout\ & (\inst|cont[2]~17\ & VCC)) # (!\inst|Add0~6_combout\ & (!\inst|cont[2]~17\)))) # (!\inst|cont\(3) & ((\inst|Add0~6_combout\ & (!\inst|cont[2]~17\)) # (!\inst|Add0~6_combout\ & 
-- ((\inst|cont[2]~17\) # (GND)))))
-- \inst|cont[3]~19\ = CARRY((\inst|cont\(3) & (!\inst|Add0~6_combout\ & !\inst|cont[2]~17\)) # (!\inst|cont\(3) & ((!\inst|cont[2]~17\) # (!\inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(3),
	datab => \inst|Add0~6_combout\,
	datad => VCC,
	cin => \inst|cont[2]~17\,
	combout => \inst|cont[3]~18_combout\,
	cout => \inst|cont[3]~19\);

-- Location: LCFF_X54_Y21_N13
\inst|cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[3]~18_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(3));

-- Location: LCCOMB_X54_Y21_N0
\inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (((!\inst|cont\(3)) # (!\inst|cont\(0))) # (!\inst|cont\(1))) # (!\inst|cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(2),
	datab => \inst|cont\(1),
	datac => \inst|cont\(0),
	datad => \inst|cont\(3),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X54_Y21_N2
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|LessThan0~1_combout\ & (!\inst|LessThan0~0_combout\ & !\inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~1_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCFF_X54_Y21_N9
\inst|cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[1]~14_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(1));

-- Location: LCCOMB_X54_Y21_N10
\inst|cont[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[2]~16_combout\ = ((\inst|cont\(2) $ (\inst|Add0~4_combout\ $ (!\inst|cont[1]~15\)))) # (GND)
-- \inst|cont[2]~17\ = CARRY((\inst|cont\(2) & ((\inst|Add0~4_combout\) # (!\inst|cont[1]~15\))) # (!\inst|cont\(2) & (\inst|Add0~4_combout\ & !\inst|cont[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(2),
	datab => \inst|Add0~4_combout\,
	datad => VCC,
	cin => \inst|cont[1]~15\,
	combout => \inst|cont[2]~16_combout\,
	cout => \inst|cont[2]~17\);

-- Location: LCCOMB_X54_Y21_N14
\inst|cont[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[4]~20_combout\ = ((\inst|Add0~8_combout\ $ (\inst|cont\(4) $ (!\inst|cont[3]~19\)))) # (GND)
-- \inst|cont[4]~21\ = CARRY((\inst|Add0~8_combout\ & ((\inst|cont\(4)) # (!\inst|cont[3]~19\))) # (!\inst|Add0~8_combout\ & (\inst|cont\(4) & !\inst|cont[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|cont\(4),
	datad => VCC,
	cin => \inst|cont[3]~19\,
	combout => \inst|cont[4]~20_combout\,
	cout => \inst|cont[4]~21\);

-- Location: LCFF_X54_Y21_N15
\inst|cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[4]~20_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(4));

-- Location: LCCOMB_X54_Y21_N16
\inst|cont[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[5]~22_combout\ = (\inst|cont\(5) & ((\inst|Add0~10_combout\ & (\inst|cont[4]~21\ & VCC)) # (!\inst|Add0~10_combout\ & (!\inst|cont[4]~21\)))) # (!\inst|cont\(5) & ((\inst|Add0~10_combout\ & (!\inst|cont[4]~21\)) # (!\inst|Add0~10_combout\ & 
-- ((\inst|cont[4]~21\) # (GND)))))
-- \inst|cont[5]~23\ = CARRY((\inst|cont\(5) & (!\inst|Add0~10_combout\ & !\inst|cont[4]~21\)) # (!\inst|cont\(5) & ((!\inst|cont[4]~21\) # (!\inst|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(5),
	datab => \inst|Add0~10_combout\,
	datad => VCC,
	cin => \inst|cont[4]~21\,
	combout => \inst|cont[5]~22_combout\,
	cout => \inst|cont[5]~23\);

-- Location: LCCOMB_X54_Y21_N18
\inst|cont[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[6]~24_combout\ = ((\inst|Add0~12_combout\ $ (\inst|cont\(6) $ (!\inst|cont[5]~23\)))) # (GND)
-- \inst|cont[6]~25\ = CARRY((\inst|Add0~12_combout\ & ((\inst|cont\(6)) # (!\inst|cont[5]~23\))) # (!\inst|Add0~12_combout\ & (\inst|cont\(6) & !\inst|cont[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datab => \inst|cont\(6),
	datad => VCC,
	cin => \inst|cont[5]~23\,
	combout => \inst|cont[6]~24_combout\,
	cout => \inst|cont[6]~25\);

-- Location: LCFF_X54_Y21_N19
\inst|cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[6]~24_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(6));

-- Location: LCCOMB_X54_Y21_N22
\inst|cont[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[8]~28_combout\ = (\inst|cont\(8) & (\inst|cont[7]~27\ $ (GND))) # (!\inst|cont\(8) & (!\inst|cont[7]~27\ & VCC))
-- \inst|cont[8]~29\ = CARRY((\inst|cont\(8) & !\inst|cont[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cont\(8),
	datad => VCC,
	cin => \inst|cont[7]~27\,
	combout => \inst|cont[8]~28_combout\,
	cout => \inst|cont[8]~29\);

-- Location: LCFF_X54_Y21_N23
\inst|cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[8]~28_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(8));

-- Location: LCCOMB_X54_Y21_N24
\inst|cont[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cont[9]~30_combout\ = (\inst|cont\(9) & (!\inst|cont[8]~29\)) # (!\inst|cont\(9) & ((\inst|cont[8]~29\) # (GND)))
-- \inst|cont[9]~31\ = CARRY((!\inst|cont[8]~29\) # (!\inst|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(9),
	datad => VCC,
	cin => \inst|cont[8]~29\,
	combout => \inst|cont[9]~30_combout\,
	cout => \inst|cont[9]~31\);

-- Location: LCFF_X54_Y21_N27
\inst|cont[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[10]~32_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(10));

-- Location: LCCOMB_X53_Y21_N26
\inst|addr[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[0]~9_combout\ = \inst|cont\(0) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst|cont\(10),
	datad => \inst|cont\(0),
	combout => \inst|addr[0]~9_combout\);

-- Location: LCCOMB_X53_Y21_N0
\inst|addr[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[1]~8_combout\ = \inst|cont\(1) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst|cont\(1),
	datad => \inst|cont\(10),
	combout => \inst|addr[1]~8_combout\);

-- Location: LCFF_X54_Y21_N11
\inst|cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[2]~16_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(2));

-- Location: LCCOMB_X53_Y21_N10
\inst|addr[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[2]~7_combout\ = \inst|cont\(2) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst|cont\(2),
	datad => \inst|cont\(10),
	combout => \inst|addr[2]~7_combout\);

-- Location: LCCOMB_X53_Y21_N24
\inst|addr[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[3]~6_combout\ = \inst|cont\(3) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst|cont\(3),
	datad => \inst|cont\(10),
	combout => \inst|addr[3]~6_combout\);

-- Location: LCCOMB_X53_Y21_N30
\inst|addr[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[4]~5_combout\ = \inst|cont\(4) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \inst|cont\(4),
	datac => \inst|cont\(10),
	combout => \inst|addr[4]~5_combout\);

-- Location: LCFF_X54_Y21_N17
\inst|cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[5]~22_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(5));

-- Location: LCCOMB_X53_Y21_N8
\inst|addr[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[5]~4_combout\ = \inst|cont\(5) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst|cont\(5),
	datad => \inst|cont\(10),
	combout => \inst|addr[5]~4_combout\);

-- Location: LCCOMB_X53_Y21_N6
\inst|addr[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[6]~3_combout\ = \inst|cont\(6) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst|cont\(10),
	datad => \inst|cont\(6),
	combout => \inst|addr[6]~3_combout\);

-- Location: LCCOMB_X53_Y21_N20
\inst|addr[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[7]~2_combout\ = \inst|cont\(7) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst|cont\(10),
	datad => \inst|cont\(7),
	combout => \inst|addr[7]~2_combout\);

-- Location: LCCOMB_X53_Y21_N22
\inst|addr[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[8]~1_combout\ = \inst|cont\(8) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst|cont\(10),
	datad => \inst|cont\(8),
	combout => \inst|addr[8]~1_combout\);

-- Location: LCFF_X54_Y21_N25
\inst|cont[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	datain => \inst|cont[9]~30_combout\,
	aclr => \ALT_INV_SW[11]~clkctrl_outclk\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont\(9));

-- Location: LCCOMB_X53_Y21_N4
\inst|addr[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|addr[9]~0_combout\ = \inst|cont\(9) $ (((\SW~combout\(3) & \inst|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \inst|cont\(10),
	datad => \inst|cont\(9),
	combout => \inst|addr[9]~0_combout\);

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

-- Location: LCCOMB_X51_Y21_N28
\inst|q_tmp[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[11]~0_combout\ = (\SW~combout\(0) & (\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a11\)) # (!\SW~combout\(0) & (((\inst|addr[9]~0_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a11\,
	datac => \inst|addr[9]~0_combout\,
	datad => \SW~combout\(1),
	combout => \inst|q_tmp[11]~0_combout\);

-- Location: LCCOMB_X51_Y21_N14
\inst|q_tmp[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[10]~1_combout\ = (\SW~combout\(0) & (\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a10\)) # (!\SW~combout\(0) & (((\inst|addr[8]~1_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a10\,
	datac => \inst|addr[8]~1_combout\,
	datad => \SW~combout\(1),
	combout => \inst|q_tmp[10]~1_combout\);

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

-- Location: LCCOMB_X51_Y21_N30
\inst|q_tmp[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[8]~3_combout\ = (\SW~combout\(0) & (\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8~portadataout\)) # (!\SW~combout\(0) & (((\inst|addr[6]~3_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a8~portadataout\,
	datab => \inst|addr[6]~3_combout\,
	datac => \SW~combout\(0),
	datad => \SW~combout\(1),
	combout => \inst|q_tmp[8]~3_combout\);

-- Location: M4K_X52_Y20
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBAAAAAAAAAAAA9999999999988888888888777777777766666666665555555554444444433333333222222221111111100000000FFFFFFFEEEEEEEDDDDDDDCCCCCCBBBBBBBAAAAAA999999888888777777666666555555444444333332222221111100000FFFFFFEEEEEDDDDDCCCCCBBBBBAAAAA9999888887777766666555544444333322222111100000FFFFEEEEDDDDDCCCCBBBBAAAA9999888877776666555544443333222211110000FFFFEEEEDDDCCCCBBBBAAAA999888877776665555",
	mem_init0 => X"444333322221110000FFFEEEEDDDCCCCBBBAAA9999888777766655544443332221110000FFFEEEDDDCCCCBBBAAA9998887777666555444333222111000FFFEEEDDDDCCCBBBAAA99988877766655544433322211000FFFEEEDDDCCCBBBAAA99988877766555444333222111000FFEEEDDDCCCBBBAA9998887776665544433322211000FFFEEEDDCCCBBBAA999888777665554443322211100FFFEEEDDCCCBBBAA999888776665554433322211000FFFEEDDDCCBBBAAA99888776665554433322111000FFEEEDDCCCBBBAA99988777665554443322211000FFEEEDDDCCBBBAA99988777665554443322211000FFEEEDDCCCBBBAA99988777665554433322111000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/funct_gen.ram0_sin_lut_da7c88ef.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ddfs:inst|sin_lut:lut_inst|altsyncram:rom_rtl_0|altsyncram_3871:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X51_Y21_N0
\inst|q_tmp[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[7]~4_combout\ = (\SW~combout\(0) & (((\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a7\)))) # (!\SW~combout\(0) & ((\inst|addr[5]~4_combout\) # ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr[5]~4_combout\,
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a7\,
	datac => \SW~combout\(0),
	datad => \SW~combout\(1),
	combout => \inst|q_tmp[7]~4_combout\);

-- Location: LCCOMB_X51_Y21_N10
\inst|q_tmp[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[6]~5_combout\ = (\SW~combout\(0) & (\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a6\)) # (!\SW~combout\(0) & (((\inst|addr[4]~5_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a6\,
	datac => \inst|addr[4]~5_combout\,
	datad => \SW~combout\(1),
	combout => \inst|q_tmp[6]~5_combout\);

-- Location: LCCOMB_X51_Y21_N8
\inst|q_tmp[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[5]~6_combout\ = (\SW~combout\(0) & (((\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a5\)))) # (!\SW~combout\(0) & ((\inst|addr[3]~6_combout\) # ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr[3]~6_combout\,
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a5\,
	datac => \SW~combout\(0),
	datad => \SW~combout\(1),
	combout => \inst|q_tmp[5]~6_combout\);

-- Location: M4K_X52_Y22
\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFFFFEDB6DB6D6DB6DB249236DB492249000FFFDB5B6491B6912401FEDAD91B691207FB5B23691207FAD91B4481F6B236891FEB23488FF5B1A447DAC6911F6B1A207D63440FAC688FAC688FAC688FAC688FAC688D63447D1A23D8D11AC687D6223D8D0FA347EAD1FAB47EAD1FA343D8C8D5A3F4646AD0F623F46468C8D",
	mem_init0 => X"5A1AB435686AC8D19FA23EC43D6468CFB10D19F621A33EB43443567D646886886ACFACFACFACFACFACFACFACFACFACFACE88688687D67D6344343EB3A2199F58D17ACF88667C4333E2199F10ACE8BD6333E2158D0F8856333E2F50ACE87C5EA158CCE87C5EA150AC66733A1F0F8BC5EAF50A8542A158AC562B150A8542A157ABD5E2F0F874399CC662A157ABC3E1CC662A15787C398AC55E1F0E62A157873198ABC398CC55E1CC55EAF0E62AF0E62AF0E62AF0E62AF0E62AF0E62AF0E62AF0E62AF0E629CC55E1CC55E1ABC398ABC35787315782AF0E629CC55E1CBC398AB315786AF0E629CC55E0ABC39787314E62AEC55E1ABC39887315662AF055E1CBC398",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/funct_gen.ram0_sin_lut_da7c88ef.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ddfs:inst|sin_lut:lut_inst|altsyncram:rom_rtl_0|altsyncram_3871:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 3,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 3,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X51_Y21_N22
\inst|q_tmp[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[2]~9_combout\ = (\SW~combout\(0) & (\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a2\)) # (!\SW~combout\(0) & (((\inst|addr[0]~9_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a2\,
	datac => \inst|addr[0]~9_combout\,
	datad => \SW~combout\(1),
	combout => \inst|q_tmp[2]~9_combout\);

-- Location: LCCOMB_X51_Y21_N12
\inst|q_tmp[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[1]~10_combout\ = (\SW~combout\(0) & (\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\)) # (!\SW~combout\(0) & ((!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datad => \SW~combout\(1),
	combout => \inst|q_tmp[1]~10_combout\);

-- Location: LCCOMB_X50_Y21_N6
\inst|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~1_cout\ = CARRY(\inst|q_tmp[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[1]~10_combout\,
	datad => VCC,
	cout => \inst|Add2~1_cout\);

-- Location: LCCOMB_X50_Y21_N8
\inst|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~3_cout\ = CARRY((!\inst|q_tmp[2]~9_combout\ & !\inst|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[2]~9_combout\,
	datad => VCC,
	cin => \inst|Add2~1_cout\,
	cout => \inst|Add2~3_cout\);

-- Location: LCCOMB_X50_Y21_N10
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|q_tmp[3]~8_combout\ & ((GND) # (!\inst|Add2~3_cout\))) # (!\inst|q_tmp[3]~8_combout\ & (\inst|Add2~3_cout\ $ (GND)))
-- \inst|Add2~5\ = CARRY((\inst|q_tmp[3]~8_combout\) # (!\inst|Add2~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_tmp[3]~8_combout\,
	datad => VCC,
	cin => \inst|Add2~3_cout\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X50_Y21_N12
\inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|q_tmp[4]~7_combout\ & (\inst|Add2~5\ & VCC)) # (!\inst|q_tmp[4]~7_combout\ & (!\inst|Add2~5\))
-- \inst|Add2~7\ = CARRY((!\inst|q_tmp[4]~7_combout\ & !\inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_tmp[4]~7_combout\,
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X50_Y21_N14
\inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|q_tmp[5]~6_combout\ & ((GND) # (!\inst|Add2~7\))) # (!\inst|q_tmp[5]~6_combout\ & (\inst|Add2~7\ $ (GND)))
-- \inst|Add2~9\ = CARRY((\inst|q_tmp[5]~6_combout\) # (!\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[5]~6_combout\,
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X50_Y21_N16
\inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|q_tmp[6]~5_combout\ & (\inst|Add2~9\ & VCC)) # (!\inst|q_tmp[6]~5_combout\ & (!\inst|Add2~9\))
-- \inst|Add2~11\ = CARRY((!\inst|q_tmp[6]~5_combout\ & !\inst|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[6]~5_combout\,
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X50_Y21_N18
\inst|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|q_tmp[7]~4_combout\ & ((GND) # (!\inst|Add2~11\))) # (!\inst|q_tmp[7]~4_combout\ & (\inst|Add2~11\ $ (GND)))
-- \inst|Add2~13\ = CARRY((\inst|q_tmp[7]~4_combout\) # (!\inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[7]~4_combout\,
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X50_Y21_N20
\inst|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|q_tmp[8]~3_combout\ & (\inst|Add2~13\ & VCC)) # (!\inst|q_tmp[8]~3_combout\ & (!\inst|Add2~13\))
-- \inst|Add2~15\ = CARRY((!\inst|q_tmp[8]~3_combout\ & !\inst|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[8]~3_combout\,
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: LCCOMB_X50_Y21_N22
\inst|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|q_tmp[9]~2_combout\ & ((GND) # (!\inst|Add2~15\))) # (!\inst|q_tmp[9]~2_combout\ & (\inst|Add2~15\ $ (GND)))
-- \inst|Add2~17\ = CARRY((\inst|q_tmp[9]~2_combout\) # (!\inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_tmp[9]~2_combout\,
	datad => VCC,
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\,
	cout => \inst|Add2~17\);

-- Location: LCCOMB_X50_Y21_N24
\inst|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = (\inst|q_tmp[10]~1_combout\ & (\inst|Add2~17\ & VCC)) # (!\inst|q_tmp[10]~1_combout\ & (!\inst|Add2~17\))
-- \inst|Add2~19\ = CARRY((!\inst|q_tmp[10]~1_combout\ & !\inst|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[10]~1_combout\,
	datad => VCC,
	cin => \inst|Add2~17\,
	combout => \inst|Add2~18_combout\,
	cout => \inst|Add2~19\);

-- Location: LCCOMB_X50_Y21_N26
\inst|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~20_combout\ = (\inst|q_tmp[11]~0_combout\ & ((GND) # (!\inst|Add2~19\))) # (!\inst|q_tmp[11]~0_combout\ & (\inst|Add2~19\ $ (GND)))
-- \inst|Add2~21\ = CARRY((\inst|q_tmp[11]~0_combout\) # (!\inst|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[11]~0_combout\,
	datad => VCC,
	cin => \inst|Add2~19\,
	combout => \inst|Add2~20_combout\,
	cout => \inst|Add2~21\);

-- Location: LCCOMB_X50_Y21_N28
\inst|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~22_combout\ = \inst|Add2~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~21\,
	combout => \inst|Add2~22_combout\);

-- Location: LCFF_X53_Y21_N13
\inst|cont_rt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst|cont\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont_rt\(10));

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

-- Location: LCCOMB_X53_Y21_N14
\inst|q_VGA[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[9]~3_combout\ = (\SW~combout\(2) & ((\SW~combout\(0) & (\inst|cont_rt\(10))) # (!\SW~combout\(0) & ((\inst|cont\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|cont_rt\(10),
	datac => \inst|cont\(10),
	datad => \SW~combout\(2),
	combout => \inst|q_VGA[9]~3_combout\);

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

-- Location: LCFF_X53_Y21_N19
\inst|cont_rt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|f_div_inst|count[19]~clkctrl_outclk\,
	sdata => \inst|cont\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cont_rt\(11));

-- Location: LCCOMB_X53_Y21_N18
\inst|q_VGA[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[9]~2_combout\ = (\inst|always4~0_combout\ & ((\SW~combout\(0) & ((\inst|cont_rt\(11)))) # (!\SW~combout\(0) & (\inst|cont\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|always4~0_combout\,
	datab => \inst|cont\(11),
	datac => \inst|cont_rt\(11),
	datad => \SW~combout\(0),
	combout => \inst|q_VGA[9]~2_combout\);

-- Location: LCCOMB_X53_Y21_N28
\inst|q_VGA[9]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[9]~4_combout\ = (\inst|Add2~22_combout\ & (!\inst|q_VGA[9]~2_combout\ & ((\SW~combout\(3)) # (!\inst|q_VGA[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~22_combout\,
	datab => \inst|q_VGA[9]~3_combout\,
	datac => \SW~combout\(3),
	datad => \inst|q_VGA[9]~2_combout\,
	combout => \inst|q_VGA[9]~4_combout\);

-- Location: LCCOMB_X53_Y21_N12
\inst|q_VGA[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[8]~5_combout\ = (\SW~combout\(0) & ((\inst|cont_rt\(10)))) # (!\SW~combout\(0) & (\inst|cont\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(10),
	datac => \inst|cont_rt\(10),
	datad => \SW~combout\(0),
	combout => \inst|q_VGA[8]~5_combout\);

-- Location: LCCOMB_X53_Y21_N2
\inst|q_VGA[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[8]~15_combout\ = (\SW~combout\(2) & ((\inst|q_VGA[9]~2_combout\) # ((!\SW~combout\(3) & \inst|q_VGA[8]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \inst|q_VGA[9]~2_combout\,
	datac => \SW~combout\(3),
	datad => \inst|q_VGA[8]~5_combout\,
	combout => \inst|q_VGA[8]~15_combout\);

-- Location: LCCOMB_X51_Y21_N2
\inst|q_VGA[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[8]~6_combout\ = (\inst|q_VGA[8]~15_combout\ & ((!\inst|q_tmp[11]~0_combout\))) # (!\inst|q_VGA[8]~15_combout\ & (\inst|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~20_combout\,
	datac => \inst|q_VGA[8]~15_combout\,
	datad => \inst|q_tmp[11]~0_combout\,
	combout => \inst|q_VGA[8]~6_combout\);

-- Location: LCCOMB_X51_Y21_N24
\inst|q_VGA[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[7]~7_combout\ = (\inst|q_VGA[8]~15_combout\ & (!\inst|q_tmp[10]~1_combout\)) # (!\inst|q_VGA[8]~15_combout\ & ((\inst|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[10]~1_combout\,
	datac => \inst|q_VGA[8]~15_combout\,
	datad => \inst|Add2~18_combout\,
	combout => \inst|q_VGA[7]~7_combout\);

-- Location: LCCOMB_X51_Y21_N4
\inst|q_tmp[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[9]~2_combout\ = (\SW~combout\(0) & (((\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a9\)))) # (!\SW~combout\(0) & (((\inst|addr[7]~2_combout\)) # (!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a9\,
	datac => \SW~combout\(0),
	datad => \inst|addr[7]~2_combout\,
	combout => \inst|q_tmp[9]~2_combout\);

-- Location: LCCOMB_X51_Y21_N26
\inst|q_VGA[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[6]~8_combout\ = (\inst|q_VGA[8]~15_combout\ & (!\inst|q_tmp[9]~2_combout\)) # (!\inst|q_VGA[8]~15_combout\ & ((\inst|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[9]~2_combout\,
	datac => \inst|q_VGA[8]~15_combout\,
	datad => \inst|Add2~16_combout\,
	combout => \inst|q_VGA[6]~8_combout\);

-- Location: LCCOMB_X51_Y21_N20
\inst|q_VGA[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[5]~9_combout\ = (\inst|q_VGA[8]~15_combout\ & ((!\inst|q_tmp[8]~3_combout\))) # (!\inst|q_VGA[8]~15_combout\ & (\inst|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~14_combout\,
	datab => \inst|q_tmp[8]~3_combout\,
	datac => \inst|q_VGA[8]~15_combout\,
	combout => \inst|q_VGA[5]~9_combout\);

-- Location: LCCOMB_X51_Y21_N18
\inst|q_VGA[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[4]~10_combout\ = (\inst|q_VGA[8]~15_combout\ & ((!\inst|q_tmp[7]~4_combout\))) # (!\inst|q_VGA[8]~15_combout\ & (\inst|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~12_combout\,
	datac => \inst|q_VGA[8]~15_combout\,
	datad => \inst|q_tmp[7]~4_combout\,
	combout => \inst|q_VGA[4]~10_combout\);

-- Location: LCCOMB_X50_Y21_N4
\inst|q_VGA[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[3]~11_combout\ = (\inst|q_VGA[8]~15_combout\ & ((!\inst|q_tmp[6]~5_combout\))) # (!\inst|q_VGA[8]~15_combout\ & (\inst|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~10_combout\,
	datab => \inst|q_tmp[6]~5_combout\,
	datac => \inst|q_VGA[8]~15_combout\,
	combout => \inst|q_VGA[3]~11_combout\);

-- Location: LCCOMB_X50_Y21_N30
\inst|q_VGA[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[2]~12_combout\ = (\inst|q_VGA[8]~15_combout\ & (!\inst|q_tmp[5]~6_combout\)) # (!\inst|q_VGA[8]~15_combout\ & ((\inst|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_tmp[5]~6_combout\,
	datac => \inst|q_VGA[8]~15_combout\,
	datad => \inst|Add2~8_combout\,
	combout => \inst|q_VGA[2]~12_combout\);

-- Location: LCCOMB_X51_Y21_N6
\inst|q_tmp[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[4]~7_combout\ = (\SW~combout\(0) & (\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4~portadataout\)) # (!\SW~combout\(0) & (((\inst|addr[2]~7_combout\) # (!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datac => \inst|addr[2]~7_combout\,
	datad => \SW~combout\(1),
	combout => \inst|q_tmp[4]~7_combout\);

-- Location: LCCOMB_X50_Y21_N0
\inst|q_VGA[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[1]~13_combout\ = (\inst|q_VGA[8]~15_combout\ & ((!\inst|q_tmp[4]~7_combout\))) # (!\inst|q_VGA[8]~15_combout\ & (\inst|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~6_combout\,
	datac => \inst|q_VGA[8]~15_combout\,
	datad => \inst|q_tmp[4]~7_combout\,
	combout => \inst|q_VGA[1]~13_combout\);

-- Location: LCCOMB_X51_Y21_N16
\inst|q_tmp[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_tmp[3]~8_combout\ = (\SW~combout\(0) & (((\inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a3\)))) # (!\SW~combout\(0) & (((\inst|addr[1]~8_combout\)) # (!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \inst|lut_inst|rom_rtl_0|auto_generated|ram_block1a3\,
	datac => \SW~combout\(0),
	datad => \inst|addr[1]~8_combout\,
	combout => \inst|q_tmp[3]~8_combout\);

-- Location: LCCOMB_X50_Y21_N2
\inst|q_VGA[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|q_VGA[0]~14_combout\ = (\inst|q_VGA[8]~15_combout\ & ((!\inst|q_tmp[3]~8_combout\))) # (!\inst|q_VGA[8]~15_combout\ & (\inst|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~4_combout\,
	datab => \inst|q_VGA[8]~15_combout\,
	datac => \inst|q_tmp[3]~8_combout\,
	combout => \inst|q_VGA[0]~14_combout\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK~I\ : cycloneii_io
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
	padio => ww_VGA_BLANK);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_SYNC~I\ : cycloneii_io
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
	padio => ww_VGA_SYNC);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLK~I\ : cycloneii_io
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
	datain => \inst|f_div_inst|count\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLK);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[9]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(9));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[8]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(8));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[7]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(7));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[6]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(6));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[5]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(5));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[4]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(4));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
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
	datain => \inst|q_VGA[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));
END structure;


