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

-- DATE "12/12/2025 14:54:44"

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

ENTITY 	LCD_module IS
    PORT (
	LCD_RW : OUT std_logic;
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(16 DOWNTO 0);
	LCD_EN : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_BLON : OUT std_logic;
	LCD_DATA : OUT std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(16 DOWNTO 1)
	);
END LCD_module;

-- Design Ports Information
-- LCD_RW	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_EN	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_RS	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_ON	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_BLON	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_DATA[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_DATA[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_DATA[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_DATA[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_DATA[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_DATA[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_DATA[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LCD_DATA[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF LCD_module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(16 DOWNTO 1);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|state_f.SETUP~regout\ : std_logic;
SIGNAL \inst|Add4~1_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|btn_counter[3]~38_combout\ : std_logic;
SIGNAL \inst|btn_counter[8]~48_combout\ : std_logic;
SIGNAL \inst|btn_counter[10]~52_combout\ : std_logic;
SIGNAL \inst|btn_counter[12]~56_combout\ : std_logic;
SIGNAL \inst|btn_counter[19]~70_combout\ : std_logic;
SIGNAL \inst|btn_counter[24]~82_combout\ : std_logic;
SIGNAL \inst|btn_counter[28]~90_combout\ : std_logic;
SIGNAL \inst|counter_f[3]~47_combout\ : std_logic;
SIGNAL \inst|counter_f[12]~65_combout\ : std_logic;
SIGNAL \inst|counter_f[21]~86_combout\ : std_logic;
SIGNAL \inst|counter_f[22]~88_combout\ : std_logic;
SIGNAL \inst|counter_f[24]~92_combout\ : std_logic;
SIGNAL \inst|counter_f[28]~100_combout\ : std_logic;
SIGNAL \inst|counter[3]~40_combout\ : std_logic;
SIGNAL \inst|LessThan9~2_combout\ : std_logic;
SIGNAL \inst|LessThan9~6_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Selector65~1_combout\ : std_logic;
SIGNAL \inst|Selector65~3_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Selector65~4_combout\ : std_logic;
SIGNAL \inst|always2~3_combout\ : std_logic;
SIGNAL \inst|Selector64~6_combout\ : std_logic;
SIGNAL \inst|page_index[4]~8_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~35_combout\ : std_logic;
SIGNAL \inst|LessThan13~0_combout\ : std_logic;
SIGNAL \inst|LessThan12~0_combout\ : std_logic;
SIGNAL \inst|counter[28]~33_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|LessThan6~1_combout\ : std_logic;
SIGNAL \inst|state~35_combout\ : std_logic;
SIGNAL \inst|state~36_combout\ : std_logic;
SIGNAL \inst|sub_state~17_combout\ : std_logic;
SIGNAL \inst|sub_state~19_combout\ : std_logic;
SIGNAL \inst|Selector99~0_combout\ : std_logic;
SIGNAL \inst|Selector99~1_combout\ : std_logic;
SIGNAL \inst|Selector99~2_combout\ : std_logic;
SIGNAL \inst|counter[28]~92_combout\ : std_logic;
SIGNAL \inst|Selector46~10_combout\ : std_logic;
SIGNAL \inst|Selector46~11_combout\ : std_logic;
SIGNAL \inst|btn_counter[0]~32_combout\ : std_logic;
SIGNAL \inst|Selector53~0_combout\ : std_logic;
SIGNAL \inst|state.WAIT_BUTTON_RELEASE~regout\ : std_logic;
SIGNAL \inst|btn_counter[17]~72_combout\ : std_logic;
SIGNAL \inst|btn_counter[31]~73_combout\ : std_logic;
SIGNAL \inst|btn_counter[0]~33\ : std_logic;
SIGNAL \inst|btn_counter[1]~34_combout\ : std_logic;
SIGNAL \inst|btn_counter[1]~35\ : std_logic;
SIGNAL \inst|btn_counter[2]~36_combout\ : std_logic;
SIGNAL \inst|btn_counter[2]~37\ : std_logic;
SIGNAL \inst|btn_counter[3]~39\ : std_logic;
SIGNAL \inst|btn_counter[4]~40_combout\ : std_logic;
SIGNAL \inst|btn_counter[4]~41\ : std_logic;
SIGNAL \inst|btn_counter[5]~43\ : std_logic;
SIGNAL \inst|btn_counter[6]~45\ : std_logic;
SIGNAL \inst|btn_counter[7]~46_combout\ : std_logic;
SIGNAL \inst|btn_counter[7]~47\ : std_logic;
SIGNAL \inst|btn_counter[8]~49\ : std_logic;
SIGNAL \inst|btn_counter[9]~50_combout\ : std_logic;
SIGNAL \inst|btn_counter[9]~51\ : std_logic;
SIGNAL \inst|btn_counter[10]~53\ : std_logic;
SIGNAL \inst|btn_counter[11]~54_combout\ : std_logic;
SIGNAL \inst|btn_counter[11]~55\ : std_logic;
SIGNAL \inst|btn_counter[12]~57\ : std_logic;
SIGNAL \inst|btn_counter[13]~58_combout\ : std_logic;
SIGNAL \inst|btn_counter[13]~59\ : std_logic;
SIGNAL \inst|btn_counter[14]~60_combout\ : std_logic;
SIGNAL \inst|btn_counter[14]~61\ : std_logic;
SIGNAL \inst|btn_counter[15]~62_combout\ : std_logic;
SIGNAL \inst|btn_counter[15]~63\ : std_logic;
SIGNAL \inst|btn_counter[16]~64_combout\ : std_logic;
SIGNAL \inst|btn_counter[16]~65\ : std_logic;
SIGNAL \inst|btn_counter[17]~66_combout\ : std_logic;
SIGNAL \inst|btn_counter[17]~67\ : std_logic;
SIGNAL \inst|btn_counter[18]~68_combout\ : std_logic;
SIGNAL \inst|btn_counter[6]~44_combout\ : std_logic;
SIGNAL \inst|btn_counter[5]~42_combout\ : std_logic;
SIGNAL \inst|LessThan9~5_combout\ : std_logic;
SIGNAL \inst|LessThan9~4_combout\ : std_logic;
SIGNAL \inst|LessThan9~7_combout\ : std_logic;
SIGNAL \inst|btn_counter[18]~69\ : std_logic;
SIGNAL \inst|btn_counter[19]~71\ : std_logic;
SIGNAL \inst|btn_counter[20]~74_combout\ : std_logic;
SIGNAL \inst|btn_counter[20]~75\ : std_logic;
SIGNAL \inst|btn_counter[21]~77\ : std_logic;
SIGNAL \inst|btn_counter[22]~79\ : std_logic;
SIGNAL \inst|btn_counter[23]~80_combout\ : std_logic;
SIGNAL \inst|btn_counter[23]~81\ : std_logic;
SIGNAL \inst|btn_counter[24]~83\ : std_logic;
SIGNAL \inst|btn_counter[25]~84_combout\ : std_logic;
SIGNAL \inst|btn_counter[25]~85\ : std_logic;
SIGNAL \inst|btn_counter[26]~87\ : std_logic;
SIGNAL \inst|btn_counter[27]~88_combout\ : std_logic;
SIGNAL \inst|btn_counter[27]~89\ : std_logic;
SIGNAL \inst|btn_counter[28]~91\ : std_logic;
SIGNAL \inst|btn_counter[29]~92_combout\ : std_logic;
SIGNAL \inst|btn_counter[29]~93\ : std_logic;
SIGNAL \inst|btn_counter[30]~94_combout\ : std_logic;
SIGNAL \inst|btn_counter[30]~95\ : std_logic;
SIGNAL \inst|btn_counter[31]~96_combout\ : std_logic;
SIGNAL \inst|btn_counter[26]~86_combout\ : std_logic;
SIGNAL \inst|LessThan9~1_combout\ : std_logic;
SIGNAL \inst|btn_counter[21]~76_combout\ : std_logic;
SIGNAL \inst|btn_counter[22]~78_combout\ : std_logic;
SIGNAL \inst|LessThan9~0_combout\ : std_logic;
SIGNAL \inst|LessThan9~3_combout\ : std_logic;
SIGNAL \inst|LessThan9~8_combout\ : std_logic;
SIGNAL \inst|Selector52~3_combout\ : std_logic;
SIGNAL \inst|counter_f[0]~41_combout\ : std_logic;
SIGNAL \inst|n_index~2_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|always2~2_combout\ : std_logic;
SIGNAL \inst|always2~1_combout\ : std_logic;
SIGNAL \inst|page_index[4]~4_combout\ : std_logic;
SIGNAL \inst|Add4~2\ : std_logic;
SIGNAL \inst|Add4~4\ : std_logic;
SIGNAL \inst|Add4~6\ : std_logic;
SIGNAL \inst|Add4~7_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|page_index~13_combout\ : std_logic;
SIGNAL \inst|state~28_combout\ : std_logic;
SIGNAL \inst|Selector143~0_combout\ : std_logic;
SIGNAL \inst|state_f~24_combout\ : std_logic;
SIGNAL \inst|state_f.WRITE_DATA~regout\ : std_logic;
SIGNAL \inst|lcd_data_freq[6]~3_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[6]~4_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \inst|char_index[0]~6_combout\ : std_logic;
SIGNAL \inst|char_index[5]~8_combout\ : std_logic;
SIGNAL \inst|char_index[5]~9_combout\ : std_logic;
SIGNAL \inst|char_index[0]~7\ : std_logic;
SIGNAL \inst|char_index[1]~10_combout\ : std_logic;
SIGNAL \inst|char_index[1]~11\ : std_logic;
SIGNAL \inst|char_index[2]~12_combout\ : std_logic;
SIGNAL \inst|char_index[2]~13\ : std_logic;
SIGNAL \inst|char_index[3]~14_combout\ : std_logic;
SIGNAL \inst|char_index[3]~15\ : std_logic;
SIGNAL \inst|char_index[4]~16_combout\ : std_logic;
SIGNAL \inst|char_index[4]~17\ : std_logic;
SIGNAL \inst|char_index[5]~18_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \inst|lcd_data[5]~2_combout\ : std_logic;
SIGNAL \inst|Selector141~0_combout\ : std_logic;
SIGNAL \inst|Selector141~1_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \inst|lcd_data[7]~0_combout\ : std_logic;
SIGNAL \inst|always0~0_combout\ : std_logic;
SIGNAL \inst|Selector151~1_combout\ : std_logic;
SIGNAL \inst|Selector150~0_combout\ : std_logic;
SIGNAL \inst|Selector144~0_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst|lcd_data[4]~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|page_index~0_combout\ : std_logic;
SIGNAL \inst|Selector51~0_combout\ : std_logic;
SIGNAL \inst|state.DONE~regout\ : std_logic;
SIGNAL \inst|state~29_combout\ : std_logic;
SIGNAL \inst|state.POWER_ON~0_combout\ : std_logic;
SIGNAL \inst|state.POWER_ON~regout\ : std_logic;
SIGNAL \inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_combout\ : std_logic;
SIGNAL \inst|state~32_combout\ : std_logic;
SIGNAL \inst|counter[0]~34_combout\ : std_logic;
SIGNAL \inst|counter[26]~87\ : std_logic;
SIGNAL \inst|counter[27]~88_combout\ : std_logic;
SIGNAL \inst|counter[28]~94_combout\ : std_logic;
SIGNAL \inst|counter[27]~89\ : std_logic;
SIGNAL \inst|counter[28]~96\ : std_logic;
SIGNAL \inst|counter[29]~97_combout\ : std_logic;
SIGNAL \inst|counter[29]~98\ : std_logic;
SIGNAL \inst|counter[30]~99_combout\ : std_logic;
SIGNAL \inst|counter[28]~95_combout\ : std_logic;
SIGNAL \inst|counter[28]~32_combout\ : std_logic;
SIGNAL \inst|counter[24]~82_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|counter[8]~50_combout\ : std_logic;
SIGNAL \inst|counter[6]~46_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|counter[12]~58_combout\ : std_logic;
SIGNAL \inst|counter[10]~54_combout\ : std_logic;
SIGNAL \inst|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst|Selector46~9_combout\ : std_logic;
SIGNAL \inst|Selector46~7_combout\ : std_logic;
SIGNAL \inst|Selector46~8_combout\ : std_logic;
SIGNAL \inst|state.SETUP~regout\ : std_logic;
SIGNAL \inst|counter[19]~72_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|state~42_combout\ : std_logic;
SIGNAL \inst|state~38_combout\ : std_logic;
SIGNAL \inst|state.WRITE_DATA~regout\ : std_logic;
SIGNAL \inst|counter[5]~44_combout\ : std_logic;
SIGNAL \inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst|LessThan4~1_combout\ : std_logic;
SIGNAL \inst|LessThan4~2_combout\ : std_logic;
SIGNAL \inst|counter[22]~78_combout\ : std_logic;
SIGNAL \inst|counter[21]~76_combout\ : std_logic;
SIGNAL \inst|LessThan6~5_combout\ : std_logic;
SIGNAL \inst|LessThan6~6_combout\ : std_logic;
SIGNAL \inst|LessThan6~2_combout\ : std_logic;
SIGNAL \inst|LessThan6~3_combout\ : std_logic;
SIGNAL \inst|LessThan6~4_combout\ : std_logic;
SIGNAL \inst|counter[28]~90_combout\ : std_logic;
SIGNAL \inst|counter[28]~91_combout\ : std_logic;
SIGNAL \inst|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|LessThan3~5_combout\ : std_logic;
SIGNAL \inst|LessThan3~6_combout\ : std_logic;
SIGNAL \inst|counter[28]~93_combout\ : std_logic;
SIGNAL \inst|counter[28]~103_combout\ : std_logic;
SIGNAL \inst|counter[28]~104_combout\ : std_logic;
SIGNAL \inst|counter[0]~35\ : std_logic;
SIGNAL \inst|counter[1]~36_combout\ : std_logic;
SIGNAL \inst|counter[1]~37\ : std_logic;
SIGNAL \inst|counter[2]~38_combout\ : std_logic;
SIGNAL \inst|counter[2]~39\ : std_logic;
SIGNAL \inst|counter[3]~41\ : std_logic;
SIGNAL \inst|counter[4]~42_combout\ : std_logic;
SIGNAL \inst|counter[4]~43\ : std_logic;
SIGNAL \inst|counter[5]~45\ : std_logic;
SIGNAL \inst|counter[6]~47\ : std_logic;
SIGNAL \inst|counter[7]~48_combout\ : std_logic;
SIGNAL \inst|counter[7]~49\ : std_logic;
SIGNAL \inst|counter[8]~51\ : std_logic;
SIGNAL \inst|counter[9]~52_combout\ : std_logic;
SIGNAL \inst|counter[9]~53\ : std_logic;
SIGNAL \inst|counter[10]~55\ : std_logic;
SIGNAL \inst|counter[11]~56_combout\ : std_logic;
SIGNAL \inst|counter[11]~57\ : std_logic;
SIGNAL \inst|counter[12]~59\ : std_logic;
SIGNAL \inst|counter[13]~60_combout\ : std_logic;
SIGNAL \inst|counter[13]~61\ : std_logic;
SIGNAL \inst|counter[14]~62_combout\ : std_logic;
SIGNAL \inst|counter[14]~63\ : std_logic;
SIGNAL \inst|counter[15]~64_combout\ : std_logic;
SIGNAL \inst|counter[15]~65\ : std_logic;
SIGNAL \inst|counter[16]~66_combout\ : std_logic;
SIGNAL \inst|counter[16]~67\ : std_logic;
SIGNAL \inst|counter[17]~68_combout\ : std_logic;
SIGNAL \inst|counter[17]~69\ : std_logic;
SIGNAL \inst|counter[18]~70_combout\ : std_logic;
SIGNAL \inst|counter[18]~71\ : std_logic;
SIGNAL \inst|counter[19]~73\ : std_logic;
SIGNAL \inst|counter[20]~74_combout\ : std_logic;
SIGNAL \inst|counter[20]~75\ : std_logic;
SIGNAL \inst|counter[21]~77\ : std_logic;
SIGNAL \inst|counter[22]~79\ : std_logic;
SIGNAL \inst|counter[23]~80_combout\ : std_logic;
SIGNAL \inst|counter[23]~81\ : std_logic;
SIGNAL \inst|counter[24]~83\ : std_logic;
SIGNAL \inst|counter[25]~84_combout\ : std_logic;
SIGNAL \inst|counter[25]~85\ : std_logic;
SIGNAL \inst|counter[26]~86_combout\ : std_logic;
SIGNAL \inst|LessThan6~7_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE0~0_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE0~regout\ : std_logic;
SIGNAL \inst|Selector54~0_combout\ : std_logic;
SIGNAL \inst|Selector54~1_combout\ : std_logic;
SIGNAL \inst|state.WAIT~regout\ : std_logic;
SIGNAL \inst|state~33_combout\ : std_logic;
SIGNAL \inst|state~34_combout\ : std_logic;
SIGNAL \inst|state~30_combout\ : std_logic;
SIGNAL \inst|state~40_combout\ : std_logic;
SIGNAL \inst|state.WAIT_EXEC~regout\ : std_logic;
SIGNAL \inst|counter[30]~100\ : std_logic;
SIGNAL \inst|counter[31]~101_combout\ : std_logic;
SIGNAL \inst|state~41_combout\ : std_logic;
SIGNAL \inst|state~31_combout\ : std_logic;
SIGNAL \inst|state~37_combout\ : std_logic;
SIGNAL \inst|state~39_combout\ : std_logic;
SIGNAL \inst|state.PAGE_SELECT~regout\ : std_logic;
SIGNAL \inst|sub_state~22_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE_ERROR~regout\ : std_logic;
SIGNAL \inst|page_index~5_combout\ : std_logic;
SIGNAL \inst|page_index~14_combout\ : std_logic;
SIGNAL \inst|page_index[4]~3_combout\ : std_logic;
SIGNAL \inst|Selector65~7_combout\ : std_logic;
SIGNAL \inst|Selector65~12_combout\ : std_logic;
SIGNAL \inst|page_index[4]~9_combout\ : std_logic;
SIGNAL \inst|page_index[4]~10_combout\ : std_logic;
SIGNAL \inst|sub_state~18_combout\ : std_logic;
SIGNAL \inst|sub_state~23_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE1~regout\ : std_logic;
SIGNAL \inst|page_index[4]~11_combout\ : std_logic;
SIGNAL \inst|page_index[4]~12_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Selector65~8_combout\ : std_logic;
SIGNAL \inst|Selector65~5_combout\ : std_logic;
SIGNAL \inst|Selector65~6_combout\ : std_logic;
SIGNAL \inst|Selector65~9_combout\ : std_logic;
SIGNAL \inst|Selector65~10_combout\ : std_logic;
SIGNAL \inst|Selector65~0_combout\ : std_logic;
SIGNAL \inst|Selector65~2_combout\ : std_logic;
SIGNAL \inst|Selector65~11_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add4~8\ : std_logic;
SIGNAL \inst|Add4~9_combout\ : std_logic;
SIGNAL \inst|page_index~15_combout\ : std_logic;
SIGNAL \inst|page_index~16_combout\ : std_logic;
SIGNAL \inst|page_index[4]~1_combout\ : std_logic;
SIGNAL \inst|page_index~2_combout\ : std_logic;
SIGNAL \inst|Add4~5_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|page_index~6_combout\ : std_logic;
SIGNAL \inst|page_index~7_combout\ : std_logic;
SIGNAL \inst|always2~0_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Add4~3_combout\ : std_logic;
SIGNAL \inst|Selector64~5_combout\ : std_logic;
SIGNAL \inst|Selector64~8_combout\ : std_logic;
SIGNAL \inst|Selector64~2_combout\ : std_logic;
SIGNAL \inst|Selector64~3_combout\ : std_logic;
SIGNAL \inst|Selector64~4_combout\ : std_logic;
SIGNAL \inst|Selector64~7_combout\ : std_logic;
SIGNAL \inst|always3~0_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[6]~6_combout\ : std_logic;
SIGNAL \inst|n_index[0]~1_combout\ : std_logic;
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|n_index~3_combout\ : std_logic;
SIGNAL \inst|state_f~26_combout\ : std_logic;
SIGNAL \inst|state_f.HZ_DISPLAY~regout\ : std_logic;
SIGNAL \inst|Selector151~0_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[6]~2_combout\ : std_logic;
SIGNAL \inst|state_f~25_combout\ : std_logic;
SIGNAL \inst|state_f.CHECK_AND_WAIT~regout\ : std_logic;
SIGNAL \inst|counter_f[25]~77_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~39_combout\ : std_logic;
SIGNAL \inst|counter_f[5]~51_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~108_combout\ : std_logic;
SIGNAL \inst|counter_f[6]~53_combout\ : std_logic;
SIGNAL \inst|LessThan12~1_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~40_combout\ : std_logic;
SIGNAL \inst|counter_f[8]~57_combout\ : std_logic;
SIGNAL \inst|LessThan13~1_combout\ : std_logic;
SIGNAL \inst|counter_f[10]~61_combout\ : std_logic;
SIGNAL \inst|LessThan13~2_combout\ : std_logic;
SIGNAL \inst|LessThan13~3_combout\ : std_logic;
SIGNAL \inst|LessThan14~2_combout\ : std_logic;
SIGNAL \inst|LessThan14~0_combout\ : std_logic;
SIGNAL \inst|LessThan14~1_combout\ : std_logic;
SIGNAL \inst|LessThan14~3_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~78_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~79_combout\ : std_logic;
SIGNAL \inst|counter_f[0]~42\ : std_logic;
SIGNAL \inst|counter_f[1]~43_combout\ : std_logic;
SIGNAL \inst|counter_f[1]~44\ : std_logic;
SIGNAL \inst|counter_f[2]~45_combout\ : std_logic;
SIGNAL \inst|counter_f[2]~46\ : std_logic;
SIGNAL \inst|counter_f[3]~48\ : std_logic;
SIGNAL \inst|counter_f[4]~49_combout\ : std_logic;
SIGNAL \inst|counter_f[4]~50\ : std_logic;
SIGNAL \inst|counter_f[5]~52\ : std_logic;
SIGNAL \inst|counter_f[6]~54\ : std_logic;
SIGNAL \inst|counter_f[7]~55_combout\ : std_logic;
SIGNAL \inst|counter_f[7]~56\ : std_logic;
SIGNAL \inst|counter_f[8]~58\ : std_logic;
SIGNAL \inst|counter_f[9]~59_combout\ : std_logic;
SIGNAL \inst|counter_f[9]~60\ : std_logic;
SIGNAL \inst|counter_f[10]~62\ : std_logic;
SIGNAL \inst|counter_f[11]~63_combout\ : std_logic;
SIGNAL \inst|counter_f[11]~64\ : std_logic;
SIGNAL \inst|counter_f[12]~66\ : std_logic;
SIGNAL \inst|counter_f[13]~67_combout\ : std_logic;
SIGNAL \inst|counter_f[13]~68\ : std_logic;
SIGNAL \inst|counter_f[14]~69_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~70\ : std_logic;
SIGNAL \inst|counter_f[15]~71_combout\ : std_logic;
SIGNAL \inst|counter_f[15]~72\ : std_logic;
SIGNAL \inst|counter_f[16]~73_combout\ : std_logic;
SIGNAL \inst|counter_f[16]~74\ : std_logic;
SIGNAL \inst|counter_f[17]~75_combout\ : std_logic;
SIGNAL \inst|counter_f[17]~76\ : std_logic;
SIGNAL \inst|counter_f[18]~80_combout\ : std_logic;
SIGNAL \inst|counter_f[18]~81\ : std_logic;
SIGNAL \inst|counter_f[19]~82_combout\ : std_logic;
SIGNAL \inst|counter_f[19]~83\ : std_logic;
SIGNAL \inst|counter_f[20]~84_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~34_combout\ : std_logic;
SIGNAL \inst|counter_f[20]~85\ : std_logic;
SIGNAL \inst|counter_f[21]~87\ : std_logic;
SIGNAL \inst|counter_f[22]~89\ : std_logic;
SIGNAL \inst|counter_f[23]~90_combout\ : std_logic;
SIGNAL \inst|counter_f[23]~91\ : std_logic;
SIGNAL \inst|counter_f[24]~93\ : std_logic;
SIGNAL \inst|counter_f[25]~94_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~95\ : std_logic;
SIGNAL \inst|counter_f[26]~97\ : std_logic;
SIGNAL \inst|counter_f[27]~98_combout\ : std_logic;
SIGNAL \inst|counter_f[27]~99\ : std_logic;
SIGNAL \inst|counter_f[28]~101\ : std_logic;
SIGNAL \inst|counter_f[29]~102_combout\ : std_logic;
SIGNAL \inst|counter_f[29]~103\ : std_logic;
SIGNAL \inst|counter_f[30]~104_combout\ : std_logic;
SIGNAL \inst|counter_f[30]~105\ : std_logic;
SIGNAL \inst|counter_f[31]~106_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~37_combout\ : std_logic;
SIGNAL \inst|counter_f[26]~96_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~36_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~38_combout\ : std_logic;
SIGNAL \inst|state_f~18_combout\ : std_logic;
SIGNAL \inst|state_f~17_combout\ : std_logic;
SIGNAL \inst|state_f~22_combout\ : std_logic;
SIGNAL \inst|state_f~23_combout\ : std_logic;
SIGNAL \inst|state_f~19_combout\ : std_logic;
SIGNAL \inst|state_f~20_combout\ : std_logic;
SIGNAL \inst|state_f~28_combout\ : std_logic;
SIGNAL \inst|state_f.WAIT_EXEC~regout\ : std_logic;
SIGNAL \inst|state_f~21_combout\ : std_logic;
SIGNAL \inst|state_f~27_combout\ : std_logic;
SIGNAL \inst|state_f.DIGIT_SELECT~regout\ : std_logic;
SIGNAL \inst|n_index~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[0]~5_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Selector146~0_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst|lcd_data[2]~5_combout\ : std_logic;
SIGNAL \inst|Selector142~0_combout\ : std_logic;
SIGNAL \inst|Selector145~0_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \inst|lcd_data[3]~4_combout\ : std_logic;
SIGNAL \inst|Selector148~0_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst|lcd_data[0]~7_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Selector46~6_combout\ : std_logic;
SIGNAL \inst|sub_state~20_combout\ : std_logic;
SIGNAL \inst|sub_state~21_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE2~regout\ : std_logic;
SIGNAL \inst|Selector52~2_combout\ : std_logic;
SIGNAL \inst|state.WAIT_BUTTON_SHORT~regout\ : std_logic;
SIGNAL \inst|Selector13~0_combout\ : std_logic;
SIGNAL \inst|Selector13~1_combout\ : std_logic;
SIGNAL \inst|lcd_en_cntr~regout\ : std_logic;
SIGNAL \inst|Selector152~0_combout\ : std_logic;
SIGNAL \inst|lcd_en_freq~regout\ : std_logic;
SIGNAL \inst|lcd_en~0_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst|Selector140~0_combout\ : std_logic;
SIGNAL \inst|lcd_rs_freq~regout\ : std_logic;
SIGNAL \inst|lcd_rs~0_combout\ : std_logic;
SIGNAL \inst|state_f.DIGIT_SELECT~_wirecell_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst|lcd_data[6]~1_combout\ : std_logic;
SIGNAL \inst|Selector147~0_combout\ : std_logic;
SIGNAL \inst|Selector147~1_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \inst|lcd_data[1]~6_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~1_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~1_combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~1_combout\ : std_logic;
SIGNAL \inst|test_led~_Duplicate_1_regout\ : std_logic;
SIGNAL \inst|Selector98~1_combout\ : std_logic;
SIGNAL \inst|Selector98~0_combout\ : std_logic;
SIGNAL \inst|Selector98~2_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|page_index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|lcd_data_freq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|sub_state_f\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|btn_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|char_index\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|counter_f\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|n_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_SW~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_state_f.HZ_DISPLAY~regout\ : std_logic;

BEGIN

LCD_RW <= ww_LCD_RW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
LCD_DATA <= ww_LCD_DATA;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst|page_index\(4) & \inst|page_index\(3) & \inst|page_index\(2) & \inst|page_index\(1) & \inst|page_index\(0) & \inst|char_index\(5) & \inst|char_index\(4) & 
\inst|char_index\(3) & \inst|char_index\(2) & \inst|char_index\(1) & \inst|char_index\(0));

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a8\ <= \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst|page_index\(4) & \inst|page_index\(3) & \inst|page_index\(2) & \inst|page_index\(1) & \inst|page_index\(0) & \inst|char_index\(5) & \inst|char_index\(4) & 
\inst|char_index\(3) & \inst|char_index\(2) & \inst|char_index\(1) & \inst|char_index\(0));

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a6\ <= \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst|page_index\(4) & \inst|page_index\(3) & \inst|page_index\(2) & \inst|page_index\(1) & \inst|page_index\(0) & \inst|char_index\(5) & \inst|char_index\(4) & 
\inst|char_index\(3) & \inst|char_index\(2) & \inst|char_index\(1) & \inst|char_index\(0));

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a4\ <= \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|page_index\(4) & \inst|page_index\(3) & \inst|page_index\(2) & \inst|page_index\(1) & \inst|page_index\(0) & \inst|char_index\(5) & \inst|char_index\(4) & 
\inst|char_index\(3) & \inst|char_index\(2) & \inst|char_index\(1) & \inst|char_index\(0));

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a2\ <= \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|page_index\(4) & \inst|page_index\(3) & \inst|page_index\(2) & \inst|page_index\(1) & \inst|page_index\(0) & \inst|char_index\(5) & \inst|char_index\(4) & 
\inst|char_index\(3) & \inst|char_index\(2) & \inst|char_index\(1) & \inst|char_index\(0));

\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_SW~combout\(0) <= NOT \SW~combout\(0);
\inst|ALT_INV_state_f.HZ_DISPLAY~regout\ <= NOT \inst|state_f.HZ_DISPLAY~regout\;

-- Location: LCFF_X34_Y15_N7
\inst|btn_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[19]~70_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(19));

-- Location: LCFF_X34_Y15_N17
\inst|btn_counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[24]~82_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(24));

-- Location: LCFF_X34_Y15_N25
\inst|btn_counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[28]~90_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(28));

-- Location: LCFF_X34_Y16_N17
\inst|btn_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[8]~48_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(8));

-- Location: LCFF_X34_Y16_N21
\inst|btn_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[10]~52_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(10));

-- Location: LCFF_X34_Y16_N25
\inst|btn_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[12]~56_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(12));

-- Location: LCFF_X28_Y12_N25
\inst|state_f.SETUP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector99~2_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.SETUP~regout\);

-- Location: LCCOMB_X28_Y14_N20
\inst|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~1_combout\ = \inst|page_index\(0) $ (VCC)
-- \inst|Add4~2\ = CARRY(\inst|page_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datad => VCC,
	combout => \inst|Add4~1_combout\,
	cout => \inst|Add4~2\);

-- Location: LCCOMB_X29_Y14_N18
\inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|page_index\(0) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|page_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X29_Y14_N20
\inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|page_index\(1) & (!\inst|Add2~1\)) # (!\inst|page_index\(1) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|page_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCFF_X29_Y12_N11
\inst|counter_f[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[21]~86_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(21));

-- Location: LCFF_X29_Y12_N13
\inst|counter_f[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[22]~88_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(22));

-- Location: LCFF_X29_Y12_N17
\inst|counter_f[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[24]~92_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(24));

-- Location: LCFF_X29_Y12_N25
\inst|counter_f[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[28]~100_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(28));

-- Location: LCFF_X29_Y13_N25
\inst|counter_f[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[12]~65_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(12));

-- Location: LCFF_X34_Y16_N7
\inst|btn_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[3]~38_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(3));

-- Location: LCCOMB_X34_Y16_N6
\inst|btn_counter[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[3]~38_combout\ = (\inst|btn_counter\(3) & (!\inst|btn_counter[2]~37\)) # (!\inst|btn_counter\(3) & ((\inst|btn_counter[2]~37\) # (GND)))
-- \inst|btn_counter[3]~39\ = CARRY((!\inst|btn_counter[2]~37\) # (!\inst|btn_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(3),
	datad => VCC,
	cin => \inst|btn_counter[2]~37\,
	combout => \inst|btn_counter[3]~38_combout\,
	cout => \inst|btn_counter[3]~39\);

-- Location: LCCOMB_X34_Y16_N16
\inst|btn_counter[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[8]~48_combout\ = (\inst|btn_counter\(8) & (\inst|btn_counter[7]~47\ $ (GND))) # (!\inst|btn_counter\(8) & (!\inst|btn_counter[7]~47\ & VCC))
-- \inst|btn_counter[8]~49\ = CARRY((\inst|btn_counter\(8) & !\inst|btn_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(8),
	datad => VCC,
	cin => \inst|btn_counter[7]~47\,
	combout => \inst|btn_counter[8]~48_combout\,
	cout => \inst|btn_counter[8]~49\);

-- Location: LCCOMB_X34_Y16_N20
\inst|btn_counter[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[10]~52_combout\ = (\inst|btn_counter\(10) & (\inst|btn_counter[9]~51\ $ (GND))) # (!\inst|btn_counter\(10) & (!\inst|btn_counter[9]~51\ & VCC))
-- \inst|btn_counter[10]~53\ = CARRY((\inst|btn_counter\(10) & !\inst|btn_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(10),
	datad => VCC,
	cin => \inst|btn_counter[9]~51\,
	combout => \inst|btn_counter[10]~52_combout\,
	cout => \inst|btn_counter[10]~53\);

-- Location: LCCOMB_X34_Y16_N24
\inst|btn_counter[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[12]~56_combout\ = (\inst|btn_counter\(12) & (\inst|btn_counter[11]~55\ $ (GND))) # (!\inst|btn_counter\(12) & (!\inst|btn_counter[11]~55\ & VCC))
-- \inst|btn_counter[12]~57\ = CARRY((\inst|btn_counter\(12) & !\inst|btn_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(12),
	datad => VCC,
	cin => \inst|btn_counter[11]~55\,
	combout => \inst|btn_counter[12]~56_combout\,
	cout => \inst|btn_counter[12]~57\);

-- Location: LCCOMB_X34_Y15_N6
\inst|btn_counter[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[19]~70_combout\ = (\inst|btn_counter\(19) & (!\inst|btn_counter[18]~69\)) # (!\inst|btn_counter\(19) & ((\inst|btn_counter[18]~69\) # (GND)))
-- \inst|btn_counter[19]~71\ = CARRY((!\inst|btn_counter[18]~69\) # (!\inst|btn_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(19),
	datad => VCC,
	cin => \inst|btn_counter[18]~69\,
	combout => \inst|btn_counter[19]~70_combout\,
	cout => \inst|btn_counter[19]~71\);

-- Location: LCCOMB_X34_Y15_N16
\inst|btn_counter[24]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[24]~82_combout\ = (\inst|btn_counter\(24) & (\inst|btn_counter[23]~81\ $ (GND))) # (!\inst|btn_counter\(24) & (!\inst|btn_counter[23]~81\ & VCC))
-- \inst|btn_counter[24]~83\ = CARRY((\inst|btn_counter\(24) & !\inst|btn_counter[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(24),
	datad => VCC,
	cin => \inst|btn_counter[23]~81\,
	combout => \inst|btn_counter[24]~82_combout\,
	cout => \inst|btn_counter[24]~83\);

-- Location: LCCOMB_X34_Y15_N24
\inst|btn_counter[28]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[28]~90_combout\ = (\inst|btn_counter\(28) & (\inst|btn_counter[27]~89\ $ (GND))) # (!\inst|btn_counter\(28) & (!\inst|btn_counter[27]~89\ & VCC))
-- \inst|btn_counter[28]~91\ = CARRY((\inst|btn_counter\(28) & !\inst|btn_counter[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(28),
	datad => VCC,
	cin => \inst|btn_counter[27]~89\,
	combout => \inst|btn_counter[28]~90_combout\,
	cout => \inst|btn_counter[28]~91\);

-- Location: LCFF_X29_Y13_N7
\inst|counter_f[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[3]~47_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(3));

-- Location: LCCOMB_X29_Y13_N6
\inst|counter_f[3]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[3]~47_combout\ = (\inst|counter_f\(3) & (!\inst|counter_f[2]~46\)) # (!\inst|counter_f\(3) & ((\inst|counter_f[2]~46\) # (GND)))
-- \inst|counter_f[3]~48\ = CARRY((!\inst|counter_f[2]~46\) # (!\inst|counter_f\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(3),
	datad => VCC,
	cin => \inst|counter_f[2]~46\,
	combout => \inst|counter_f[3]~47_combout\,
	cout => \inst|counter_f[3]~48\);

-- Location: LCCOMB_X29_Y13_N24
\inst|counter_f[12]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[12]~65_combout\ = (\inst|counter_f\(12) & (\inst|counter_f[11]~64\ $ (GND))) # (!\inst|counter_f\(12) & (!\inst|counter_f[11]~64\ & VCC))
-- \inst|counter_f[12]~66\ = CARRY((\inst|counter_f\(12) & !\inst|counter_f[11]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(12),
	datad => VCC,
	cin => \inst|counter_f[11]~64\,
	combout => \inst|counter_f[12]~65_combout\,
	cout => \inst|counter_f[12]~66\);

-- Location: LCCOMB_X29_Y12_N10
\inst|counter_f[21]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[21]~86_combout\ = (\inst|counter_f\(21) & (!\inst|counter_f[20]~85\)) # (!\inst|counter_f\(21) & ((\inst|counter_f[20]~85\) # (GND)))
-- \inst|counter_f[21]~87\ = CARRY((!\inst|counter_f[20]~85\) # (!\inst|counter_f\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(21),
	datad => VCC,
	cin => \inst|counter_f[20]~85\,
	combout => \inst|counter_f[21]~86_combout\,
	cout => \inst|counter_f[21]~87\);

-- Location: LCCOMB_X29_Y12_N12
\inst|counter_f[22]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[22]~88_combout\ = (\inst|counter_f\(22) & (\inst|counter_f[21]~87\ $ (GND))) # (!\inst|counter_f\(22) & (!\inst|counter_f[21]~87\ & VCC))
-- \inst|counter_f[22]~89\ = CARRY((\inst|counter_f\(22) & !\inst|counter_f[21]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(22),
	datad => VCC,
	cin => \inst|counter_f[21]~87\,
	combout => \inst|counter_f[22]~88_combout\,
	cout => \inst|counter_f[22]~89\);

-- Location: LCCOMB_X29_Y12_N16
\inst|counter_f[24]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[24]~92_combout\ = (\inst|counter_f\(24) & (\inst|counter_f[23]~91\ $ (GND))) # (!\inst|counter_f\(24) & (!\inst|counter_f[23]~91\ & VCC))
-- \inst|counter_f[24]~93\ = CARRY((\inst|counter_f\(24) & !\inst|counter_f[23]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(24),
	datad => VCC,
	cin => \inst|counter_f[23]~91\,
	combout => \inst|counter_f[24]~92_combout\,
	cout => \inst|counter_f[24]~93\);

-- Location: LCCOMB_X29_Y12_N24
\inst|counter_f[28]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[28]~100_combout\ = (\inst|counter_f\(28) & (\inst|counter_f[27]~99\ $ (GND))) # (!\inst|counter_f\(28) & (!\inst|counter_f[27]~99\ & VCC))
-- \inst|counter_f[28]~101\ = CARRY((\inst|counter_f\(28) & !\inst|counter_f[27]~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(28),
	datad => VCC,
	cin => \inst|counter_f[27]~99\,
	combout => \inst|counter_f[28]~100_combout\,
	cout => \inst|counter_f[28]~101\);

-- Location: LCFF_X31_Y16_N7
\inst|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[3]~40_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(3));

-- Location: LCCOMB_X31_Y16_N6
\inst|counter[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[3]~40_combout\ = (\inst|counter\(3) & (!\inst|counter[2]~39\)) # (!\inst|counter\(3) & ((\inst|counter[2]~39\) # (GND)))
-- \inst|counter[3]~41\ = CARRY((!\inst|counter[2]~39\) # (!\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datad => VCC,
	cin => \inst|counter[2]~39\,
	combout => \inst|counter[3]~40_combout\,
	cout => \inst|counter[3]~41\);

-- Location: LCCOMB_X33_Y15_N20
\inst|LessThan9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~2_combout\ = (\inst|btn_counter\(29)) # ((\inst|btn_counter\(28)) # ((\inst|btn_counter\(27)) # (\inst|btn_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(29),
	datab => \inst|btn_counter\(28),
	datac => \inst|btn_counter\(27),
	datad => \inst|btn_counter\(30),
	combout => \inst|LessThan9~2_combout\);

-- Location: LCCOMB_X33_Y16_N20
\inst|LessThan9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~6_combout\ = (!\inst|btn_counter\(12) & (!\inst|btn_counter\(10) & (!\inst|btn_counter\(11) & !\inst|btn_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(12),
	datab => \inst|btn_counter\(10),
	datac => \inst|btn_counter\(11),
	datad => \inst|btn_counter\(9),
	combout => \inst|LessThan9~6_combout\);

-- Location: LCCOMB_X31_Y12_N12
\inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|n_index\(1) & (((\inst|n_index\(0))))) # (!\inst|n_index\(1) & ((\inst|n_index\(0) & ((\SW~combout\(12)))) # (!\inst|n_index\(0) & (\SW~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \SW~combout\(12),
	datac => \inst|n_index\(1),
	datad => \inst|n_index\(0),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y12_N16
\inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|n_index\(1) & (((\inst|n_index\(0))))) # (!\inst|n_index\(1) & ((\inst|n_index\(0) & ((\SW~combout\(11)))) # (!\inst|n_index\(0) & (\SW~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \SW~combout\(11),
	datac => \inst|n_index\(1),
	datad => \inst|n_index\(0),
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y16_N22
\inst|Selector65~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~1_combout\ = (\inst|sub_state.PAGE_ERROR~regout\) # ((\inst|sub_state.PAGE1~regout\ & \inst|page_index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sub_state.PAGE_ERROR~regout\,
	datac => \inst|sub_state.PAGE1~regout\,
	datad => \inst|page_index\(0),
	combout => \inst|Selector65~1_combout\);

-- Location: LCCOMB_X28_Y14_N10
\inst|Selector65~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~3_combout\ = (!\KEY~combout\(1) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(1),
	datad => \KEY~combout\(0),
	combout => \inst|Selector65~3_combout\);

-- Location: LCCOMB_X27_Y14_N30
\inst|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = (\inst|page_index\(0)) # ((\inst|page_index\(1) & (\inst|always2~0_combout\ & !\inst|page_index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(1),
	datab => \inst|page_index\(0),
	datac => \inst|always2~0_combout\,
	datad => \inst|page_index\(4),
	combout => \inst|Add4~0_combout\);

-- Location: LCCOMB_X28_Y14_N0
\inst|Selector65~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~4_combout\ = (\inst|Selector65~3_combout\ & ((\inst|page_index~2_combout\ & (\inst|Add4~0_combout\)) # (!\inst|page_index~2_combout\ & ((\inst|Add4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~0_combout\,
	datab => \inst|page_index~2_combout\,
	datac => \inst|Add4~1_combout\,
	datad => \inst|Selector65~3_combout\,
	combout => \inst|Selector65~4_combout\);

-- Location: LCCOMB_X27_Y14_N18
\inst|always2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always2~3_combout\ = (\inst|always2~2_combout\) # ((\inst|page_index\(4)) # ((\inst|page_index\(3) & \inst|page_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(1),
	datac => \inst|always2~2_combout\,
	datad => \inst|page_index\(4),
	combout => \inst|always2~3_combout\);

-- Location: LCCOMB_X28_Y14_N6
\inst|Selector64~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~6_combout\ = (\inst|always2~3_combout\ & ((\inst|Equal1~1_combout\) # ((\inst|page_index\(1))))) # (!\inst|always2~3_combout\ & (((\inst|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datab => \inst|always2~3_combout\,
	datac => \inst|page_index\(1),
	datad => \inst|Add2~2_combout\,
	combout => \inst|Selector64~6_combout\);

-- Location: LCCOMB_X28_Y14_N30
\inst|page_index[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[4]~8_combout\ = (\KEY~combout\(0) & ((\KEY~combout\(1)) # (\inst|always3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => \KEY~combout\(1),
	datad => \inst|always3~0_combout\,
	combout => \inst|page_index[4]~8_combout\);

-- Location: LCCOMB_X28_Y12_N20
\inst|counter_f[25]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~35_combout\ = (!\inst|counter_f\(24) & (!\inst|counter_f\(22) & (!\inst|counter_f\(21) & !\inst|counter_f\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(24),
	datab => \inst|counter_f\(22),
	datac => \inst|counter_f\(21),
	datad => \inst|counter_f\(23),
	combout => \inst|counter_f[25]~35_combout\);

-- Location: LCCOMB_X28_Y13_N12
\inst|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~0_combout\ = (!\inst|counter_f\(12) & (!\inst|counter_f\(13) & !\inst|counter_f\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(12),
	datac => \inst|counter_f\(13),
	datad => \inst|counter_f\(11),
	combout => \inst|LessThan13~0_combout\);

-- Location: LCCOMB_X28_Y13_N20
\inst|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan12~0_combout\ = ((!\inst|counter_f\(9)) # (!\inst|counter_f\(8))) # (!\inst|counter_f\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(10),
	datac => \inst|counter_f\(8),
	datad => \inst|counter_f\(9),
	combout => \inst|LessThan12~0_combout\);

-- Location: LCCOMB_X28_Y15_N20
\inst|counter[28]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~33_combout\ = (\inst|counter[28]~32_combout\ & !\inst|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter[28]~32_combout\,
	datac => \inst|counter\(31),
	combout => \inst|counter[28]~33_combout\);

-- Location: LCCOMB_X30_Y15_N12
\inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|counter\(23) & (!\inst|counter\(22) & (!\inst|counter\(20) & !\inst|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(23),
	datab => \inst|counter\(22),
	datac => \inst|counter\(20),
	datad => \inst|counter\(21),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y15_N12
\inst|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_combout\ = (\inst|LessThan3~0_combout\ & (\inst|LessThan1~0_combout\ & \inst|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan3~0_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|LessThan3~1_combout\);

-- Location: LCCOMB_X32_Y15_N24
\inst|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = (((!\inst|counter\(4) & !\inst|counter\(5))) # (!\inst|counter\(8))) # (!\inst|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|counter\(8),
	datac => \inst|counter\(4),
	datad => \inst|counter\(5),
	combout => \inst|LessThan2~1_combout\);

-- Location: LCCOMB_X32_Y15_N10
\inst|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~2_combout\ = (\inst|LessThan2~1_combout\) # (((!\inst|counter\(10)) # (!\inst|counter\(6))) # (!\inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~1_combout\,
	datab => \inst|counter\(7),
	datac => \inst|counter\(6),
	datad => \inst|counter\(10),
	combout => \inst|LessThan2~2_combout\);

-- Location: LCCOMB_X30_Y16_N24
\inst|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = (\inst|counter\(31)) # (((\inst|counter\(25) & \inst|counter\(26))) # (!\inst|counter[28]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(25),
	datab => \inst|counter\(26),
	datac => \inst|counter\(31),
	datad => \inst|counter[28]~32_combout\,
	combout => \inst|LessThan6~0_combout\);

-- Location: LCCOMB_X32_Y15_N20
\inst|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~1_combout\ = (!\inst|counter\(10) & (!\inst|counter\(8) & !\inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(10),
	datac => \inst|counter\(8),
	datad => \inst|counter\(9),
	combout => \inst|LessThan6~1_combout\);

-- Location: LCCOMB_X30_Y16_N4
\inst|state~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~35_combout\ = (\KEY~combout\(0) & ((\KEY~combout\(1) & (!\inst|state.WAIT_BUTTON_RELEASE~regout\)) # (!\KEY~combout\(1) & ((!\inst|state.WAIT_BUTTON_SHORT~regout\))))) # (!\KEY~combout\(0) & (((!\inst|state.WAIT_BUTTON_SHORT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datab => \KEY~combout\(0),
	datac => \KEY~combout\(1),
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|state~35_combout\);

-- Location: LCCOMB_X29_Y16_N10
\inst|state~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~36_combout\ = (!\inst|state.PAGE_SELECT~regout\ & (\inst|state.POWER_ON~regout\ & (!\inst|state.WAIT~regout\ & \inst|state~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|state.POWER_ON~regout\,
	datac => \inst|state.WAIT~regout\,
	datad => \inst|state~35_combout\,
	combout => \inst|state~36_combout\);

-- Location: LCCOMB_X25_Y16_N12
\inst|sub_state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~17_combout\ = (\SW~combout\(0) & (((!\inst|LessThan5~1_combout\ & \inst|sub_state.PAGE_ERROR~regout\)) # (!\inst|state.PAGE_SELECT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|LessThan5~1_combout\,
	datac => \SW~combout\(0),
	datad => \inst|sub_state.PAGE_ERROR~regout\,
	combout => \inst|sub_state~17_combout\);

-- Location: LCCOMB_X25_Y16_N20
\inst|sub_state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~19_combout\ = (\inst|sub_state.PAGE0~regout\ & !\inst|sub_state.PAGE_ERROR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE0~regout\,
	datac => \inst|sub_state.PAGE_ERROR~regout\,
	combout => \inst|sub_state~19_combout\);

-- Location: LCCOMB_X27_Y12_N0
\inst|Selector99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector99~0_combout\ = (\inst|Selector141~0_combout\) # ((\inst|state_f.HZ_DISPLAY~regout\ & ((!\inst|sub_state_f\(1)) # (!\inst|sub_state_f\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state_f\(0),
	datab => \inst|state_f.HZ_DISPLAY~regout\,
	datac => \inst|sub_state_f\(1),
	datad => \inst|Selector141~0_combout\,
	combout => \inst|Selector99~0_combout\);

-- Location: LCCOMB_X28_Y12_N16
\inst|Selector99~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector99~1_combout\ = (\inst|Selector99~0_combout\) # ((\inst|state_f.SETUP~regout\ & (\inst|counter_f[25]~38_combout\ & \inst|counter_f[25]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.SETUP~regout\,
	datab => \inst|counter_f[25]~38_combout\,
	datac => \inst|Selector99~0_combout\,
	datad => \inst|counter_f[25]~40_combout\,
	combout => \inst|Selector99~1_combout\);

-- Location: LCCOMB_X28_Y12_N24
\inst|Selector99~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector99~2_combout\ = (\inst|Selector99~1_combout\) # ((!\inst|n_index\(2) & \inst|state_f.DIGIT_SELECT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|n_index\(2),
	datac => \inst|Selector99~1_combout\,
	datad => \inst|state_f.DIGIT_SELECT~regout\,
	combout => \inst|Selector99~2_combout\);

-- Location: LCCOMB_X29_Y15_N14
\inst|counter[28]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~92_combout\ = (!\inst|counter\(31) & (\SW~combout\(0) & \inst|counter[28]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(31),
	datab => \SW~combout\(0),
	datac => \inst|counter[28]~32_combout\,
	combout => \inst|counter[28]~92_combout\);

-- Location: LCCOMB_X29_Y16_N6
\inst|Selector46~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~10_combout\ = (\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|LessThan9~8_combout\ & (\KEY~combout\(1) & \KEY~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datab => \inst|LessThan9~8_combout\,
	datac => \KEY~combout\(1),
	datad => \KEY~combout\(0),
	combout => \inst|Selector46~10_combout\);

-- Location: LCCOMB_X29_Y15_N8
\inst|Selector46~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~11_combout\ = (!\inst|counter\(31) & (\inst|state.SETUP~regout\ & (\inst|counter[28]~32_combout\ & \inst|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(31),
	datab => \inst|state.SETUP~regout\,
	datac => \inst|counter[28]~32_combout\,
	datad => \inst|LessThan2~3_combout\,
	combout => \inst|Selector46~11_combout\);

-- Location: LCCOMB_X34_Y16_N0
\inst|btn_counter[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[0]~32_combout\ = \inst|btn_counter\(0) $ (VCC)
-- \inst|btn_counter[0]~33\ = CARRY(\inst|btn_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(0),
	datad => VCC,
	combout => \inst|btn_counter[0]~32_combout\,
	cout => \inst|btn_counter[0]~33\);

-- Location: LCCOMB_X29_Y16_N20
\inst|Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector53~0_combout\ = (\inst|LessThan9~8_combout\ & (!\inst|state~28_combout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\) # (\inst|state.WAIT_BUTTON_SHORT~regout\)))) # (!\inst|LessThan9~8_combout\ & (((\inst|state.WAIT_BUTTON_RELEASE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~28_combout\,
	datab => \inst|LessThan9~8_combout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|Selector53~0_combout\);

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

-- Location: LCFF_X29_Y16_N21
\inst|state.WAIT_BUTTON_RELEASE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector53~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WAIT_BUTTON_RELEASE~regout\);

-- Location: LCCOMB_X30_Y16_N18
\inst|btn_counter[17]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[17]~72_combout\ = (\inst|LessThan9~8_combout\) # ((\inst|state~28_combout\ & (\inst|state.WAIT_BUTTON_SHORT~regout\)) # (!\inst|state~28_combout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~28_combout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|LessThan9~8_combout\,
	combout => \inst|btn_counter[17]~72_combout\);

-- Location: LCCOMB_X30_Y16_N16
\inst|btn_counter[31]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[31]~73_combout\ = (\SW~combout\(0) & ((\inst|state.WAIT_BUTTON_SHORT~regout\) # (\inst|state.WAIT_BUTTON_RELEASE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \SW~combout\(0),
	combout => \inst|btn_counter[31]~73_combout\);

-- Location: LCFF_X34_Y16_N1
\inst|btn_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[0]~32_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(0));

-- Location: LCCOMB_X34_Y16_N2
\inst|btn_counter[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[1]~34_combout\ = (\inst|btn_counter\(1) & (!\inst|btn_counter[0]~33\)) # (!\inst|btn_counter\(1) & ((\inst|btn_counter[0]~33\) # (GND)))
-- \inst|btn_counter[1]~35\ = CARRY((!\inst|btn_counter[0]~33\) # (!\inst|btn_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(1),
	datad => VCC,
	cin => \inst|btn_counter[0]~33\,
	combout => \inst|btn_counter[1]~34_combout\,
	cout => \inst|btn_counter[1]~35\);

-- Location: LCFF_X34_Y16_N3
\inst|btn_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[1]~34_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(1));

-- Location: LCCOMB_X34_Y16_N4
\inst|btn_counter[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[2]~36_combout\ = (\inst|btn_counter\(2) & (\inst|btn_counter[1]~35\ $ (GND))) # (!\inst|btn_counter\(2) & (!\inst|btn_counter[1]~35\ & VCC))
-- \inst|btn_counter[2]~37\ = CARRY((\inst|btn_counter\(2) & !\inst|btn_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(2),
	datad => VCC,
	cin => \inst|btn_counter[1]~35\,
	combout => \inst|btn_counter[2]~36_combout\,
	cout => \inst|btn_counter[2]~37\);

-- Location: LCFF_X34_Y16_N5
\inst|btn_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[2]~36_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(2));

-- Location: LCCOMB_X34_Y16_N8
\inst|btn_counter[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[4]~40_combout\ = (\inst|btn_counter\(4) & (\inst|btn_counter[3]~39\ $ (GND))) # (!\inst|btn_counter\(4) & (!\inst|btn_counter[3]~39\ & VCC))
-- \inst|btn_counter[4]~41\ = CARRY((\inst|btn_counter\(4) & !\inst|btn_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(4),
	datad => VCC,
	cin => \inst|btn_counter[3]~39\,
	combout => \inst|btn_counter[4]~40_combout\,
	cout => \inst|btn_counter[4]~41\);

-- Location: LCFF_X34_Y16_N9
\inst|btn_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[4]~40_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(4));

-- Location: LCCOMB_X34_Y16_N10
\inst|btn_counter[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[5]~42_combout\ = (\inst|btn_counter\(5) & (!\inst|btn_counter[4]~41\)) # (!\inst|btn_counter\(5) & ((\inst|btn_counter[4]~41\) # (GND)))
-- \inst|btn_counter[5]~43\ = CARRY((!\inst|btn_counter[4]~41\) # (!\inst|btn_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(5),
	datad => VCC,
	cin => \inst|btn_counter[4]~41\,
	combout => \inst|btn_counter[5]~42_combout\,
	cout => \inst|btn_counter[5]~43\);

-- Location: LCCOMB_X34_Y16_N12
\inst|btn_counter[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[6]~44_combout\ = (\inst|btn_counter\(6) & (\inst|btn_counter[5]~43\ $ (GND))) # (!\inst|btn_counter\(6) & (!\inst|btn_counter[5]~43\ & VCC))
-- \inst|btn_counter[6]~45\ = CARRY((\inst|btn_counter\(6) & !\inst|btn_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(6),
	datad => VCC,
	cin => \inst|btn_counter[5]~43\,
	combout => \inst|btn_counter[6]~44_combout\,
	cout => \inst|btn_counter[6]~45\);

-- Location: LCCOMB_X34_Y16_N14
\inst|btn_counter[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[7]~46_combout\ = (\inst|btn_counter\(7) & (!\inst|btn_counter[6]~45\)) # (!\inst|btn_counter\(7) & ((\inst|btn_counter[6]~45\) # (GND)))
-- \inst|btn_counter[7]~47\ = CARRY((!\inst|btn_counter[6]~45\) # (!\inst|btn_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(7),
	datad => VCC,
	cin => \inst|btn_counter[6]~45\,
	combout => \inst|btn_counter[7]~46_combout\,
	cout => \inst|btn_counter[7]~47\);

-- Location: LCFF_X34_Y16_N15
\inst|btn_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[7]~46_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(7));

-- Location: LCCOMB_X34_Y16_N18
\inst|btn_counter[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[9]~50_combout\ = (\inst|btn_counter\(9) & (!\inst|btn_counter[8]~49\)) # (!\inst|btn_counter\(9) & ((\inst|btn_counter[8]~49\) # (GND)))
-- \inst|btn_counter[9]~51\ = CARRY((!\inst|btn_counter[8]~49\) # (!\inst|btn_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(9),
	datad => VCC,
	cin => \inst|btn_counter[8]~49\,
	combout => \inst|btn_counter[9]~50_combout\,
	cout => \inst|btn_counter[9]~51\);

-- Location: LCFF_X34_Y16_N19
\inst|btn_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[9]~50_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(9));

-- Location: LCCOMB_X34_Y16_N22
\inst|btn_counter[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[11]~54_combout\ = (\inst|btn_counter\(11) & (!\inst|btn_counter[10]~53\)) # (!\inst|btn_counter\(11) & ((\inst|btn_counter[10]~53\) # (GND)))
-- \inst|btn_counter[11]~55\ = CARRY((!\inst|btn_counter[10]~53\) # (!\inst|btn_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(11),
	datad => VCC,
	cin => \inst|btn_counter[10]~53\,
	combout => \inst|btn_counter[11]~54_combout\,
	cout => \inst|btn_counter[11]~55\);

-- Location: LCFF_X34_Y16_N23
\inst|btn_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[11]~54_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(11));

-- Location: LCCOMB_X34_Y16_N26
\inst|btn_counter[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[13]~58_combout\ = (\inst|btn_counter\(13) & (!\inst|btn_counter[12]~57\)) # (!\inst|btn_counter\(13) & ((\inst|btn_counter[12]~57\) # (GND)))
-- \inst|btn_counter[13]~59\ = CARRY((!\inst|btn_counter[12]~57\) # (!\inst|btn_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(13),
	datad => VCC,
	cin => \inst|btn_counter[12]~57\,
	combout => \inst|btn_counter[13]~58_combout\,
	cout => \inst|btn_counter[13]~59\);

-- Location: LCFF_X34_Y16_N27
\inst|btn_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[13]~58_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(13));

-- Location: LCCOMB_X34_Y16_N28
\inst|btn_counter[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[14]~60_combout\ = (\inst|btn_counter\(14) & (\inst|btn_counter[13]~59\ $ (GND))) # (!\inst|btn_counter\(14) & (!\inst|btn_counter[13]~59\ & VCC))
-- \inst|btn_counter[14]~61\ = CARRY((\inst|btn_counter\(14) & !\inst|btn_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(14),
	datad => VCC,
	cin => \inst|btn_counter[13]~59\,
	combout => \inst|btn_counter[14]~60_combout\,
	cout => \inst|btn_counter[14]~61\);

-- Location: LCFF_X34_Y16_N29
\inst|btn_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[14]~60_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(14));

-- Location: LCCOMB_X34_Y16_N30
\inst|btn_counter[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[15]~62_combout\ = (\inst|btn_counter\(15) & (!\inst|btn_counter[14]~61\)) # (!\inst|btn_counter\(15) & ((\inst|btn_counter[14]~61\) # (GND)))
-- \inst|btn_counter[15]~63\ = CARRY((!\inst|btn_counter[14]~61\) # (!\inst|btn_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(15),
	datad => VCC,
	cin => \inst|btn_counter[14]~61\,
	combout => \inst|btn_counter[15]~62_combout\,
	cout => \inst|btn_counter[15]~63\);

-- Location: LCFF_X34_Y16_N31
\inst|btn_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[15]~62_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(15));

-- Location: LCCOMB_X34_Y15_N0
\inst|btn_counter[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[16]~64_combout\ = (\inst|btn_counter\(16) & (\inst|btn_counter[15]~63\ $ (GND))) # (!\inst|btn_counter\(16) & (!\inst|btn_counter[15]~63\ & VCC))
-- \inst|btn_counter[16]~65\ = CARRY((\inst|btn_counter\(16) & !\inst|btn_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(16),
	datad => VCC,
	cin => \inst|btn_counter[15]~63\,
	combout => \inst|btn_counter[16]~64_combout\,
	cout => \inst|btn_counter[16]~65\);

-- Location: LCFF_X34_Y15_N1
\inst|btn_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[16]~64_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(16));

-- Location: LCCOMB_X34_Y15_N2
\inst|btn_counter[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[17]~66_combout\ = (\inst|btn_counter\(17) & (!\inst|btn_counter[16]~65\)) # (!\inst|btn_counter\(17) & ((\inst|btn_counter[16]~65\) # (GND)))
-- \inst|btn_counter[17]~67\ = CARRY((!\inst|btn_counter[16]~65\) # (!\inst|btn_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(17),
	datad => VCC,
	cin => \inst|btn_counter[16]~65\,
	combout => \inst|btn_counter[17]~66_combout\,
	cout => \inst|btn_counter[17]~67\);

-- Location: LCFF_X34_Y15_N3
\inst|btn_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[17]~66_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(17));

-- Location: LCCOMB_X34_Y15_N4
\inst|btn_counter[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[18]~68_combout\ = (\inst|btn_counter\(18) & (\inst|btn_counter[17]~67\ $ (GND))) # (!\inst|btn_counter\(18) & (!\inst|btn_counter[17]~67\ & VCC))
-- \inst|btn_counter[18]~69\ = CARRY((\inst|btn_counter\(18) & !\inst|btn_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(18),
	datad => VCC,
	cin => \inst|btn_counter[17]~67\,
	combout => \inst|btn_counter[18]~68_combout\,
	cout => \inst|btn_counter[18]~69\);

-- Location: LCFF_X34_Y15_N5
\inst|btn_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[18]~68_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(18));

-- Location: LCFF_X34_Y16_N13
\inst|btn_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[6]~44_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(6));

-- Location: LCFF_X34_Y16_N11
\inst|btn_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[5]~42_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(5));

-- Location: LCCOMB_X33_Y16_N2
\inst|LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~5_combout\ = ((!\inst|btn_counter\(6) & (!\inst|btn_counter\(7) & !\inst|btn_counter\(5)))) # (!\inst|btn_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(8),
	datab => \inst|btn_counter\(6),
	datac => \inst|btn_counter\(7),
	datad => \inst|btn_counter\(5),
	combout => \inst|LessThan9~5_combout\);

-- Location: LCCOMB_X33_Y16_N4
\inst|LessThan9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~4_combout\ = (((!\inst|btn_counter\(13) & !\inst|btn_counter\(14))) # (!\inst|btn_counter\(15))) # (!\inst|btn_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(16),
	datab => \inst|btn_counter\(15),
	datac => \inst|btn_counter\(13),
	datad => \inst|btn_counter\(14),
	combout => \inst|LessThan9~4_combout\);

-- Location: LCCOMB_X33_Y16_N22
\inst|LessThan9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~7_combout\ = (\inst|LessThan9~4_combout\) # ((\inst|LessThan9~6_combout\ & (\inst|LessThan9~5_combout\ & !\inst|btn_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan9~6_combout\,
	datab => \inst|LessThan9~5_combout\,
	datac => \inst|LessThan9~4_combout\,
	datad => \inst|btn_counter\(14),
	combout => \inst|LessThan9~7_combout\);

-- Location: LCCOMB_X34_Y15_N8
\inst|btn_counter[20]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[20]~74_combout\ = (\inst|btn_counter\(20) & (\inst|btn_counter[19]~71\ $ (GND))) # (!\inst|btn_counter\(20) & (!\inst|btn_counter[19]~71\ & VCC))
-- \inst|btn_counter[20]~75\ = CARRY((\inst|btn_counter\(20) & !\inst|btn_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(20),
	datad => VCC,
	cin => \inst|btn_counter[19]~71\,
	combout => \inst|btn_counter[20]~74_combout\,
	cout => \inst|btn_counter[20]~75\);

-- Location: LCFF_X34_Y15_N9
\inst|btn_counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[20]~74_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(20));

-- Location: LCCOMB_X34_Y15_N10
\inst|btn_counter[21]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[21]~76_combout\ = (\inst|btn_counter\(21) & (!\inst|btn_counter[20]~75\)) # (!\inst|btn_counter\(21) & ((\inst|btn_counter[20]~75\) # (GND)))
-- \inst|btn_counter[21]~77\ = CARRY((!\inst|btn_counter[20]~75\) # (!\inst|btn_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(21),
	datad => VCC,
	cin => \inst|btn_counter[20]~75\,
	combout => \inst|btn_counter[21]~76_combout\,
	cout => \inst|btn_counter[21]~77\);

-- Location: LCCOMB_X34_Y15_N12
\inst|btn_counter[22]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[22]~78_combout\ = (\inst|btn_counter\(22) & (\inst|btn_counter[21]~77\ $ (GND))) # (!\inst|btn_counter\(22) & (!\inst|btn_counter[21]~77\ & VCC))
-- \inst|btn_counter[22]~79\ = CARRY((\inst|btn_counter\(22) & !\inst|btn_counter[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(22),
	datad => VCC,
	cin => \inst|btn_counter[21]~77\,
	combout => \inst|btn_counter[22]~78_combout\,
	cout => \inst|btn_counter[22]~79\);

-- Location: LCCOMB_X34_Y15_N14
\inst|btn_counter[23]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[23]~80_combout\ = (\inst|btn_counter\(23) & (!\inst|btn_counter[22]~79\)) # (!\inst|btn_counter\(23) & ((\inst|btn_counter[22]~79\) # (GND)))
-- \inst|btn_counter[23]~81\ = CARRY((!\inst|btn_counter[22]~79\) # (!\inst|btn_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(23),
	datad => VCC,
	cin => \inst|btn_counter[22]~79\,
	combout => \inst|btn_counter[23]~80_combout\,
	cout => \inst|btn_counter[23]~81\);

-- Location: LCFF_X34_Y15_N15
\inst|btn_counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[23]~80_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(23));

-- Location: LCCOMB_X34_Y15_N18
\inst|btn_counter[25]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[25]~84_combout\ = (\inst|btn_counter\(25) & (!\inst|btn_counter[24]~83\)) # (!\inst|btn_counter\(25) & ((\inst|btn_counter[24]~83\) # (GND)))
-- \inst|btn_counter[25]~85\ = CARRY((!\inst|btn_counter[24]~83\) # (!\inst|btn_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(25),
	datad => VCC,
	cin => \inst|btn_counter[24]~83\,
	combout => \inst|btn_counter[25]~84_combout\,
	cout => \inst|btn_counter[25]~85\);

-- Location: LCFF_X34_Y15_N19
\inst|btn_counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[25]~84_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(25));

-- Location: LCCOMB_X34_Y15_N20
\inst|btn_counter[26]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[26]~86_combout\ = (\inst|btn_counter\(26) & (\inst|btn_counter[25]~85\ $ (GND))) # (!\inst|btn_counter\(26) & (!\inst|btn_counter[25]~85\ & VCC))
-- \inst|btn_counter[26]~87\ = CARRY((\inst|btn_counter\(26) & !\inst|btn_counter[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(26),
	datad => VCC,
	cin => \inst|btn_counter[25]~85\,
	combout => \inst|btn_counter[26]~86_combout\,
	cout => \inst|btn_counter[26]~87\);

-- Location: LCCOMB_X34_Y15_N22
\inst|btn_counter[27]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[27]~88_combout\ = (\inst|btn_counter\(27) & (!\inst|btn_counter[26]~87\)) # (!\inst|btn_counter\(27) & ((\inst|btn_counter[26]~87\) # (GND)))
-- \inst|btn_counter[27]~89\ = CARRY((!\inst|btn_counter[26]~87\) # (!\inst|btn_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(27),
	datad => VCC,
	cin => \inst|btn_counter[26]~87\,
	combout => \inst|btn_counter[27]~88_combout\,
	cout => \inst|btn_counter[27]~89\);

-- Location: LCFF_X34_Y15_N23
\inst|btn_counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[27]~88_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(27));

-- Location: LCCOMB_X34_Y15_N26
\inst|btn_counter[29]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[29]~92_combout\ = (\inst|btn_counter\(29) & (!\inst|btn_counter[28]~91\)) # (!\inst|btn_counter\(29) & ((\inst|btn_counter[28]~91\) # (GND)))
-- \inst|btn_counter[29]~93\ = CARRY((!\inst|btn_counter[28]~91\) # (!\inst|btn_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(29),
	datad => VCC,
	cin => \inst|btn_counter[28]~91\,
	combout => \inst|btn_counter[29]~92_combout\,
	cout => \inst|btn_counter[29]~93\);

-- Location: LCFF_X34_Y15_N27
\inst|btn_counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[29]~92_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(29));

-- Location: LCCOMB_X34_Y15_N28
\inst|btn_counter[30]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[30]~94_combout\ = (\inst|btn_counter\(30) & (\inst|btn_counter[29]~93\ $ (GND))) # (!\inst|btn_counter\(30) & (!\inst|btn_counter[29]~93\ & VCC))
-- \inst|btn_counter[30]~95\ = CARRY((\inst|btn_counter\(30) & !\inst|btn_counter[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(30),
	datad => VCC,
	cin => \inst|btn_counter[29]~93\,
	combout => \inst|btn_counter[30]~94_combout\,
	cout => \inst|btn_counter[30]~95\);

-- Location: LCFF_X34_Y15_N29
\inst|btn_counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[30]~94_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(30));

-- Location: LCCOMB_X34_Y15_N30
\inst|btn_counter[31]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[31]~96_combout\ = \inst|btn_counter[30]~95\ $ (\inst|btn_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|btn_counter\(31),
	cin => \inst|btn_counter[30]~95\,
	combout => \inst|btn_counter[31]~96_combout\);

-- Location: LCFF_X34_Y15_N31
\inst|btn_counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[31]~96_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(31));

-- Location: LCFF_X34_Y15_N21
\inst|btn_counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[26]~86_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(26));

-- Location: LCCOMB_X33_Y15_N14
\inst|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~1_combout\ = (\inst|btn_counter\(24)) # ((\inst|btn_counter\(26)) # ((\inst|btn_counter\(23)) # (\inst|btn_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(24),
	datab => \inst|btn_counter\(26),
	datac => \inst|btn_counter\(23),
	datad => \inst|btn_counter\(25),
	combout => \inst|LessThan9~1_combout\);

-- Location: LCFF_X34_Y15_N11
\inst|btn_counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[21]~76_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(21));

-- Location: LCFF_X34_Y15_N13
\inst|btn_counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[22]~78_combout\,
	sclr => \inst|btn_counter[17]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(22));

-- Location: LCCOMB_X33_Y15_N0
\inst|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~0_combout\ = (\inst|btn_counter\(19)) # ((\inst|btn_counter\(21)) # ((\inst|btn_counter\(20)) # (\inst|btn_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(19),
	datab => \inst|btn_counter\(21),
	datac => \inst|btn_counter\(20),
	datad => \inst|btn_counter\(22),
	combout => \inst|LessThan9~0_combout\);

-- Location: LCCOMB_X33_Y15_N22
\inst|LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~3_combout\ = (\inst|LessThan9~2_combout\) # ((\inst|btn_counter\(31)) # ((\inst|LessThan9~1_combout\) # (\inst|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan9~2_combout\,
	datab => \inst|btn_counter\(31),
	datac => \inst|LessThan9~1_combout\,
	datad => \inst|LessThan9~0_combout\,
	combout => \inst|LessThan9~3_combout\);

-- Location: LCCOMB_X30_Y16_N12
\inst|LessThan9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~8_combout\ = (\inst|LessThan9~3_combout\) # ((\inst|btn_counter\(17) & (\inst|btn_counter\(18) & !\inst|LessThan9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(17),
	datab => \inst|btn_counter\(18),
	datac => \inst|LessThan9~7_combout\,
	datad => \inst|LessThan9~3_combout\,
	combout => \inst|LessThan9~8_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X29_Y16_N30
\inst|Selector52~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector52~3_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\KEY~combout\(0) & \KEY~combout\(1))) # (!\inst|LessThan9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst|LessThan9~8_combout\,
	datac => \KEY~combout\(1),
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|Selector52~3_combout\);

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

-- Location: LCCOMB_X29_Y13_N0
\inst|counter_f[0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[0]~41_combout\ = \inst|counter_f\(0) $ (VCC)
-- \inst|counter_f[0]~42\ = CARRY(\inst|counter_f\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(0),
	datad => VCC,
	combout => \inst|counter_f[0]~41_combout\,
	cout => \inst|counter_f[0]~42\);

-- Location: LCCOMB_X27_Y12_N4
\inst|n_index~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|n_index~2_combout\ = (\inst|state_f.DIGIT_SELECT~regout\ & (!\inst|n_index\(0) & \SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|n_index\(0),
	datad => \SW~combout\(0),
	combout => \inst|n_index~2_combout\);

-- Location: LCCOMB_X28_Y14_N14
\inst|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|page_index\(1) & !\inst|page_index\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|page_index\(1),
	datad => \inst|page_index\(2),
	combout => \inst|Equal1~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X27_Y14_N28
\inst|always2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always2~2_combout\ = (!\inst|page_index\(1) & ((\inst|page_index\(3) & ((\inst|page_index\(2)) # (\inst|page_index\(0)))) # (!\inst|page_index\(3) & (!\inst|page_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(1),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(0),
	combout => \inst|always2~2_combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst|always2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always2~1_combout\ = (!\inst|page_index\(4) & ((!\inst|page_index\(3)) # (!\inst|page_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index\(1),
	datac => \inst|page_index\(3),
	datad => \inst|page_index\(4),
	combout => \inst|always2~1_combout\);

-- Location: LCCOMB_X30_Y16_N10
\inst|page_index[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[4]~4_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\KEY~combout\(0)) # ((!\inst|always2~2_combout\ & \inst|always2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \KEY~combout\(0),
	datac => \inst|always2~2_combout\,
	datad => \inst|always2~1_combout\,
	combout => \inst|page_index[4]~4_combout\);

-- Location: LCCOMB_X28_Y14_N22
\inst|Add4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~3_combout\ = (\inst|page_index\(1) & (\inst|Add4~2\ & VCC)) # (!\inst|page_index\(1) & (!\inst|Add4~2\))
-- \inst|Add4~4\ = CARRY((!\inst|page_index\(1) & !\inst|Add4~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(1),
	datad => VCC,
	cin => \inst|Add4~2\,
	combout => \inst|Add4~3_combout\,
	cout => \inst|Add4~4\);

-- Location: LCCOMB_X28_Y14_N24
\inst|Add4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~5_combout\ = (\inst|page_index\(2) & ((GND) # (!\inst|Add4~4\))) # (!\inst|page_index\(2) & (\inst|Add4~4\ $ (GND)))
-- \inst|Add4~6\ = CARRY((\inst|page_index\(2)) # (!\inst|Add4~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index\(2),
	datad => VCC,
	cin => \inst|Add4~4\,
	combout => \inst|Add4~5_combout\,
	cout => \inst|Add4~6\);

-- Location: LCCOMB_X28_Y14_N26
\inst|Add4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~7_combout\ = (\inst|page_index\(3) & (\inst|Add4~6\ & VCC)) # (!\inst|page_index\(3) & (!\inst|Add4~6\))
-- \inst|Add4~8\ = CARRY((!\inst|page_index\(3) & !\inst|Add4~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datad => VCC,
	cin => \inst|Add4~6\,
	combout => \inst|Add4~7_combout\,
	cout => \inst|Add4~8\);

-- Location: LCCOMB_X29_Y14_N24
\inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|page_index\(3) & (!\inst|Add2~5\)) # (!\inst|page_index\(3) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|page_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X28_Y14_N8
\inst|page_index~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~13_combout\ = (\KEY~combout\(0) & ((\inst|Add4~7_combout\) # ((\inst|page_index~2_combout\)))) # (!\KEY~combout\(0) & (((\inst|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst|Add4~7_combout\,
	datac => \inst|page_index~2_combout\,
	datad => \inst|Add2~6_combout\,
	combout => \inst|page_index~13_combout\);

-- Location: LCCOMB_X30_Y16_N14
\inst|state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~28_combout\ = (\KEY~combout\(1) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(1),
	datad => \KEY~combout\(0),
	combout => \inst|state~28_combout\);

-- Location: LCCOMB_X27_Y15_N22
\inst|Selector143~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector143~0_combout\ = (\inst|sub_state_f\(1)) # (!\inst|sub_state_f\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state_f\(1),
	datad => \inst|sub_state_f\(0),
	combout => \inst|Selector143~0_combout\);

-- Location: LCCOMB_X28_Y12_N6
\inst|state_f~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~24_combout\ = (\SW~combout\(0) & ((\inst|state_f~23_combout\ & (\inst|state_f~18_combout\)) # (!\inst|state_f~23_combout\ & ((\inst|state_f.WRITE_DATA~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state_f~18_combout\,
	datac => \inst|state_f.WRITE_DATA~regout\,
	datad => \inst|state_f~23_combout\,
	combout => \inst|state_f~24_combout\);

-- Location: LCFF_X28_Y12_N7
\inst|state_f.WRITE_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.WRITE_DATA~regout\);

-- Location: LCCOMB_X28_Y12_N12
\inst|lcd_data_freq[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[6]~3_combout\ = (!\inst|state_f.SETUP~regout\ & (!\inst|state_f.WAIT_EXEC~regout\ & (!\inst|lcd_data_freq[6]~2_combout\ & !\inst|state_f.WRITE_DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.SETUP~regout\,
	datab => \inst|state_f.WAIT_EXEC~regout\,
	datac => \inst|lcd_data_freq[6]~2_combout\,
	datad => \inst|state_f.WRITE_DATA~regout\,
	combout => \inst|lcd_data_freq[6]~3_combout\);

-- Location: LCCOMB_X27_Y15_N8
\inst|lcd_data_freq[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[6]~4_combout\ = (\SW~combout\(0) & (\inst|lcd_data_freq[6]~3_combout\ & !\inst|lcd_data_freq[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \inst|lcd_data_freq[6]~3_combout\,
	datad => \inst|lcd_data_freq[6]~6_combout\,
	combout => \inst|lcd_data_freq[6]~4_combout\);

-- Location: LCFF_X27_Y15_N23
\inst|lcd_data_freq[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector143~0_combout\,
	sdata => \inst|state_f.DIGIT_SELECT~regout\,
	sload => \inst|ALT_INV_state_f.HZ_DISPLAY~regout\,
	ena => \inst|lcd_data_freq[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(5));

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

-- Location: LCCOMB_X28_Y15_N4
\inst|char_index[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[0]~6_combout\ = \inst|char_index\(0) $ (VCC)
-- \inst|char_index[0]~7\ = CARRY(\inst|char_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char_index\(0),
	datad => VCC,
	combout => \inst|char_index[0]~6_combout\,
	cout => \inst|char_index[0]~7\);

-- Location: LCCOMB_X28_Y15_N22
\inst|char_index[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[5]~8_combout\ = (\inst|state.PAGE_SELECT~regout\) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => \inst|state.PAGE_SELECT~regout\,
	combout => \inst|char_index[5]~8_combout\);

-- Location: LCCOMB_X28_Y15_N24
\inst|char_index[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[5]~9_combout\ = (\inst|state~41_combout\) # (((\inst|state.PAGE_SELECT~regout\ & !\inst|Selector46~6_combout\)) # (!\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~41_combout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \SW~combout\(0),
	datad => \inst|Selector46~6_combout\,
	combout => \inst|char_index[5]~9_combout\);

-- Location: LCFF_X28_Y15_N5
\inst|char_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[0]~6_combout\,
	sclr => \inst|char_index[5]~8_combout\,
	ena => \inst|char_index[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(0));

-- Location: LCCOMB_X28_Y15_N6
\inst|char_index[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[1]~10_combout\ = (\inst|char_index\(1) & (!\inst|char_index[0]~7\)) # (!\inst|char_index\(1) & ((\inst|char_index[0]~7\) # (GND)))
-- \inst|char_index[1]~11\ = CARRY((!\inst|char_index[0]~7\) # (!\inst|char_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char_index\(1),
	datad => VCC,
	cin => \inst|char_index[0]~7\,
	combout => \inst|char_index[1]~10_combout\,
	cout => \inst|char_index[1]~11\);

-- Location: LCFF_X28_Y15_N7
\inst|char_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[1]~10_combout\,
	sclr => \inst|char_index[5]~8_combout\,
	ena => \inst|char_index[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(1));

-- Location: LCCOMB_X28_Y15_N8
\inst|char_index[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[2]~12_combout\ = (\inst|char_index\(2) & (\inst|char_index[1]~11\ $ (GND))) # (!\inst|char_index\(2) & (!\inst|char_index[1]~11\ & VCC))
-- \inst|char_index[2]~13\ = CARRY((\inst|char_index\(2) & !\inst|char_index[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|char_index\(2),
	datad => VCC,
	cin => \inst|char_index[1]~11\,
	combout => \inst|char_index[2]~12_combout\,
	cout => \inst|char_index[2]~13\);

-- Location: LCFF_X28_Y15_N9
\inst|char_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[2]~12_combout\,
	sclr => \inst|char_index[5]~8_combout\,
	ena => \inst|char_index[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(2));

-- Location: LCCOMB_X28_Y15_N10
\inst|char_index[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[3]~14_combout\ = (\inst|char_index\(3) & (!\inst|char_index[2]~13\)) # (!\inst|char_index\(3) & ((\inst|char_index[2]~13\) # (GND)))
-- \inst|char_index[3]~15\ = CARRY((!\inst|char_index[2]~13\) # (!\inst|char_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char_index\(3),
	datad => VCC,
	cin => \inst|char_index[2]~13\,
	combout => \inst|char_index[3]~14_combout\,
	cout => \inst|char_index[3]~15\);

-- Location: LCFF_X28_Y15_N11
\inst|char_index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[3]~14_combout\,
	sclr => \inst|char_index[5]~8_combout\,
	ena => \inst|char_index[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(3));

-- Location: LCCOMB_X28_Y15_N12
\inst|char_index[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[4]~16_combout\ = (\inst|char_index\(4) & (\inst|char_index[3]~15\ $ (GND))) # (!\inst|char_index\(4) & (!\inst|char_index[3]~15\ & VCC))
-- \inst|char_index[4]~17\ = CARRY((\inst|char_index\(4) & !\inst|char_index[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char_index\(4),
	datad => VCC,
	cin => \inst|char_index[3]~15\,
	combout => \inst|char_index[4]~16_combout\,
	cout => \inst|char_index[4]~17\);

-- Location: LCFF_X28_Y15_N13
\inst|char_index[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[4]~16_combout\,
	sclr => \inst|char_index[5]~8_combout\,
	ena => \inst|char_index[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(4));

-- Location: LCCOMB_X28_Y15_N14
\inst|char_index[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[5]~18_combout\ = \inst|char_index\(5) $ (\inst|char_index[4]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|char_index\(5),
	cin => \inst|char_index[4]~17\,
	combout => \inst|char_index[5]~18_combout\);

-- Location: LCFF_X28_Y15_N15
\inst|char_index[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[5]~18_combout\,
	sclr => \inst|char_index[5]~8_combout\,
	ena => \inst|char_index[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(5));

-- Location: M4K_X26_Y17
\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000955555555FFDFFE6AA01000000002555555557FF7FFBFF6AAA01000000000000000009555555557FFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000955555555FF010000000000000000000955555555FF010000000000000000955555555FFFFF010000000000000000955555555FFFFF010000000000000000955555555FFFFF010000000000000000009555555555FF010000000000000000025555555FFFFF01000000000000000000095555557FFF01000000009555555557FFFE557FDFFE010000000025555555557FFFA7FFF9AA01",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/LCD_module.ram0_text_lut_af7c7a3e.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lcd_driver:inst|text_lut:text_lut_inst|altsyncram:rom_rtl_0|altsyncram_id71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 9,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y16_N26
\inst|lcd_data[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data[5]~2_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(5))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(5))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|lcd_data_freq\(5),
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5~portadataout\,
	combout => \inst|lcd_data[5]~2_combout\);

-- Location: LCCOMB_X27_Y15_N26
\inst|Selector141~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector141~0_combout\ = (!\inst|state_f.CHECK_AND_WAIT~regout\ & (!\inst|always3~0_combout\ & ((\inst|state.WAIT_BUTTON_SHORT~regout\) # (\inst|state.WAIT_BUTTON_RELEASE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|always3~0_combout\,
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	combout => \inst|Selector141~0_combout\);

-- Location: LCCOMB_X27_Y15_N30
\inst|Selector141~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector141~1_combout\ = (\inst|Selector141~0_combout\) # ((\inst|lcd_data_freq\(7) & ((!\inst|lcd_data_freq[6]~3_combout\) # (!\inst|state_f.CHECK_AND_WAIT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|lcd_data_freq[6]~3_combout\,
	datac => \inst|lcd_data_freq\(7),
	datad => \inst|Selector141~0_combout\,
	combout => \inst|Selector141~1_combout\);

-- Location: LCFF_X27_Y15_N31
\inst|lcd_data_freq[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector141~1_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(7));

-- Location: M4K_X26_Y13
\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000AAAAAAAAAAAAAA9AAA00000000002AAAAAAAAAAAAAA6AAAAAA0000000000000000000AAAAAAAAAAAAA8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAAAA000000000000000000000AAAAAAAAAAA000000000000000000AAAAAAAAAAAAAA000000000000000000AAAAAAAAAAAAAA000000000000000000AAAAAAAAAAAAAA00000000000000000000AAAAAAAAAAAA00000000000000000002AAAAAAAAAAAA000000000000000000000AAAAAAAAAAA0000000000AAAAAAAAAAAAA9AAAAAAAA00000000002AAAAAAAAAAAAA9AAAAAAA00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/LCD_module.ram0_text_lut_af7c7a3e.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lcd_driver:inst|text_lut:text_lut_inst|altsyncram:rom_rtl_0|altsyncram_id71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 9,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y16_N20
\inst|lcd_data[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data[7]~0_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(7))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(7))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|lcd_data_freq\(7),
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7~portadataout\,
	combout => \inst|lcd_data[7]~0_combout\);

-- Location: LCCOMB_X28_Y15_N2
\inst|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always0~0_combout\ = (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & !\inst|state.WAIT_BUTTON_SHORT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|always0~0_combout\);

-- Location: LCCOMB_X27_Y15_N24
\inst|Selector151~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector151~1_combout\ = (\inst|state_f.CHECK_AND_WAIT~regout\ & (\inst|state_f.HZ_DISPLAY~regout\)) # (!\inst|state_f.CHECK_AND_WAIT~regout\ & (((!\inst|always3~0_combout\ & !\inst|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|state_f.HZ_DISPLAY~regout\,
	datac => \inst|always3~0_combout\,
	datad => \inst|always0~0_combout\,
	combout => \inst|Selector151~1_combout\);

-- Location: LCCOMB_X27_Y12_N14
\inst|Selector150~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector150~0_combout\ = (\inst|Selector151~1_combout\ & (\inst|state_f.CHECK_AND_WAIT~regout\ & (\inst|sub_state_f\(0) $ (\inst|sub_state_f\(1))))) # (!\inst|Selector151~1_combout\ & (((\inst|sub_state_f\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|sub_state_f\(0),
	datac => \inst|sub_state_f\(1),
	datad => \inst|Selector151~1_combout\,
	combout => \inst|Selector150~0_combout\);

-- Location: LCFF_X27_Y12_N15
\inst|sub_state_f[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector150~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state_f\(1));

-- Location: LCCOMB_X27_Y15_N28
\inst|Selector144~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector144~0_combout\ = (\inst|state_f.HZ_DISPLAY~regout\ & ((\inst|sub_state_f\(1)))) # (!\inst|state_f.HZ_DISPLAY~regout\ & (\inst|state_f.DIGIT_SELECT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f.HZ_DISPLAY~regout\,
	datac => \inst|state_f.DIGIT_SELECT~regout\,
	datad => \inst|sub_state_f\(1),
	combout => \inst|Selector144~0_combout\);

-- Location: LCFF_X27_Y15_N29
\inst|lcd_data_freq[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector144~0_combout\,
	ena => \inst|lcd_data_freq[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(4));

-- Location: M4K_X26_Y15
\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000888A28268070000000000000000022228A08A2600070000000000000000000000000002049100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000816070000000000000000000000000008160700000000000000000000000088611A0700000000000000000000000088611A0700000000000000000000000088611A070000000000000000000000000000160700000000000000000000000008611A0700000000000000000000000000022A07000000000000000001586000088812070000000000000000001A050158588007",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/LCD_module.ram0_text_lut_af7c7a3e.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lcd_driver:inst|text_lut:text_lut_inst|altsyncram:rom_rtl_0|altsyncram_id71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 9,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y15_N2
\inst|lcd_data[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data[4]~3_combout\ = (\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(4))) # (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(4))) # 
-- (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datab => \inst|lcd_data_freq\(4),
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst|lcd_data[4]~3_combout\);

-- Location: LCCOMB_X27_Y16_N12
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|lcd_data[6]~1_combout\ & (!\inst|lcd_data[5]~2_combout\ & (!\inst|lcd_data[7]~0_combout\ & !\inst|lcd_data[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data[6]~1_combout\,
	datab => \inst|lcd_data[5]~2_combout\,
	datac => \inst|lcd_data[7]~0_combout\,
	datad => \inst|lcd_data[4]~3_combout\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y16_N28
\inst|page_index~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~0_combout\ = (!\inst|LessThan5~1_combout\ & (\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~1_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|page_index~0_combout\);

-- Location: LCCOMB_X28_Y16_N8
\inst|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector51~0_combout\ = (\inst|state.DONE~regout\) # ((\inst|sub_state.PAGE_ERROR~regout\ & (\inst|state.PAGE_SELECT~regout\ & \inst|page_index~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE_ERROR~regout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \inst|state.DONE~regout\,
	datad => \inst|page_index~0_combout\,
	combout => \inst|Selector51~0_combout\);

-- Location: LCFF_X28_Y16_N9
\inst|state.DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector51~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.DONE~regout\);

-- Location: LCCOMB_X29_Y16_N22
\inst|state~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~29_combout\ = (!\inst|state.DONE~regout\ & ((\inst|state~28_combout\ & ((!\inst|state.WAIT_BUTTON_SHORT~regout\))) # (!\inst|state~28_combout\ & (!\inst|state.WAIT_BUTTON_RELEASE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state~28_combout\,
	datad => \inst|state.DONE~regout\,
	combout => \inst|state~29_combout\);

-- Location: LCCOMB_X29_Y16_N26
\inst|state.POWER_ON~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state.POWER_ON~0_combout\ = (\inst|state~37_combout\ & ((\inst|state.POWER_ON~regout\))) # (!\inst|state~37_combout\ & (\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \inst|state.POWER_ON~regout\,
	datad => \inst|state~37_combout\,
	combout => \inst|state.POWER_ON~0_combout\);

-- Location: LCFF_X29_Y16_N27
\inst|state.POWER_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state.POWER_ON~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.POWER_ON~regout\);

-- Location: LCCOMB_X28_Y15_N18
\inst|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~0_combout\ = (\inst|char_index\(1) & (\inst|char_index\(2) & (\inst|char_index\(0) & \inst|char_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char_index\(1),
	datab => \inst|char_index\(2),
	datac => \inst|char_index\(0),
	datad => \inst|char_index\(3),
	combout => \inst|LessThan5~0_combout\);

-- Location: LCCOMB_X28_Y15_N0
\inst|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_combout\ = (\inst|LessThan5~0_combout\ & (\inst|char_index\(5) & \inst|char_index\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan5~0_combout\,
	datac => \inst|char_index\(5),
	datad => \inst|char_index\(4),
	combout => \inst|LessThan5~1_combout\);

-- Location: LCCOMB_X29_Y16_N4
\inst|state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~32_combout\ = ((\inst|state.PAGE_SELECT~regout\ & \inst|LessThan5~1_combout\)) # (!\inst|state.POWER_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|state.POWER_ON~regout\,
	datad => \inst|LessThan5~1_combout\,
	combout => \inst|state~32_combout\);

-- Location: LCCOMB_X31_Y16_N0
\inst|counter[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[0]~34_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|counter[0]~35\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|counter[0]~34_combout\,
	cout => \inst|counter[0]~35\);

-- Location: LCCOMB_X31_Y15_N20
\inst|counter[26]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[26]~86_combout\ = (\inst|counter\(26) & (\inst|counter[25]~85\ $ (GND))) # (!\inst|counter\(26) & (!\inst|counter[25]~85\ & VCC))
-- \inst|counter[26]~87\ = CARRY((\inst|counter\(26) & !\inst|counter[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(26),
	datad => VCC,
	cin => \inst|counter[25]~85\,
	combout => \inst|counter[26]~86_combout\,
	cout => \inst|counter[26]~87\);

-- Location: LCCOMB_X31_Y15_N22
\inst|counter[27]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[27]~88_combout\ = (\inst|counter\(27) & (!\inst|counter[26]~87\)) # (!\inst|counter\(27) & ((\inst|counter[26]~87\) # (GND)))
-- \inst|counter[27]~89\ = CARRY((!\inst|counter[26]~87\) # (!\inst|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(27),
	datad => VCC,
	cin => \inst|counter[26]~87\,
	combout => \inst|counter[27]~88_combout\,
	cout => \inst|counter[27]~89\);

-- Location: LCCOMB_X28_Y15_N26
\inst|counter[28]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~94_combout\ = ((!\inst|state.DONE~regout\ & (\inst|always0~0_combout\ & !\inst|state.PAGE_SELECT~regout\))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.DONE~regout\,
	datab => \inst|always0~0_combout\,
	datac => \SW~combout\(0),
	datad => \inst|state.PAGE_SELECT~regout\,
	combout => \inst|counter[28]~94_combout\);

-- Location: LCFF_X31_Y15_N23
\inst|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[27]~88_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(27));

-- Location: LCCOMB_X31_Y15_N24
\inst|counter[28]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~95_combout\ = (\inst|counter\(28) & (\inst|counter[27]~89\ $ (GND))) # (!\inst|counter\(28) & (!\inst|counter[27]~89\ & VCC))
-- \inst|counter[28]~96\ = CARRY((\inst|counter\(28) & !\inst|counter[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(28),
	datad => VCC,
	cin => \inst|counter[27]~89\,
	combout => \inst|counter[28]~95_combout\,
	cout => \inst|counter[28]~96\);

-- Location: LCCOMB_X31_Y15_N26
\inst|counter[29]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[29]~97_combout\ = (\inst|counter\(29) & (!\inst|counter[28]~96\)) # (!\inst|counter\(29) & ((\inst|counter[28]~96\) # (GND)))
-- \inst|counter[29]~98\ = CARRY((!\inst|counter[28]~96\) # (!\inst|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(29),
	datad => VCC,
	cin => \inst|counter[28]~96\,
	combout => \inst|counter[29]~97_combout\,
	cout => \inst|counter[29]~98\);

-- Location: LCFF_X31_Y15_N27
\inst|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[29]~97_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(29));

-- Location: LCCOMB_X31_Y15_N28
\inst|counter[30]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[30]~99_combout\ = (\inst|counter\(30) & (\inst|counter[29]~98\ $ (GND))) # (!\inst|counter\(30) & (!\inst|counter[29]~98\ & VCC))
-- \inst|counter[30]~100\ = CARRY((\inst|counter\(30) & !\inst|counter[29]~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(30),
	datad => VCC,
	cin => \inst|counter[29]~98\,
	combout => \inst|counter[30]~99_combout\,
	cout => \inst|counter[30]~100\);

-- Location: LCFF_X31_Y15_N29
\inst|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[30]~99_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(30));

-- Location: LCFF_X31_Y15_N25
\inst|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[28]~95_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(28));

-- Location: LCCOMB_X32_Y15_N0
\inst|counter[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~32_combout\ = (!\inst|counter\(27) & (!\inst|counter\(30) & (!\inst|counter\(29) & !\inst|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(27),
	datab => \inst|counter\(30),
	datac => \inst|counter\(29),
	datad => \inst|counter\(28),
	combout => \inst|counter[28]~32_combout\);

-- Location: LCCOMB_X31_Y15_N16
\inst|counter[24]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[24]~82_combout\ = (\inst|counter\(24) & (\inst|counter[23]~81\ $ (GND))) # (!\inst|counter\(24) & (!\inst|counter[23]~81\ & VCC))
-- \inst|counter[24]~83\ = CARRY((\inst|counter\(24) & !\inst|counter[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(24),
	datad => VCC,
	cin => \inst|counter[23]~81\,
	combout => \inst|counter[24]~82_combout\,
	cout => \inst|counter[24]~83\);

-- Location: LCFF_X31_Y15_N17
\inst|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[24]~82_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(24));

-- Location: LCCOMB_X30_Y15_N30
\inst|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst|counter\(25) & (!\inst|counter\(24) & !\inst|counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(25),
	datac => \inst|counter\(24),
	datad => \inst|counter\(26),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y16_N16
\inst|counter[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[8]~50_combout\ = (\inst|counter\(8) & (\inst|counter[7]~49\ $ (GND))) # (!\inst|counter\(8) & (!\inst|counter[7]~49\ & VCC))
-- \inst|counter[8]~51\ = CARRY((\inst|counter\(8) & !\inst|counter[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(8),
	datad => VCC,
	cin => \inst|counter[7]~49\,
	combout => \inst|counter[8]~50_combout\,
	cout => \inst|counter[8]~51\);

-- Location: LCFF_X31_Y16_N17
\inst|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[8]~50_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(8));

-- Location: LCCOMB_X31_Y16_N12
\inst|counter[6]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[6]~46_combout\ = (\inst|counter\(6) & (\inst|counter[5]~45\ $ (GND))) # (!\inst|counter\(6) & (!\inst|counter[5]~45\ & VCC))
-- \inst|counter[6]~47\ = CARRY((\inst|counter\(6) & !\inst|counter[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datad => VCC,
	cin => \inst|counter[5]~45\,
	combout => \inst|counter[6]~46_combout\,
	cout => \inst|counter[6]~47\);

-- Location: LCFF_X31_Y16_N13
\inst|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[6]~46_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(6));

-- Location: LCCOMB_X32_Y15_N2
\inst|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = ((!\inst|counter\(8) & (!\inst|counter\(6) & !\inst|counter\(7)))) # (!\inst|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|counter\(8),
	datac => \inst|counter\(6),
	datad => \inst|counter\(7),
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X31_Y16_N24
\inst|counter[12]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[12]~58_combout\ = (\inst|counter\(12) & (\inst|counter[11]~57\ $ (GND))) # (!\inst|counter\(12) & (!\inst|counter[11]~57\ & VCC))
-- \inst|counter[12]~59\ = CARRY((\inst|counter\(12) & !\inst|counter[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(12),
	datad => VCC,
	cin => \inst|counter[11]~57\,
	combout => \inst|counter[12]~58_combout\,
	cout => \inst|counter[12]~59\);

-- Location: LCFF_X31_Y16_N25
\inst|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[12]~58_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(12));

-- Location: LCCOMB_X31_Y16_N20
\inst|counter[10]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[10]~54_combout\ = (\inst|counter\(10) & (\inst|counter[9]~53\ $ (GND))) # (!\inst|counter\(10) & (!\inst|counter[9]~53\ & VCC))
-- \inst|counter[10]~55\ = CARRY((\inst|counter\(10) & !\inst|counter[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(10),
	datad => VCC,
	cin => \inst|counter[9]~53\,
	combout => \inst|counter[10]~54_combout\,
	cout => \inst|counter[10]~55\);

-- Location: LCFF_X31_Y16_N21
\inst|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[10]~54_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(10));

-- Location: LCCOMB_X32_Y15_N28
\inst|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_combout\ = (!\inst|counter\(11) & (!\inst|counter\(13) & (!\inst|counter\(12) & !\inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(11),
	datab => \inst|counter\(13),
	datac => \inst|counter\(12),
	datad => \inst|counter\(10),
	combout => \inst|LessThan3~3_combout\);

-- Location: LCCOMB_X32_Y15_N4
\inst|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = (\inst|counter\(15)) # ((\inst|counter\(14) & ((!\inst|LessThan3~3_combout\) # (!\inst|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(14),
	datab => \inst|LessThan1~3_combout\,
	datac => \inst|counter\(15),
	datad => \inst|LessThan3~3_combout\,
	combout => \inst|LessThan1~4_combout\);

-- Location: LCCOMB_X30_Y15_N26
\inst|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (\inst|counter\(19) & (\inst|counter\(16) & (\inst|counter\(18) & \inst|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(19),
	datab => \inst|counter\(16),
	datac => \inst|counter\(18),
	datad => \inst|counter\(17),
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y15_N8
\inst|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_combout\ = (\inst|LessThan1~0_combout\ & (\inst|LessThan1~1_combout\ & ((!\inst|LessThan1~2_combout\) # (!\inst|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|LessThan1~4_combout\,
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|LessThan1~5_combout\);

-- Location: LCCOMB_X29_Y16_N12
\inst|Selector46~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~9_combout\ = (!\inst|state.POWER_ON~regout\ & ((\inst|counter\(31)) # ((!\inst|LessThan1~5_combout\) # (!\inst|counter[28]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(31),
	datab => \inst|state.POWER_ON~regout\,
	datac => \inst|counter[28]~32_combout\,
	datad => \inst|LessThan1~5_combout\,
	combout => \inst|Selector46~9_combout\);

-- Location: LCCOMB_X28_Y16_N2
\inst|Selector46~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~7_combout\ = (\inst|Selector46~11_combout\) # ((\inst|Selector46~9_combout\) # ((\inst|state.PAGE_SELECT~regout\ & \inst|Selector46~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector46~11_combout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \inst|Selector46~9_combout\,
	datad => \inst|Selector46~6_combout\,
	combout => \inst|Selector46~7_combout\);

-- Location: LCCOMB_X28_Y16_N18
\inst|Selector46~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~8_combout\ = (\inst|Selector46~10_combout\) # ((\inst|Selector46~7_combout\) # ((\inst|state.WAIT~regout\ & \inst|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector46~10_combout\,
	datab => \inst|state.WAIT~regout\,
	datac => \inst|LessThan6~7_combout\,
	datad => \inst|Selector46~7_combout\,
	combout => \inst|Selector46~8_combout\);

-- Location: LCFF_X28_Y16_N19
\inst|state.SETUP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector46~8_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.SETUP~regout\);

-- Location: LCCOMB_X31_Y15_N6
\inst|counter[19]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~72_combout\ = (\inst|counter\(19) & (!\inst|counter[18]~71\)) # (!\inst|counter\(19) & ((\inst|counter[18]~71\) # (GND)))
-- \inst|counter[19]~73\ = CARRY((!\inst|counter[18]~71\) # (!\inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(19),
	datad => VCC,
	cin => \inst|counter[18]~71\,
	combout => \inst|counter[19]~72_combout\,
	cout => \inst|counter[19]~73\);

-- Location: LCFF_X31_Y15_N7
\inst|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[19]~72_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(19));

-- Location: LCCOMB_X30_Y15_N28
\inst|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = (!\inst|counter\(18) & (!\inst|counter\(19) & !\inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(18),
	datac => \inst|counter\(19),
	datad => \inst|counter\(17),
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X30_Y15_N4
\inst|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~2_combout\ = (\inst|LessThan1~0_combout\ & (\inst|LessThan3~0_combout\ & (!\inst|counter\(16) & \inst|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \inst|LessThan3~0_combout\,
	datac => \inst|counter\(16),
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|LessThan3~2_combout\);

-- Location: LCCOMB_X32_Y15_N30
\inst|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (!\inst|counter\(14) & (!\inst|counter\(12) & (!\inst|counter\(11) & !\inst|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(14),
	datab => \inst|counter\(12),
	datac => \inst|counter\(11),
	datad => \inst|counter\(13),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y15_N6
\inst|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_combout\ = (\inst|LessThan2~2_combout\ & (!\inst|counter\(15) & (\inst|LessThan3~2_combout\ & \inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~2_combout\,
	datab => \inst|counter\(15),
	datac => \inst|LessThan3~2_combout\,
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|LessThan2~3_combout\);

-- Location: LCCOMB_X29_Y15_N6
\inst|state~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~42_combout\ = (\inst|state.SETUP~regout\ & ((\inst|counter\(31)) # ((!\inst|LessThan2~3_combout\) # (!\inst|counter[28]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(31),
	datab => \inst|state.SETUP~regout\,
	datac => \inst|counter[28]~32_combout\,
	datad => \inst|LessThan2~3_combout\,
	combout => \inst|state~42_combout\);

-- Location: LCCOMB_X29_Y16_N2
\inst|state~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~38_combout\ = (\SW~combout\(0) & ((\inst|state~42_combout\) # ((\inst|state.WRITE_DATA~regout\ & \inst|state~37_combout\)))) # (!\SW~combout\(0) & (((\inst|state.WRITE_DATA~regout\ & \inst|state~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state~42_combout\,
	datac => \inst|state.WRITE_DATA~regout\,
	datad => \inst|state~37_combout\,
	combout => \inst|state~38_combout\);

-- Location: LCFF_X29_Y16_N3
\inst|state.WRITE_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_DATA~regout\);

-- Location: LCCOMB_X31_Y16_N10
\inst|counter[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[5]~44_combout\ = (\inst|counter\(5) & (!\inst|counter[4]~43\)) # (!\inst|counter\(5) & ((\inst|counter[4]~43\) # (GND)))
-- \inst|counter[5]~45\ = CARRY((!\inst|counter[4]~43\) # (!\inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datad => VCC,
	cin => \inst|counter[4]~43\,
	combout => \inst|counter[5]~44_combout\,
	cout => \inst|counter[5]~45\);

-- Location: LCFF_X31_Y16_N11
\inst|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[5]~44_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(5));

-- Location: LCCOMB_X32_Y15_N16
\inst|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~0_combout\ = (\inst|counter\(8)) # ((\inst|counter\(7) & ((\inst|counter\(6)) # (\inst|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(8),
	datab => \inst|counter\(7),
	datac => \inst|counter\(6),
	datad => \inst|counter\(5),
	combout => \inst|LessThan4~0_combout\);

-- Location: LCCOMB_X32_Y15_N22
\inst|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~1_combout\ = (\inst|LessThan2~0_combout\ & (((!\inst|LessThan4~0_combout\) # (!\inst|counter\(10))) # (!\inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|counter\(10),
	datac => \inst|LessThan4~0_combout\,
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|LessThan4~1_combout\);

-- Location: LCCOMB_X30_Y15_N14
\inst|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~2_combout\ = (\inst|LessThan3~1_combout\ & (((\inst|LessThan4~1_combout\) # (!\inst|counter\(15))) # (!\inst|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~1_combout\,
	datab => \inst|counter\(16),
	datac => \inst|LessThan4~1_combout\,
	datad => \inst|counter\(15),
	combout => \inst|LessThan4~2_combout\);

-- Location: LCCOMB_X31_Y15_N12
\inst|counter[22]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[22]~78_combout\ = (\inst|counter\(22) & (\inst|counter[21]~77\ $ (GND))) # (!\inst|counter\(22) & (!\inst|counter[21]~77\ & VCC))
-- \inst|counter[22]~79\ = CARRY((\inst|counter\(22) & !\inst|counter[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(22),
	datad => VCC,
	cin => \inst|counter[21]~77\,
	combout => \inst|counter[22]~78_combout\,
	cout => \inst|counter[22]~79\);

-- Location: LCFF_X31_Y15_N13
\inst|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[22]~78_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(22));

-- Location: LCCOMB_X31_Y15_N10
\inst|counter[21]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[21]~76_combout\ = (\inst|counter\(21) & (!\inst|counter[20]~75\)) # (!\inst|counter\(21) & ((\inst|counter[20]~75\) # (GND)))
-- \inst|counter[21]~77\ = CARRY((!\inst|counter[20]~75\) # (!\inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(21),
	datad => VCC,
	cin => \inst|counter[20]~75\,
	combout => \inst|counter[21]~76_combout\,
	cout => \inst|counter[21]~77\);

-- Location: LCFF_X31_Y15_N11
\inst|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[21]~76_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(21));

-- Location: LCCOMB_X30_Y15_N18
\inst|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~5_combout\ = (((!\inst|counter\(19) & !\inst|counter\(18))) # (!\inst|counter\(21))) # (!\inst|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(19),
	datab => \inst|counter\(18),
	datac => \inst|counter\(20),
	datad => \inst|counter\(21),
	combout => \inst|LessThan6~5_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst|LessThan6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~6_combout\ = (((\inst|LessThan6~5_combout\) # (!\inst|counter\(22))) # (!\inst|counter\(23))) # (!\inst|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(24),
	datab => \inst|counter\(23),
	datac => \inst|counter\(22),
	datad => \inst|LessThan6~5_combout\,
	combout => \inst|LessThan6~6_combout\);

-- Location: LCCOMB_X32_Y15_N6
\inst|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~2_combout\ = (\inst|counter\(15) & (\inst|counter\(14) & \inst|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datac => \inst|counter\(14),
	datad => \inst|counter\(16),
	combout => \inst|LessThan6~2_combout\);

-- Location: LCCOMB_X32_Y15_N8
\inst|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~3_combout\ = (\inst|LessThan6~2_combout\ & (((\inst|counter\(12)) # (\inst|counter\(11))) # (!\inst|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan6~1_combout\,
	datab => \inst|counter\(12),
	datac => \inst|counter\(11),
	datad => \inst|LessThan6~2_combout\,
	combout => \inst|LessThan6~3_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst|LessThan6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~4_combout\ = (!\inst|counter\(19) & (!\inst|counter\(17) & ((!\inst|LessThan6~3_combout\) # (!\inst|counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(19),
	datab => \inst|counter\(13),
	datac => \inst|LessThan6~3_combout\,
	datad => \inst|counter\(17),
	combout => \inst|LessThan6~4_combout\);

-- Location: LCCOMB_X30_Y15_N22
\inst|counter[28]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~90_combout\ = (\inst|counter\(26) & ((\inst|counter\(25)) # ((!\inst|LessThan6~6_combout\ & !\inst|LessThan6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(26),
	datab => \inst|counter\(25),
	datac => \inst|LessThan6~6_combout\,
	datad => \inst|LessThan6~4_combout\,
	combout => \inst|counter[28]~90_combout\);

-- Location: LCCOMB_X30_Y15_N16
\inst|counter[28]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~91_combout\ = (!\inst|state.WRITE_DATA~regout\ & ((\inst|state.WAIT~regout\ & ((!\inst|counter[28]~90_combout\))) # (!\inst|state.WAIT~regout\ & (\inst|LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT~regout\,
	datab => \inst|state.WRITE_DATA~regout\,
	datac => \inst|LessThan4~2_combout\,
	datad => \inst|counter[28]~90_combout\,
	combout => \inst|counter[28]~91_combout\);

-- Location: LCCOMB_X32_Y15_N14
\inst|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~4_combout\ = (!\inst|counter\(7) & (((!\inst|counter\(4) & !\inst|counter\(5))) # (!\inst|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(7),
	datac => \inst|counter\(6),
	datad => \inst|counter\(5),
	combout => \inst|LessThan3~4_combout\);

-- Location: LCCOMB_X32_Y15_N12
\inst|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_combout\ = (\inst|LessThan3~3_combout\ & (((\inst|LessThan3~4_combout\) # (!\inst|counter\(8))) # (!\inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|counter\(8),
	datac => \inst|LessThan3~4_combout\,
	datad => \inst|LessThan3~3_combout\,
	combout => \inst|LessThan3~5_combout\);

-- Location: LCCOMB_X32_Y15_N26
\inst|LessThan3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~6_combout\ = ((\inst|LessThan3~5_combout\) # (!\inst|counter\(14))) # (!\inst|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datac => \inst|counter\(14),
	datad => \inst|LessThan3~5_combout\,
	combout => \inst|LessThan3~6_combout\);

-- Location: LCCOMB_X30_Y15_N10
\inst|counter[28]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~93_combout\ = (\inst|state.WRITE_DATA~regout\ & (\inst|LessThan3~2_combout\ & \inst|LessThan3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.WRITE_DATA~regout\,
	datac => \inst|LessThan3~2_combout\,
	datad => \inst|LessThan3~6_combout\,
	combout => \inst|counter[28]~93_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst|counter[28]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~103_combout\ = (\inst|state.SETUP~regout\ & (\inst|LessThan2~3_combout\)) # (!\inst|state.SETUP~regout\ & (((\inst|counter[28]~91_combout\) # (\inst|counter[28]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~3_combout\,
	datab => \inst|state.SETUP~regout\,
	datac => \inst|counter[28]~91_combout\,
	datad => \inst|counter[28]~93_combout\,
	combout => \inst|counter[28]~103_combout\);

-- Location: LCCOMB_X30_Y15_N2
\inst|counter[28]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~104_combout\ = ((\inst|state.POWER_ON~regout\ & (!\inst|counter[28]~103_combout\)) # (!\inst|state.POWER_ON~regout\ & ((!\inst|LessThan1~5_combout\)))) # (!\inst|counter[28]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[28]~92_combout\,
	datab => \inst|state.POWER_ON~regout\,
	datac => \inst|counter[28]~103_combout\,
	datad => \inst|LessThan1~5_combout\,
	combout => \inst|counter[28]~104_combout\);

-- Location: LCFF_X31_Y16_N1
\inst|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[0]~34_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(0));

-- Location: LCCOMB_X31_Y16_N2
\inst|counter[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[1]~36_combout\ = (\inst|counter\(1) & (!\inst|counter[0]~35\)) # (!\inst|counter\(1) & ((\inst|counter[0]~35\) # (GND)))
-- \inst|counter[1]~37\ = CARRY((!\inst|counter[0]~35\) # (!\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datad => VCC,
	cin => \inst|counter[0]~35\,
	combout => \inst|counter[1]~36_combout\,
	cout => \inst|counter[1]~37\);

-- Location: LCFF_X31_Y16_N3
\inst|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[1]~36_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(1));

-- Location: LCCOMB_X31_Y16_N4
\inst|counter[2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[2]~38_combout\ = (\inst|counter\(2) & (\inst|counter[1]~37\ $ (GND))) # (!\inst|counter\(2) & (!\inst|counter[1]~37\ & VCC))
-- \inst|counter[2]~39\ = CARRY((\inst|counter\(2) & !\inst|counter[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|counter[1]~37\,
	combout => \inst|counter[2]~38_combout\,
	cout => \inst|counter[2]~39\);

-- Location: LCFF_X31_Y16_N5
\inst|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[2]~38_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(2));

-- Location: LCCOMB_X31_Y16_N8
\inst|counter[4]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[4]~42_combout\ = (\inst|counter\(4) & (\inst|counter[3]~41\ $ (GND))) # (!\inst|counter\(4) & (!\inst|counter[3]~41\ & VCC))
-- \inst|counter[4]~43\ = CARRY((\inst|counter\(4) & !\inst|counter[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(4),
	datad => VCC,
	cin => \inst|counter[3]~41\,
	combout => \inst|counter[4]~42_combout\,
	cout => \inst|counter[4]~43\);

-- Location: LCFF_X31_Y16_N9
\inst|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[4]~42_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(4));

-- Location: LCCOMB_X31_Y16_N14
\inst|counter[7]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[7]~48_combout\ = (\inst|counter\(7) & (!\inst|counter[6]~47\)) # (!\inst|counter\(7) & ((\inst|counter[6]~47\) # (GND)))
-- \inst|counter[7]~49\ = CARRY((!\inst|counter[6]~47\) # (!\inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(7),
	datad => VCC,
	cin => \inst|counter[6]~47\,
	combout => \inst|counter[7]~48_combout\,
	cout => \inst|counter[7]~49\);

-- Location: LCFF_X31_Y16_N15
\inst|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[7]~48_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(7));

-- Location: LCCOMB_X31_Y16_N18
\inst|counter[9]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[9]~52_combout\ = (\inst|counter\(9) & (!\inst|counter[8]~51\)) # (!\inst|counter\(9) & ((\inst|counter[8]~51\) # (GND)))
-- \inst|counter[9]~53\ = CARRY((!\inst|counter[8]~51\) # (!\inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(9),
	datad => VCC,
	cin => \inst|counter[8]~51\,
	combout => \inst|counter[9]~52_combout\,
	cout => \inst|counter[9]~53\);

-- Location: LCFF_X31_Y16_N19
\inst|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[9]~52_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(9));

-- Location: LCCOMB_X31_Y16_N22
\inst|counter[11]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[11]~56_combout\ = (\inst|counter\(11) & (!\inst|counter[10]~55\)) # (!\inst|counter\(11) & ((\inst|counter[10]~55\) # (GND)))
-- \inst|counter[11]~57\ = CARRY((!\inst|counter[10]~55\) # (!\inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(11),
	datad => VCC,
	cin => \inst|counter[10]~55\,
	combout => \inst|counter[11]~56_combout\,
	cout => \inst|counter[11]~57\);

-- Location: LCFF_X31_Y16_N23
\inst|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[11]~56_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(11));

-- Location: LCCOMB_X31_Y16_N26
\inst|counter[13]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[13]~60_combout\ = (\inst|counter\(13) & (!\inst|counter[12]~59\)) # (!\inst|counter\(13) & ((\inst|counter[12]~59\) # (GND)))
-- \inst|counter[13]~61\ = CARRY((!\inst|counter[12]~59\) # (!\inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(13),
	datad => VCC,
	cin => \inst|counter[12]~59\,
	combout => \inst|counter[13]~60_combout\,
	cout => \inst|counter[13]~61\);

-- Location: LCFF_X31_Y16_N27
\inst|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[13]~60_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(13));

-- Location: LCCOMB_X31_Y16_N28
\inst|counter[14]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[14]~62_combout\ = (\inst|counter\(14) & (\inst|counter[13]~61\ $ (GND))) # (!\inst|counter\(14) & (!\inst|counter[13]~61\ & VCC))
-- \inst|counter[14]~63\ = CARRY((\inst|counter\(14) & !\inst|counter[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(14),
	datad => VCC,
	cin => \inst|counter[13]~61\,
	combout => \inst|counter[14]~62_combout\,
	cout => \inst|counter[14]~63\);

-- Location: LCFF_X31_Y16_N29
\inst|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[14]~62_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(14));

-- Location: LCCOMB_X31_Y16_N30
\inst|counter[15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[15]~64_combout\ = (\inst|counter\(15) & (!\inst|counter[14]~63\)) # (!\inst|counter\(15) & ((\inst|counter[14]~63\) # (GND)))
-- \inst|counter[15]~65\ = CARRY((!\inst|counter[14]~63\) # (!\inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(15),
	datad => VCC,
	cin => \inst|counter[14]~63\,
	combout => \inst|counter[15]~64_combout\,
	cout => \inst|counter[15]~65\);

-- Location: LCFF_X31_Y16_N31
\inst|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[15]~64_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(15));

-- Location: LCCOMB_X31_Y15_N0
\inst|counter[16]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[16]~66_combout\ = (\inst|counter\(16) & (\inst|counter[15]~65\ $ (GND))) # (!\inst|counter\(16) & (!\inst|counter[15]~65\ & VCC))
-- \inst|counter[16]~67\ = CARRY((\inst|counter\(16) & !\inst|counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(16),
	datad => VCC,
	cin => \inst|counter[15]~65\,
	combout => \inst|counter[16]~66_combout\,
	cout => \inst|counter[16]~67\);

-- Location: LCFF_X31_Y15_N1
\inst|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[16]~66_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(16));

-- Location: LCCOMB_X31_Y15_N2
\inst|counter[17]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[17]~68_combout\ = (\inst|counter\(17) & (!\inst|counter[16]~67\)) # (!\inst|counter\(17) & ((\inst|counter[16]~67\) # (GND)))
-- \inst|counter[17]~69\ = CARRY((!\inst|counter[16]~67\) # (!\inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(17),
	datad => VCC,
	cin => \inst|counter[16]~67\,
	combout => \inst|counter[17]~68_combout\,
	cout => \inst|counter[17]~69\);

-- Location: LCFF_X31_Y15_N3
\inst|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[17]~68_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(17));

-- Location: LCCOMB_X31_Y15_N4
\inst|counter[18]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[18]~70_combout\ = (\inst|counter\(18) & (\inst|counter[17]~69\ $ (GND))) # (!\inst|counter\(18) & (!\inst|counter[17]~69\ & VCC))
-- \inst|counter[18]~71\ = CARRY((\inst|counter\(18) & !\inst|counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(18),
	datad => VCC,
	cin => \inst|counter[17]~69\,
	combout => \inst|counter[18]~70_combout\,
	cout => \inst|counter[18]~71\);

-- Location: LCFF_X31_Y15_N5
\inst|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[18]~70_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(18));

-- Location: LCCOMB_X31_Y15_N8
\inst|counter[20]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[20]~74_combout\ = (\inst|counter\(20) & (\inst|counter[19]~73\ $ (GND))) # (!\inst|counter\(20) & (!\inst|counter[19]~73\ & VCC))
-- \inst|counter[20]~75\ = CARRY((\inst|counter\(20) & !\inst|counter[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(20),
	datad => VCC,
	cin => \inst|counter[19]~73\,
	combout => \inst|counter[20]~74_combout\,
	cout => \inst|counter[20]~75\);

-- Location: LCFF_X31_Y15_N9
\inst|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[20]~74_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(20));

-- Location: LCCOMB_X31_Y15_N14
\inst|counter[23]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[23]~80_combout\ = (\inst|counter\(23) & (!\inst|counter[22]~79\)) # (!\inst|counter\(23) & ((\inst|counter[22]~79\) # (GND)))
-- \inst|counter[23]~81\ = CARRY((!\inst|counter[22]~79\) # (!\inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(23),
	datad => VCC,
	cin => \inst|counter[22]~79\,
	combout => \inst|counter[23]~80_combout\,
	cout => \inst|counter[23]~81\);

-- Location: LCFF_X31_Y15_N15
\inst|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[23]~80_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(23));

-- Location: LCCOMB_X31_Y15_N18
\inst|counter[25]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[25]~84_combout\ = (\inst|counter\(25) & (!\inst|counter[24]~83\)) # (!\inst|counter\(25) & ((\inst|counter[24]~83\) # (GND)))
-- \inst|counter[25]~85\ = CARRY((!\inst|counter[24]~83\) # (!\inst|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(25),
	datad => VCC,
	cin => \inst|counter[24]~83\,
	combout => \inst|counter[25]~84_combout\,
	cout => \inst|counter[25]~85\);

-- Location: LCFF_X31_Y15_N19
\inst|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[25]~84_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(25));

-- Location: LCFF_X31_Y15_N21
\inst|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[26]~86_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(26));

-- Location: LCCOMB_X30_Y16_N30
\inst|LessThan6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~7_combout\ = (\inst|LessThan6~0_combout\) # ((\inst|counter\(26) & (!\inst|LessThan6~6_combout\ & !\inst|LessThan6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan6~0_combout\,
	datab => \inst|counter\(26),
	datac => \inst|LessThan6~6_combout\,
	datad => \inst|LessThan6~4_combout\,
	combout => \inst|LessThan6~7_combout\);

-- Location: LCCOMB_X28_Y16_N24
\inst|sub_state.PAGE0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state.PAGE0~0_combout\ = (\inst|sub_state~17_combout\ & (((\inst|sub_state.PAGE0~regout\)))) # (!\inst|sub_state~17_combout\ & (\SW~combout\(0) & ((\inst|sub_state.PAGE0~regout\) # (!\inst|Selector46~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state~17_combout\,
	datab => \SW~combout\(0),
	datac => \inst|sub_state.PAGE0~regout\,
	datad => \inst|Selector46~6_combout\,
	combout => \inst|sub_state.PAGE0~0_combout\);

-- Location: LCFF_X28_Y16_N25
\inst|sub_state.PAGE0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|sub_state.PAGE0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state.PAGE0~regout\);

-- Location: LCCOMB_X25_Y16_N26
\inst|Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector54~0_combout\ = (\inst|state.PAGE_SELECT~regout\ & (\inst|page_index~0_combout\ & ((\inst|sub_state.PAGE1~regout\) # (!\inst|sub_state.PAGE0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE1~regout\,
	datab => \inst|sub_state.PAGE0~regout\,
	datac => \inst|state.PAGE_SELECT~regout\,
	datad => \inst|page_index~0_combout\,
	combout => \inst|Selector54~0_combout\);

-- Location: LCCOMB_X25_Y16_N16
\inst|Selector54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector54~1_combout\ = (\inst|Selector54~0_combout\) # ((!\inst|LessThan6~7_combout\ & \inst|state.WAIT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan6~7_combout\,
	datac => \inst|state.WAIT~regout\,
	datad => \inst|Selector54~0_combout\,
	combout => \inst|Selector54~1_combout\);

-- Location: LCFF_X25_Y16_N17
\inst|state.WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector54~1_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WAIT~regout\);

-- Location: LCCOMB_X29_Y16_N14
\inst|state~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~33_combout\ = (!\inst|state.PAGE_SELECT~regout\ & ((\inst|state.WAIT~regout\ & ((!\inst|LessThan6~7_combout\))) # (!\inst|state.WAIT~regout\ & (!\inst|LessThan9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|LessThan9~8_combout\,
	datac => \inst|state.WAIT~regout\,
	datad => \inst|LessThan6~7_combout\,
	combout => \inst|state~33_combout\);

-- Location: LCCOMB_X29_Y16_N8
\inst|state~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~34_combout\ = (!\inst|Selector46~9_combout\ & ((\inst|state~32_combout\) # (\inst|state~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state~32_combout\,
	datac => \inst|state~33_combout\,
	datad => \inst|Selector46~9_combout\,
	combout => \inst|state~34_combout\);

-- Location: LCCOMB_X29_Y15_N22
\inst|state~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~30_combout\ = (\inst|state.WRITE_DATA~regout\ & (((!\inst|LessThan3~2_combout\) # (!\inst|LessThan3~6_combout\)) # (!\inst|counter[28]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[28]~33_combout\,
	datab => \inst|state.WRITE_DATA~regout\,
	datac => \inst|LessThan3~6_combout\,
	datad => \inst|LessThan3~2_combout\,
	combout => \inst|state~30_combout\);

-- Location: LCCOMB_X29_Y16_N28
\inst|state~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~40_combout\ = (\SW~combout\(0) & ((\inst|state~30_combout\) # ((\inst|state.WAIT_EXEC~regout\ & \inst|state~37_combout\)))) # (!\SW~combout\(0) & (((\inst|state.WAIT_EXEC~regout\ & \inst|state~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state~30_combout\,
	datac => \inst|state.WAIT_EXEC~regout\,
	datad => \inst|state~37_combout\,
	combout => \inst|state~40_combout\);

-- Location: LCFF_X29_Y16_N29
\inst|state.WAIT_EXEC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WAIT_EXEC~regout\);

-- Location: LCCOMB_X31_Y15_N30
\inst|counter[31]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[31]~101_combout\ = \inst|counter[30]~100\ $ (\inst|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(31),
	cin => \inst|counter[30]~100\,
	combout => \inst|counter[31]~101_combout\);

-- Location: LCFF_X31_Y15_N31
\inst|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[31]~101_combout\,
	sclr => \inst|counter[28]~104_combout\,
	ena => \inst|counter[28]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(31));

-- Location: LCCOMB_X29_Y15_N16
\inst|state~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~41_combout\ = (\inst|state.WAIT_EXEC~regout\ & (((\inst|counter\(31)) # (!\inst|LessThan4~2_combout\)) # (!\inst|counter[28]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[28]~32_combout\,
	datab => \inst|state.WAIT_EXEC~regout\,
	datac => \inst|LessThan4~2_combout\,
	datad => \inst|counter\(31),
	combout => \inst|state~41_combout\);

-- Location: LCCOMB_X29_Y15_N0
\inst|state~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~31_combout\ = (!\inst|state~42_combout\ & (\SW~combout\(0) & (!\inst|state~41_combout\ & !\inst|state~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~42_combout\,
	datab => \SW~combout\(0),
	datac => \inst|state~41_combout\,
	datad => \inst|state~30_combout\,
	combout => \inst|state~31_combout\);

-- Location: LCCOMB_X29_Y16_N0
\inst|state~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~37_combout\ = (\inst|state~29_combout\ & (\inst|state~31_combout\ & ((\inst|state~36_combout\) # (\inst|state~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~36_combout\,
	datab => \inst|state~29_combout\,
	datac => \inst|state~34_combout\,
	datad => \inst|state~31_combout\,
	combout => \inst|state~37_combout\);

-- Location: LCCOMB_X29_Y16_N16
\inst|state~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~39_combout\ = (\inst|state~41_combout\ & ((\SW~combout\(0)) # ((\inst|state.PAGE_SELECT~regout\ & \inst|state~37_combout\)))) # (!\inst|state~41_combout\ & (((\inst|state.PAGE_SELECT~regout\ & \inst|state~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~41_combout\,
	datab => \SW~combout\(0),
	datac => \inst|state.PAGE_SELECT~regout\,
	datad => \inst|state~37_combout\,
	combout => \inst|state~39_combout\);

-- Location: LCFF_X29_Y16_N17
\inst|state.PAGE_SELECT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.PAGE_SELECT~regout\);

-- Location: LCCOMB_X25_Y16_N4
\inst|sub_state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~22_combout\ = (\inst|sub_state~20_combout\ & (((\inst|sub_state.PAGE_ERROR~regout\)))) # (!\inst|sub_state~20_combout\ & (\SW~combout\(0) & ((\inst|LessThan5~1_combout\) # (\inst|sub_state.PAGE_ERROR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~1_combout\,
	datab => \SW~combout\(0),
	datac => \inst|sub_state.PAGE_ERROR~regout\,
	datad => \inst|sub_state~20_combout\,
	combout => \inst|sub_state~22_combout\);

-- Location: LCFF_X25_Y16_N5
\inst|sub_state.PAGE_ERROR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|sub_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state.PAGE_ERROR~regout\);

-- Location: LCCOMB_X28_Y16_N4
\inst|page_index~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~5_combout\ = (!\inst|page_index[4]~4_combout\ & (\inst|state.PAGE_SELECT~regout\ & (\inst|sub_state.PAGE_ERROR~regout\ & !\inst|page_index~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index[4]~4_combout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \inst|sub_state.PAGE_ERROR~regout\,
	datad => \inst|page_index~0_combout\,
	combout => \inst|page_index~5_combout\);

-- Location: LCCOMB_X27_Y16_N22
\inst|page_index~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~14_combout\ = (\inst|page_index~5_combout\) # ((\inst|page_index[4]~4_combout\ & \inst|page_index~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index[4]~4_combout\,
	datac => \inst|page_index~13_combout\,
	datad => \inst|page_index~5_combout\,
	combout => \inst|page_index~14_combout\);

-- Location: LCCOMB_X25_Y16_N24
\inst|page_index[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[4]~3_combout\ = (!\inst|sub_state.PAGE2~regout\ & \inst|state.PAGE_SELECT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sub_state.PAGE2~regout\,
	datac => \inst|state.PAGE_SELECT~regout\,
	combout => \inst|page_index[4]~3_combout\);

-- Location: LCCOMB_X30_Y16_N20
\inst|Selector65~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~7_combout\ = (!\KEY~combout\(0) & ((\inst|always2~2_combout\) # (!\inst|always2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|always2~2_combout\,
	datab => \KEY~combout\(0),
	datad => \inst|always2~1_combout\,
	combout => \inst|Selector65~7_combout\);

-- Location: LCCOMB_X30_Y16_N8
\inst|Selector65~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~12_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & \inst|LessThan9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|LessThan9~8_combout\,
	combout => \inst|Selector65~12_combout\);

-- Location: LCCOMB_X27_Y16_N10
\inst|page_index[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[4]~9_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|Equal1~1_combout\)) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|Equal1~1_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|page_index[4]~9_combout\);

-- Location: LCCOMB_X27_Y16_N4
\inst|page_index[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[4]~10_combout\ = (\inst|page_index[4]~8_combout\) # (((\inst|Selector65~7_combout\ & !\inst|page_index[4]~9_combout\)) # (!\inst|Selector65~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index[4]~8_combout\,
	datab => \inst|Selector65~7_combout\,
	datac => \inst|Selector65~12_combout\,
	datad => \inst|page_index[4]~9_combout\,
	combout => \inst|page_index[4]~10_combout\);

-- Location: LCCOMB_X25_Y16_N10
\inst|sub_state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~18_combout\ = (!\inst|sub_state~17_combout\ & (!\inst|LessThan5~1_combout\ & (\SW~combout\(0) & !\inst|Selector46~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state~17_combout\,
	datab => \inst|LessThan5~1_combout\,
	datac => \SW~combout\(0),
	datad => \inst|Selector46~6_combout\,
	combout => \inst|sub_state~18_combout\);

-- Location: LCCOMB_X25_Y16_N2
\inst|sub_state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~23_combout\ = (\inst|sub_state.PAGE0~regout\ & (\inst|sub_state~20_combout\ & (\inst|sub_state.PAGE1~regout\))) # (!\inst|sub_state.PAGE0~regout\ & ((\inst|sub_state~18_combout\) # ((\inst|sub_state~20_combout\ & 
-- \inst|sub_state.PAGE1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE0~regout\,
	datab => \inst|sub_state~20_combout\,
	datac => \inst|sub_state.PAGE1~regout\,
	datad => \inst|sub_state~18_combout\,
	combout => \inst|sub_state~23_combout\);

-- Location: LCFF_X25_Y16_N3
\inst|sub_state.PAGE1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|sub_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state.PAGE1~regout\);

-- Location: LCCOMB_X27_Y16_N30
\inst|page_index[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[4]~11_combout\ = (\inst|LessThan5~1_combout\ & (((\inst|sub_state.PAGE1~regout\)) # (!\inst|sub_state.PAGE0~regout\))) # (!\inst|LessThan5~1_combout\ & (!\inst|page_index[4]~9_combout\ & ((\inst|sub_state.PAGE1~regout\) # 
-- (!\inst|sub_state.PAGE0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~1_combout\,
	datab => \inst|sub_state.PAGE0~regout\,
	datac => \inst|sub_state.PAGE1~regout\,
	datad => \inst|page_index[4]~9_combout\,
	combout => \inst|page_index[4]~11_combout\);

-- Location: LCCOMB_X27_Y16_N16
\inst|page_index[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[4]~12_combout\ = (((\inst|page_index[4]~3_combout\ & !\inst|page_index[4]~11_combout\)) # (!\inst|page_index[4]~10_combout\)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|page_index[4]~3_combout\,
	datac => \inst|page_index[4]~10_combout\,
	datad => \inst|page_index[4]~11_combout\,
	combout => \inst|page_index[4]~12_combout\);

-- Location: LCFF_X27_Y16_N23
\inst|page_index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|page_index~14_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst|page_index[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(3));

-- Location: LCCOMB_X28_Y14_N16
\inst|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|page_index\(0) & (\inst|Equal1~0_combout\ & (\inst|page_index\(3) & !\inst|page_index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datab => \inst|Equal1~0_combout\,
	datac => \inst|page_index\(3),
	datad => \inst|page_index\(4),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y16_N26
\inst|Selector65~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~8_combout\ = (\inst|state~28_combout\) # (((!\inst|Equal1~1_combout\ & \inst|Selector65~7_combout\)) # (!\inst|LessThan9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~28_combout\,
	datab => \inst|Equal1~1_combout\,
	datac => \inst|Selector65~7_combout\,
	datad => \inst|LessThan9~8_combout\,
	combout => \inst|Selector65~8_combout\);

-- Location: LCCOMB_X30_Y16_N6
\inst|Selector65~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~5_combout\ = (\inst|Add2~0_combout\ & (!\KEY~combout\(0) & (!\inst|always2~2_combout\ & \inst|always2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \KEY~combout\(0),
	datac => \inst|always2~2_combout\,
	datad => \inst|always2~1_combout\,
	combout => \inst|Selector65~5_combout\);

-- Location: LCCOMB_X29_Y16_N18
\inst|Selector65~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~6_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|LessThan9~8_combout\ & ((\inst|Selector65~4_combout\) # (\inst|Selector65~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector65~4_combout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|LessThan9~8_combout\,
	datad => \inst|Selector65~5_combout\,
	combout => \inst|Selector65~6_combout\);

-- Location: LCCOMB_X29_Y16_N24
\inst|Selector65~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~9_combout\ = (\inst|Selector65~6_combout\) # ((\inst|page_index\(0) & (\inst|state.WAIT_BUTTON_SHORT~regout\ & \inst|Selector65~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|Selector65~8_combout\,
	datad => \inst|Selector65~6_combout\,
	combout => \inst|Selector65~9_combout\);

-- Location: LCCOMB_X28_Y16_N20
\inst|Selector65~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~10_combout\ = (\inst|page_index\(0) & (((\inst|sub_state.PAGE2~regout\) # (!\inst|state.PAGE_SELECT~regout\)) # (!\inst|sub_state.PAGE0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE0~regout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \inst|sub_state.PAGE2~regout\,
	datad => \inst|page_index\(0),
	combout => \inst|Selector65~10_combout\);

-- Location: LCCOMB_X28_Y16_N0
\inst|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~0_combout\ = (!\inst|state.WAIT_BUTTON_SHORT~regout\ & \inst|state.PAGE_SELECT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|state.PAGE_SELECT~regout\,
	combout => \inst|Selector65~0_combout\);

-- Location: LCCOMB_X28_Y16_N26
\inst|Selector65~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~2_combout\ = (\inst|Selector65~0_combout\ & ((\inst|page_index~0_combout\ & ((!\inst|sub_state.PAGE0~regout\))) # (!\inst|page_index~0_combout\ & (\inst|Selector65~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector65~1_combout\,
	datab => \inst|Selector65~0_combout\,
	datac => \inst|sub_state.PAGE0~regout\,
	datad => \inst|page_index~0_combout\,
	combout => \inst|Selector65~2_combout\);

-- Location: LCCOMB_X28_Y16_N6
\inst|Selector65~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~11_combout\ = (\inst|Selector65~9_combout\) # ((\inst|Selector65~2_combout\) # ((!\inst|state.WAIT_BUTTON_SHORT~regout\ & \inst|Selector65~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|Selector65~9_combout\,
	datac => \inst|Selector65~10_combout\,
	datad => \inst|Selector65~2_combout\,
	combout => \inst|Selector65~11_combout\);

-- Location: LCFF_X28_Y16_N7
\inst|page_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector65~11_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(0));

-- Location: LCCOMB_X29_Y14_N22
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|page_index\(2) & (\inst|Add2~3\ $ (GND))) # (!\inst|page_index\(2) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|page_index\(2) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X29_Y14_N26
\inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = \inst|Add2~7\ $ (!\inst|page_index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|page_index\(4),
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\);

-- Location: LCCOMB_X28_Y14_N28
\inst|Add4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~9_combout\ = \inst|Add4~8\ $ (\inst|page_index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|page_index\(4),
	cin => \inst|Add4~8\,
	combout => \inst|Add4~9_combout\);

-- Location: LCCOMB_X28_Y14_N18
\inst|page_index~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~15_combout\ = (\KEY~combout\(0) & (!\inst|page_index~2_combout\ & ((\inst|Add4~9_combout\)))) # (!\KEY~combout\(0) & (((\inst|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst|page_index~2_combout\,
	datac => \inst|Add2~8_combout\,
	datad => \inst|Add4~9_combout\,
	combout => \inst|page_index~15_combout\);

-- Location: LCCOMB_X28_Y16_N10
\inst|page_index~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~16_combout\ = (\inst|page_index~5_combout\) # ((\inst|page_index~15_combout\ & \inst|page_index[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index~15_combout\,
	datac => \inst|page_index~5_combout\,
	datad => \inst|page_index[4]~4_combout\,
	combout => \inst|page_index~16_combout\);

-- Location: LCFF_X28_Y16_N11
\inst|page_index[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|page_index~16_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst|page_index[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(4));

-- Location: LCCOMB_X27_Y14_N16
\inst|page_index[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[4]~1_combout\ = (!\inst|page_index\(4) & (((!\inst|page_index\(1) & !\inst|page_index\(2))) # (!\inst|page_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(1),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(4),
	combout => \inst|page_index[4]~1_combout\);

-- Location: LCCOMB_X27_Y14_N6
\inst|page_index~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~2_combout\ = ((\inst|always2~0_combout\ & ((!\inst|page_index\(0)) # (!\inst|page_index\(1))))) # (!\inst|page_index[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|always2~0_combout\,
	datab => \inst|page_index\(1),
	datac => \inst|page_index[4]~1_combout\,
	datad => \inst|page_index\(0),
	combout => \inst|page_index~2_combout\);

-- Location: LCCOMB_X28_Y14_N4
\inst|page_index~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~6_combout\ = (\KEY~combout\(0) & (!\inst|page_index~2_combout\ & (\inst|Add4~5_combout\))) # (!\KEY~combout\(0) & (((\inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst|page_index~2_combout\,
	datac => \inst|Add4~5_combout\,
	datad => \inst|Add2~4_combout\,
	combout => \inst|page_index~6_combout\);

-- Location: LCCOMB_X27_Y16_N0
\inst|page_index~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~7_combout\ = (\inst|page_index~5_combout\) # ((\inst|page_index~6_combout\ & \inst|page_index[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index~6_combout\,
	datac => \inst|page_index[4]~4_combout\,
	datad => \inst|page_index~5_combout\,
	combout => \inst|page_index~7_combout\);

-- Location: LCFF_X27_Y16_N1
\inst|page_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|page_index~7_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst|page_index[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(2));

-- Location: LCCOMB_X27_Y14_N20
\inst|always2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always2~0_combout\ = (!\inst|page_index\(3) & !\inst|page_index\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datad => \inst|page_index\(2),
	combout => \inst|always2~0_combout\);

-- Location: LCCOMB_X27_Y14_N14
\inst|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (\inst|page_index\(0)) # (((\inst|page_index\(4)) # (!\inst|always2~0_combout\)) # (!\inst|page_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datab => \inst|page_index\(1),
	datac => \inst|always2~0_combout\,
	datad => \inst|page_index\(4),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y14_N24
\inst|Selector64~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~5_combout\ = (\inst|page_index~2_combout\ & (\inst|page_index\(1) & (\inst|Equal2~0_combout\))) # (!\inst|page_index~2_combout\ & (((\inst|Add4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index~2_combout\,
	datab => \inst|page_index\(1),
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Add4~3_combout\,
	combout => \inst|Selector64~5_combout\);

-- Location: LCCOMB_X28_Y14_N2
\inst|Selector64~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~8_combout\ = (\KEY~combout\(0) & (((\inst|Selector64~5_combout\ & !\KEY~combout\(1))))) # (!\KEY~combout\(0) & (\inst|Selector64~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector64~6_combout\,
	datab => \inst|Selector64~5_combout\,
	datac => \KEY~combout\(1),
	datad => \KEY~combout\(0),
	combout => \inst|Selector64~8_combout\);

-- Location: LCCOMB_X28_Y16_N14
\inst|Selector64~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~2_combout\ = (\inst|Selector65~0_combout\ & ((\inst|page_index~0_combout\ & ((\inst|sub_state.PAGE1~regout\))) # (!\inst|page_index~0_combout\ & (\inst|sub_state.PAGE_ERROR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE_ERROR~regout\,
	datab => \inst|Selector65~0_combout\,
	datac => \inst|sub_state.PAGE1~regout\,
	datad => \inst|page_index~0_combout\,
	combout => \inst|Selector64~2_combout\);

-- Location: LCCOMB_X28_Y16_N12
\inst|Selector64~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~3_combout\ = (\inst|sub_state.PAGE1~regout\) # (((!\inst|sub_state.PAGE0~regout\ & !\inst|page_index~0_combout\)) # (!\inst|page_index[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE0~regout\,
	datab => \inst|sub_state.PAGE1~regout\,
	datac => \inst|page_index[4]~3_combout\,
	datad => \inst|page_index~0_combout\,
	combout => \inst|Selector64~3_combout\);

-- Location: LCCOMB_X28_Y16_N30
\inst|Selector64~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~4_combout\ = (\inst|page_index\(1) & ((\inst|Selector52~3_combout\) # ((!\inst|state.WAIT_BUTTON_SHORT~regout\ & \inst|Selector64~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(1),
	datab => \inst|Selector52~3_combout\,
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|Selector64~3_combout\,
	combout => \inst|Selector64~4_combout\);

-- Location: LCCOMB_X28_Y16_N28
\inst|Selector64~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~7_combout\ = (\inst|Selector64~2_combout\) # ((\inst|Selector64~4_combout\) # ((\inst|Selector65~12_combout\ & \inst|Selector64~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector65~12_combout\,
	datab => \inst|Selector64~8_combout\,
	datac => \inst|Selector64~2_combout\,
	datad => \inst|Selector64~4_combout\,
	combout => \inst|Selector64~7_combout\);

-- Location: LCFF_X28_Y16_N29
\inst|page_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector64~7_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(1));

-- Location: LCCOMB_X28_Y14_N12
\inst|always3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always3~0_combout\ = (\inst|page_index\(4)) # (\inst|page_index\(3) $ (((!\inst|page_index\(1) & !\inst|page_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(1),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(4),
	combout => \inst|always3~0_combout\);

-- Location: LCCOMB_X27_Y15_N10
\inst|lcd_data_freq[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[6]~6_combout\ = (!\inst|state_f.CHECK_AND_WAIT~regout\ & ((\inst|always3~0_combout\) # ((!\inst|state.WAIT_BUTTON_SHORT~regout\ & !\inst|state.WAIT_BUTTON_RELEASE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|always3~0_combout\,
	datad => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	combout => \inst|lcd_data_freq[6]~6_combout\);

-- Location: LCCOMB_X27_Y12_N26
\inst|n_index[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|n_index[0]~1_combout\ = ((!\inst|lcd_data_freq[6]~6_combout\ & ((\inst|state_f.DIGIT_SELECT~regout\) # (!\inst|state_f.CHECK_AND_WAIT~regout\)))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|state_f.CHECK_AND_WAIT~regout\,
	datad => \inst|lcd_data_freq[6]~6_combout\,
	combout => \inst|n_index[0]~1_combout\);

-- Location: LCFF_X27_Y12_N5
\inst|n_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|n_index~2_combout\,
	ena => \inst|n_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|n_index\(0));

-- Location: LCCOMB_X27_Y12_N18
\inst|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = \inst|n_index\(2) $ (((\inst|n_index\(1) & \inst|n_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|n_index\(1),
	datac => \inst|n_index\(0),
	datad => \inst|n_index\(2),
	combout => \inst|Add6~0_combout\);

-- Location: LCCOMB_X27_Y12_N22
\inst|n_index~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|n_index~3_combout\ = (\inst|Add6~0_combout\ & (\inst|state_f.DIGIT_SELECT~regout\ & \SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add6~0_combout\,
	datac => \inst|state_f.DIGIT_SELECT~regout\,
	datad => \SW~combout\(0),
	combout => \inst|n_index~3_combout\);

-- Location: LCFF_X27_Y12_N23
\inst|n_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|n_index~3_combout\,
	ena => \inst|n_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|n_index\(2));

-- Location: LCCOMB_X27_Y12_N2
\inst|state_f~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~26_combout\ = (\inst|n_index\(2) & (\inst|state_f.DIGIT_SELECT~regout\ & \SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|n_index\(2),
	datac => \inst|state_f.DIGIT_SELECT~regout\,
	datad => \SW~combout\(0),
	combout => \inst|state_f~26_combout\);

-- Location: LCFF_X27_Y12_N3
\inst|state_f.HZ_DISPLAY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.HZ_DISPLAY~regout\);

-- Location: LCCOMB_X27_Y12_N8
\inst|Selector151~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector151~0_combout\ = (\inst|sub_state_f\(0) & (!\inst|Selector141~0_combout\ & ((!\inst|state_f.HZ_DISPLAY~regout\) # (!\inst|state_f.CHECK_AND_WAIT~regout\)))) # (!\inst|sub_state_f\(0) & (\inst|state_f.CHECK_AND_WAIT~regout\ & 
-- (\inst|state_f.HZ_DISPLAY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|state_f.HZ_DISPLAY~regout\,
	datac => \inst|sub_state_f\(0),
	datad => \inst|Selector141~0_combout\,
	combout => \inst|Selector151~0_combout\);

-- Location: LCFF_X27_Y12_N9
\inst|sub_state_f[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector151~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state_f\(0));

-- Location: LCCOMB_X27_Y12_N20
\inst|lcd_data_freq[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[6]~2_combout\ = (\inst|sub_state_f\(0) & (\inst|sub_state_f\(1) & \inst|state_f.HZ_DISPLAY~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sub_state_f\(0),
	datac => \inst|sub_state_f\(1),
	datad => \inst|state_f.HZ_DISPLAY~regout\,
	combout => \inst|lcd_data_freq[6]~2_combout\);

-- Location: LCCOMB_X27_Y12_N24
\inst|state_f~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~25_combout\ = (!\inst|lcd_data_freq[6]~6_combout\ & (!\inst|lcd_data_freq[6]~2_combout\ & \SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_freq[6]~6_combout\,
	datac => \inst|lcd_data_freq[6]~2_combout\,
	datad => \SW~combout\(0),
	combout => \inst|state_f~25_combout\);

-- Location: LCFF_X27_Y12_N25
\inst|state_f.CHECK_AND_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.CHECK_AND_WAIT~regout\);

-- Location: LCCOMB_X27_Y12_N28
\inst|counter_f[25]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~77_combout\ = (\SW~combout\(0) & (\inst|state_f.CHECK_AND_WAIT~regout\ & \inst|counter_f[25]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \inst|state_f.CHECK_AND_WAIT~regout\,
	datad => \inst|counter_f[25]~38_combout\,
	combout => \inst|counter_f[25]~77_combout\);

-- Location: LCCOMB_X28_Y13_N2
\inst|counter_f[25]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~39_combout\ = (\inst|LessThan13~0_combout\ & (!\inst|counter_f\(14) & (!\inst|counter_f\(16) & !\inst|counter_f\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~0_combout\,
	datab => \inst|counter_f\(14),
	datac => \inst|counter_f\(16),
	datad => \inst|counter_f\(15),
	combout => \inst|counter_f[25]~39_combout\);

-- Location: LCCOMB_X29_Y13_N10
\inst|counter_f[5]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[5]~51_combout\ = (\inst|counter_f\(5) & (!\inst|counter_f[4]~50\)) # (!\inst|counter_f\(5) & ((\inst|counter_f[4]~50\) # (GND)))
-- \inst|counter_f[5]~52\ = CARRY((!\inst|counter_f[4]~50\) # (!\inst|counter_f\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(5),
	datad => VCC,
	cin => \inst|counter_f[4]~50\,
	combout => \inst|counter_f[5]~51_combout\,
	cout => \inst|counter_f[5]~52\);

-- Location: LCCOMB_X27_Y12_N16
\inst|counter_f[25]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~108_combout\ = ((!\inst|state_f.HZ_DISPLAY~regout\ & (!\inst|state_f.DIGIT_SELECT~regout\ & !\inst|lcd_data_freq[6]~6_combout\))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state_f.HZ_DISPLAY~regout\,
	datac => \inst|state_f.DIGIT_SELECT~regout\,
	datad => \inst|lcd_data_freq[6]~6_combout\,
	combout => \inst|counter_f[25]~108_combout\);

-- Location: LCFF_X29_Y13_N11
\inst|counter_f[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[5]~51_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(5));

-- Location: LCCOMB_X29_Y13_N12
\inst|counter_f[6]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[6]~53_combout\ = (\inst|counter_f\(6) & (\inst|counter_f[5]~52\ $ (GND))) # (!\inst|counter_f\(6) & (!\inst|counter_f[5]~52\ & VCC))
-- \inst|counter_f[6]~54\ = CARRY((\inst|counter_f\(6) & !\inst|counter_f[5]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(6),
	datad => VCC,
	cin => \inst|counter_f[5]~52\,
	combout => \inst|counter_f[6]~53_combout\,
	cout => \inst|counter_f[6]~54\);

-- Location: LCFF_X29_Y13_N13
\inst|counter_f[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[6]~53_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(6));

-- Location: LCCOMB_X28_Y13_N6
\inst|LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan12~1_combout\ = (\inst|counter_f\(6) & ((\inst|counter_f\(5)) # (\inst|counter_f\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(5),
	datac => \inst|counter_f\(4),
	datad => \inst|counter_f\(6),
	combout => \inst|LessThan12~1_combout\);

-- Location: LCCOMB_X28_Y13_N0
\inst|counter_f[25]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~40_combout\ = (\inst|counter_f[25]~39_combout\ & ((\inst|LessThan12~0_combout\) # ((!\inst|LessThan12~1_combout\) # (!\inst|counter_f\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan12~0_combout\,
	datab => \inst|counter_f[25]~39_combout\,
	datac => \inst|counter_f\(7),
	datad => \inst|LessThan12~1_combout\,
	combout => \inst|counter_f[25]~40_combout\);

-- Location: LCCOMB_X29_Y13_N16
\inst|counter_f[8]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[8]~57_combout\ = (\inst|counter_f\(8) & (\inst|counter_f[7]~56\ $ (GND))) # (!\inst|counter_f\(8) & (!\inst|counter_f[7]~56\ & VCC))
-- \inst|counter_f[8]~58\ = CARRY((\inst|counter_f\(8) & !\inst|counter_f[7]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(8),
	datad => VCC,
	cin => \inst|counter_f[7]~56\,
	combout => \inst|counter_f[8]~57_combout\,
	cout => \inst|counter_f[8]~58\);

-- Location: LCFF_X29_Y13_N17
\inst|counter_f[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[8]~57_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(8));

-- Location: LCCOMB_X28_Y13_N22
\inst|LessThan13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~1_combout\ = (((!\inst|LessThan12~1_combout\ & !\inst|counter_f\(7))) # (!\inst|counter_f\(9))) # (!\inst|counter_f\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan12~1_combout\,
	datab => \inst|counter_f\(7),
	datac => \inst|counter_f\(8),
	datad => \inst|counter_f\(9),
	combout => \inst|LessThan13~1_combout\);

-- Location: LCCOMB_X29_Y13_N20
\inst|counter_f[10]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[10]~61_combout\ = (\inst|counter_f\(10) & (\inst|counter_f[9]~60\ $ (GND))) # (!\inst|counter_f\(10) & (!\inst|counter_f[9]~60\ & VCC))
-- \inst|counter_f[10]~62\ = CARRY((\inst|counter_f\(10) & !\inst|counter_f[9]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(10),
	datad => VCC,
	cin => \inst|counter_f[9]~60\,
	combout => \inst|counter_f[10]~61_combout\,
	cout => \inst|counter_f[10]~62\);

-- Location: LCFF_X29_Y13_N21
\inst|counter_f[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[10]~61_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(10));

-- Location: LCCOMB_X28_Y13_N28
\inst|LessThan13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~2_combout\ = (\inst|LessThan13~0_combout\ & (\inst|LessThan13~1_combout\ & (!\inst|counter_f\(16) & !\inst|counter_f\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~0_combout\,
	datab => \inst|LessThan13~1_combout\,
	datac => \inst|counter_f\(16),
	datad => \inst|counter_f\(10),
	combout => \inst|LessThan13~2_combout\);

-- Location: LCCOMB_X28_Y13_N4
\inst|LessThan13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~3_combout\ = (\inst|LessThan13~2_combout\) # ((!\inst|counter_f\(16) & ((!\inst|counter_f\(15)) # (!\inst|counter_f\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(14),
	datab => \inst|counter_f\(15),
	datac => \inst|counter_f\(16),
	datad => \inst|LessThan13~2_combout\,
	combout => \inst|LessThan13~3_combout\);

-- Location: LCCOMB_X28_Y13_N8
\inst|LessThan14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~2_combout\ = (!\inst|counter_f\(12) & (!\inst|counter_f\(14) & (!\inst|counter_f\(13) & !\inst|counter_f\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(12),
	datab => \inst|counter_f\(14),
	datac => \inst|counter_f\(13),
	datad => \inst|counter_f\(11),
	combout => \inst|LessThan14~2_combout\);

-- Location: LCCOMB_X28_Y13_N24
\inst|LessThan14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~0_combout\ = ((!\inst|counter_f\(5) & !\inst|counter_f\(6))) # (!\inst|counter_f\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(7),
	datac => \inst|counter_f\(5),
	datad => \inst|counter_f\(6),
	combout => \inst|LessThan14~0_combout\);

-- Location: LCCOMB_X28_Y13_N14
\inst|LessThan14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~1_combout\ = (((!\inst|counter_f\(8) & \inst|LessThan14~0_combout\)) # (!\inst|counter_f\(9))) # (!\inst|counter_f\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(8),
	datab => \inst|counter_f\(10),
	datac => \inst|LessThan14~0_combout\,
	datad => \inst|counter_f\(9),
	combout => \inst|LessThan14~1_combout\);

-- Location: LCCOMB_X28_Y13_N18
\inst|LessThan14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~3_combout\ = (((\inst|LessThan14~2_combout\ & \inst|LessThan14~1_combout\)) # (!\inst|counter_f\(15))) # (!\inst|counter_f\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(16),
	datab => \inst|LessThan14~2_combout\,
	datac => \inst|LessThan14~1_combout\,
	datad => \inst|counter_f\(15),
	combout => \inst|LessThan14~3_combout\);

-- Location: LCCOMB_X28_Y13_N30
\inst|counter_f[25]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~78_combout\ = (\inst|state_f.WAIT_EXEC~regout\ & ((\inst|LessThan14~3_combout\))) # (!\inst|state_f.WAIT_EXEC~regout\ & (\inst|LessThan13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f.WAIT_EXEC~regout\,
	datac => \inst|LessThan13~3_combout\,
	datad => \inst|LessThan14~3_combout\,
	combout => \inst|counter_f[25]~78_combout\);

-- Location: LCCOMB_X28_Y13_N16
\inst|counter_f[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~79_combout\ = ((\inst|state_f.SETUP~regout\ & (!\inst|counter_f[25]~40_combout\)) # (!\inst|state_f.SETUP~regout\ & ((!\inst|counter_f[25]~78_combout\)))) # (!\inst|counter_f[25]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.SETUP~regout\,
	datab => \inst|counter_f[25]~77_combout\,
	datac => \inst|counter_f[25]~40_combout\,
	datad => \inst|counter_f[25]~78_combout\,
	combout => \inst|counter_f[25]~79_combout\);

-- Location: LCFF_X29_Y13_N1
\inst|counter_f[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[0]~41_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(0));

-- Location: LCCOMB_X29_Y13_N2
\inst|counter_f[1]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[1]~43_combout\ = (\inst|counter_f\(1) & (!\inst|counter_f[0]~42\)) # (!\inst|counter_f\(1) & ((\inst|counter_f[0]~42\) # (GND)))
-- \inst|counter_f[1]~44\ = CARRY((!\inst|counter_f[0]~42\) # (!\inst|counter_f\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(1),
	datad => VCC,
	cin => \inst|counter_f[0]~42\,
	combout => \inst|counter_f[1]~43_combout\,
	cout => \inst|counter_f[1]~44\);

-- Location: LCFF_X29_Y13_N3
\inst|counter_f[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[1]~43_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(1));

-- Location: LCCOMB_X29_Y13_N4
\inst|counter_f[2]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[2]~45_combout\ = (\inst|counter_f\(2) & (\inst|counter_f[1]~44\ $ (GND))) # (!\inst|counter_f\(2) & (!\inst|counter_f[1]~44\ & VCC))
-- \inst|counter_f[2]~46\ = CARRY((\inst|counter_f\(2) & !\inst|counter_f[1]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(2),
	datad => VCC,
	cin => \inst|counter_f[1]~44\,
	combout => \inst|counter_f[2]~45_combout\,
	cout => \inst|counter_f[2]~46\);

-- Location: LCFF_X29_Y13_N5
\inst|counter_f[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[2]~45_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(2));

-- Location: LCCOMB_X29_Y13_N8
\inst|counter_f[4]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[4]~49_combout\ = (\inst|counter_f\(4) & (\inst|counter_f[3]~48\ $ (GND))) # (!\inst|counter_f\(4) & (!\inst|counter_f[3]~48\ & VCC))
-- \inst|counter_f[4]~50\ = CARRY((\inst|counter_f\(4) & !\inst|counter_f[3]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(4),
	datad => VCC,
	cin => \inst|counter_f[3]~48\,
	combout => \inst|counter_f[4]~49_combout\,
	cout => \inst|counter_f[4]~50\);

-- Location: LCFF_X29_Y13_N9
\inst|counter_f[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[4]~49_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(4));

-- Location: LCCOMB_X29_Y13_N14
\inst|counter_f[7]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[7]~55_combout\ = (\inst|counter_f\(7) & (!\inst|counter_f[6]~54\)) # (!\inst|counter_f\(7) & ((\inst|counter_f[6]~54\) # (GND)))
-- \inst|counter_f[7]~56\ = CARRY((!\inst|counter_f[6]~54\) # (!\inst|counter_f\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(7),
	datad => VCC,
	cin => \inst|counter_f[6]~54\,
	combout => \inst|counter_f[7]~55_combout\,
	cout => \inst|counter_f[7]~56\);

-- Location: LCFF_X29_Y13_N15
\inst|counter_f[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[7]~55_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(7));

-- Location: LCCOMB_X29_Y13_N18
\inst|counter_f[9]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[9]~59_combout\ = (\inst|counter_f\(9) & (!\inst|counter_f[8]~58\)) # (!\inst|counter_f\(9) & ((\inst|counter_f[8]~58\) # (GND)))
-- \inst|counter_f[9]~60\ = CARRY((!\inst|counter_f[8]~58\) # (!\inst|counter_f\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(9),
	datad => VCC,
	cin => \inst|counter_f[8]~58\,
	combout => \inst|counter_f[9]~59_combout\,
	cout => \inst|counter_f[9]~60\);

-- Location: LCFF_X29_Y13_N19
\inst|counter_f[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[9]~59_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(9));

-- Location: LCCOMB_X29_Y13_N22
\inst|counter_f[11]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[11]~63_combout\ = (\inst|counter_f\(11) & (!\inst|counter_f[10]~62\)) # (!\inst|counter_f\(11) & ((\inst|counter_f[10]~62\) # (GND)))
-- \inst|counter_f[11]~64\ = CARRY((!\inst|counter_f[10]~62\) # (!\inst|counter_f\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(11),
	datad => VCC,
	cin => \inst|counter_f[10]~62\,
	combout => \inst|counter_f[11]~63_combout\,
	cout => \inst|counter_f[11]~64\);

-- Location: LCFF_X29_Y13_N23
\inst|counter_f[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[11]~63_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(11));

-- Location: LCCOMB_X29_Y13_N26
\inst|counter_f[13]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[13]~67_combout\ = (\inst|counter_f\(13) & (!\inst|counter_f[12]~66\)) # (!\inst|counter_f\(13) & ((\inst|counter_f[12]~66\) # (GND)))
-- \inst|counter_f[13]~68\ = CARRY((!\inst|counter_f[12]~66\) # (!\inst|counter_f\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(13),
	datad => VCC,
	cin => \inst|counter_f[12]~66\,
	combout => \inst|counter_f[13]~67_combout\,
	cout => \inst|counter_f[13]~68\);

-- Location: LCFF_X29_Y13_N27
\inst|counter_f[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[13]~67_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(13));

-- Location: LCCOMB_X29_Y13_N28
\inst|counter_f[14]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~69_combout\ = (\inst|counter_f\(14) & (\inst|counter_f[13]~68\ $ (GND))) # (!\inst|counter_f\(14) & (!\inst|counter_f[13]~68\ & VCC))
-- \inst|counter_f[14]~70\ = CARRY((\inst|counter_f\(14) & !\inst|counter_f[13]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(14),
	datad => VCC,
	cin => \inst|counter_f[13]~68\,
	combout => \inst|counter_f[14]~69_combout\,
	cout => \inst|counter_f[14]~70\);

-- Location: LCFF_X29_Y13_N29
\inst|counter_f[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[14]~69_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(14));

-- Location: LCCOMB_X29_Y13_N30
\inst|counter_f[15]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[15]~71_combout\ = (\inst|counter_f\(15) & (!\inst|counter_f[14]~70\)) # (!\inst|counter_f\(15) & ((\inst|counter_f[14]~70\) # (GND)))
-- \inst|counter_f[15]~72\ = CARRY((!\inst|counter_f[14]~70\) # (!\inst|counter_f\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(15),
	datad => VCC,
	cin => \inst|counter_f[14]~70\,
	combout => \inst|counter_f[15]~71_combout\,
	cout => \inst|counter_f[15]~72\);

-- Location: LCFF_X29_Y13_N31
\inst|counter_f[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[15]~71_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(15));

-- Location: LCCOMB_X29_Y12_N0
\inst|counter_f[16]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[16]~73_combout\ = (\inst|counter_f\(16) & (\inst|counter_f[15]~72\ $ (GND))) # (!\inst|counter_f\(16) & (!\inst|counter_f[15]~72\ & VCC))
-- \inst|counter_f[16]~74\ = CARRY((\inst|counter_f\(16) & !\inst|counter_f[15]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(16),
	datad => VCC,
	cin => \inst|counter_f[15]~72\,
	combout => \inst|counter_f[16]~73_combout\,
	cout => \inst|counter_f[16]~74\);

-- Location: LCFF_X29_Y12_N1
\inst|counter_f[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[16]~73_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(16));

-- Location: LCCOMB_X29_Y12_N2
\inst|counter_f[17]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[17]~75_combout\ = (\inst|counter_f\(17) & (!\inst|counter_f[16]~74\)) # (!\inst|counter_f\(17) & ((\inst|counter_f[16]~74\) # (GND)))
-- \inst|counter_f[17]~76\ = CARRY((!\inst|counter_f[16]~74\) # (!\inst|counter_f\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(17),
	datad => VCC,
	cin => \inst|counter_f[16]~74\,
	combout => \inst|counter_f[17]~75_combout\,
	cout => \inst|counter_f[17]~76\);

-- Location: LCFF_X29_Y12_N3
\inst|counter_f[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[17]~75_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(17));

-- Location: LCCOMB_X29_Y12_N4
\inst|counter_f[18]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[18]~80_combout\ = (\inst|counter_f\(18) & (\inst|counter_f[17]~76\ $ (GND))) # (!\inst|counter_f\(18) & (!\inst|counter_f[17]~76\ & VCC))
-- \inst|counter_f[18]~81\ = CARRY((\inst|counter_f\(18) & !\inst|counter_f[17]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(18),
	datad => VCC,
	cin => \inst|counter_f[17]~76\,
	combout => \inst|counter_f[18]~80_combout\,
	cout => \inst|counter_f[18]~81\);

-- Location: LCFF_X29_Y12_N5
\inst|counter_f[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[18]~80_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(18));

-- Location: LCCOMB_X29_Y12_N6
\inst|counter_f[19]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[19]~82_combout\ = (\inst|counter_f\(19) & (!\inst|counter_f[18]~81\)) # (!\inst|counter_f\(19) & ((\inst|counter_f[18]~81\) # (GND)))
-- \inst|counter_f[19]~83\ = CARRY((!\inst|counter_f[18]~81\) # (!\inst|counter_f\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(19),
	datad => VCC,
	cin => \inst|counter_f[18]~81\,
	combout => \inst|counter_f[19]~82_combout\,
	cout => \inst|counter_f[19]~83\);

-- Location: LCFF_X29_Y12_N7
\inst|counter_f[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[19]~82_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(19));

-- Location: LCCOMB_X29_Y12_N8
\inst|counter_f[20]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[20]~84_combout\ = (\inst|counter_f\(20) & (\inst|counter_f[19]~83\ $ (GND))) # (!\inst|counter_f\(20) & (!\inst|counter_f[19]~83\ & VCC))
-- \inst|counter_f[20]~85\ = CARRY((\inst|counter_f\(20) & !\inst|counter_f[19]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(20),
	datad => VCC,
	cin => \inst|counter_f[19]~83\,
	combout => \inst|counter_f[20]~84_combout\,
	cout => \inst|counter_f[20]~85\);

-- Location: LCFF_X29_Y12_N9
\inst|counter_f[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[20]~84_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(20));

-- Location: LCCOMB_X28_Y12_N26
\inst|counter_f[25]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~34_combout\ = (!\inst|counter_f\(18) & (!\inst|counter_f\(19) & (!\inst|counter_f\(20) & !\inst|counter_f\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(18),
	datab => \inst|counter_f\(19),
	datac => \inst|counter_f\(20),
	datad => \inst|counter_f\(17),
	combout => \inst|counter_f[25]~34_combout\);

-- Location: LCCOMB_X29_Y12_N14
\inst|counter_f[23]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[23]~90_combout\ = (\inst|counter_f\(23) & (!\inst|counter_f[22]~89\)) # (!\inst|counter_f\(23) & ((\inst|counter_f[22]~89\) # (GND)))
-- \inst|counter_f[23]~91\ = CARRY((!\inst|counter_f[22]~89\) # (!\inst|counter_f\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(23),
	datad => VCC,
	cin => \inst|counter_f[22]~89\,
	combout => \inst|counter_f[23]~90_combout\,
	cout => \inst|counter_f[23]~91\);

-- Location: LCFF_X29_Y12_N15
\inst|counter_f[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[23]~90_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(23));

-- Location: LCCOMB_X29_Y12_N18
\inst|counter_f[25]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~94_combout\ = (\inst|counter_f\(25) & (!\inst|counter_f[24]~93\)) # (!\inst|counter_f\(25) & ((\inst|counter_f[24]~93\) # (GND)))
-- \inst|counter_f[25]~95\ = CARRY((!\inst|counter_f[24]~93\) # (!\inst|counter_f\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(25),
	datad => VCC,
	cin => \inst|counter_f[24]~93\,
	combout => \inst|counter_f[25]~94_combout\,
	cout => \inst|counter_f[25]~95\);

-- Location: LCFF_X29_Y12_N19
\inst|counter_f[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[25]~94_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(25));

-- Location: LCCOMB_X29_Y12_N20
\inst|counter_f[26]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[26]~96_combout\ = (\inst|counter_f\(26) & (\inst|counter_f[25]~95\ $ (GND))) # (!\inst|counter_f\(26) & (!\inst|counter_f[25]~95\ & VCC))
-- \inst|counter_f[26]~97\ = CARRY((\inst|counter_f\(26) & !\inst|counter_f[25]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(26),
	datad => VCC,
	cin => \inst|counter_f[25]~95\,
	combout => \inst|counter_f[26]~96_combout\,
	cout => \inst|counter_f[26]~97\);

-- Location: LCCOMB_X29_Y12_N22
\inst|counter_f[27]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[27]~98_combout\ = (\inst|counter_f\(27) & (!\inst|counter_f[26]~97\)) # (!\inst|counter_f\(27) & ((\inst|counter_f[26]~97\) # (GND)))
-- \inst|counter_f[27]~99\ = CARRY((!\inst|counter_f[26]~97\) # (!\inst|counter_f\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(27),
	datad => VCC,
	cin => \inst|counter_f[26]~97\,
	combout => \inst|counter_f[27]~98_combout\,
	cout => \inst|counter_f[27]~99\);

-- Location: LCFF_X29_Y12_N23
\inst|counter_f[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[27]~98_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(27));

-- Location: LCCOMB_X29_Y12_N26
\inst|counter_f[29]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[29]~102_combout\ = (\inst|counter_f\(29) & (!\inst|counter_f[28]~101\)) # (!\inst|counter_f\(29) & ((\inst|counter_f[28]~101\) # (GND)))
-- \inst|counter_f[29]~103\ = CARRY((!\inst|counter_f[28]~101\) # (!\inst|counter_f\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(29),
	datad => VCC,
	cin => \inst|counter_f[28]~101\,
	combout => \inst|counter_f[29]~102_combout\,
	cout => \inst|counter_f[29]~103\);

-- Location: LCFF_X29_Y12_N27
\inst|counter_f[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[29]~102_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(29));

-- Location: LCCOMB_X29_Y12_N28
\inst|counter_f[30]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[30]~104_combout\ = (\inst|counter_f\(30) & (\inst|counter_f[29]~103\ $ (GND))) # (!\inst|counter_f\(30) & (!\inst|counter_f[29]~103\ & VCC))
-- \inst|counter_f[30]~105\ = CARRY((\inst|counter_f\(30) & !\inst|counter_f[29]~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(30),
	datad => VCC,
	cin => \inst|counter_f[29]~103\,
	combout => \inst|counter_f[30]~104_combout\,
	cout => \inst|counter_f[30]~105\);

-- Location: LCFF_X29_Y12_N29
\inst|counter_f[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[30]~104_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(30));

-- Location: LCCOMB_X29_Y12_N30
\inst|counter_f[31]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[31]~106_combout\ = \inst|counter_f[30]~105\ $ (\inst|counter_f\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter_f\(31),
	cin => \inst|counter_f[30]~105\,
	combout => \inst|counter_f[31]~106_combout\);

-- Location: LCFF_X29_Y12_N31
\inst|counter_f[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[31]~106_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(31));

-- Location: LCCOMB_X28_Y12_N4
\inst|counter_f[25]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~37_combout\ = (!\inst|counter_f\(31) & (!\inst|counter_f\(29) & !\inst|counter_f\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(31),
	datac => \inst|counter_f\(29),
	datad => \inst|counter_f\(30),
	combout => \inst|counter_f[25]~37_combout\);

-- Location: LCFF_X29_Y12_N21
\inst|counter_f[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[26]~96_combout\,
	sclr => \inst|counter_f[25]~79_combout\,
	ena => \inst|counter_f[25]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(26));

-- Location: LCCOMB_X28_Y12_N22
\inst|counter_f[25]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~36_combout\ = (!\inst|counter_f\(28) & (!\inst|counter_f\(26) & (!\inst|counter_f\(27) & !\inst|counter_f\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(28),
	datab => \inst|counter_f\(26),
	datac => \inst|counter_f\(27),
	datad => \inst|counter_f\(25),
	combout => \inst|counter_f[25]~36_combout\);

-- Location: LCCOMB_X28_Y12_N30
\inst|counter_f[25]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~38_combout\ = (\inst|counter_f[25]~35_combout\ & (\inst|counter_f[25]~34_combout\ & (\inst|counter_f[25]~37_combout\ & \inst|counter_f[25]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f[25]~35_combout\,
	datab => \inst|counter_f[25]~34_combout\,
	datac => \inst|counter_f[25]~37_combout\,
	datad => \inst|counter_f[25]~36_combout\,
	combout => \inst|counter_f[25]~38_combout\);

-- Location: LCCOMB_X28_Y12_N8
\inst|state_f~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~18_combout\ = (\inst|state_f.SETUP~regout\ & ((!\inst|counter_f[25]~40_combout\) # (!\inst|counter_f[25]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.SETUP~regout\,
	datab => \inst|counter_f[25]~38_combout\,
	datad => \inst|counter_f[25]~40_combout\,
	combout => \inst|state_f~18_combout\);

-- Location: LCCOMB_X27_Y15_N20
\inst|state_f~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~17_combout\ = (!\inst|state_f.DIGIT_SELECT~regout\ & !\inst|state_f.HZ_DISPLAY~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|state_f.HZ_DISPLAY~regout\,
	combout => \inst|state_f~17_combout\);

-- Location: LCCOMB_X27_Y15_N6
\inst|state_f~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~22_combout\ = ((!\inst|state_f.CHECK_AND_WAIT~regout\ & ((\inst|always0~0_combout\) # (!\inst|always3~0_combout\)))) # (!\inst|state_f~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|always3~0_combout\,
	datac => \inst|state_f~17_combout\,
	datad => \inst|always0~0_combout\,
	combout => \inst|state_f~22_combout\);

-- Location: LCCOMB_X28_Y12_N18
\inst|state_f~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~23_combout\ = (\inst|state_f~20_combout\) # ((\inst|state_f~21_combout\) # ((\inst|state_f~18_combout\) # (\inst|state_f~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f~20_combout\,
	datab => \inst|state_f~21_combout\,
	datac => \inst|state_f~18_combout\,
	datad => \inst|state_f~22_combout\,
	combout => \inst|state_f~23_combout\);

-- Location: LCCOMB_X28_Y13_N10
\inst|state_f~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~19_combout\ = (\inst|counter_f\(16)) # ((\inst|counter_f\(14) & \inst|counter_f\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(14),
	datac => \inst|counter_f\(16),
	datad => \inst|counter_f\(15),
	combout => \inst|state_f~19_combout\);

-- Location: LCCOMB_X28_Y12_N10
\inst|state_f~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~20_combout\ = (\inst|state_f.WRITE_DATA~regout\ & (((!\inst|LessThan13~2_combout\ & \inst|state_f~19_combout\)) # (!\inst|counter_f[25]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.WRITE_DATA~regout\,
	datab => \inst|LessThan13~2_combout\,
	datac => \inst|state_f~19_combout\,
	datad => \inst|counter_f[25]~38_combout\,
	combout => \inst|state_f~20_combout\);

-- Location: LCCOMB_X28_Y12_N2
\inst|state_f~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~28_combout\ = (\SW~combout\(0) & ((\inst|state_f~23_combout\ & ((\inst|state_f~20_combout\))) # (!\inst|state_f~23_combout\ & (\inst|state_f.WAIT_EXEC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state_f~23_combout\,
	datac => \inst|state_f.WAIT_EXEC~regout\,
	datad => \inst|state_f~20_combout\,
	combout => \inst|state_f~28_combout\);

-- Location: LCFF_X28_Y12_N3
\inst|state_f.WAIT_EXEC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.WAIT_EXEC~regout\);

-- Location: LCCOMB_X28_Y12_N28
\inst|state_f~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~21_combout\ = (\inst|state_f.WAIT_EXEC~regout\ & ((!\inst|counter_f[25]~38_combout\) # (!\inst|LessThan14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f.WAIT_EXEC~regout\,
	datac => \inst|LessThan14~3_combout\,
	datad => \inst|counter_f[25]~38_combout\,
	combout => \inst|state_f~21_combout\);

-- Location: LCCOMB_X28_Y12_N0
\inst|state_f~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~27_combout\ = (\inst|state_f~21_combout\ & (\SW~combout\(0) & \inst|state_f~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f~21_combout\,
	datac => \SW~combout\(0),
	datad => \inst|state_f~23_combout\,
	combout => \inst|state_f~27_combout\);

-- Location: LCFF_X28_Y12_N1
\inst|state_f.DIGIT_SELECT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.DIGIT_SELECT~regout\);

-- Location: LCCOMB_X27_Y12_N10
\inst|n_index~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|n_index~0_combout\ = (\inst|state_f.DIGIT_SELECT~regout\ & (\SW~combout\(0) & (\inst|n_index\(0) $ (\inst|n_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|n_index\(0),
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|n_index\(1),
	datad => \SW~combout\(0),
	combout => \inst|n_index~0_combout\);

-- Location: LCFF_X27_Y12_N11
\inst|n_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|n_index~0_combout\,
	ena => \inst|n_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|n_index\(1));

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

-- Location: LCCOMB_X31_Y12_N18
\inst|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux2~0_combout\ & (((\SW~combout\(3)) # (!\inst|n_index\(1))))) # (!\inst|Mux2~0_combout\ & (\SW~combout\(7) & (\inst|n_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \SW~combout\(7),
	datac => \inst|n_index\(1),
	datad => \SW~combout\(3),
	combout => \inst|Mux2~1_combout\);

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

-- Location: LCCOMB_X31_Y12_N20
\inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|n_index\(0) & (\inst|n_index\(1))) # (!\inst|n_index\(0) & ((\inst|n_index\(1) & ((\SW~combout\(5)))) # (!\inst|n_index\(1) & (\SW~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|n_index\(0),
	datab => \inst|n_index\(1),
	datac => \SW~combout\(13),
	datad => \SW~combout\(5),
	combout => \inst|Mux0~0_combout\);

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

-- Location: LCCOMB_X31_Y12_N14
\inst|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst|n_index\(0) & ((\inst|Mux0~0_combout\ & ((\SW~combout\(1)))) # (!\inst|Mux0~0_combout\ & (\SW~combout\(9))))) # (!\inst|n_index\(0) & (((\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|n_index\(0),
	datab => \SW~combout\(9),
	datac => \inst|Mux0~0_combout\,
	datad => \SW~combout\(1),
	combout => \inst|Mux0~1_combout\);

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

-- Location: LCCOMB_X31_Y12_N0
\inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|n_index\(1) & (((\inst|n_index\(0))))) # (!\inst|n_index\(1) & ((\inst|n_index\(0) & (\SW~combout\(10))) # (!\inst|n_index\(0) & ((\SW~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \inst|n_index\(1),
	datac => \SW~combout\(14),
	datad => \inst|n_index\(0),
	combout => \inst|Mux1~0_combout\);

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

-- Location: LCCOMB_X31_Y12_N30
\inst|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|Mux1~0_combout\ & (((\SW~combout\(2)) # (!\inst|n_index\(1))))) # (!\inst|Mux1~0_combout\ & (\SW~combout\(6) & (\inst|n_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \inst|Mux1~0_combout\,
	datac => \inst|n_index\(1),
	datad => \SW~combout\(2),
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X31_Y12_N24
\inst|lcd_data_freq[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[0]~5_combout\ = (\inst|state_f.DIGIT_SELECT~regout\ & (!\inst|Mux2~1_combout\ & (!\inst|Mux0~1_combout\ & !\inst|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.DIGIT_SELECT~regout\,
	datab => \inst|Mux2~1_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst|lcd_data_freq[0]~5_combout\);

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

-- Location: LCCOMB_X31_Y12_N26
\inst|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|Mux3~0_combout\ & (((\SW~combout\(4)) # (!\inst|n_index\(1))))) # (!\inst|Mux3~0_combout\ & (\SW~combout\(8) & (\inst|n_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~0_combout\,
	datab => \SW~combout\(8),
	datac => \inst|n_index\(1),
	datad => \SW~combout\(4),
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y12_N28
\inst|Selector146~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector146~0_combout\ = (\inst|Mux2~1_combout\ & ((\inst|lcd_data_freq[0]~5_combout\) # ((\inst|state_f.DIGIT_SELECT~regout\ & !\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.DIGIT_SELECT~regout\,
	datab => \inst|Mux2~1_combout\,
	datac => \inst|lcd_data_freq[0]~5_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Selector146~0_combout\);

-- Location: LCFF_X31_Y12_N29
\inst|lcd_data_freq[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector146~0_combout\,
	ena => \inst|lcd_data_freq[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(2));

-- Location: M4K_X26_Y16
\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000A645901D6C8000000000000000002991642892A3AC8000000000000000000000000002A6A6600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004B1C80000000000000000000000000000B1C800000000000000000000000044AF06C800000000000000000000000044AF06C800000000000000000000000004AF06C80000000000000000000000000000B1C800000000000000000000000004AF06C8000000000000000000000000002921C8000000000000000003C9EC002CC9A9C8000000000000000000099200C4F87AC8",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/LCD_module.ram0_text_lut_af7c7a3e.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lcd_driver:inst|text_lut:text_lut_inst|altsyncram:rom_rtl_0|altsyncram_id71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 9,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y16_N2
\inst|lcd_data[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data[2]~5_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(2))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(2))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|lcd_data_freq\(2),
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a2\,
	combout => \inst|lcd_data[2]~5_combout\);

-- Location: LCCOMB_X27_Y15_N4
\inst|Selector142~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector142~0_combout\ = (\inst|sub_state_f\(1)) # (\inst|sub_state_f\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state_f\(1),
	datad => \inst|sub_state_f\(0),
	combout => \inst|Selector142~0_combout\);

-- Location: LCCOMB_X27_Y15_N0
\inst|Selector145~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector145~0_combout\ = (\inst|state_f.HZ_DISPLAY~regout\ & (((\inst|Selector142~0_combout\)))) # (!\inst|state_f.HZ_DISPLAY~regout\ & (\inst|state_f.DIGIT_SELECT~regout\ & ((\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.DIGIT_SELECT~regout\,
	datab => \inst|Selector142~0_combout\,
	datac => \inst|state_f.HZ_DISPLAY~regout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Selector145~0_combout\);

-- Location: LCFF_X27_Y15_N1
\inst|lcd_data_freq[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector145~0_combout\,
	ena => \inst|lcd_data_freq[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(3));

-- Location: LCCOMB_X27_Y16_N8
\inst|lcd_data[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data[3]~4_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(3))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(3))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|lcd_data_freq\(3),
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3~portadataout\,
	combout => \inst|lcd_data[3]~4_combout\);

-- Location: LCCOMB_X31_Y12_N6
\inst|Selector148~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector148~0_combout\ = (\inst|lcd_data_freq[0]~5_combout\ & (((\inst|Mux0~1_combout\)))) # (!\inst|lcd_data_freq[0]~5_combout\ & (\inst|state_f.DIGIT_SELECT~regout\ & ((\inst|Mux3~1_combout\) # (\inst|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.DIGIT_SELECT~regout\,
	datab => \inst|Mux3~1_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|lcd_data_freq[0]~5_combout\,
	combout => \inst|Selector148~0_combout\);

-- Location: LCFF_X31_Y12_N7
\inst|lcd_data_freq[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector148~0_combout\,
	ena => \inst|lcd_data_freq[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(0));

-- Location: M4K_X26_Y14
\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000001CE094000000000E7151A400000000000002D8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B400000000000002B400000000000096C400000000000016C400000000000096C400000000000000B400000000000016C400000000000002F4000000000D4059B40000000004A95484",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/LCD_module.ram0_text_lut_af7c7a3e.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lcd_driver:inst|text_lut:text_lut_inst|altsyncram:rom_rtl_0|altsyncram_id71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 9,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y16_N6
\inst|lcd_data[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data[0]~7_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(0))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(0))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|lcd_data_freq\(0),
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \inst|lcd_data[0]~7_combout\);

-- Location: LCCOMB_X27_Y16_N14
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|lcd_data[1]~6_combout\ & (!\inst|lcd_data[2]~5_combout\ & (!\inst|lcd_data[3]~4_combout\ & !\inst|lcd_data[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data[1]~6_combout\,
	datab => \inst|lcd_data[2]~5_combout\,
	datac => \inst|lcd_data[3]~4_combout\,
	datad => \inst|lcd_data[0]~7_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y16_N18
\inst|Selector46~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~6_combout\ = (!\inst|LessThan5~1_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~1_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Selector46~6_combout\);

-- Location: LCCOMB_X25_Y16_N22
\inst|sub_state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~20_combout\ = (\inst|sub_state~17_combout\) # ((\SW~combout\(0) & \inst|Selector46~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state~17_combout\,
	datac => \SW~combout\(0),
	datad => \inst|Selector46~6_combout\,
	combout => \inst|sub_state~20_combout\);

-- Location: LCCOMB_X25_Y16_N18
\inst|sub_state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~21_combout\ = (\inst|sub_state~19_combout\ & ((\inst|sub_state~18_combout\) # ((\inst|sub_state~20_combout\ & \inst|sub_state.PAGE2~regout\)))) # (!\inst|sub_state~19_combout\ & (\inst|sub_state~20_combout\ & 
-- (\inst|sub_state.PAGE2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state~19_combout\,
	datab => \inst|sub_state~20_combout\,
	datac => \inst|sub_state.PAGE2~regout\,
	datad => \inst|sub_state~18_combout\,
	combout => \inst|sub_state~21_combout\);

-- Location: LCFF_X25_Y16_N19
\inst|sub_state.PAGE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|sub_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state.PAGE2~regout\);

-- Location: LCCOMB_X28_Y16_N16
\inst|Selector52~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector52~2_combout\ = (\inst|Selector52~3_combout\) # ((\inst|state.PAGE_SELECT~regout\ & (\inst|sub_state.PAGE2~regout\ & \inst|page_index~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|Selector52~3_combout\,
	datac => \inst|sub_state.PAGE2~regout\,
	datad => \inst|page_index~0_combout\,
	combout => \inst|Selector52~2_combout\);

-- Location: LCFF_X28_Y16_N17
\inst|state.WAIT_BUTTON_SHORT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector52~2_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WAIT_BUTTON_SHORT~regout\);

-- Location: LCCOMB_X29_Y15_N2
\inst|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector13~0_combout\ = (\inst|state.WAIT_BUTTON_RELEASE~regout\) # ((\inst|state.WAIT_BUTTON_SHORT~regout\) # ((\inst|state.PAGE_SELECT~regout\) # (\inst|state.WAIT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state.PAGE_SELECT~regout\,
	datad => \inst|state.WAIT~regout\,
	combout => \inst|Selector13~0_combout\);

-- Location: LCCOMB_X29_Y15_N4
\inst|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector13~1_combout\ = (\inst|state.WRITE_DATA~regout\) # ((\inst|Selector13~0_combout\ & \inst|lcd_en_cntr~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector13~0_combout\,
	datac => \inst|lcd_en_cntr~regout\,
	datad => \inst|state.WRITE_DATA~regout\,
	combout => \inst|Selector13~1_combout\);

-- Location: LCFF_X29_Y15_N5
\inst|lcd_en_cntr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector13~1_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_en_cntr~regout\);

-- Location: LCCOMB_X27_Y15_N16
\inst|Selector152~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector152~0_combout\ = (\inst|state_f.WRITE_DATA~regout\) # ((\inst|lcd_en_freq~regout\ & ((!\inst|state_f.CHECK_AND_WAIT~regout\) # (!\inst|state_f~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f~17_combout\,
	datab => \inst|state_f.CHECK_AND_WAIT~regout\,
	datac => \inst|lcd_en_freq~regout\,
	datad => \inst|state_f.WRITE_DATA~regout\,
	combout => \inst|Selector152~0_combout\);

-- Location: LCFF_X27_Y15_N17
\inst|lcd_en_freq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector152~0_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_en_freq~regout\);

-- Location: LCCOMB_X28_Y15_N28
\inst|lcd_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_en~0_combout\ = (\inst|state.WAIT_BUTTON_RELEASE~regout\ & (((\inst|lcd_en_freq~regout\)))) # (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|lcd_en_freq~regout\))) # 
-- (!\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_en_cntr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_en_cntr~regout\,
	datab => \inst|lcd_en_freq~regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|lcd_en~0_combout\);

-- Location: LCCOMB_X27_Y15_N14
\inst|Selector140~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector140~0_combout\ = (\inst|state_f.CHECK_AND_WAIT~regout\ & ((\inst|state_f.DIGIT_SELECT~regout\) # ((\inst|lcd_rs_freq~regout\ & !\inst|Selector141~0_combout\)))) # (!\inst|state_f.CHECK_AND_WAIT~regout\ & (((\inst|lcd_rs_freq~regout\ & 
-- !\inst|Selector141~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|lcd_rs_freq~regout\,
	datad => \inst|Selector141~0_combout\,
	combout => \inst|Selector140~0_combout\);

-- Location: LCFF_X27_Y15_N15
\inst|lcd_rs_freq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector140~0_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_rs_freq~regout\);

-- Location: LCCOMB_X27_Y15_N12
\inst|lcd_rs~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_rs~0_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|lcd_rs_freq~regout\)))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|lcd_rs_freq~regout\))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a8\,
	datab => \inst|lcd_rs_freq~regout\,
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	combout => \inst|lcd_rs~0_combout\);

-- Location: LCCOMB_X28_Y15_N16
\inst|state_f.DIGIT_SELECT~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f.DIGIT_SELECT~_wirecell_combout\ = !\inst|state_f.DIGIT_SELECT~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state_f.DIGIT_SELECT~regout\,
	combout => \inst|state_f.DIGIT_SELECT~_wirecell_combout\);

-- Location: LCFF_X27_Y15_N5
\inst|lcd_data_freq[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector142~0_combout\,
	sdata => \inst|state_f.DIGIT_SELECT~_wirecell_combout\,
	sload => \inst|ALT_INV_state_f.HZ_DISPLAY~regout\,
	ena => \inst|lcd_data_freq[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(6));

-- Location: LCCOMB_X27_Y17_N16
\inst|lcd_data[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data[6]~1_combout\ = (\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(6))) # (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(6))) # 
-- (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_freq\(6),
	datab => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst|lcd_data[6]~1_combout\);

-- Location: LCCOMB_X31_Y12_N22
\inst|Selector147~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector147~0_combout\ = (\inst|Mux1~1_combout\ & ((\inst|lcd_data_freq[0]~5_combout\) # ((\inst|state_f.DIGIT_SELECT~regout\ & !\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.DIGIT_SELECT~regout\,
	datab => \inst|Mux1~1_combout\,
	datac => \inst|lcd_data_freq[0]~5_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Selector147~0_combout\);

-- Location: LCCOMB_X27_Y15_N18
\inst|Selector147~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector147~1_combout\ = (\inst|Selector147~0_combout\) # ((\inst|sub_state_f\(1) & \inst|state_f.HZ_DISPLAY~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state_f\(1),
	datab => \inst|state_f.HZ_DISPLAY~regout\,
	datad => \inst|Selector147~0_combout\,
	combout => \inst|Selector147~1_combout\);

-- Location: LCFF_X27_Y15_N19
\inst|lcd_data_freq[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector147~1_combout\,
	ena => \inst|lcd_data_freq[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(1));

-- Location: LCCOMB_X27_Y16_N24
\inst|lcd_data[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data[1]~6_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(1))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(1))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|lcd_data_freq\(1),
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \inst|lcd_data[1]~6_combout\);

-- Location: LCCOMB_X29_Y14_N4
\inst|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (!\inst|page_index\(1) & ((\inst|page_index\(3) & (!\inst|page_index\(2))) # (!\inst|page_index\(3) & (\inst|page_index\(2) & !\inst|page_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(1),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(0),
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X29_Y14_N10
\inst|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr1~1_combout\ = (\inst|WideOr1~0_combout\ & !\inst|page_index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr1~0_combout\,
	datad => \inst|page_index\(4),
	combout => \inst|WideOr1~1_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (!\inst|page_index\(3) & ((\inst|page_index\(1) & ((\inst|page_index\(2)) # (\inst|page_index\(0)))) # (!\inst|page_index\(1) & (\inst|page_index\(2) & \inst|page_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(1),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(0),
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y14_N30
\inst|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~1_combout\ = (\inst|WideOr0~0_combout\ & !\inst|page_index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr0~0_combout\,
	datad => \inst|page_index\(4),
	combout => \inst|WideOr0~1_combout\);

-- Location: LCCOMB_X29_Y14_N28
\inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|page_index\(3) & (!\inst|page_index\(1) & (!\inst|page_index\(2) & !\inst|page_index\(0)))) # (!\inst|page_index\(3) & (((\inst|page_index\(2) & \inst|page_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(1),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(0),
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X29_Y14_N14
\inst|WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~1_combout\ = (!\inst|page_index\(4) & \inst|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index\(4),
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr2~1_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|page_index\(3) & (!\inst|page_index\(1) & (!\inst|page_index\(2) & \inst|page_index\(0)))) # (!\inst|page_index\(3) & (\inst|page_index\(1) & (\inst|page_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(1),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(0),
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X29_Y14_N6
\inst|WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~1_combout\ = (!\inst|page_index\(4) & \inst|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|page_index\(4),
	datad => \inst|WideOr3~0_combout\,
	combout => \inst|WideOr3~1_combout\);

-- Location: LCFF_X30_Y16_N29
\inst|test_led~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector98~2_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|test_led~_Duplicate_1_regout\);

-- Location: LCCOMB_X30_Y16_N22
\inst|Selector98~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector98~1_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|test_led~_Duplicate_1_regout\ & !\KEY~combout\(1))) # (!\KEY~combout\(0)))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|test_led~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|test_led~_Duplicate_1_regout\,
	datac => \KEY~combout\(1),
	datad => \KEY~combout\(0),
	combout => \inst|Selector98~1_combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst|Selector98~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector98~0_combout\ = (\inst|state.WAIT_BUTTON_RELEASE~regout\ & (((\inst|test_led~_Duplicate_1_regout\ & !\inst|LessThan9~8_combout\)) # (!\inst|state~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~28_combout\,
	datab => \inst|test_led~_Duplicate_1_regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|LessThan9~8_combout\,
	combout => \inst|Selector98~0_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst|Selector98~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector98~2_combout\ = (\inst|Selector98~0_combout\) # ((\inst|Selector98~1_combout\ & !\inst|state.WAIT_BUTTON_RELEASE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector98~1_combout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|Selector98~0_combout\,
	combout => \inst|Selector98~2_combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
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
	padio => ww_SW(16),
	combout => \SW~combout\(16));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
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
	padio => ww_SW(15),
	combout => \SW~combout\(15));

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

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_RW~I\ : cycloneii_io
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
	padio => ww_LCD_RW);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_EN~I\ : cycloneii_io
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
	datain => \inst|lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_EN);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_RS~I\ : cycloneii_io
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
	datain => \inst|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RS);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_ON~I\ : cycloneii_io
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
	padio => ww_LCD_ON);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_BLON~I\ : cycloneii_io
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
	padio => ww_LCD_BLON);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_DATA[7]~I\ : cycloneii_io
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
	datain => \inst|lcd_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_DATA(7));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_DATA[6]~I\ : cycloneii_io
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
	datain => \inst|lcd_data[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_DATA(6));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_DATA[5]~I\ : cycloneii_io
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
	datain => \inst|lcd_data[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_DATA(5));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_DATA[4]~I\ : cycloneii_io
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
	datain => \inst|lcd_data[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_DATA(4));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_DATA[3]~I\ : cycloneii_io
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
	datain => \inst|lcd_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_DATA(3));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_DATA[2]~I\ : cycloneii_io
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
	datain => \inst|lcd_data[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_DATA(2));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_DATA[1]~I\ : cycloneii_io
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
	datain => \inst|lcd_data[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_DATA(1));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LCD_DATA[0]~I\ : cycloneii_io
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
	datain => \inst|lcd_data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_DATA(0));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \inst|WideOr1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \inst|WideOr0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \inst|WideOr2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Selector98~2_combout\,
	outclk => \CLOCK_50~clkctrl_outclk\,
	outclkena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[16]~I\ : cycloneii_io
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
	datain => \SW~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[15]~I\ : cycloneii_io
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
	datain => \SW~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[14]~I\ : cycloneii_io
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
	datain => \SW~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[13]~I\ : cycloneii_io
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
	datain => \SW~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[12]~I\ : cycloneii_io
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
	datain => \SW~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
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
	datain => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));
END structure;


