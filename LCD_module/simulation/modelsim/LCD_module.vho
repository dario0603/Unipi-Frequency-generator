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

-- DATE "12/05/2025 13:22:06"

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
	LEDG : OUT std_logic_vector(4 DOWNTO 0);
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
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_LEDG : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \inst|lcd_data_reg[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|btn_counter[3]~38_combout\ : std_logic;
SIGNAL \inst|btn_counter[5]~42_combout\ : std_logic;
SIGNAL \inst|btn_counter[21]~76_combout\ : std_logic;
SIGNAL \inst|btn_counter[30]~95\ : std_logic;
SIGNAL \inst|btn_counter[31]~96_combout\ : std_logic;
SIGNAL \inst|counter[3]~40_combout\ : std_logic;
SIGNAL \inst|counter[28]~98_combout\ : std_logic;
SIGNAL \inst|counter_f[3]~45_combout\ : std_logic;
SIGNAL \inst|counter_f[19]~81_combout\ : std_logic;
SIGNAL \inst|counter_f[26]~95_combout\ : std_logic;
SIGNAL \inst|counter_f[30]~104\ : std_logic;
SIGNAL \inst|counter_f[31]~105_combout\ : std_logic;
SIGNAL \inst|lcd_rs_freq~regout\ : std_logic;
SIGNAL \inst|page_index~4_combout\ : std_logic;
SIGNAL \inst|always2~2_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Selector65~7_combout\ : std_logic;
SIGNAL \inst|Selector64~2_combout\ : std_logic;
SIGNAL \inst|page_index[3]~12_combout\ : std_logic;
SIGNAL \inst|page_index~18_combout\ : std_logic;
SIGNAL \inst|state_f.WRITE_DATA~regout\ : std_logic;
SIGNAL \inst|Selector140~0_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[6]~1_combout\ : std_logic;
SIGNAL \inst|Selector141~1_combout\ : std_logic;
SIGNAL \inst|Selector143~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Selector147~0_combout\ : std_logic;
SIGNAL \inst|Selector147~1_combout\ : std_logic;
SIGNAL \inst|state.WAIT_EXEC~regout\ : std_logic;
SIGNAL \inst|state~31_combout\ : std_logic;
SIGNAL \inst|LessThan5~4_combout\ : std_logic;
SIGNAL \inst|state~33_combout\ : std_logic;
SIGNAL \inst|LessThan8~1_combout\ : std_logic;
SIGNAL \inst|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~32_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~37_combout\ : std_logic;
SIGNAL \inst|state_f~17_combout\ : std_logic;
SIGNAL \inst|state_f~22_combout\ : std_logic;
SIGNAL \inst|state~40_combout\ : std_logic;
SIGNAL \inst|counter[19]~77_combout\ : std_logic;
SIGNAL \inst|LessThan6~3_combout\ : std_logic;
SIGNAL \inst|counter[19]~79_combout\ : std_logic;
SIGNAL \inst|LessThan3~9_combout\ : std_logic;
SIGNAL \inst|Selector46~13_combout\ : std_logic;
SIGNAL \inst|state_f.DIGIT_SELECT~_wirecell_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[6]~feeder_combout\ : std_logic;
SIGNAL \inst|state~30_combout\ : std_logic;
SIGNAL \inst|char_index[0]~7_combout\ : std_logic;
SIGNAL \inst|counter[0]~34_combout\ : std_logic;
SIGNAL \inst|counter[19]~32_combout\ : std_logic;
SIGNAL \inst|counter[19]~76_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE0~0_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE0~regout\ : std_logic;
SIGNAL \inst|char_index[1]~11_combout\ : std_logic;
SIGNAL \inst|counter[19]~33_combout\ : std_logic;
SIGNAL \inst|counter[19]~72_combout\ : std_logic;
SIGNAL \inst|Selector51~0_combout\ : std_logic;
SIGNAL \inst|state.DONE~regout\ : std_logic;
SIGNAL \inst|Selector53~1_combout\ : std_logic;
SIGNAL \inst|state.WAIT_BUTTON_RELEASE~regout\ : std_logic;
SIGNAL \inst|Selector13~0_combout\ : std_logic;
SIGNAL \inst|counter[19]~83_combout\ : std_logic;
SIGNAL \inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|counter[26]~94_combout\ : std_logic;
SIGNAL \inst|counter[24]~90_combout\ : std_logic;
SIGNAL \inst|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_combout\ : std_logic;
SIGNAL \inst|counter[12]~58_combout\ : std_logic;
SIGNAL \inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst|counter[8]~50_combout\ : std_logic;
SIGNAL \inst|counter[5]~44_combout\ : std_logic;
SIGNAL \inst|counter[6]~46_combout\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|LessThan6~1_combout\ : std_logic;
SIGNAL \inst|LessThan6~2_combout\ : std_logic;
SIGNAL \inst|char_index[0]~6_combout\ : std_logic;
SIGNAL \inst|lcd_data_reg[7]~0_combout\ : std_logic;
SIGNAL \inst|lcd_data_reg[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \inst|char_index[3]~15_combout\ : std_logic;
SIGNAL \inst|char_index[4]~17_combout\ : std_logic;
SIGNAL \inst|Selector65~8_combout\ : std_logic;
SIGNAL \inst|page_index[3]~10_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|page_index~9_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Selector64~4_combout\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|Selector64~3_combout\ : std_logic;
SIGNAL \inst|Selector64~9_combout\ : std_logic;
SIGNAL \inst|btn_counter[0]~32_combout\ : std_logic;
SIGNAL \inst|btn_counter[11]~55\ : std_logic;
SIGNAL \inst|btn_counter[12]~56_combout\ : std_logic;
SIGNAL \inst|btn_counter[31]~73_combout\ : std_logic;
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
SIGNAL \inst|btn_counter[26]~86_combout\ : std_logic;
SIGNAL \inst|btn_counter[24]~82_combout\ : std_logic;
SIGNAL \inst|LessThan11~1_combout\ : std_logic;
SIGNAL \inst|btn_counter[26]~87\ : std_logic;
SIGNAL \inst|btn_counter[27]~88_combout\ : std_logic;
SIGNAL \inst|btn_counter[27]~89\ : std_logic;
SIGNAL \inst|btn_counter[28]~90_combout\ : std_logic;
SIGNAL \inst|btn_counter[28]~91\ : std_logic;
SIGNAL \inst|btn_counter[29]~92_combout\ : std_logic;
SIGNAL \inst|btn_counter[29]~93\ : std_logic;
SIGNAL \inst|btn_counter[30]~94_combout\ : std_logic;
SIGNAL \inst|LessThan11~2_combout\ : std_logic;
SIGNAL \inst|btn_counter[19]~70_combout\ : std_logic;
SIGNAL \inst|btn_counter[22]~78_combout\ : std_logic;
SIGNAL \inst|LessThan11~0_combout\ : std_logic;
SIGNAL \inst|LessThan11~3_combout\ : std_logic;
SIGNAL \inst|LessThan11~8_combout\ : std_logic;
SIGNAL \inst|btn_counter[22]~72_combout\ : std_logic;
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
SIGNAL \inst|btn_counter[10]~52_combout\ : std_logic;
SIGNAL \inst|LessThan11~6_combout\ : std_logic;
SIGNAL \inst|LessThan11~4_combout\ : std_logic;
SIGNAL \inst|btn_counter[6]~44_combout\ : std_logic;
SIGNAL \inst|btn_counter[8]~48_combout\ : std_logic;
SIGNAL \inst|LessThan11~5_combout\ : std_logic;
SIGNAL \inst|LessThan11~7_combout\ : std_logic;
SIGNAL \inst|Selector52~0_combout\ : std_logic;
SIGNAL \inst|Selector52~1_combout\ : std_logic;
SIGNAL \inst|page_index[3]~8_combout\ : std_logic;
SIGNAL \inst|Selector64~6_combout\ : std_logic;
SIGNAL \inst|Selector65~0_combout\ : std_logic;
SIGNAL \inst|Selector64~5_combout\ : std_logic;
SIGNAL \inst|Selector64~7_combout\ : std_logic;
SIGNAL \inst|Selector64~8_combout\ : std_logic;
SIGNAL \inst|page_index~19_combout\ : std_logic;
SIGNAL \inst|sub_state~22_combout\ : std_logic;
SIGNAL \inst|sub_state~19_combout\ : std_logic;
SIGNAL \inst|sub_state~23_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE1~regout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|page_index[3]~21_combout\ : std_logic;
SIGNAL \inst|page_index[3]~14_combout\ : std_logic;
SIGNAL \inst|Selector53~0_combout\ : std_logic;
SIGNAL \inst|page_index[3]~13_combout\ : std_logic;
SIGNAL \inst|page_index[3]~15_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst|lcd_data_reg[6]~2_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \inst|lcd_data_reg[7]~1_combout\ : std_logic;
SIGNAL \inst|counter_f[0]~39_combout\ : std_logic;
SIGNAL \inst|counter_f[15]~70\ : std_logic;
SIGNAL \inst|counter_f[16]~71_combout\ : std_logic;
SIGNAL \inst|always0~0_combout\ : std_logic;
SIGNAL \inst|Selector141~0_combout\ : std_logic;
SIGNAL \inst|Selector151~0_combout\ : std_logic;
SIGNAL \inst|Selector151~1_combout\ : std_logic;
SIGNAL \inst|Selector150~0_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[6]~0_combout\ : std_logic;
SIGNAL \inst|state_f~25_combout\ : std_logic;
SIGNAL \inst|state_f.CHECK_AND_WAIT~regout\ : std_logic;
SIGNAL \inst|lcd_data_freq[6]~2_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~78_combout\ : std_logic;
SIGNAL \inst|counter_f[16]~72\ : std_logic;
SIGNAL \inst|counter_f[17]~73_combout\ : std_logic;
SIGNAL \inst|counter_f[17]~74\ : std_logic;
SIGNAL \inst|counter_f[18]~79_combout\ : std_logic;
SIGNAL \inst|counter_f[18]~80\ : std_logic;
SIGNAL \inst|counter_f[19]~82\ : std_logic;
SIGNAL \inst|counter_f[20]~83_combout\ : std_logic;
SIGNAL \inst|counter_f[20]~84\ : std_logic;
SIGNAL \inst|counter_f[21]~86\ : std_logic;
SIGNAL \inst|counter_f[22]~88\ : std_logic;
SIGNAL \inst|counter_f[23]~89_combout\ : std_logic;
SIGNAL \inst|counter_f[23]~90\ : std_logic;
SIGNAL \inst|counter_f[24]~92\ : std_logic;
SIGNAL \inst|counter_f[25]~93_combout\ : std_logic;
SIGNAL \inst|counter_f[25]~94\ : std_logic;
SIGNAL \inst|counter_f[26]~96\ : std_logic;
SIGNAL \inst|counter_f[27]~97_combout\ : std_logic;
SIGNAL \inst|counter_f[27]~98\ : std_logic;
SIGNAL \inst|counter_f[28]~100\ : std_logic;
SIGNAL \inst|counter_f[29]~101_combout\ : std_logic;
SIGNAL \inst|counter_f[29]~102\ : std_logic;
SIGNAL \inst|counter_f[30]~103_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~35_combout\ : std_logic;
SIGNAL \inst|counter_f[28]~99_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~34_combout\ : std_logic;
SIGNAL \inst|counter_f[24]~91_combout\ : std_logic;
SIGNAL \inst|counter_f[22]~87_combout\ : std_logic;
SIGNAL \inst|counter_f[21]~85_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~33_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~36_combout\ : std_logic;
SIGNAL \inst|counter_f[5]~49_combout\ : std_logic;
SIGNAL \inst|counter_f[6]~51_combout\ : std_logic;
SIGNAL \inst|LessThan12~1_combout\ : std_logic;
SIGNAL \inst|counter_f[8]~55_combout\ : std_logic;
SIGNAL \inst|LessThan12~0_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~38_combout\ : std_logic;
SIGNAL \inst|Selector99~0_combout\ : std_logic;
SIGNAL \inst|Selector99~1_combout\ : std_logic;
SIGNAL \inst|Selector99~2_combout\ : std_logic;
SIGNAL \inst|state_f.SETUP~regout\ : std_logic;
SIGNAL \inst|LessThan13~1_combout\ : std_logic;
SIGNAL \inst|counter_f[12]~63_combout\ : std_logic;
SIGNAL \inst|LessThan13~0_combout\ : std_logic;
SIGNAL \inst|counter_f[10]~59_combout\ : std_logic;
SIGNAL \inst|LessThan13~2_combout\ : std_logic;
SIGNAL \inst|LessThan14~0_combout\ : std_logic;
SIGNAL \inst|LessThan14~1_combout\ : std_logic;
SIGNAL \inst|LessThan14~2_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~76_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~75_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~77_combout\ : std_logic;
SIGNAL \inst|counter_f[0]~40\ : std_logic;
SIGNAL \inst|counter_f[1]~41_combout\ : std_logic;
SIGNAL \inst|counter_f[1]~42\ : std_logic;
SIGNAL \inst|counter_f[2]~43_combout\ : std_logic;
SIGNAL \inst|counter_f[2]~44\ : std_logic;
SIGNAL \inst|counter_f[3]~46\ : std_logic;
SIGNAL \inst|counter_f[4]~47_combout\ : std_logic;
SIGNAL \inst|counter_f[4]~48\ : std_logic;
SIGNAL \inst|counter_f[5]~50\ : std_logic;
SIGNAL \inst|counter_f[6]~52\ : std_logic;
SIGNAL \inst|counter_f[7]~53_combout\ : std_logic;
SIGNAL \inst|counter_f[7]~54\ : std_logic;
SIGNAL \inst|counter_f[8]~56\ : std_logic;
SIGNAL \inst|counter_f[9]~57_combout\ : std_logic;
SIGNAL \inst|counter_f[9]~58\ : std_logic;
SIGNAL \inst|counter_f[10]~60\ : std_logic;
SIGNAL \inst|counter_f[11]~61_combout\ : std_logic;
SIGNAL \inst|counter_f[11]~62\ : std_logic;
SIGNAL \inst|counter_f[12]~64\ : std_logic;
SIGNAL \inst|counter_f[13]~65_combout\ : std_logic;
SIGNAL \inst|counter_f[13]~66\ : std_logic;
SIGNAL \inst|counter_f[14]~67_combout\ : std_logic;
SIGNAL \inst|counter_f[14]~68\ : std_logic;
SIGNAL \inst|counter_f[15]~69_combout\ : std_logic;
SIGNAL \inst|LessThan13~3_combout\ : std_logic;
SIGNAL \inst|state_f~18_combout\ : std_logic;
SIGNAL \inst|state_f~20_combout\ : std_logic;
SIGNAL \inst|state_f~21_combout\ : std_logic;
SIGNAL \inst|state_f~26_combout\ : std_logic;
SIGNAL \inst|state_f.WAIT_EXEC~regout\ : std_logic;
SIGNAL \inst|state_f~19_combout\ : std_logic;
SIGNAL \inst|state_f~24_combout\ : std_logic;
SIGNAL \inst|state_f.DIGIT_SELECT~regout\ : std_logic;
SIGNAL \inst|n_index~2_combout\ : std_logic;
SIGNAL \inst|n_index[0]~1_combout\ : std_logic;
SIGNAL \inst|n_index~0_combout\ : std_logic;
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|n_index~3_combout\ : std_logic;
SIGNAL \inst|state_f~23_combout\ : std_logic;
SIGNAL \inst|state_f.HZ_DISPLAY~regout\ : std_logic;
SIGNAL \inst|Selector144~0_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[4]~feeder_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[6]~3_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst|lcd_data_reg[4]~4_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|page_index~20_combout\ : std_logic;
SIGNAL \inst|page_index~11_combout\ : std_logic;
SIGNAL \inst|page_index~6_combout\ : std_logic;
SIGNAL \inst|page_index~7_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|page_index~16_combout\ : std_logic;
SIGNAL \inst|page_index~17_combout\ : std_logic;
SIGNAL \inst|always2~0_combout\ : std_logic;
SIGNAL \inst|always2~1_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Selector65~9_combout\ : std_logic;
SIGNAL \inst|Selector65~10_combout\ : std_logic;
SIGNAL \inst|Selector65~3_combout\ : std_logic;
SIGNAL \inst|Selector65~4_combout\ : std_logic;
SIGNAL \inst|Selector65~5_combout\ : std_logic;
SIGNAL \inst|Selector65~6_combout\ : std_logic;
SIGNAL \inst|Selector65~1_combout\ : std_logic;
SIGNAL \inst|Selector65~2_combout\ : std_logic;
SIGNAL \inst|Selector65~11_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \inst|lcd_data_reg[1]~7_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[0]~4_combout\ : std_logic;
SIGNAL \inst|Selector146~0_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[2]~feeder_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst|lcd_data_reg[2]~6_combout\ : std_logic;
SIGNAL \inst|Selector142~0_combout\ : std_logic;
SIGNAL \inst|Selector145~0_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \inst|lcd_data_reg[3]~5_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|char_index[0]~10_combout\ : std_logic;
SIGNAL \inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|page_index~5_combout\ : std_logic;
SIGNAL \inst|Selector54~0_combout\ : std_logic;
SIGNAL \inst|Selector54~1_combout\ : std_logic;
SIGNAL \inst|state.WAIT~regout\ : std_logic;
SIGNAL \inst|Selector46~11_combout\ : std_logic;
SIGNAL \inst|LessThan8~0_combout\ : std_logic;
SIGNAL \inst|counter[21]~84_combout\ : std_logic;
SIGNAL \inst|LessThan8~5_combout\ : std_logic;
SIGNAL \inst|counter[22]~86_combout\ : std_logic;
SIGNAL \inst|LessThan8~6_combout\ : std_logic;
SIGNAL \inst|LessThan8~2_combout\ : std_logic;
SIGNAL \inst|LessThan8~3_combout\ : std_logic;
SIGNAL \inst|LessThan8~4_combout\ : std_logic;
SIGNAL \inst|LessThan8~7_combout\ : std_logic;
SIGNAL \inst|Selector46~8_combout\ : std_logic;
SIGNAL \inst|state~34_combout\ : std_logic;
SIGNAL \inst|state~35_combout\ : std_logic;
SIGNAL \inst|state~36_combout\ : std_logic;
SIGNAL \inst|LessThan4~1_combout\ : std_logic;
SIGNAL \inst|counter[10]~54_combout\ : std_logic;
SIGNAL \inst|LessThan4~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|LessThan5~2_combout\ : std_logic;
SIGNAL \inst|LessThan4~3_combout\ : std_logic;
SIGNAL \inst|state~42_combout\ : std_logic;
SIGNAL \inst|state~39_combout\ : std_logic;
SIGNAL \inst|state.WRITE_DATA~regout\ : std_logic;
SIGNAL \inst|LessThan5~3_combout\ : std_logic;
SIGNAL \inst|LessThan5~5_combout\ : std_logic;
SIGNAL \inst|LessThan5~6_combout\ : std_logic;
SIGNAL \inst|state~43_combout\ : std_logic;
SIGNAL \inst|state~32_combout\ : std_logic;
SIGNAL \inst|state~37_combout\ : std_logic;
SIGNAL \inst|state.POWER_ON~0_combout\ : std_logic;
SIGNAL \inst|state.POWER_ON~regout\ : std_logic;
SIGNAL \inst|LessThan3~5_combout\ : std_logic;
SIGNAL \inst|LessThan3~6_combout\ : std_logic;
SIGNAL \inst|LessThan3~7_combout\ : std_logic;
SIGNAL \inst|LessThan3~8_combout\ : std_logic;
SIGNAL \inst|Selector46~10_combout\ : std_logic;
SIGNAL \inst|Selector46~12_combout\ : std_logic;
SIGNAL \inst|Selector46~9_combout\ : std_logic;
SIGNAL \inst|state.SETUP~regout\ : std_logic;
SIGNAL \inst|counter[19]~80_combout\ : std_logic;
SIGNAL \inst|counter[19]~81_combout\ : std_logic;
SIGNAL \inst|counter[19]~78_combout\ : std_logic;
SIGNAL \inst|counter[19]~106_combout\ : std_logic;
SIGNAL \inst|counter[19]~107_combout\ : std_logic;
SIGNAL \inst|counter[19]~82_combout\ : std_logic;
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
SIGNAL \inst|counter[21]~85\ : std_logic;
SIGNAL \inst|counter[22]~87\ : std_logic;
SIGNAL \inst|counter[23]~88_combout\ : std_logic;
SIGNAL \inst|counter[23]~89\ : std_logic;
SIGNAL \inst|counter[24]~91\ : std_logic;
SIGNAL \inst|counter[25]~92_combout\ : std_logic;
SIGNAL \inst|counter[25]~93\ : std_logic;
SIGNAL \inst|counter[26]~95\ : std_logic;
SIGNAL \inst|counter[27]~96_combout\ : std_logic;
SIGNAL \inst|counter[27]~97\ : std_logic;
SIGNAL \inst|counter[28]~99\ : std_logic;
SIGNAL \inst|counter[29]~100_combout\ : std_logic;
SIGNAL \inst|counter[29]~101\ : std_logic;
SIGNAL \inst|counter[30]~102_combout\ : std_logic;
SIGNAL \inst|counter[30]~103\ : std_logic;
SIGNAL \inst|counter[31]~104_combout\ : std_logic;
SIGNAL \inst|state~41_combout\ : std_logic;
SIGNAL \inst|state~38_combout\ : std_logic;
SIGNAL \inst|state.PAGE_SELECT~regout\ : std_logic;
SIGNAL \inst|char_index[0]~9_combout\ : std_logic;
SIGNAL \inst|char_index[0]~8\ : std_logic;
SIGNAL \inst|char_index[1]~12\ : std_logic;
SIGNAL \inst|char_index[2]~13_combout\ : std_logic;
SIGNAL \inst|char_index[2]~14\ : std_logic;
SIGNAL \inst|char_index[3]~16\ : std_logic;
SIGNAL \inst|char_index[4]~18\ : std_logic;
SIGNAL \inst|char_index[5]~19_combout\ : std_logic;
SIGNAL \inst|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|sub_state~18_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE_ERROR~regout\ : std_logic;
SIGNAL \inst|sub_state~17_combout\ : std_logic;
SIGNAL \inst|sub_state~20_combout\ : std_logic;
SIGNAL \inst|sub_state~21_combout\ : std_logic;
SIGNAL \inst|sub_state.PAGE2~regout\ : std_logic;
SIGNAL \inst|Selector52~2_combout\ : std_logic;
SIGNAL \inst|Selector52~3_combout\ : std_logic;
SIGNAL \inst|state.WAIT_BUTTON_SHORT~regout\ : std_logic;
SIGNAL \inst|Selector152~0_combout\ : std_logic;
SIGNAL \inst|Selector152~1_combout\ : std_logic;
SIGNAL \inst|lcd_en_freq~regout\ : std_logic;
SIGNAL \inst|Selector13~1_combout\ : std_logic;
SIGNAL \inst|lcd_en_cntr~regout\ : std_logic;
SIGNAL \inst|lcd_en_reg~0_combout\ : std_logic;
SIGNAL \inst|lcd_en_reg~combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst|lcd_rs_reg~0_combout\ : std_logic;
SIGNAL \inst|lcd_rs_reg~combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \inst|lcd_data_reg[5]~3_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Selector148~0_combout\ : std_logic;
SIGNAL \inst|lcd_data_freq[0]~feeder_combout\ : std_logic;
SIGNAL \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst|lcd_data_reg[0]~8_combout\ : std_logic;
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
SIGNAL \inst|btn_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|page_index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|sub_state_f\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|counter_f\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|lcd_data_freq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|lcd_data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|n_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|char_index\ : std_logic_vector(5 DOWNTO 0);
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

\inst|lcd_data_reg[7]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|lcd_data_reg[7]~0_combout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_SW~combout\(0) <= NOT \SW~combout\(0);
\inst|ALT_INV_state_f.HZ_DISPLAY~regout\ <= NOT \inst|state_f.HZ_DISPLAY~regout\;

-- Location: LCFF_X27_Y20_N17
\inst|lcd_data_freq[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|lcd_data_freq[6]~feeder_combout\,
	sdata => \inst|state_f.DIGIT_SELECT~_wirecell_combout\,
	sload => \inst|ALT_INV_state_f.HZ_DISPLAY~regout\,
	ena => \inst|lcd_data_freq[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(6));

-- Location: LCFF_X27_Y20_N7
\inst|lcd_data_freq[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector143~0_combout\,
	sdata => \inst|state_f.DIGIT_SELECT~regout\,
	sload => \inst|ALT_INV_state_f.HZ_DISPLAY~regout\,
	ena => \inst|lcd_data_freq[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(5));

-- Location: LCFF_X32_Y20_N11
\inst|btn_counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[21]~76_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(21));

-- Location: LCFF_X32_Y20_N31
\inst|btn_counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[31]~96_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(31));

-- Location: LCFF_X30_Y20_N21
\inst|btn_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \inst|btn_counter[5]~42_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	sload => VCC,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(5));

-- Location: LCCOMB_X29_Y16_N0
\inst|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = \inst|page_index\(0) $ (VCC)
-- \inst|Add4~1\ = CARRY(\inst|page_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X29_Y16_N4
\inst|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = (\inst|page_index\(2) & ((GND) # (!\inst|Add4~3\))) # (!\inst|page_index\(2) & (\inst|Add4~3\ $ (GND)))
-- \inst|Add4~5\ = CARRY((\inst|page_index\(2)) # (!\inst|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(2),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X29_Y16_N22
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

-- Location: LCCOMB_X29_Y16_N6
\inst|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|page_index\(3) & (\inst|Add4~5\ & VCC)) # (!\inst|page_index\(3) & (!\inst|Add4~5\))
-- \inst|Add4~7\ = CARRY((!\inst|page_index\(3) & !\inst|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X29_Y16_N24
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

-- Location: LCCOMB_X29_Y16_N8
\inst|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = \inst|Add4~7\ $ (\inst|page_index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|page_index\(4),
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\);

-- Location: LCFF_X32_Y21_N7
\inst|btn_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[3]~38_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(3));

-- Location: LCCOMB_X32_Y21_N6
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

-- Location: LCCOMB_X32_Y21_N10
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

-- Location: LCCOMB_X32_Y20_N10
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

-- Location: LCCOMB_X32_Y20_N28
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

-- Location: LCCOMB_X32_Y20_N30
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

-- Location: LCFF_X24_Y16_N25
\inst|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[28]~98_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(28));

-- Location: LCFF_X31_Y18_N7
\inst|counter_f[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[19]~81_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(19));

-- Location: LCFF_X31_Y18_N21
\inst|counter_f[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[26]~95_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(26));

-- Location: LCFF_X31_Y18_N31
\inst|counter_f[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[31]~105_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(31));

-- Location: LCFF_X24_Y17_N7
\inst|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[3]~40_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(3));

-- Location: LCCOMB_X24_Y17_N6
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

-- Location: LCCOMB_X24_Y16_N24
\inst|counter[28]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[28]~98_combout\ = (\inst|counter\(28) & (\inst|counter[27]~97\ $ (GND))) # (!\inst|counter\(28) & (!\inst|counter[27]~97\ & VCC))
-- \inst|counter[28]~99\ = CARRY((\inst|counter\(28) & !\inst|counter[27]~97\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(28),
	datad => VCC,
	cin => \inst|counter[27]~97\,
	combout => \inst|counter[28]~98_combout\,
	cout => \inst|counter[28]~99\);

-- Location: LCFF_X31_Y19_N7
\inst|counter_f[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[3]~45_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(3));

-- Location: LCCOMB_X31_Y19_N6
\inst|counter_f[3]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[3]~45_combout\ = (\inst|counter_f\(3) & (!\inst|counter_f[2]~44\)) # (!\inst|counter_f\(3) & ((\inst|counter_f[2]~44\) # (GND)))
-- \inst|counter_f[3]~46\ = CARRY((!\inst|counter_f[2]~44\) # (!\inst|counter_f\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(3),
	datad => VCC,
	cin => \inst|counter_f[2]~44\,
	combout => \inst|counter_f[3]~45_combout\,
	cout => \inst|counter_f[3]~46\);

-- Location: LCCOMB_X31_Y18_N6
\inst|counter_f[19]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[19]~81_combout\ = (\inst|counter_f\(19) & (!\inst|counter_f[18]~80\)) # (!\inst|counter_f\(19) & ((\inst|counter_f[18]~80\) # (GND)))
-- \inst|counter_f[19]~82\ = CARRY((!\inst|counter_f[18]~80\) # (!\inst|counter_f\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(19),
	datad => VCC,
	cin => \inst|counter_f[18]~80\,
	combout => \inst|counter_f[19]~81_combout\,
	cout => \inst|counter_f[19]~82\);

-- Location: LCCOMB_X31_Y18_N20
\inst|counter_f[26]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[26]~95_combout\ = (\inst|counter_f\(26) & (\inst|counter_f[25]~94\ $ (GND))) # (!\inst|counter_f\(26) & (!\inst|counter_f[25]~94\ & VCC))
-- \inst|counter_f[26]~96\ = CARRY((\inst|counter_f\(26) & !\inst|counter_f[25]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(26),
	datad => VCC,
	cin => \inst|counter_f[25]~94\,
	combout => \inst|counter_f[26]~95_combout\,
	cout => \inst|counter_f[26]~96\);

-- Location: LCCOMB_X31_Y18_N28
\inst|counter_f[30]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[30]~103_combout\ = (\inst|counter_f\(30) & (\inst|counter_f[29]~102\ $ (GND))) # (!\inst|counter_f\(30) & (!\inst|counter_f[29]~102\ & VCC))
-- \inst|counter_f[30]~104\ = CARRY((\inst|counter_f\(30) & !\inst|counter_f[29]~102\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(30),
	datad => VCC,
	cin => \inst|counter_f[29]~102\,
	combout => \inst|counter_f[30]~103_combout\,
	cout => \inst|counter_f[30]~104\);

-- Location: LCCOMB_X31_Y18_N30
\inst|counter_f[31]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[31]~105_combout\ = \inst|counter_f[30]~104\ $ (\inst|counter_f\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter_f\(31),
	cin => \inst|counter_f[30]~104\,
	combout => \inst|counter_f[31]~105_combout\);

-- Location: LCFF_X30_Y19_N11
\inst|lcd_rs_freq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector140~0_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_rs_freq~regout\);

-- Location: LCFF_X29_Y19_N23
\inst|lcd_data_freq[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector141~1_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(7));

-- Location: LCFF_X27_Y20_N13
\inst|lcd_data_freq[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector147~1_combout\,
	ena => \inst|lcd_data_freq[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(1));

-- Location: LCCOMB_X25_Y19_N20
\inst|page_index~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~4_combout\ = (!\inst|char_index\(4)) # (!\inst|char_index\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char_index\(5),
	datad => \inst|char_index\(4),
	combout => \inst|page_index~4_combout\);

-- Location: LCCOMB_X29_Y16_N12
\inst|always2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always2~2_combout\ = (!\inst|page_index\(2) & !\inst|page_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(2),
	datad => \inst|page_index\(3),
	combout => \inst|always2~2_combout\);

-- Location: LCCOMB_X29_Y16_N14
\inst|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (\inst|page_index\(0)) # ((\inst|page_index\(4)) # ((!\inst|page_index\(1)) # (!\inst|always2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datab => \inst|page_index\(4),
	datac => \inst|always2~2_combout\,
	datad => \inst|page_index\(1),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y16_N30
\inst|Selector65~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~7_combout\ = (\inst|page_index~7_combout\ & (((\inst|page_index\(0))) # (!\inst|Equal2~0_combout\))) # (!\inst|page_index~7_combout\ & (((\inst|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|page_index\(0),
	datac => \inst|Add4~0_combout\,
	datad => \inst|page_index~7_combout\,
	combout => \inst|Selector65~7_combout\);

-- Location: LCCOMB_X30_Y16_N10
\inst|Selector64~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~2_combout\ = (\inst|Selector65~3_combout\ & ((\inst|page_index~5_combout\ & (\inst|sub_state.PAGE1~regout\)) # (!\inst|page_index~5_combout\ & ((\inst|sub_state.PAGE_ERROR~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE1~regout\,
	datab => \inst|sub_state.PAGE_ERROR~regout\,
	datac => \inst|Selector65~3_combout\,
	datad => \inst|page_index~5_combout\,
	combout => \inst|Selector64~2_combout\);

-- Location: LCCOMB_X30_Y18_N6
\inst|page_index[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[3]~12_combout\ = (\KEY~combout\(0) & ((\KEY~combout\(1)) # (\inst|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => \KEY~combout\(1),
	datad => \inst|always0~0_combout\,
	combout => \inst|page_index[3]~12_combout\);

-- Location: LCCOMB_X29_Y16_N30
\inst|page_index~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~18_combout\ = (\KEY~combout\(0) & (\inst|Add4~8_combout\ & ((!\inst|page_index~7_combout\)))) # (!\KEY~combout\(0) & (((\inst|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst|Add4~8_combout\,
	datac => \inst|Add2~8_combout\,
	datad => \inst|page_index~7_combout\,
	combout => \inst|page_index~18_combout\);

-- Location: LCFF_X29_Y20_N17
\inst|state_f.WRITE_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.WRITE_DATA~regout\);

-- Location: LCCOMB_X30_Y19_N10
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

-- Location: LCCOMB_X29_Y20_N4
\inst|lcd_data_freq[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[6]~1_combout\ = (!\inst|state_f.SETUP~regout\ & (!\inst|state_f.WAIT_EXEC~regout\ & (!\inst|state_f.WRITE_DATA~regout\ & !\inst|lcd_data_freq[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.SETUP~regout\,
	datab => \inst|state_f.WAIT_EXEC~regout\,
	datac => \inst|state_f.WRITE_DATA~regout\,
	datad => \inst|lcd_data_freq[6]~0_combout\,
	combout => \inst|lcd_data_freq[6]~1_combout\);

-- Location: LCCOMB_X29_Y19_N22
\inst|Selector141~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector141~1_combout\ = (\inst|Selector141~0_combout\) # ((\inst|lcd_data_freq\(7) & ((!\inst|state_f.CHECK_AND_WAIT~regout\) # (!\inst|lcd_data_freq[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_freq[6]~1_combout\,
	datab => \inst|state_f.CHECK_AND_WAIT~regout\,
	datac => \inst|lcd_data_freq\(7),
	datad => \inst|Selector141~0_combout\,
	combout => \inst|Selector141~1_combout\);

-- Location: LCCOMB_X27_Y20_N6
\inst|Selector143~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector143~0_combout\ = (\inst|sub_state_f\(1)) # (!\inst|sub_state_f\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sub_state_f\(0),
	datad => \inst|sub_state_f\(1),
	combout => \inst|Selector143~0_combout\);

-- Location: LCCOMB_X29_Y18_N6
\inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|n_index\(1) & (((\inst|n_index\(0))))) # (!\inst|n_index\(1) & ((\inst|n_index\(0) & (\SW~combout\(10))) # (!\inst|n_index\(0) & ((\SW~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \SW~combout\(14),
	datac => \inst|n_index\(1),
	datad => \inst|n_index\(0),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y18_N6
\inst|Selector147~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector147~0_combout\ = (\inst|Mux1~1_combout\ & ((\inst|lcd_data_freq[0]~4_combout\) # ((!\inst|Mux3~1_combout\ & \inst|state_f.DIGIT_SELECT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst|lcd_data_freq[0]~4_combout\,
	datac => \inst|Mux1~1_combout\,
	datad => \inst|state_f.DIGIT_SELECT~regout\,
	combout => \inst|Selector147~0_combout\);

-- Location: LCCOMB_X27_Y20_N12
\inst|Selector147~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector147~1_combout\ = (\inst|Selector147~0_combout\) # ((\inst|state_f.HZ_DISPLAY~regout\ & \inst|sub_state_f\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f.HZ_DISPLAY~regout\,
	datac => \inst|Selector147~0_combout\,
	datad => \inst|sub_state_f\(1),
	combout => \inst|Selector147~1_combout\);

-- Location: LCFF_X28_Y19_N7
\inst|state.WAIT_EXEC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WAIT_EXEC~regout\);

-- Location: LCCOMB_X29_Y19_N6
\inst|state~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~31_combout\ = (!\inst|state.DONE~regout\ & ((\inst|state~30_combout\ & (!\inst|state.WAIT_BUTTON_SHORT~regout\)) # (!\inst|state~30_combout\ & ((!\inst|state.WAIT_BUTTON_RELEASE~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.DONE~regout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state~30_combout\,
	datad => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	combout => \inst|state~31_combout\);

-- Location: LCCOMB_X25_Y17_N10
\inst|LessThan5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~4_combout\ = (!\inst|counter\(7) & (((!\inst|counter\(5) & !\inst|counter\(4))) # (!\inst|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datab => \inst|counter\(6),
	datac => \inst|counter\(4),
	datad => \inst|counter\(7),
	combout => \inst|LessThan5~4_combout\);

-- Location: LCCOMB_X30_Y19_N26
\inst|state~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~33_combout\ = (\KEY~combout\(0) & ((\KEY~combout\(1) & (!\inst|state.WAIT_BUTTON_RELEASE~regout\)) # (!\KEY~combout\(1) & ((!\inst|state.WAIT_BUTTON_SHORT~regout\))))) # (!\KEY~combout\(0) & (((!\inst|state.WAIT_BUTTON_SHORT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datac => \KEY~combout\(1),
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|state~33_combout\);

-- Location: LCCOMB_X25_Y17_N24
\inst|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~1_combout\ = (!\inst|counter\(8) & (!\inst|counter\(10) & !\inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datac => \inst|counter\(10),
	datad => \inst|counter\(9),
	combout => \inst|LessThan8~1_combout\);

-- Location: LCCOMB_X25_Y16_N6
\inst|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~4_combout\ = (!\inst|counter\(18)) # (!\inst|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(19),
	datac => \inst|counter\(18),
	combout => \inst|LessThan3~4_combout\);

-- Location: LCCOMB_X30_Y18_N22
\inst|counter_f[14]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~32_combout\ = (!\inst|counter_f\(18) & (!\inst|counter_f\(20) & (!\inst|counter_f\(19) & !\inst|counter_f\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(18),
	datab => \inst|counter_f\(20),
	datac => \inst|counter_f\(19),
	datad => \inst|counter_f\(17),
	combout => \inst|counter_f[14]~32_combout\);

-- Location: LCCOMB_X30_Y20_N24
\inst|counter_f[14]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~37_combout\ = (\inst|LessThan13~0_combout\ & (!\inst|counter_f\(14) & (!\inst|counter_f\(15) & !\inst|counter_f\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~0_combout\,
	datab => \inst|counter_f\(14),
	datac => \inst|counter_f\(15),
	datad => \inst|counter_f\(16),
	combout => \inst|counter_f[14]~37_combout\);

-- Location: LCCOMB_X29_Y20_N10
\inst|state_f~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~17_combout\ = (\inst|state_f.SETUP~regout\ & ((!\inst|counter_f[14]~38_combout\) # (!\inst|counter_f[14]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.SETUP~regout\,
	datab => \inst|counter_f[14]~36_combout\,
	datac => \inst|counter_f[14]~38_combout\,
	combout => \inst|state_f~17_combout\);

-- Location: LCCOMB_X29_Y20_N16
\inst|state_f~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~22_combout\ = (\SW~combout\(0) & ((\inst|state_f~21_combout\ & (\inst|state_f~17_combout\)) # (!\inst|state_f~21_combout\ & ((\inst|state_f.WRITE_DATA~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f~17_combout\,
	datab => \SW~combout\(0),
	datac => \inst|state_f.WRITE_DATA~regout\,
	datad => \inst|state_f~21_combout\,
	combout => \inst|state_f~22_combout\);

-- Location: LCCOMB_X28_Y19_N6
\inst|state~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~40_combout\ = (\SW~combout\(0) & ((\inst|state~43_combout\) # ((\inst|state.WAIT_EXEC~regout\ & \inst|state~37_combout\)))) # (!\SW~combout\(0) & (((\inst|state.WAIT_EXEC~regout\ & \inst|state~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state~43_combout\,
	datac => \inst|state.WAIT_EXEC~regout\,
	datad => \inst|state~37_combout\,
	combout => \inst|state~40_combout\);

-- Location: LCCOMB_X25_Y16_N16
\inst|counter[19]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~77_combout\ = (\inst|LessThan3~9_combout\ & (!\inst|state.POWER_ON~regout\ & ((\inst|LessThan3~4_combout\) # (\inst|LessThan3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~4_combout\,
	datab => \inst|LessThan3~9_combout\,
	datac => \inst|LessThan3~7_combout\,
	datad => \inst|state.POWER_ON~regout\,
	combout => \inst|counter[19]~77_combout\);

-- Location: LCCOMB_X25_Y18_N8
\inst|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~3_combout\ = (!\inst|counter\(16)) # (!\inst|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(15),
	datad => \inst|counter\(16),
	combout => \inst|LessThan6~3_combout\);

-- Location: LCCOMB_X25_Y16_N10
\inst|counter[19]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~79_combout\ = (\inst|LessThan5~1_combout\ & (!\inst|state.WAIT~regout\ & ((\inst|LessThan6~1_combout\) # (\inst|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan6~1_combout\,
	datab => \inst|LessThan5~1_combout\,
	datac => \inst|state.WAIT~regout\,
	datad => \inst|LessThan6~3_combout\,
	combout => \inst|counter[19]~79_combout\);

-- Location: LCCOMB_X25_Y16_N26
\inst|LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_combout\ = (\inst|LessThan3~2_combout\ & (!\inst|counter\(25) & (!\inst|counter\(26) & !\inst|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~2_combout\,
	datab => \inst|counter\(25),
	datac => \inst|counter\(26),
	datad => \inst|counter\(24),
	combout => \inst|LessThan3~9_combout\);

-- Location: LCCOMB_X28_Y19_N10
\inst|Selector46~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~13_combout\ = (!\inst|LessThan7~1_combout\ & (\inst|state.PAGE_SELECT~regout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~1_combout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Selector46~13_combout\);

-- Location: LCCOMB_X27_Y20_N20
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

-- Location: LCCOMB_X27_Y20_N16
\inst|lcd_data_freq[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[6]~feeder_combout\ = \inst|Selector142~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector142~0_combout\,
	combout => \inst|lcd_data_freq[6]~feeder_combout\);

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

-- Location: LCCOMB_X31_Y20_N12
\inst|state~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~30_combout\ = (\KEY~combout\(1) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(1),
	datad => \KEY~combout\(0),
	combout => \inst|state~30_combout\);

-- Location: LCCOMB_X25_Y19_N4
\inst|char_index[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[0]~7_combout\ = \inst|char_index\(0) $ (VCC)
-- \inst|char_index[0]~8\ = CARRY(\inst|char_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char_index\(0),
	datad => VCC,
	combout => \inst|char_index[0]~7_combout\,
	cout => \inst|char_index[0]~8\);

-- Location: LCCOMB_X24_Y17_N0
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

-- Location: LCCOMB_X25_Y16_N20
\inst|counter[19]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~32_combout\ = (!\inst|counter\(28) & (!\inst|counter\(30) & (!\inst|counter\(29) & !\inst|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(28),
	datab => \inst|counter\(30),
	datac => \inst|counter\(29),
	datad => \inst|counter\(27),
	combout => \inst|counter[19]~32_combout\);

-- Location: LCCOMB_X27_Y16_N10
\inst|counter[19]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~76_combout\ = (\SW~combout\(0) & (!\inst|counter\(31) & \inst|counter[19]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \inst|counter\(31),
	datad => \inst|counter[19]~32_combout\,
	combout => \inst|counter[19]~76_combout\);

-- Location: LCCOMB_X29_Y19_N8
\inst|sub_state.PAGE0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state.PAGE0~0_combout\ = (\SW~combout\(0) & ((\inst|sub_state.PAGE0~regout\) # (!\inst|sub_state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \inst|sub_state.PAGE0~regout\,
	datad => \inst|sub_state~17_combout\,
	combout => \inst|sub_state.PAGE0~0_combout\);

-- Location: LCFF_X29_Y19_N9
\inst|sub_state.PAGE0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|sub_state.PAGE0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state.PAGE0~regout\);

-- Location: LCCOMB_X25_Y19_N6
\inst|char_index[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[1]~11_combout\ = (\inst|char_index\(1) & (!\inst|char_index[0]~8\)) # (!\inst|char_index\(1) & ((\inst|char_index[0]~8\) # (GND)))
-- \inst|char_index[1]~12\ = CARRY((!\inst|char_index[0]~8\) # (!\inst|char_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char_index\(1),
	datad => VCC,
	cin => \inst|char_index[0]~8\,
	combout => \inst|char_index[1]~11_combout\,
	cout => \inst|char_index[1]~12\);

-- Location: LCCOMB_X25_Y19_N24
\inst|counter[19]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~33_combout\ = (\inst|counter[19]~32_combout\ & !\inst|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter[19]~32_combout\,
	datad => \inst|counter\(31),
	combout => \inst|counter[19]~33_combout\);

-- Location: LCCOMB_X24_Y16_N6
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

-- Location: LCCOMB_X28_Y19_N24
\inst|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector51~0_combout\ = (\inst|state.DONE~regout\) # ((\inst|state.PAGE_SELECT~regout\ & (\inst|sub_state.PAGE_ERROR~regout\ & \inst|page_index~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|sub_state.PAGE_ERROR~regout\,
	datac => \inst|state.DONE~regout\,
	datad => \inst|page_index~5_combout\,
	combout => \inst|Selector51~0_combout\);

-- Location: LCFF_X28_Y19_N25
\inst|state.DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector51~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.DONE~regout\);

-- Location: LCCOMB_X31_Y20_N16
\inst|Selector53~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector53~1_combout\ = (\inst|LessThan11~8_combout\ & (!\inst|state~30_combout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\) # (\inst|state.WAIT_BUTTON_SHORT~regout\)))) # (!\inst|LessThan11~8_combout\ & 
-- (((\inst|state.WAIT_BUTTON_RELEASE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan11~8_combout\,
	datab => \inst|state~30_combout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|Selector53~1_combout\);

-- Location: LCFF_X31_Y20_N17
\inst|state.WAIT_BUTTON_RELEASE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \inst|Selector53~1_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WAIT_BUTTON_RELEASE~regout\);

-- Location: LCCOMB_X27_Y17_N24
\inst|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector13~0_combout\ = (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & (!\inst|state.WAIT_BUTTON_SHORT~regout\ & !\inst|state.PAGE_SELECT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|state.PAGE_SELECT~regout\,
	combout => \inst|Selector13~0_combout\);

-- Location: LCCOMB_X27_Y17_N12
\inst|counter[19]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~83_combout\ = ((!\inst|state.DONE~regout\ & \inst|Selector13~0_combout\)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.DONE~regout\,
	datac => \inst|Selector13~0_combout\,
	datad => \SW~combout\(0),
	combout => \inst|counter[19]~83_combout\);

-- Location: LCFF_X24_Y16_N7
\inst|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[19]~72_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(19));

-- Location: LCCOMB_X25_Y16_N24
\inst|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~0_combout\ = (!\inst|counter\(18) & (!\inst|counter\(19) & !\inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(18),
	datac => \inst|counter\(19),
	datad => \inst|counter\(17),
	combout => \inst|LessThan5~0_combout\);

-- Location: LCCOMB_X24_Y16_N20
\inst|counter[26]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[26]~94_combout\ = (\inst|counter\(26) & (\inst|counter[25]~93\ $ (GND))) # (!\inst|counter\(26) & (!\inst|counter[25]~93\ & VCC))
-- \inst|counter[26]~95\ = CARRY((\inst|counter\(26) & !\inst|counter[25]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(26),
	datad => VCC,
	cin => \inst|counter[25]~93\,
	combout => \inst|counter[26]~94_combout\,
	cout => \inst|counter[26]~95\);

-- Location: LCFF_X24_Y16_N21
\inst|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[26]~94_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(26));

-- Location: LCCOMB_X24_Y16_N16
\inst|counter[24]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[24]~90_combout\ = (\inst|counter\(24) & (\inst|counter[23]~89\ $ (GND))) # (!\inst|counter\(24) & (!\inst|counter[23]~89\ & VCC))
-- \inst|counter[24]~91\ = CARRY((\inst|counter\(24) & !\inst|counter[23]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(24),
	datad => VCC,
	cin => \inst|counter[23]~89\,
	combout => \inst|counter[24]~90_combout\,
	cout => \inst|counter[24]~91\);

-- Location: LCFF_X24_Y16_N17
\inst|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[24]~90_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(24));

-- Location: LCCOMB_X25_Y16_N2
\inst|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_combout\ = (!\inst|counter\(25) & (!\inst|counter\(26) & !\inst|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(25),
	datac => \inst|counter\(26),
	datad => \inst|counter\(24),
	combout => \inst|LessThan3~3_combout\);

-- Location: LCCOMB_X25_Y16_N30
\inst|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_combout\ = (\inst|LessThan3~2_combout\ & (\inst|LessThan5~0_combout\ & \inst|LessThan3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~2_combout\,
	datac => \inst|LessThan5~0_combout\,
	datad => \inst|LessThan3~3_combout\,
	combout => \inst|LessThan5~1_combout\);

-- Location: LCCOMB_X24_Y17_N24
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

-- Location: LCFF_X24_Y17_N25
\inst|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[12]~58_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(12));

-- Location: LCCOMB_X25_Y17_N16
\inst|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~0_combout\ = (!\inst|counter\(13) & (!\inst|counter\(11) & (!\inst|counter\(12) & !\inst|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datab => \inst|counter\(11),
	datac => \inst|counter\(12),
	datad => \inst|counter\(14),
	combout => \inst|LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y17_N16
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

-- Location: LCFF_X24_Y17_N17
\inst|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[8]~50_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(8));

-- Location: LCCOMB_X24_Y17_N10
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

-- Location: LCFF_X24_Y17_N11
\inst|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[5]~44_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(5));

-- Location: LCCOMB_X24_Y17_N12
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

-- Location: LCFF_X24_Y17_N13
\inst|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[6]~46_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(6));

-- Location: LCCOMB_X25_Y17_N30
\inst|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = (\inst|counter\(8)) # ((\inst|counter\(7) & ((\inst|counter\(5)) # (\inst|counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datab => \inst|counter\(8),
	datac => \inst|counter\(5),
	datad => \inst|counter\(6),
	combout => \inst|LessThan6~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\inst|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~1_combout\ = (\inst|LessThan4~0_combout\ & (((!\inst|LessThan6~0_combout\) # (!\inst|counter\(9))) # (!\inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(10),
	datab => \inst|counter\(9),
	datac => \inst|LessThan4~0_combout\,
	datad => \inst|LessThan6~0_combout\,
	combout => \inst|LessThan6~1_combout\);

-- Location: LCCOMB_X25_Y19_N26
\inst|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~2_combout\ = (\inst|LessThan5~1_combout\ & (((\inst|LessThan6~1_combout\) # (!\inst|counter\(16))) # (!\inst|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datab => \inst|counter\(16),
	datac => \inst|LessThan5~1_combout\,
	datad => \inst|LessThan6~1_combout\,
	combout => \inst|LessThan6~2_combout\);

-- Location: LCCOMB_X28_Y19_N8
\inst|char_index[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[0]~6_combout\ = (\SW~combout\(0) & (((\inst|counter[19]~33_combout\ & \inst|LessThan6~2_combout\)) # (!\inst|state.WAIT_EXEC~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_EXEC~regout\,
	datab => \SW~combout\(0),
	datac => \inst|counter[19]~33_combout\,
	datad => \inst|LessThan6~2_combout\,
	combout => \inst|char_index[0]~6_combout\);

-- Location: LCCOMB_X30_Y19_N0
\inst|lcd_data_reg[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg[7]~0_combout\ = ((!\inst|state.WAIT_BUTTON_RELEASE~regout\ & !\inst|state.WAIT_BUTTON_SHORT~regout\)) # (!\inst|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|always0~0_combout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|lcd_data_reg[7]~0_combout\);

-- Location: CLKCTRL_G11
\inst|lcd_data_reg[7]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|lcd_data_reg[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|lcd_data_reg[7]~0clkctrl_outclk\);

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

-- Location: LCCOMB_X25_Y19_N10
\inst|char_index[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[3]~15_combout\ = (\inst|char_index\(3) & (!\inst|char_index[2]~14\)) # (!\inst|char_index\(3) & ((\inst|char_index[2]~14\) # (GND)))
-- \inst|char_index[3]~16\ = CARRY((!\inst|char_index[2]~14\) # (!\inst|char_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char_index\(3),
	datad => VCC,
	cin => \inst|char_index[2]~14\,
	combout => \inst|char_index[3]~15_combout\,
	cout => \inst|char_index[3]~16\);

-- Location: LCFF_X25_Y19_N11
\inst|char_index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[3]~15_combout\,
	sclr => \inst|char_index[0]~9_combout\,
	ena => \inst|char_index[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(3));

-- Location: LCCOMB_X25_Y19_N12
\inst|char_index[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[4]~17_combout\ = (\inst|char_index\(4) & (\inst|char_index[3]~16\ $ (GND))) # (!\inst|char_index\(4) & (!\inst|char_index[3]~16\ & VCC))
-- \inst|char_index[4]~18\ = CARRY((\inst|char_index\(4) & !\inst|char_index[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char_index\(4),
	datad => VCC,
	cin => \inst|char_index[3]~16\,
	combout => \inst|char_index[4]~17_combout\,
	cout => \inst|char_index[4]~18\);

-- Location: LCFF_X25_Y19_N13
\inst|char_index[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[4]~17_combout\,
	sclr => \inst|char_index[0]~9_combout\,
	ena => \inst|char_index[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(4));

-- Location: LCCOMB_X30_Y16_N26
\inst|Selector65~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~8_combout\ = (\KEY~combout\(0) & !\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datad => \KEY~combout\(1),
	combout => \inst|Selector65~8_combout\);

-- Location: LCCOMB_X30_Y18_N30
\inst|page_index[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[3]~10_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\KEY~combout\(0)) # (!\inst|always2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|always2~1_combout\,
	combout => \inst|page_index[3]~10_combout\);

-- Location: LCCOMB_X29_Y16_N2
\inst|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|page_index\(1) & (\inst|Add4~1\ & VCC)) # (!\inst|page_index\(1) & (!\inst|Add4~1\))
-- \inst|Add4~3\ = CARRY((!\inst|page_index\(1) & !\inst|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(1),
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X29_Y16_N16
\inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|page_index\(0) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|page_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X29_Y16_N18
\inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|page_index\(1) & (!\inst|Add2~1\)) # (!\inst|page_index\(1) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|page_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X29_Y16_N20
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|page_index\(2) & (\inst|Add2~3\ $ (GND))) # (!\inst|page_index\(2) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|page_index\(2) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X29_Y16_N26
\inst|page_index~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~9_combout\ = (\KEY~combout\(0) & (\inst|Add4~4_combout\ & ((!\inst|page_index~7_combout\)))) # (!\KEY~combout\(0) & (((\inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst|Add4~4_combout\,
	datac => \inst|Add2~4_combout\,
	datad => \inst|page_index~7_combout\,
	combout => \inst|page_index~9_combout\);

-- Location: LCCOMB_X30_Y16_N8
\inst|Selector64~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~4_combout\ = (!\KEY~combout\(0) & ((\inst|always2~1_combout\ & (\inst|Equal1~1_combout\)) # (!\inst|always2~1_combout\ & ((\inst|Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datab => \KEY~combout\(0),
	datac => \inst|always2~1_combout\,
	datad => \inst|Add2~2_combout\,
	combout => \inst|Selector64~4_combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst|Selector64~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~3_combout\ = (!\KEY~combout\(1) & (!\inst|page_index~7_combout\ & (\KEY~combout\(0) & \inst|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \inst|page_index~7_combout\,
	datac => \KEY~combout\(0),
	datad => \inst|Add4~2_combout\,
	combout => \inst|Selector64~3_combout\);

-- Location: LCCOMB_X30_Y16_N4
\inst|Selector64~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~9_combout\ = (\inst|LessThan11~8_combout\ & (\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|Selector64~4_combout\) # (\inst|Selector64~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan11~8_combout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|Selector64~4_combout\,
	datad => \inst|Selector64~3_combout\,
	combout => \inst|Selector64~9_combout\);

-- Location: LCCOMB_X32_Y21_N0
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

-- Location: LCCOMB_X32_Y21_N22
\inst|btn_counter[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[11]~54_combout\ = (\inst|btn_counter\(11) & (!\inst|btn_counter[10]~53\)) # (!\inst|btn_counter\(11) & ((\inst|btn_counter[10]~53\) # (GND)))
-- \inst|btn_counter[11]~55\ = CARRY((!\inst|btn_counter[10]~53\) # (!\inst|btn_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(11),
	datad => VCC,
	cin => \inst|btn_counter[10]~53\,
	combout => \inst|btn_counter[11]~54_combout\,
	cout => \inst|btn_counter[11]~55\);

-- Location: LCCOMB_X32_Y21_N24
\inst|btn_counter[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[12]~56_combout\ = (\inst|btn_counter\(12) & (\inst|btn_counter[11]~55\ $ (GND))) # (!\inst|btn_counter\(12) & (!\inst|btn_counter[11]~55\ & VCC))
-- \inst|btn_counter[12]~57\ = CARRY((\inst|btn_counter\(12) & !\inst|btn_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|btn_counter\(12),
	datad => VCC,
	cin => \inst|btn_counter[11]~55\,
	combout => \inst|btn_counter[12]~56_combout\,
	cout => \inst|btn_counter[12]~57\);

-- Location: LCCOMB_X31_Y20_N30
\inst|btn_counter[31]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[31]~73_combout\ = (\SW~combout\(0) & ((\inst|state.WAIT_BUTTON_RELEASE~regout\) # (\inst|state.WAIT_BUTTON_SHORT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|btn_counter[31]~73_combout\);

-- Location: LCFF_X30_Y20_N31
\inst|btn_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \inst|btn_counter[12]~56_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	sload => VCC,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(12));

-- Location: LCCOMB_X32_Y21_N26
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

-- Location: LCFF_X32_Y21_N27
\inst|btn_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[13]~58_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(13));

-- Location: LCCOMB_X32_Y21_N28
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

-- Location: LCFF_X32_Y21_N29
\inst|btn_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[14]~60_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(14));

-- Location: LCCOMB_X32_Y21_N30
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

-- Location: LCFF_X32_Y21_N31
\inst|btn_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[15]~62_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(15));

-- Location: LCCOMB_X32_Y20_N0
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

-- Location: LCFF_X32_Y20_N1
\inst|btn_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[16]~64_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(16));

-- Location: LCCOMB_X32_Y20_N2
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

-- Location: LCFF_X32_Y20_N3
\inst|btn_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[17]~66_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(17));

-- Location: LCCOMB_X32_Y20_N4
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

-- Location: LCFF_X32_Y20_N5
\inst|btn_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[18]~68_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(18));

-- Location: LCCOMB_X32_Y20_N6
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

-- Location: LCCOMB_X32_Y20_N8
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

-- Location: LCFF_X32_Y20_N9
\inst|btn_counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[20]~74_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(20));

-- Location: LCCOMB_X32_Y20_N12
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

-- Location: LCCOMB_X32_Y20_N14
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

-- Location: LCFF_X32_Y20_N15
\inst|btn_counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[23]~80_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(23));

-- Location: LCCOMB_X32_Y20_N16
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

-- Location: LCCOMB_X32_Y20_N18
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

-- Location: LCFF_X32_Y20_N19
\inst|btn_counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[25]~84_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(25));

-- Location: LCCOMB_X32_Y20_N20
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

-- Location: LCFF_X32_Y20_N21
\inst|btn_counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[26]~86_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(26));

-- Location: LCFF_X32_Y20_N17
\inst|btn_counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[24]~82_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(24));

-- Location: LCCOMB_X33_Y20_N14
\inst|LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~1_combout\ = (\inst|btn_counter\(23)) # ((\inst|btn_counter\(25)) # ((\inst|btn_counter\(26)) # (\inst|btn_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(23),
	datab => \inst|btn_counter\(25),
	datac => \inst|btn_counter\(26),
	datad => \inst|btn_counter\(24),
	combout => \inst|LessThan11~1_combout\);

-- Location: LCCOMB_X32_Y20_N22
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

-- Location: LCFF_X32_Y20_N23
\inst|btn_counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[27]~88_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(27));

-- Location: LCCOMB_X32_Y20_N24
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

-- Location: LCFF_X32_Y20_N25
\inst|btn_counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[28]~90_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(28));

-- Location: LCCOMB_X32_Y20_N26
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

-- Location: LCFF_X32_Y20_N27
\inst|btn_counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[29]~92_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(29));

-- Location: LCFF_X32_Y20_N29
\inst|btn_counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[30]~94_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(30));

-- Location: LCCOMB_X33_Y20_N20
\inst|LessThan11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~2_combout\ = (\inst|btn_counter\(29)) # ((\inst|btn_counter\(28)) # ((\inst|btn_counter\(30)) # (\inst|btn_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(29),
	datab => \inst|btn_counter\(28),
	datac => \inst|btn_counter\(30),
	datad => \inst|btn_counter\(27),
	combout => \inst|LessThan11~2_combout\);

-- Location: LCFF_X32_Y20_N7
\inst|btn_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[19]~70_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(19));

-- Location: LCFF_X32_Y20_N13
\inst|btn_counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[22]~78_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(22));

-- Location: LCCOMB_X33_Y20_N0
\inst|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~0_combout\ = (\inst|btn_counter\(21)) # ((\inst|btn_counter\(19)) # ((\inst|btn_counter\(22)) # (\inst|btn_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(21),
	datab => \inst|btn_counter\(19),
	datac => \inst|btn_counter\(22),
	datad => \inst|btn_counter\(20),
	combout => \inst|LessThan11~0_combout\);

-- Location: LCCOMB_X33_Y20_N26
\inst|LessThan11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~3_combout\ = (\inst|btn_counter\(31)) # ((\inst|LessThan11~1_combout\) # ((\inst|LessThan11~2_combout\) # (\inst|LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(31),
	datab => \inst|LessThan11~1_combout\,
	datac => \inst|LessThan11~2_combout\,
	datad => \inst|LessThan11~0_combout\,
	combout => \inst|LessThan11~3_combout\);

-- Location: LCCOMB_X31_Y20_N26
\inst|LessThan11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~8_combout\ = (\inst|LessThan11~3_combout\) # ((\inst|btn_counter\(17) & (\inst|btn_counter\(18) & !\inst|LessThan11~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(17),
	datab => \inst|btn_counter\(18),
	datac => \inst|LessThan11~7_combout\,
	datad => \inst|LessThan11~3_combout\,
	combout => \inst|LessThan11~8_combout\);

-- Location: LCCOMB_X31_Y20_N4
\inst|btn_counter[22]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|btn_counter[22]~72_combout\ = (\inst|LessThan11~8_combout\) # ((\inst|state~30_combout\ & ((\inst|state.WAIT_BUTTON_SHORT~regout\))) # (!\inst|state~30_combout\ & (\inst|state.WAIT_BUTTON_RELEASE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datab => \inst|state~30_combout\,
	datac => \inst|LessThan11~8_combout\,
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|btn_counter[22]~72_combout\);

-- Location: LCFF_X32_Y21_N1
\inst|btn_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[0]~32_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(0));

-- Location: LCCOMB_X32_Y21_N2
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

-- Location: LCFF_X32_Y21_N3
\inst|btn_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[1]~34_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(1));

-- Location: LCCOMB_X32_Y21_N4
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

-- Location: LCFF_X32_Y21_N5
\inst|btn_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[2]~36_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(2));

-- Location: LCCOMB_X32_Y21_N8
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

-- Location: LCFF_X32_Y21_N9
\inst|btn_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[4]~40_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(4));

-- Location: LCCOMB_X32_Y21_N12
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

-- Location: LCCOMB_X32_Y21_N14
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

-- Location: LCFF_X32_Y21_N15
\inst|btn_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[7]~46_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(7));

-- Location: LCCOMB_X32_Y21_N16
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

-- Location: LCCOMB_X32_Y21_N18
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

-- Location: LCFF_X30_Y20_N15
\inst|btn_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \inst|btn_counter[9]~50_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	sload => VCC,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(9));

-- Location: LCCOMB_X32_Y21_N20
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

-- Location: LCFF_X30_Y20_N17
\inst|btn_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \inst|btn_counter[11]~54_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	sload => VCC,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(11));

-- Location: LCFF_X32_Y21_N21
\inst|btn_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[10]~52_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(10));

-- Location: LCCOMB_X31_Y20_N18
\inst|LessThan11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~6_combout\ = (!\inst|btn_counter\(9) & (!\inst|btn_counter\(11) & (!\inst|btn_counter\(12) & !\inst|btn_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(9),
	datab => \inst|btn_counter\(11),
	datac => \inst|btn_counter\(12),
	datad => \inst|btn_counter\(10),
	combout => \inst|LessThan11~6_combout\);

-- Location: LCCOMB_X31_Y20_N20
\inst|LessThan11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~4_combout\ = (((!\inst|btn_counter\(13) & !\inst|btn_counter\(14))) # (!\inst|btn_counter\(16))) # (!\inst|btn_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(15),
	datab => \inst|btn_counter\(16),
	datac => \inst|btn_counter\(13),
	datad => \inst|btn_counter\(14),
	combout => \inst|LessThan11~4_combout\);

-- Location: LCFF_X32_Y21_N13
\inst|btn_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[6]~44_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(6));

-- Location: LCFF_X32_Y21_N17
\inst|btn_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|btn_counter[8]~48_combout\,
	sclr => \inst|btn_counter[22]~72_combout\,
	ena => \inst|btn_counter[31]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|btn_counter\(8));

-- Location: LCCOMB_X31_Y20_N2
\inst|LessThan11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~5_combout\ = ((!\inst|btn_counter\(5) & (!\inst|btn_counter\(6) & !\inst|btn_counter\(7)))) # (!\inst|btn_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(5),
	datab => \inst|btn_counter\(6),
	datac => \inst|btn_counter\(7),
	datad => \inst|btn_counter\(8),
	combout => \inst|LessThan11~5_combout\);

-- Location: LCCOMB_X31_Y20_N14
\inst|LessThan11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~7_combout\ = (\inst|LessThan11~4_combout\) # ((!\inst|btn_counter\(14) & (\inst|LessThan11~6_combout\ & \inst|LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|btn_counter\(14),
	datab => \inst|LessThan11~6_combout\,
	datac => \inst|LessThan11~4_combout\,
	datad => \inst|LessThan11~5_combout\,
	combout => \inst|LessThan11~7_combout\);

-- Location: LCCOMB_X31_Y20_N0
\inst|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector52~0_combout\ = (\inst|btn_counter\(18) & \inst|btn_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|btn_counter\(18),
	datad => \inst|btn_counter\(17),
	combout => \inst|Selector52~0_combout\);

-- Location: LCCOMB_X31_Y20_N28
\inst|Selector52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector52~1_combout\ = (!\inst|state~30_combout\ & ((\inst|LessThan11~3_combout\) # ((!\inst|LessThan11~7_combout\ & \inst|Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan11~3_combout\,
	datab => \inst|state~30_combout\,
	datac => \inst|LessThan11~7_combout\,
	datad => \inst|Selector52~0_combout\,
	combout => \inst|Selector52~1_combout\);

-- Location: LCCOMB_X30_Y18_N8
\inst|page_index[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[3]~8_combout\ = (\inst|state.PAGE_SELECT~regout\ & !\inst|sub_state.PAGE2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.PAGE_SELECT~regout\,
	datad => \inst|sub_state.PAGE2~regout\,
	combout => \inst|page_index[3]~8_combout\);

-- Location: LCCOMB_X30_Y16_N20
\inst|Selector64~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~6_combout\ = (\inst|sub_state.PAGE1~regout\) # (((!\inst|page_index~5_combout\ & !\inst|sub_state.PAGE0~regout\)) # (!\inst|page_index[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE1~regout\,
	datab => \inst|page_index[3]~8_combout\,
	datac => \inst|page_index~5_combout\,
	datad => \inst|sub_state.PAGE0~regout\,
	combout => \inst|Selector64~6_combout\);

-- Location: LCCOMB_X30_Y18_N16
\inst|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~0_combout\ = (!\KEY~combout\(0) & \inst|always2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datad => \inst|always2~1_combout\,
	combout => \inst|Selector65~0_combout\);

-- Location: LCCOMB_X30_Y16_N12
\inst|Selector64~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~5_combout\ = (\inst|Selector65~0_combout\) # ((\inst|Equal2~0_combout\ & (\inst|page_index~7_combout\ & \inst|Selector65~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|page_index~7_combout\,
	datac => \inst|Selector65~8_combout\,
	datad => \inst|Selector65~0_combout\,
	combout => \inst|Selector64~5_combout\);

-- Location: LCCOMB_X30_Y16_N22
\inst|Selector64~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~7_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|Selector64~5_combout\)) # (!\inst|Selector52~1_combout\))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|Selector64~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|Selector52~1_combout\,
	datac => \inst|Selector64~6_combout\,
	datad => \inst|Selector64~5_combout\,
	combout => \inst|Selector64~7_combout\);

-- Location: LCCOMB_X30_Y16_N2
\inst|Selector64~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector64~8_combout\ = (\inst|Selector64~2_combout\) # ((\inst|Selector64~9_combout\) # ((\inst|page_index\(1) & \inst|Selector64~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector64~2_combout\,
	datab => \inst|Selector64~9_combout\,
	datac => \inst|page_index\(1),
	datad => \inst|Selector64~7_combout\,
	combout => \inst|Selector64~8_combout\);

-- Location: LCFF_X30_Y16_N3
\inst|page_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector64~8_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(1));

-- Location: LCCOMB_X30_Y18_N24
\inst|page_index~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~19_combout\ = (\inst|page_index[3]~10_combout\ & (\inst|page_index~18_combout\)) # (!\inst|page_index[3]~10_combout\ & (((\inst|state.PAGE_SELECT~regout\ & \inst|page_index~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index~18_combout\,
	datab => \inst|page_index[3]~10_combout\,
	datac => \inst|state.PAGE_SELECT~regout\,
	datad => \inst|page_index~20_combout\,
	combout => \inst|page_index~19_combout\);

-- Location: LCCOMB_X29_Y19_N24
\inst|sub_state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~22_combout\ = (\inst|sub_state.PAGE1~regout\ & (\SW~combout\(0) & \inst|sub_state~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE1~regout\,
	datac => \SW~combout\(0),
	datad => \inst|sub_state~17_combout\,
	combout => \inst|sub_state~22_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst|sub_state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~19_combout\ = (\SW~combout\(0) & !\inst|sub_state~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(0),
	datad => \inst|sub_state~17_combout\,
	combout => \inst|sub_state~19_combout\);

-- Location: LCCOMB_X29_Y19_N14
\inst|sub_state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~23_combout\ = (\inst|sub_state~22_combout\) # ((!\inst|sub_state.PAGE0~regout\ & (!\inst|LessThan7~1_combout\ & \inst|sub_state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE0~regout\,
	datab => \inst|LessThan7~1_combout\,
	datac => \inst|sub_state~22_combout\,
	datad => \inst|sub_state~19_combout\,
	combout => \inst|sub_state~23_combout\);

-- Location: LCFF_X29_Y19_N15
\inst|sub_state.PAGE1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|sub_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state.PAGE1~regout\);

-- Location: LCCOMB_X30_Y16_N6
\inst|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|page_index\(2) & !\inst|page_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(2),
	datad => \inst|page_index\(1),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y16_N16
\inst|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|page_index\(3) & (\inst|page_index\(0) & (!\inst|page_index\(4) & \inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(0),
	datac => \inst|page_index\(4),
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y18_N28
\inst|page_index[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[3]~21_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|Equal1~1_combout\)))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|Equal0~1_combout\ & ((\inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|page_index[3]~21_combout\);

-- Location: LCCOMB_X30_Y18_N4
\inst|page_index[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[3]~14_combout\ = (\inst|LessThan7~1_combout\ & ((\inst|sub_state.PAGE1~regout\) # ((!\inst|sub_state.PAGE0~regout\)))) # (!\inst|LessThan7~1_combout\ & (!\inst|page_index[3]~21_combout\ & ((\inst|sub_state.PAGE1~regout\) # 
-- (!\inst|sub_state.PAGE0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~1_combout\,
	datab => \inst|sub_state.PAGE1~regout\,
	datac => \inst|sub_state.PAGE0~regout\,
	datad => \inst|page_index[3]~21_combout\,
	combout => \inst|page_index[3]~14_combout\);

-- Location: LCCOMB_X30_Y18_N14
\inst|Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector53~0_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & \inst|LessThan11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|LessThan11~8_combout\,
	combout => \inst|Selector53~0_combout\);

-- Location: LCCOMB_X30_Y18_N18
\inst|page_index[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[3]~13_combout\ = (\inst|page_index[3]~12_combout\) # (((\inst|Selector65~0_combout\ & !\inst|page_index[3]~21_combout\)) # (!\inst|Selector53~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index[3]~12_combout\,
	datab => \inst|Selector53~0_combout\,
	datac => \inst|Selector65~0_combout\,
	datad => \inst|page_index[3]~21_combout\,
	combout => \inst|page_index[3]~13_combout\);

-- Location: LCCOMB_X30_Y18_N12
\inst|page_index[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index[3]~15_combout\ = (((\inst|page_index[3]~8_combout\ & !\inst|page_index[3]~14_combout\)) # (!\inst|page_index[3]~13_combout\)) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index[3]~8_combout\,
	datab => \SW~combout\(0),
	datac => \inst|page_index[3]~14_combout\,
	datad => \inst|page_index[3]~13_combout\,
	combout => \inst|page_index[3]~15_combout\);

-- Location: LCFF_X30_Y18_N25
\inst|page_index[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \inst|page_index~19_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst|page_index[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(4));

-- Location: M4K_X26_Y20
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

-- Location: LCCOMB_X27_Y19_N2
\inst|lcd_data_reg[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg[6]~2_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(6))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(6))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_freq\(6),
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst|lcd_data_reg[6]~2_combout\);

-- Location: LCCOMB_X27_Y19_N26
\inst|lcd_data_reg[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg\(6) = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_data_reg[6]~2_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_data_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lcd_data_reg\(6),
	datac => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	datad => \inst|lcd_data_reg[6]~2_combout\,
	combout => \inst|lcd_data_reg\(6));

-- Location: M4K_X26_Y17
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

-- Location: LCCOMB_X27_Y19_N12
\inst|lcd_data_reg[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg[7]~1_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(7))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(7))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_freq\(7),
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a7~portadataout\,
	combout => \inst|lcd_data_reg[7]~1_combout\);

-- Location: LCCOMB_X27_Y19_N20
\inst|lcd_data_reg[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg\(7) = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_data_reg[7]~1_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_data_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_reg\(7),
	datac => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	datad => \inst|lcd_data_reg[7]~1_combout\,
	combout => \inst|lcd_data_reg\(7));

-- Location: LCCOMB_X31_Y19_N0
\inst|counter_f[0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[0]~39_combout\ = \inst|counter_f\(0) $ (VCC)
-- \inst|counter_f[0]~40\ = CARRY(\inst|counter_f\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(0),
	datad => VCC,
	combout => \inst|counter_f[0]~39_combout\,
	cout => \inst|counter_f[0]~40\);

-- Location: LCCOMB_X31_Y19_N30
\inst|counter_f[15]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[15]~69_combout\ = (\inst|counter_f\(15) & (!\inst|counter_f[14]~68\)) # (!\inst|counter_f\(15) & ((\inst|counter_f[14]~68\) # (GND)))
-- \inst|counter_f[15]~70\ = CARRY((!\inst|counter_f[14]~68\) # (!\inst|counter_f\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(15),
	datad => VCC,
	cin => \inst|counter_f[14]~68\,
	combout => \inst|counter_f[15]~69_combout\,
	cout => \inst|counter_f[15]~70\);

-- Location: LCCOMB_X31_Y18_N0
\inst|counter_f[16]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[16]~71_combout\ = (\inst|counter_f\(16) & (\inst|counter_f[15]~70\ $ (GND))) # (!\inst|counter_f\(16) & (!\inst|counter_f[15]~70\ & VCC))
-- \inst|counter_f[16]~72\ = CARRY((\inst|counter_f\(16) & !\inst|counter_f[15]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(16),
	datad => VCC,
	cin => \inst|counter_f[15]~70\,
	combout => \inst|counter_f[16]~71_combout\,
	cout => \inst|counter_f[16]~72\);

-- Location: LCCOMB_X29_Y19_N12
\inst|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always0~0_combout\ = (\inst|page_index\(4)) # (\inst|page_index\(3) $ (((!\inst|page_index\(2) & !\inst|page_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(2),
	datac => \inst|page_index\(4),
	datad => \inst|page_index\(1),
	combout => \inst|always0~0_combout\);

-- Location: LCCOMB_X30_Y19_N22
\inst|Selector141~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector141~0_combout\ = (!\inst|state_f.CHECK_AND_WAIT~regout\ & (!\inst|always0~0_combout\ & ((\inst|state.WAIT_BUTTON_SHORT~regout\) # (\inst|state.WAIT_BUTTON_RELEASE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|always0~0_combout\,
	combout => \inst|Selector141~0_combout\);

-- Location: LCCOMB_X30_Y19_N14
\inst|Selector151~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector151~0_combout\ = (\inst|sub_state_f\(0) & (!\inst|Selector141~0_combout\ & ((!\inst|state_f.CHECK_AND_WAIT~regout\) # (!\inst|state_f.HZ_DISPLAY~regout\)))) # (!\inst|sub_state_f\(0) & (\inst|state_f.HZ_DISPLAY~regout\ & 
-- ((\inst|state_f.CHECK_AND_WAIT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.HZ_DISPLAY~regout\,
	datab => \inst|Selector141~0_combout\,
	datac => \inst|sub_state_f\(0),
	datad => \inst|state_f.CHECK_AND_WAIT~regout\,
	combout => \inst|Selector151~0_combout\);

-- Location: LCFF_X30_Y19_N15
\inst|sub_state_f[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector151~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state_f\(0));

-- Location: LCCOMB_X30_Y19_N28
\inst|Selector151~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector151~1_combout\ = (\inst|Selector141~0_combout\) # ((\inst|state_f.CHECK_AND_WAIT~regout\ & \inst|state_f.HZ_DISPLAY~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datac => \inst|state_f.HZ_DISPLAY~regout\,
	datad => \inst|Selector141~0_combout\,
	combout => \inst|Selector151~1_combout\);

-- Location: LCCOMB_X30_Y19_N6
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

-- Location: LCFF_X30_Y19_N7
\inst|sub_state_f[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector150~0_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state_f\(1));

-- Location: LCCOMB_X30_Y19_N8
\inst|lcd_data_freq[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[6]~0_combout\ = (\inst|sub_state_f\(0) & (\inst|state_f.HZ_DISPLAY~regout\ & \inst|sub_state_f\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sub_state_f\(0),
	datac => \inst|state_f.HZ_DISPLAY~regout\,
	datad => \inst|sub_state_f\(1),
	combout => \inst|lcd_data_freq[6]~0_combout\);

-- Location: LCCOMB_X29_Y20_N18
\inst|state_f~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~25_combout\ = (\SW~combout\(0) & (!\inst|lcd_data_freq[6]~2_combout\ & !\inst|lcd_data_freq[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \inst|lcd_data_freq[6]~2_combout\,
	datad => \inst|lcd_data_freq[6]~0_combout\,
	combout => \inst|state_f~25_combout\);

-- Location: LCFF_X29_Y20_N19
\inst|state_f.CHECK_AND_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.CHECK_AND_WAIT~regout\);

-- Location: LCCOMB_X29_Y19_N2
\inst|lcd_data_freq[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[6]~2_combout\ = (!\inst|state_f.CHECK_AND_WAIT~regout\ & ((\inst|always0~0_combout\) # ((!\inst|state.WAIT_BUTTON_RELEASE~regout\ & !\inst|state.WAIT_BUTTON_SHORT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state_f.CHECK_AND_WAIT~regout\,
	datad => \inst|always0~0_combout\,
	combout => \inst|lcd_data_freq[6]~2_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst|counter_f[14]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~78_combout\ = ((!\inst|state_f.DIGIT_SELECT~regout\ & (!\inst|state_f.HZ_DISPLAY~regout\ & !\inst|lcd_data_freq[6]~2_combout\))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|state_f.HZ_DISPLAY~regout\,
	datad => \inst|lcd_data_freq[6]~2_combout\,
	combout => \inst|counter_f[14]~78_combout\);

-- Location: LCFF_X31_Y18_N1
\inst|counter_f[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[16]~71_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(16));

-- Location: LCCOMB_X31_Y18_N2
\inst|counter_f[17]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[17]~73_combout\ = (\inst|counter_f\(17) & (!\inst|counter_f[16]~72\)) # (!\inst|counter_f\(17) & ((\inst|counter_f[16]~72\) # (GND)))
-- \inst|counter_f[17]~74\ = CARRY((!\inst|counter_f[16]~72\) # (!\inst|counter_f\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(17),
	datad => VCC,
	cin => \inst|counter_f[16]~72\,
	combout => \inst|counter_f[17]~73_combout\,
	cout => \inst|counter_f[17]~74\);

-- Location: LCFF_X31_Y18_N3
\inst|counter_f[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[17]~73_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(17));

-- Location: LCCOMB_X31_Y18_N4
\inst|counter_f[18]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[18]~79_combout\ = (\inst|counter_f\(18) & (\inst|counter_f[17]~74\ $ (GND))) # (!\inst|counter_f\(18) & (!\inst|counter_f[17]~74\ & VCC))
-- \inst|counter_f[18]~80\ = CARRY((\inst|counter_f\(18) & !\inst|counter_f[17]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(18),
	datad => VCC,
	cin => \inst|counter_f[17]~74\,
	combout => \inst|counter_f[18]~79_combout\,
	cout => \inst|counter_f[18]~80\);

-- Location: LCFF_X31_Y18_N5
\inst|counter_f[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[18]~79_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(18));

-- Location: LCCOMB_X31_Y18_N8
\inst|counter_f[20]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[20]~83_combout\ = (\inst|counter_f\(20) & (\inst|counter_f[19]~82\ $ (GND))) # (!\inst|counter_f\(20) & (!\inst|counter_f[19]~82\ & VCC))
-- \inst|counter_f[20]~84\ = CARRY((\inst|counter_f\(20) & !\inst|counter_f[19]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(20),
	datad => VCC,
	cin => \inst|counter_f[19]~82\,
	combout => \inst|counter_f[20]~83_combout\,
	cout => \inst|counter_f[20]~84\);

-- Location: LCFF_X31_Y18_N9
\inst|counter_f[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[20]~83_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(20));

-- Location: LCCOMB_X31_Y18_N10
\inst|counter_f[21]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[21]~85_combout\ = (\inst|counter_f\(21) & (!\inst|counter_f[20]~84\)) # (!\inst|counter_f\(21) & ((\inst|counter_f[20]~84\) # (GND)))
-- \inst|counter_f[21]~86\ = CARRY((!\inst|counter_f[20]~84\) # (!\inst|counter_f\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(21),
	datad => VCC,
	cin => \inst|counter_f[20]~84\,
	combout => \inst|counter_f[21]~85_combout\,
	cout => \inst|counter_f[21]~86\);

-- Location: LCCOMB_X31_Y18_N12
\inst|counter_f[22]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[22]~87_combout\ = (\inst|counter_f\(22) & (\inst|counter_f[21]~86\ $ (GND))) # (!\inst|counter_f\(22) & (!\inst|counter_f[21]~86\ & VCC))
-- \inst|counter_f[22]~88\ = CARRY((\inst|counter_f\(22) & !\inst|counter_f[21]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(22),
	datad => VCC,
	cin => \inst|counter_f[21]~86\,
	combout => \inst|counter_f[22]~87_combout\,
	cout => \inst|counter_f[22]~88\);

-- Location: LCCOMB_X31_Y18_N14
\inst|counter_f[23]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[23]~89_combout\ = (\inst|counter_f\(23) & (!\inst|counter_f[22]~88\)) # (!\inst|counter_f\(23) & ((\inst|counter_f[22]~88\) # (GND)))
-- \inst|counter_f[23]~90\ = CARRY((!\inst|counter_f[22]~88\) # (!\inst|counter_f\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(23),
	datad => VCC,
	cin => \inst|counter_f[22]~88\,
	combout => \inst|counter_f[23]~89_combout\,
	cout => \inst|counter_f[23]~90\);

-- Location: LCFF_X31_Y18_N15
\inst|counter_f[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[23]~89_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(23));

-- Location: LCCOMB_X31_Y18_N16
\inst|counter_f[24]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[24]~91_combout\ = (\inst|counter_f\(24) & (\inst|counter_f[23]~90\ $ (GND))) # (!\inst|counter_f\(24) & (!\inst|counter_f[23]~90\ & VCC))
-- \inst|counter_f[24]~92\ = CARRY((\inst|counter_f\(24) & !\inst|counter_f[23]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(24),
	datad => VCC,
	cin => \inst|counter_f[23]~90\,
	combout => \inst|counter_f[24]~91_combout\,
	cout => \inst|counter_f[24]~92\);

-- Location: LCCOMB_X31_Y18_N18
\inst|counter_f[25]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[25]~93_combout\ = (\inst|counter_f\(25) & (!\inst|counter_f[24]~92\)) # (!\inst|counter_f\(25) & ((\inst|counter_f[24]~92\) # (GND)))
-- \inst|counter_f[25]~94\ = CARRY((!\inst|counter_f[24]~92\) # (!\inst|counter_f\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(25),
	datad => VCC,
	cin => \inst|counter_f[24]~92\,
	combout => \inst|counter_f[25]~93_combout\,
	cout => \inst|counter_f[25]~94\);

-- Location: LCFF_X31_Y18_N19
\inst|counter_f[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[25]~93_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(25));

-- Location: LCCOMB_X31_Y18_N22
\inst|counter_f[27]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[27]~97_combout\ = (\inst|counter_f\(27) & (!\inst|counter_f[26]~96\)) # (!\inst|counter_f\(27) & ((\inst|counter_f[26]~96\) # (GND)))
-- \inst|counter_f[27]~98\ = CARRY((!\inst|counter_f[26]~96\) # (!\inst|counter_f\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(27),
	datad => VCC,
	cin => \inst|counter_f[26]~96\,
	combout => \inst|counter_f[27]~97_combout\,
	cout => \inst|counter_f[27]~98\);

-- Location: LCFF_X31_Y18_N23
\inst|counter_f[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[27]~97_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(27));

-- Location: LCCOMB_X31_Y18_N24
\inst|counter_f[28]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[28]~99_combout\ = (\inst|counter_f\(28) & (\inst|counter_f[27]~98\ $ (GND))) # (!\inst|counter_f\(28) & (!\inst|counter_f[27]~98\ & VCC))
-- \inst|counter_f[28]~100\ = CARRY((\inst|counter_f\(28) & !\inst|counter_f[27]~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(28),
	datad => VCC,
	cin => \inst|counter_f[27]~98\,
	combout => \inst|counter_f[28]~99_combout\,
	cout => \inst|counter_f[28]~100\);

-- Location: LCCOMB_X31_Y18_N26
\inst|counter_f[29]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[29]~101_combout\ = (\inst|counter_f\(29) & (!\inst|counter_f[28]~100\)) # (!\inst|counter_f\(29) & ((\inst|counter_f[28]~100\) # (GND)))
-- \inst|counter_f[29]~102\ = CARRY((!\inst|counter_f[28]~100\) # (!\inst|counter_f\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(29),
	datad => VCC,
	cin => \inst|counter_f[28]~100\,
	combout => \inst|counter_f[29]~101_combout\,
	cout => \inst|counter_f[29]~102\);

-- Location: LCFF_X31_Y18_N27
\inst|counter_f[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[29]~101_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(29));

-- Location: LCFF_X31_Y18_N29
\inst|counter_f[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[30]~103_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(30));

-- Location: LCCOMB_X30_Y18_N26
\inst|counter_f[14]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~35_combout\ = (!\inst|counter_f\(31) & (!\inst|counter_f\(29) & !\inst|counter_f\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(31),
	datac => \inst|counter_f\(29),
	datad => \inst|counter_f\(30),
	combout => \inst|counter_f[14]~35_combout\);

-- Location: LCFF_X31_Y18_N25
\inst|counter_f[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[28]~99_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(28));

-- Location: LCCOMB_X32_Y18_N6
\inst|counter_f[14]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~34_combout\ = (!\inst|counter_f\(26) & (!\inst|counter_f\(28) & (!\inst|counter_f\(25) & !\inst|counter_f\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(26),
	datab => \inst|counter_f\(28),
	datac => \inst|counter_f\(25),
	datad => \inst|counter_f\(27),
	combout => \inst|counter_f[14]~34_combout\);

-- Location: LCFF_X31_Y18_N17
\inst|counter_f[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[24]~91_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(24));

-- Location: LCFF_X31_Y18_N13
\inst|counter_f[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[22]~87_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(22));

-- Location: LCFF_X31_Y18_N11
\inst|counter_f[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[21]~85_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(21));

-- Location: LCCOMB_X32_Y18_N16
\inst|counter_f[14]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~33_combout\ = (!\inst|counter_f\(23) & (!\inst|counter_f\(24) & (!\inst|counter_f\(22) & !\inst|counter_f\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(23),
	datab => \inst|counter_f\(24),
	datac => \inst|counter_f\(22),
	datad => \inst|counter_f\(21),
	combout => \inst|counter_f[14]~33_combout\);

-- Location: LCCOMB_X30_Y18_N10
\inst|counter_f[14]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~36_combout\ = (\inst|counter_f[14]~32_combout\ & (\inst|counter_f[14]~35_combout\ & (\inst|counter_f[14]~34_combout\ & \inst|counter_f[14]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f[14]~32_combout\,
	datab => \inst|counter_f[14]~35_combout\,
	datac => \inst|counter_f[14]~34_combout\,
	datad => \inst|counter_f[14]~33_combout\,
	combout => \inst|counter_f[14]~36_combout\);

-- Location: LCCOMB_X31_Y19_N10
\inst|counter_f[5]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[5]~49_combout\ = (\inst|counter_f\(5) & (!\inst|counter_f[4]~48\)) # (!\inst|counter_f\(5) & ((\inst|counter_f[4]~48\) # (GND)))
-- \inst|counter_f[5]~50\ = CARRY((!\inst|counter_f[4]~48\) # (!\inst|counter_f\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(5),
	datad => VCC,
	cin => \inst|counter_f[4]~48\,
	combout => \inst|counter_f[5]~49_combout\,
	cout => \inst|counter_f[5]~50\);

-- Location: LCFF_X31_Y19_N11
\inst|counter_f[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[5]~49_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(5));

-- Location: LCCOMB_X31_Y19_N12
\inst|counter_f[6]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[6]~51_combout\ = (\inst|counter_f\(6) & (\inst|counter_f[5]~50\ $ (GND))) # (!\inst|counter_f\(6) & (!\inst|counter_f[5]~50\ & VCC))
-- \inst|counter_f[6]~52\ = CARRY((\inst|counter_f\(6) & !\inst|counter_f[5]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(6),
	datad => VCC,
	cin => \inst|counter_f[5]~50\,
	combout => \inst|counter_f[6]~51_combout\,
	cout => \inst|counter_f[6]~52\);

-- Location: LCFF_X31_Y19_N13
\inst|counter_f[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[6]~51_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(6));

-- Location: LCCOMB_X30_Y19_N20
\inst|LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan12~1_combout\ = (\inst|counter_f\(6) & ((\inst|counter_f\(4)) # (\inst|counter_f\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(4),
	datac => \inst|counter_f\(5),
	datad => \inst|counter_f\(6),
	combout => \inst|LessThan12~1_combout\);

-- Location: LCCOMB_X31_Y19_N16
\inst|counter_f[8]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[8]~55_combout\ = (\inst|counter_f\(8) & (\inst|counter_f[7]~54\ $ (GND))) # (!\inst|counter_f\(8) & (!\inst|counter_f[7]~54\ & VCC))
-- \inst|counter_f[8]~56\ = CARRY((\inst|counter_f\(8) & !\inst|counter_f[7]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(8),
	datad => VCC,
	cin => \inst|counter_f[7]~54\,
	combout => \inst|counter_f[8]~55_combout\,
	cout => \inst|counter_f[8]~56\);

-- Location: LCFF_X31_Y19_N17
\inst|counter_f[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[8]~55_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(8));

-- Location: LCCOMB_X30_Y20_N6
\inst|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan12~0_combout\ = ((!\inst|counter_f\(9)) # (!\inst|counter_f\(8))) # (!\inst|counter_f\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(10),
	datab => \inst|counter_f\(8),
	datad => \inst|counter_f\(9),
	combout => \inst|LessThan12~0_combout\);

-- Location: LCCOMB_X30_Y20_N12
\inst|counter_f[14]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~38_combout\ = (\inst|counter_f[14]~37_combout\ & (((\inst|LessThan12~0_combout\) # (!\inst|counter_f\(7))) # (!\inst|LessThan12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f[14]~37_combout\,
	datab => \inst|LessThan12~1_combout\,
	datac => \inst|counter_f\(7),
	datad => \inst|LessThan12~0_combout\,
	combout => \inst|counter_f[14]~38_combout\);

-- Location: LCCOMB_X29_Y20_N2
\inst|Selector99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector99~0_combout\ = (\inst|state_f.SETUP~regout\ & (\inst|counter_f[14]~36_combout\ & \inst|counter_f[14]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.SETUP~regout\,
	datab => \inst|counter_f[14]~36_combout\,
	datac => \inst|counter_f[14]~38_combout\,
	combout => \inst|Selector99~0_combout\);

-- Location: LCCOMB_X30_Y19_N16
\inst|Selector99~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector99~1_combout\ = (\inst|Selector141~0_combout\) # ((\inst|state_f.HZ_DISPLAY~regout\ & ((!\inst|sub_state_f\(0)) # (!\inst|sub_state_f\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state_f\(1),
	datab => \inst|sub_state_f\(0),
	datac => \inst|state_f.HZ_DISPLAY~regout\,
	datad => \inst|Selector141~0_combout\,
	combout => \inst|Selector99~1_combout\);

-- Location: LCCOMB_X29_Y20_N28
\inst|Selector99~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector99~2_combout\ = (\inst|Selector99~0_combout\) # ((\inst|Selector99~1_combout\) # ((!\inst|n_index\(2) & \inst|state_f.DIGIT_SELECT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|n_index\(2),
	datab => \inst|Selector99~0_combout\,
	datac => \inst|state_f.DIGIT_SELECT~regout\,
	datad => \inst|Selector99~1_combout\,
	combout => \inst|Selector99~2_combout\);

-- Location: LCFF_X29_Y20_N29
\inst|state_f.SETUP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector99~2_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.SETUP~regout\);

-- Location: LCCOMB_X30_Y20_N26
\inst|LessThan13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~1_combout\ = (((!\inst|counter_f\(7) & !\inst|LessThan12~1_combout\)) # (!\inst|counter_f\(9))) # (!\inst|counter_f\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(8),
	datab => \inst|counter_f\(9),
	datac => \inst|counter_f\(7),
	datad => \inst|LessThan12~1_combout\,
	combout => \inst|LessThan13~1_combout\);

-- Location: LCCOMB_X31_Y19_N24
\inst|counter_f[12]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[12]~63_combout\ = (\inst|counter_f\(12) & (\inst|counter_f[11]~62\ $ (GND))) # (!\inst|counter_f\(12) & (!\inst|counter_f[11]~62\ & VCC))
-- \inst|counter_f[12]~64\ = CARRY((\inst|counter_f\(12) & !\inst|counter_f[11]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(12),
	datad => VCC,
	cin => \inst|counter_f[11]~62\,
	combout => \inst|counter_f[12]~63_combout\,
	cout => \inst|counter_f[12]~64\);

-- Location: LCFF_X31_Y19_N25
\inst|counter_f[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[12]~63_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(12));

-- Location: LCCOMB_X30_Y19_N24
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

-- Location: LCCOMB_X31_Y19_N20
\inst|counter_f[10]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[10]~59_combout\ = (\inst|counter_f\(10) & (\inst|counter_f[9]~58\ $ (GND))) # (!\inst|counter_f\(10) & (!\inst|counter_f[9]~58\ & VCC))
-- \inst|counter_f[10]~60\ = CARRY((\inst|counter_f\(10) & !\inst|counter_f[9]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(10),
	datad => VCC,
	cin => \inst|counter_f[9]~58\,
	combout => \inst|counter_f[10]~59_combout\,
	cout => \inst|counter_f[10]~60\);

-- Location: LCFF_X31_Y19_N21
\inst|counter_f[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[10]~59_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(10));

-- Location: LCCOMB_X30_Y20_N4
\inst|LessThan13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~2_combout\ = (!\inst|counter_f\(16) & (\inst|LessThan13~1_combout\ & (\inst|LessThan13~0_combout\ & !\inst|counter_f\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(16),
	datab => \inst|LessThan13~1_combout\,
	datac => \inst|LessThan13~0_combout\,
	datad => \inst|counter_f\(10),
	combout => \inst|LessThan13~2_combout\);

-- Location: LCCOMB_X30_Y19_N4
\inst|LessThan14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~0_combout\ = (!\inst|counter_f\(8) & (((!\inst|counter_f\(5) & !\inst|counter_f\(6))) # (!\inst|counter_f\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(8),
	datab => \inst|counter_f\(7),
	datac => \inst|counter_f\(5),
	datad => \inst|counter_f\(6),
	combout => \inst|LessThan14~0_combout\);

-- Location: LCCOMB_X30_Y20_N28
\inst|LessThan14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~1_combout\ = (\inst|counter_f\(14)) # ((\inst|counter_f\(10) & (\inst|counter_f\(9) & !\inst|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f\(10),
	datab => \inst|counter_f\(9),
	datac => \inst|counter_f\(14),
	datad => \inst|LessThan14~0_combout\,
	combout => \inst|LessThan14~1_combout\);

-- Location: LCCOMB_X30_Y20_N22
\inst|LessThan14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~2_combout\ = (((\inst|LessThan13~0_combout\ & !\inst|LessThan14~1_combout\)) # (!\inst|counter_f\(16))) # (!\inst|counter_f\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~0_combout\,
	datab => \inst|LessThan14~1_combout\,
	datac => \inst|counter_f\(15),
	datad => \inst|counter_f\(16),
	combout => \inst|LessThan14~2_combout\);

-- Location: LCCOMB_X30_Y20_N8
\inst|counter_f[14]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~76_combout\ = (\inst|state_f.WAIT_EXEC~regout\ & (((\inst|LessThan14~2_combout\)))) # (!\inst|state_f.WAIT_EXEC~regout\ & ((\inst|LessThan13~3_combout\) # ((\inst|LessThan13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~3_combout\,
	datab => \inst|state_f.WAIT_EXEC~regout\,
	datac => \inst|LessThan13~2_combout\,
	datad => \inst|LessThan14~2_combout\,
	combout => \inst|counter_f[14]~76_combout\);

-- Location: LCCOMB_X29_Y20_N12
\inst|counter_f[14]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~75_combout\ = (\inst|state_f.CHECK_AND_WAIT~regout\ & (\inst|counter_f[14]~36_combout\ & \SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f.CHECK_AND_WAIT~regout\,
	datac => \inst|counter_f[14]~36_combout\,
	datad => \SW~combout\(0),
	combout => \inst|counter_f[14]~75_combout\);

-- Location: LCCOMB_X30_Y20_N18
\inst|counter_f[14]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~77_combout\ = ((\inst|state_f.SETUP~regout\ & (!\inst|counter_f[14]~38_combout\)) # (!\inst|state_f.SETUP~regout\ & ((!\inst|counter_f[14]~76_combout\)))) # (!\inst|counter_f[14]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_f[14]~38_combout\,
	datab => \inst|state_f.SETUP~regout\,
	datac => \inst|counter_f[14]~76_combout\,
	datad => \inst|counter_f[14]~75_combout\,
	combout => \inst|counter_f[14]~77_combout\);

-- Location: LCFF_X31_Y19_N1
\inst|counter_f[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[0]~39_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(0));

-- Location: LCCOMB_X31_Y19_N2
\inst|counter_f[1]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[1]~41_combout\ = (\inst|counter_f\(1) & (!\inst|counter_f[0]~40\)) # (!\inst|counter_f\(1) & ((\inst|counter_f[0]~40\) # (GND)))
-- \inst|counter_f[1]~42\ = CARRY((!\inst|counter_f[0]~40\) # (!\inst|counter_f\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(1),
	datad => VCC,
	cin => \inst|counter_f[0]~40\,
	combout => \inst|counter_f[1]~41_combout\,
	cout => \inst|counter_f[1]~42\);

-- Location: LCFF_X31_Y19_N3
\inst|counter_f[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[1]~41_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(1));

-- Location: LCCOMB_X31_Y19_N4
\inst|counter_f[2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[2]~43_combout\ = (\inst|counter_f\(2) & (\inst|counter_f[1]~42\ $ (GND))) # (!\inst|counter_f\(2) & (!\inst|counter_f[1]~42\ & VCC))
-- \inst|counter_f[2]~44\ = CARRY((\inst|counter_f\(2) & !\inst|counter_f[1]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(2),
	datad => VCC,
	cin => \inst|counter_f[1]~42\,
	combout => \inst|counter_f[2]~43_combout\,
	cout => \inst|counter_f[2]~44\);

-- Location: LCFF_X31_Y19_N5
\inst|counter_f[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[2]~43_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(2));

-- Location: LCCOMB_X31_Y19_N8
\inst|counter_f[4]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[4]~47_combout\ = (\inst|counter_f\(4) & (\inst|counter_f[3]~46\ $ (GND))) # (!\inst|counter_f\(4) & (!\inst|counter_f[3]~46\ & VCC))
-- \inst|counter_f[4]~48\ = CARRY((\inst|counter_f\(4) & !\inst|counter_f[3]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(4),
	datad => VCC,
	cin => \inst|counter_f[3]~46\,
	combout => \inst|counter_f[4]~47_combout\,
	cout => \inst|counter_f[4]~48\);

-- Location: LCFF_X31_Y19_N9
\inst|counter_f[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[4]~47_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(4));

-- Location: LCCOMB_X31_Y19_N14
\inst|counter_f[7]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[7]~53_combout\ = (\inst|counter_f\(7) & (!\inst|counter_f[6]~52\)) # (!\inst|counter_f\(7) & ((\inst|counter_f[6]~52\) # (GND)))
-- \inst|counter_f[7]~54\ = CARRY((!\inst|counter_f[6]~52\) # (!\inst|counter_f\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(7),
	datad => VCC,
	cin => \inst|counter_f[6]~52\,
	combout => \inst|counter_f[7]~53_combout\,
	cout => \inst|counter_f[7]~54\);

-- Location: LCFF_X31_Y19_N15
\inst|counter_f[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[7]~53_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(7));

-- Location: LCCOMB_X31_Y19_N18
\inst|counter_f[9]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[9]~57_combout\ = (\inst|counter_f\(9) & (!\inst|counter_f[8]~56\)) # (!\inst|counter_f\(9) & ((\inst|counter_f[8]~56\) # (GND)))
-- \inst|counter_f[9]~58\ = CARRY((!\inst|counter_f[8]~56\) # (!\inst|counter_f\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(9),
	datad => VCC,
	cin => \inst|counter_f[8]~56\,
	combout => \inst|counter_f[9]~57_combout\,
	cout => \inst|counter_f[9]~58\);

-- Location: LCFF_X31_Y19_N19
\inst|counter_f[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[9]~57_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(9));

-- Location: LCCOMB_X31_Y19_N22
\inst|counter_f[11]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[11]~61_combout\ = (\inst|counter_f\(11) & (!\inst|counter_f[10]~60\)) # (!\inst|counter_f\(11) & ((\inst|counter_f[10]~60\) # (GND)))
-- \inst|counter_f[11]~62\ = CARRY((!\inst|counter_f[10]~60\) # (!\inst|counter_f\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(11),
	datad => VCC,
	cin => \inst|counter_f[10]~60\,
	combout => \inst|counter_f[11]~61_combout\,
	cout => \inst|counter_f[11]~62\);

-- Location: LCFF_X31_Y19_N23
\inst|counter_f[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[11]~61_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(11));

-- Location: LCCOMB_X31_Y19_N26
\inst|counter_f[13]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[13]~65_combout\ = (\inst|counter_f\(13) & (!\inst|counter_f[12]~64\)) # (!\inst|counter_f\(13) & ((\inst|counter_f[12]~64\) # (GND)))
-- \inst|counter_f[13]~66\ = CARRY((!\inst|counter_f[12]~64\) # (!\inst|counter_f\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(13),
	datad => VCC,
	cin => \inst|counter_f[12]~64\,
	combout => \inst|counter_f[13]~65_combout\,
	cout => \inst|counter_f[13]~66\);

-- Location: LCFF_X31_Y19_N27
\inst|counter_f[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[13]~65_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(13));

-- Location: LCCOMB_X31_Y19_N28
\inst|counter_f[14]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter_f[14]~67_combout\ = (\inst|counter_f\(14) & (\inst|counter_f[13]~66\ $ (GND))) # (!\inst|counter_f\(14) & (!\inst|counter_f[13]~66\ & VCC))
-- \inst|counter_f[14]~68\ = CARRY((\inst|counter_f\(14) & !\inst|counter_f[13]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(14),
	datad => VCC,
	cin => \inst|counter_f[13]~66\,
	combout => \inst|counter_f[14]~67_combout\,
	cout => \inst|counter_f[14]~68\);

-- Location: LCFF_X31_Y19_N29
\inst|counter_f[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[14]~67_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(14));

-- Location: LCFF_X31_Y19_N31
\inst|counter_f[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter_f[15]~69_combout\,
	sclr => \inst|counter_f[14]~77_combout\,
	ena => \inst|counter_f[14]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter_f\(15));

-- Location: LCCOMB_X30_Y20_N10
\inst|LessThan13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~3_combout\ = (!\inst|counter_f\(16) & ((!\inst|counter_f\(14)) # (!\inst|counter_f\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_f\(15),
	datac => \inst|counter_f\(14),
	datad => \inst|counter_f\(16),
	combout => \inst|LessThan13~3_combout\);

-- Location: LCCOMB_X29_Y20_N20
\inst|state_f~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~18_combout\ = (\inst|state_f.WRITE_DATA~regout\ & (((!\inst|LessThan13~3_combout\ & !\inst|LessThan13~2_combout\)) # (!\inst|counter_f[14]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.WRITE_DATA~regout\,
	datab => \inst|LessThan13~3_combout\,
	datac => \inst|counter_f[14]~36_combout\,
	datad => \inst|LessThan13~2_combout\,
	combout => \inst|state_f~18_combout\);

-- Location: LCCOMB_X30_Y19_N2
\inst|state_f~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~20_combout\ = (\inst|state_f.DIGIT_SELECT~regout\) # ((\inst|state_f.HZ_DISPLAY~regout\) # ((!\inst|state_f.CHECK_AND_WAIT~regout\ & \inst|lcd_data_reg[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.CHECK_AND_WAIT~regout\,
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|state_f.HZ_DISPLAY~regout\,
	datad => \inst|lcd_data_reg[7]~0_combout\,
	combout => \inst|state_f~20_combout\);

-- Location: LCCOMB_X29_Y20_N0
\inst|state_f~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~21_combout\ = (\inst|state_f~17_combout\) # ((\inst|state_f~19_combout\) # ((\inst|state_f~18_combout\) # (\inst|state_f~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f~17_combout\,
	datab => \inst|state_f~19_combout\,
	datac => \inst|state_f~18_combout\,
	datad => \inst|state_f~20_combout\,
	combout => \inst|state_f~21_combout\);

-- Location: LCCOMB_X29_Y20_N22
\inst|state_f~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~26_combout\ = (\SW~combout\(0) & ((\inst|state_f~21_combout\ & (\inst|state_f~18_combout\)) # (!\inst|state_f~21_combout\ & ((\inst|state_f.WAIT_EXEC~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f~18_combout\,
	datab => \SW~combout\(0),
	datac => \inst|state_f.WAIT_EXEC~regout\,
	datad => \inst|state_f~21_combout\,
	combout => \inst|state_f~26_combout\);

-- Location: LCFF_X29_Y20_N23
\inst|state_f.WAIT_EXEC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.WAIT_EXEC~regout\);

-- Location: LCCOMB_X29_Y20_N14
\inst|state_f~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~19_combout\ = (\inst|state_f.WAIT_EXEC~regout\ & ((!\inst|LessThan14~2_combout\) # (!\inst|counter_f[14]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f.WAIT_EXEC~regout\,
	datac => \inst|counter_f[14]~36_combout\,
	datad => \inst|LessThan14~2_combout\,
	combout => \inst|state_f~19_combout\);

-- Location: LCCOMB_X29_Y20_N8
\inst|state_f~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~24_combout\ = (\SW~combout\(0) & (\inst|state_f~19_combout\ & \inst|state_f~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \inst|state_f~19_combout\,
	datad => \inst|state_f~21_combout\,
	combout => \inst|state_f~24_combout\);

-- Location: LCFF_X29_Y20_N9
\inst|state_f.DIGIT_SELECT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.DIGIT_SELECT~regout\);

-- Location: LCCOMB_X29_Y18_N10
\inst|n_index~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|n_index~2_combout\ = (\SW~combout\(0) & (\inst|state_f.DIGIT_SELECT~regout\ & !\inst|n_index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|n_index\(0),
	combout => \inst|n_index~2_combout\);

-- Location: LCCOMB_X29_Y18_N12
\inst|n_index[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|n_index[0]~1_combout\ = ((!\inst|lcd_data_freq[6]~2_combout\ & ((\inst|state_f.DIGIT_SELECT~regout\) # (!\inst|state_f.CHECK_AND_WAIT~regout\)))) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|state_f.CHECK_AND_WAIT~regout\,
	datad => \inst|lcd_data_freq[6]~2_combout\,
	combout => \inst|n_index[0]~1_combout\);

-- Location: LCFF_X29_Y18_N11
\inst|n_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|n_index~2_combout\,
	ena => \inst|n_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|n_index\(0));

-- Location: LCCOMB_X29_Y18_N4
\inst|n_index~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|n_index~0_combout\ = (\SW~combout\(0) & (\inst|state_f.DIGIT_SELECT~regout\ & (\inst|n_index\(1) $ (\inst|n_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|n_index\(1),
	datad => \inst|n_index\(0),
	combout => \inst|n_index~0_combout\);

-- Location: LCFF_X29_Y18_N5
\inst|n_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|n_index~0_combout\,
	ena => \inst|n_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|n_index\(1));

-- Location: LCCOMB_X29_Y18_N14
\inst|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = \inst|n_index\(2) $ (((\inst|n_index\(0) & \inst|n_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|n_index\(0),
	datac => \inst|n_index\(1),
	datad => \inst|n_index\(2),
	combout => \inst|Add6~0_combout\);

-- Location: LCCOMB_X29_Y18_N2
\inst|n_index~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|n_index~3_combout\ = (\SW~combout\(0) & (\inst|state_f.DIGIT_SELECT~regout\ & \inst|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|Add6~0_combout\,
	combout => \inst|n_index~3_combout\);

-- Location: LCFF_X29_Y18_N3
\inst|n_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|n_index~3_combout\,
	ena => \inst|n_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|n_index\(2));

-- Location: LCCOMB_X29_Y20_N26
\inst|state_f~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state_f~23_combout\ = (\inst|state_f.DIGIT_SELECT~regout\ & (\inst|n_index\(2) & \SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|n_index\(2),
	datad => \SW~combout\(0),
	combout => \inst|state_f~23_combout\);

-- Location: LCFF_X29_Y20_N27
\inst|state_f.HZ_DISPLAY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state_f~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state_f.HZ_DISPLAY~regout\);

-- Location: LCCOMB_X27_Y20_N28
\inst|Selector144~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector144~0_combout\ = (\inst|state_f.HZ_DISPLAY~regout\ & ((\inst|sub_state_f\(1)))) # (!\inst|state_f.HZ_DISPLAY~regout\ & (\inst|state_f.DIGIT_SELECT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.DIGIT_SELECT~regout\,
	datab => \inst|state_f.HZ_DISPLAY~regout\,
	datad => \inst|sub_state_f\(1),
	combout => \inst|Selector144~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\inst|lcd_data_freq[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[4]~feeder_combout\ = \inst|Selector144~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector144~0_combout\,
	combout => \inst|lcd_data_freq[4]~feeder_combout\);

-- Location: LCCOMB_X28_Y20_N30
\inst|lcd_data_freq[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[6]~3_combout\ = (\inst|lcd_data_freq[6]~1_combout\ & (\SW~combout\(0) & !\inst|lcd_data_freq[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_freq[6]~1_combout\,
	datab => \SW~combout\(0),
	datad => \inst|lcd_data_freq[6]~2_combout\,
	combout => \inst|lcd_data_freq[6]~3_combout\);

-- Location: LCFF_X28_Y20_N17
\inst|lcd_data_freq[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|lcd_data_freq[4]~feeder_combout\,
	ena => \inst|lcd_data_freq[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(4));

-- Location: M4K_X26_Y18
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

-- Location: LCCOMB_X27_Y19_N10
\inst|lcd_data_reg[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg[4]~4_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|lcd_data_freq\(4))))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(4))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datac => \inst|lcd_data_freq\(4),
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst|lcd_data_reg[4]~4_combout\);

-- Location: LCCOMB_X27_Y19_N6
\inst|lcd_data_reg[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg\(4) = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_data_reg[4]~4_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_data_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_reg\(4),
	datac => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	datad => \inst|lcd_data_reg[4]~4_combout\,
	combout => \inst|lcd_data_reg\(4));

-- Location: LCCOMB_X27_Y19_N30
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|lcd_data_reg\(5) & (\inst|lcd_data_reg\(6) & (!\inst|lcd_data_reg\(7) & !\inst|lcd_data_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_reg\(5),
	datab => \inst|lcd_data_reg\(6),
	datac => \inst|lcd_data_reg\(7),
	datad => \inst|lcd_data_reg\(4),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y18_N2
\inst|page_index~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~20_combout\ = (\inst|sub_state.PAGE_ERROR~regout\ & ((\inst|LessThan7~1_combout\) # ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~1_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|sub_state.PAGE_ERROR~regout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|page_index~20_combout\);

-- Location: LCCOMB_X30_Y18_N20
\inst|page_index~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~11_combout\ = (\inst|page_index[3]~10_combout\ & (((\inst|page_index~9_combout\)))) # (!\inst|page_index[3]~10_combout\ & (\inst|state.PAGE_SELECT~regout\ & ((\inst|page_index~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|page_index[3]~10_combout\,
	datac => \inst|page_index~9_combout\,
	datad => \inst|page_index~20_combout\,
	combout => \inst|page_index~11_combout\);

-- Location: LCFF_X30_Y18_N21
\inst|page_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \inst|page_index~11_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst|page_index[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(2));

-- Location: LCCOMB_X30_Y16_N14
\inst|page_index~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~6_combout\ = (!\inst|page_index\(3) & (!\inst|page_index\(2) & ((!\inst|page_index\(1)) # (!\inst|page_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(0),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(1),
	combout => \inst|page_index~6_combout\);

-- Location: LCCOMB_X30_Y16_N18
\inst|page_index~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~7_combout\ = (\inst|page_index\(4)) # ((\inst|page_index~6_combout\) # ((\inst|page_index\(3) & !\inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(4),
	datab => \inst|page_index\(3),
	datac => \inst|page_index~6_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|page_index~7_combout\);

-- Location: LCCOMB_X29_Y16_N28
\inst|page_index~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~16_combout\ = (\KEY~combout\(0) & ((\inst|Add4~6_combout\) # ((\inst|page_index~7_combout\)))) # (!\KEY~combout\(0) & (((\inst|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~6_combout\,
	datab => \inst|page_index~7_combout\,
	datac => \KEY~combout\(0),
	datad => \inst|Add2~6_combout\,
	combout => \inst|page_index~16_combout\);

-- Location: LCCOMB_X30_Y18_N0
\inst|page_index~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~17_combout\ = (\inst|page_index[3]~10_combout\ & (((\inst|page_index~16_combout\)))) # (!\inst|page_index[3]~10_combout\ & (\inst|state.PAGE_SELECT~regout\ & ((\inst|page_index~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|page_index[3]~10_combout\,
	datac => \inst|page_index~16_combout\,
	datad => \inst|page_index~20_combout\,
	combout => \inst|page_index~17_combout\);

-- Location: LCFF_X30_Y18_N1
\inst|page_index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \inst|page_index~17_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	ena => \inst|page_index[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(3));

-- Location: LCCOMB_X31_Y16_N30
\inst|always2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always2~0_combout\ = (!\inst|page_index\(1) & ((\inst|page_index\(2) & ((\inst|page_index\(3)))) # (!\inst|page_index\(2) & ((\inst|page_index\(0)) # (!\inst|page_index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datab => \inst|page_index\(2),
	datac => \inst|page_index\(3),
	datad => \inst|page_index\(1),
	combout => \inst|always2~0_combout\);

-- Location: LCCOMB_X31_Y16_N4
\inst|always2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|always2~1_combout\ = (\inst|page_index\(4)) # ((\inst|always2~0_combout\) # ((\inst|page_index\(1) & \inst|page_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(1),
	datab => \inst|page_index\(3),
	datac => \inst|page_index\(4),
	datad => \inst|always2~0_combout\,
	combout => \inst|always2~1_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst|Selector65~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~9_combout\ = (!\KEY~combout\(0) & \inst|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \inst|Add2~0_combout\,
	combout => \inst|Selector65~9_combout\);

-- Location: LCCOMB_X31_Y16_N22
\inst|Selector65~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~10_combout\ = (\inst|Selector65~7_combout\ & ((\inst|Selector65~8_combout\) # ((!\inst|always2~1_combout\ & \inst|Selector65~9_combout\)))) # (!\inst|Selector65~7_combout\ & (((!\inst|always2~1_combout\ & \inst|Selector65~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector65~7_combout\,
	datab => \inst|Selector65~8_combout\,
	datac => \inst|always2~1_combout\,
	datad => \inst|Selector65~9_combout\,
	combout => \inst|Selector65~10_combout\);

-- Location: LCCOMB_X31_Y16_N14
\inst|Selector65~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~3_combout\ = (\inst|state.PAGE_SELECT~regout\ & !\inst|state.WAIT_BUTTON_SHORT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.PAGE_SELECT~regout\,
	datad => \inst|state.WAIT_BUTTON_SHORT~regout\,
	combout => \inst|Selector65~3_combout\);

-- Location: LCCOMB_X31_Y16_N20
\inst|Selector65~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~4_combout\ = (\inst|LessThan7~1_combout\ & (\inst|sub_state.PAGE_ERROR~regout\)) # (!\inst|LessThan7~1_combout\ & ((\inst|Equal0~2_combout\ & ((!\inst|sub_state.PAGE0~regout\))) # (!\inst|Equal0~2_combout\ & 
-- (\inst|sub_state.PAGE_ERROR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE_ERROR~regout\,
	datab => \inst|sub_state.PAGE0~regout\,
	datac => \inst|LessThan7~1_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Selector65~4_combout\);

-- Location: LCCOMB_X31_Y16_N18
\inst|Selector65~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~5_combout\ = (\inst|sub_state.PAGE2~regout\) # (((\inst|sub_state.PAGE1~regout\ & !\inst|page_index~5_combout\)) # (!\inst|sub_state.PAGE0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE2~regout\,
	datab => \inst|sub_state.PAGE0~regout\,
	datac => \inst|sub_state.PAGE1~regout\,
	datad => \inst|page_index~5_combout\,
	combout => \inst|Selector65~5_combout\);

-- Location: LCCOMB_X31_Y16_N24
\inst|Selector65~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~6_combout\ = (\inst|Selector65~3_combout\ & ((\inst|Selector65~4_combout\) # ((\inst|page_index\(0) & \inst|Selector65~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datab => \inst|Selector65~3_combout\,
	datac => \inst|Selector65~4_combout\,
	datad => \inst|Selector65~5_combout\,
	combout => \inst|Selector65~6_combout\);

-- Location: LCCOMB_X31_Y16_N2
\inst|Selector65~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~1_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((!\inst|Equal1~1_combout\ & \inst|Selector65~0_combout\)) # (!\inst|Selector52~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|Equal1~1_combout\,
	datac => \inst|Selector52~1_combout\,
	datad => \inst|Selector65~0_combout\,
	combout => \inst|Selector65~1_combout\);

-- Location: LCCOMB_X31_Y16_N28
\inst|Selector65~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~2_combout\ = (\inst|page_index\(0) & ((\inst|Selector65~1_combout\) # ((!\inst|state.WAIT_BUTTON_SHORT~regout\ & !\inst|state.PAGE_SELECT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \inst|page_index\(0),
	datad => \inst|Selector65~1_combout\,
	combout => \inst|Selector65~2_combout\);

-- Location: LCCOMB_X31_Y16_N16
\inst|Selector65~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector65~11_combout\ = (\inst|Selector65~6_combout\) # ((\inst|Selector65~2_combout\) # ((\inst|Selector53~0_combout\ & \inst|Selector65~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector53~0_combout\,
	datab => \inst|Selector65~10_combout\,
	datac => \inst|Selector65~6_combout\,
	datad => \inst|Selector65~2_combout\,
	combout => \inst|Selector65~11_combout\);

-- Location: LCFF_X31_Y16_N17
\inst|page_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector65~11_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|page_index\(0));

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

-- Location: LCCOMB_X27_Y19_N28
\inst|lcd_data_reg[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg[1]~7_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(1))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(1))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_freq\(1),
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \inst|lcd_data_reg[1]~7_combout\);

-- Location: LCCOMB_X27_Y19_N4
\inst|lcd_data_reg[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg\(1) = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_data_reg[1]~7_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_data_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lcd_data_reg\(1),
	datac => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	datad => \inst|lcd_data_reg[1]~7_combout\,
	combout => \inst|lcd_data_reg\(1));

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

-- Location: LCCOMB_X29_Y18_N16
\inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|n_index\(1) & (((\inst|n_index\(0))))) # (!\inst|n_index\(1) & ((\inst|n_index\(0) & (\SW~combout\(12))) # (!\inst|n_index\(0) & ((\SW~combout\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datab => \SW~combout\(16),
	datac => \inst|n_index\(1),
	datad => \inst|n_index\(0),
	combout => \inst|Mux3~0_combout\);

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

-- Location: LCCOMB_X28_Y18_N8
\inst|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|n_index\(1) & ((\inst|Mux3~0_combout\ & ((\SW~combout\(4)))) # (!\inst|Mux3~0_combout\ & (\SW~combout\(8))))) # (!\inst|n_index\(1) & (((\inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|n_index\(1),
	datab => \SW~combout\(8),
	datac => \inst|Mux3~0_combout\,
	datad => \SW~combout\(4),
	combout => \inst|Mux3~1_combout\);

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

-- Location: LCCOMB_X29_Y18_N0
\inst|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|Mux1~0_combout\ & (((\SW~combout\(2))) # (!\inst|n_index\(1)))) # (!\inst|Mux1~0_combout\ & (\inst|n_index\(1) & ((\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst|n_index\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(6),
	combout => \inst|Mux1~1_combout\);

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

-- Location: LCCOMB_X29_Y18_N22
\inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|n_index\(1) & (((\inst|n_index\(0))))) # (!\inst|n_index\(1) & ((\inst|n_index\(0) & (\SW~combout\(11))) # (!\inst|n_index\(0) & ((\SW~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \inst|n_index\(1),
	datac => \SW~combout\(15),
	datad => \inst|n_index\(0),
	combout => \inst|Mux2~0_combout\);

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

-- Location: LCCOMB_X29_Y18_N28
\inst|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux2~0_combout\ & (((\SW~combout\(3)) # (!\inst|n_index\(1))))) # (!\inst|Mux2~0_combout\ & (\SW~combout\(7) & (\inst|n_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \inst|Mux2~0_combout\,
	datac => \inst|n_index\(1),
	datad => \SW~combout\(3),
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X28_Y18_N22
\inst|lcd_data_freq[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[0]~4_combout\ = (!\inst|Mux0~1_combout\ & (\inst|state_f.DIGIT_SELECT~regout\ & (!\inst|Mux1~1_combout\ & !\inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~1_combout\,
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|Mux1~1_combout\,
	datad => \inst|Mux2~1_combout\,
	combout => \inst|lcd_data_freq[0]~4_combout\);

-- Location: LCCOMB_X28_Y18_N4
\inst|Selector146~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector146~0_combout\ = (\inst|Mux2~1_combout\ & ((\inst|lcd_data_freq[0]~4_combout\) # ((\inst|state_f.DIGIT_SELECT~regout\ & !\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datab => \inst|state_f.DIGIT_SELECT~regout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst|lcd_data_freq[0]~4_combout\,
	combout => \inst|Selector146~0_combout\);

-- Location: LCCOMB_X28_Y20_N28
\inst|lcd_data_freq[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[2]~feeder_combout\ = \inst|Selector146~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector146~0_combout\,
	combout => \inst|lcd_data_freq[2]~feeder_combout\);

-- Location: LCFF_X28_Y20_N29
\inst|lcd_data_freq[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|lcd_data_freq[2]~feeder_combout\,
	ena => \inst|lcd_data_freq[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(2));

-- Location: LCCOMB_X27_Y16_N20
\inst|lcd_data_reg[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg[2]~6_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|lcd_data_freq\(2))))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(2))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datac => \inst|lcd_data_freq\(2),
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a2\,
	combout => \inst|lcd_data_reg[2]~6_combout\);

-- Location: LCCOMB_X27_Y16_N8
\inst|lcd_data_reg[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg\(2) = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_data_reg[2]~6_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_data_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lcd_data_reg\(2),
	datac => \inst|lcd_data_reg[2]~6_combout\,
	datad => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	combout => \inst|lcd_data_reg\(2));

-- Location: LCCOMB_X27_Y20_N2
\inst|Selector142~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector142~0_combout\ = (\inst|sub_state_f\(0)) # (\inst|sub_state_f\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sub_state_f\(0),
	datad => \inst|sub_state_f\(1),
	combout => \inst|Selector142~0_combout\);

-- Location: LCCOMB_X27_Y20_N30
\inst|Selector145~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector145~0_combout\ = (\inst|state_f.HZ_DISPLAY~regout\ & (((\inst|Selector142~0_combout\)))) # (!\inst|state_f.HZ_DISPLAY~regout\ & (\inst|state_f.DIGIT_SELECT~regout\ & ((\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.DIGIT_SELECT~regout\,
	datab => \inst|Selector142~0_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst|state_f.HZ_DISPLAY~regout\,
	combout => \inst|Selector145~0_combout\);

-- Location: LCFF_X28_Y20_N31
\inst|lcd_data_freq[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \inst|Selector145~0_combout\,
	sload => VCC,
	ena => \inst|lcd_data_freq[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(3));

-- Location: LCCOMB_X27_Y18_N24
\inst|lcd_data_reg[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg[3]~5_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|lcd_data_freq\(3))))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(3))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datac => \inst|lcd_data_freq\(3),
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a3~portadataout\,
	combout => \inst|lcd_data_reg[3]~5_combout\);

-- Location: LCCOMB_X27_Y18_N2
\inst|lcd_data_reg[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg\(3) = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_data_reg[3]~5_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_data_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lcd_data_reg\(3),
	datac => \inst|lcd_data_reg[3]~5_combout\,
	datad => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	combout => \inst|lcd_data_reg\(3));

-- Location: LCCOMB_X27_Y19_N8
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|lcd_data_reg\(0) & (!\inst|lcd_data_reg\(1) & (!\inst|lcd_data_reg\(2) & !\inst|lcd_data_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_reg\(0),
	datab => \inst|lcd_data_reg\(1),
	datac => \inst|lcd_data_reg\(2),
	datad => \inst|lcd_data_reg\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y19_N24
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~0_combout\ & \inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y19_N0
\inst|char_index[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[0]~10_combout\ = ((\inst|state.PAGE_SELECT~regout\ & ((\inst|LessThan7~1_combout\) # (\inst|Equal0~2_combout\)))) # (!\inst|char_index[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~1_combout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \inst|char_index[0]~6_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|char_index[0]~10_combout\);

-- Location: LCFF_X25_Y19_N7
\inst|char_index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[1]~11_combout\,
	sclr => \inst|char_index[0]~9_combout\,
	ena => \inst|char_index[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(1));

-- Location: LCCOMB_X25_Y19_N28
\inst|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~0_combout\ = (\inst|char_index\(3) & (\inst|char_index\(2) & (\inst|char_index\(0) & \inst|char_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char_index\(3),
	datab => \inst|char_index\(2),
	datac => \inst|char_index\(0),
	datad => \inst|char_index\(1),
	combout => \inst|LessThan7~0_combout\);

-- Location: LCCOMB_X27_Y19_N18
\inst|page_index~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|page_index~5_combout\ = (\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & ((\inst|page_index~4_combout\) # (!\inst|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index~4_combout\,
	datab => \inst|LessThan7~0_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|page_index~5_combout\);

-- Location: LCCOMB_X27_Y17_N18
\inst|Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector54~0_combout\ = (\inst|state.PAGE_SELECT~regout\ & (\inst|page_index~5_combout\ & ((\inst|sub_state.PAGE1~regout\) # (!\inst|sub_state.PAGE0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE1~regout\,
	datab => \inst|sub_state.PAGE0~regout\,
	datac => \inst|state.PAGE_SELECT~regout\,
	datad => \inst|page_index~5_combout\,
	combout => \inst|Selector54~0_combout\);

-- Location: LCCOMB_X27_Y17_N16
\inst|Selector54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector54~1_combout\ = (\inst|Selector54~0_combout\) # ((!\inst|LessThan8~7_combout\ & \inst|state.WAIT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan8~7_combout\,
	datac => \inst|state.WAIT~regout\,
	datad => \inst|Selector54~0_combout\,
	combout => \inst|Selector54~1_combout\);

-- Location: LCFF_X27_Y17_N17
\inst|state.WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector54~1_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WAIT~regout\);

-- Location: LCCOMB_X30_Y19_N12
\inst|Selector46~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~11_combout\ = (\KEY~combout\(0) & (\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\KEY~combout\(1) & \inst|LessThan11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datac => \KEY~combout\(1),
	datad => \inst|LessThan11~8_combout\,
	combout => \inst|Selector46~11_combout\);

-- Location: LCCOMB_X25_Y16_N4
\inst|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~0_combout\ = (\inst|counter\(31)) # (((\inst|counter\(25) & \inst|counter\(26))) # (!\inst|counter[19]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(31),
	datab => \inst|counter\(25),
	datac => \inst|counter\(26),
	datad => \inst|counter[19]~32_combout\,
	combout => \inst|LessThan8~0_combout\);

-- Location: LCCOMB_X24_Y16_N10
\inst|counter[21]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[21]~84_combout\ = (\inst|counter\(21) & (!\inst|counter[20]~75\)) # (!\inst|counter\(21) & ((\inst|counter[20]~75\) # (GND)))
-- \inst|counter[21]~85\ = CARRY((!\inst|counter[20]~75\) # (!\inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(21),
	datad => VCC,
	cin => \inst|counter[20]~75\,
	combout => \inst|counter[21]~84_combout\,
	cout => \inst|counter[21]~85\);

-- Location: LCFF_X24_Y16_N11
\inst|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[21]~84_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(21));

-- Location: LCCOMB_X25_Y16_N14
\inst|LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~5_combout\ = (((!\inst|counter\(19) & !\inst|counter\(18))) # (!\inst|counter\(21))) # (!\inst|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(20),
	datab => \inst|counter\(19),
	datac => \inst|counter\(18),
	datad => \inst|counter\(21),
	combout => \inst|LessThan8~5_combout\);

-- Location: LCCOMB_X24_Y16_N12
\inst|counter[22]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[22]~86_combout\ = (\inst|counter\(22) & (\inst|counter[21]~85\ $ (GND))) # (!\inst|counter\(22) & (!\inst|counter[21]~85\ & VCC))
-- \inst|counter[22]~87\ = CARRY((\inst|counter\(22) & !\inst|counter[21]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(22),
	datad => VCC,
	cin => \inst|counter[21]~85\,
	combout => \inst|counter[22]~86_combout\,
	cout => \inst|counter[22]~87\);

-- Location: LCFF_X24_Y16_N13
\inst|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[22]~86_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(22));

-- Location: LCCOMB_X25_Y16_N8
\inst|LessThan8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~6_combout\ = (((\inst|LessThan8~5_combout\) # (!\inst|counter\(22))) # (!\inst|counter\(24))) # (!\inst|counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(23),
	datab => \inst|counter\(24),
	datac => \inst|LessThan8~5_combout\,
	datad => \inst|counter\(22),
	combout => \inst|LessThan8~6_combout\);

-- Location: LCCOMB_X25_Y17_N14
\inst|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~2_combout\ = (\inst|counter\(15) & (\inst|counter\(16) & \inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datac => \inst|counter\(16),
	datad => \inst|counter\(13),
	combout => \inst|LessThan8~2_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~3_combout\ = (\inst|LessThan8~2_combout\ & (((\inst|counter\(11)) # (\inst|counter\(12))) # (!\inst|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan8~1_combout\,
	datab => \inst|counter\(11),
	datac => \inst|LessThan8~2_combout\,
	datad => \inst|counter\(12),
	combout => \inst|LessThan8~3_combout\);

-- Location: LCCOMB_X25_Y17_N22
\inst|LessThan8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~4_combout\ = (!\inst|counter\(19) & (!\inst|counter\(17) & ((!\inst|LessThan8~3_combout\) # (!\inst|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(19),
	datab => \inst|counter\(14),
	datac => \inst|counter\(17),
	datad => \inst|LessThan8~3_combout\,
	combout => \inst|LessThan8~4_combout\);

-- Location: LCCOMB_X28_Y19_N22
\inst|LessThan8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~7_combout\ = (\inst|LessThan8~0_combout\) # ((\inst|counter\(26) & (!\inst|LessThan8~6_combout\ & !\inst|LessThan8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(26),
	datab => \inst|LessThan8~0_combout\,
	datac => \inst|LessThan8~6_combout\,
	datad => \inst|LessThan8~4_combout\,
	combout => \inst|LessThan8~7_combout\);

-- Location: LCCOMB_X29_Y19_N26
\inst|Selector46~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~8_combout\ = (\inst|Selector46~11_combout\) # ((\inst|state.WAIT~regout\ & \inst|LessThan8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.WAIT~regout\,
	datac => \inst|Selector46~11_combout\,
	datad => \inst|LessThan8~7_combout\,
	combout => \inst|Selector46~8_combout\);

-- Location: LCCOMB_X29_Y19_N30
\inst|state~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~34_combout\ = (\inst|state~33_combout\ & (\inst|state.POWER_ON~regout\ & (!\inst|state.WAIT~regout\ & !\inst|state.PAGE_SELECT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~33_combout\,
	datab => \inst|state.POWER_ON~regout\,
	datac => \inst|state.WAIT~regout\,
	datad => \inst|state.PAGE_SELECT~regout\,
	combout => \inst|state~34_combout\);

-- Location: LCCOMB_X28_Y19_N28
\inst|state~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~35_combout\ = (!\inst|state.PAGE_SELECT~regout\ & ((\inst|state.WAIT~regout\ & ((!\inst|LessThan8~7_combout\))) # (!\inst|state.WAIT~regout\ & (!\inst|LessThan11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT~regout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \inst|LessThan11~8_combout\,
	datad => \inst|LessThan8~7_combout\,
	combout => \inst|state~35_combout\);

-- Location: LCCOMB_X28_Y19_N14
\inst|state~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~36_combout\ = ((\inst|state~35_combout\) # ((\inst|LessThan7~1_combout\ & \inst|state.PAGE_SELECT~regout\))) # (!\inst|state.POWER_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~1_combout\,
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \inst|state.POWER_ON~regout\,
	datad => \inst|state~35_combout\,
	combout => \inst|state~36_combout\);

-- Location: LCCOMB_X25_Y17_N26
\inst|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~1_combout\ = (((!\inst|counter\(5) & !\inst|counter\(4))) # (!\inst|counter\(8))) # (!\inst|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datab => \inst|counter\(9),
	datac => \inst|counter\(4),
	datad => \inst|counter\(8),
	combout => \inst|LessThan4~1_combout\);

-- Location: LCCOMB_X24_Y17_N20
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

-- Location: LCFF_X24_Y17_N21
\inst|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[10]~54_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(10));

-- Location: LCCOMB_X25_Y17_N4
\inst|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~2_combout\ = ((\inst|LessThan4~1_combout\) # ((!\inst|counter\(6)) # (!\inst|counter\(10)))) # (!\inst|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datab => \inst|LessThan4~1_combout\,
	datac => \inst|counter\(10),
	datad => \inst|counter\(6),
	combout => \inst|LessThan4~2_combout\);

-- Location: LCCOMB_X25_Y16_N12
\inst|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~2_combout\ = (!\inst|counter\(23) & (!\inst|counter\(20) & (!\inst|counter\(21) & !\inst|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(23),
	datab => \inst|counter\(20),
	datac => \inst|counter\(21),
	datad => \inst|counter\(22),
	combout => \inst|LessThan3~2_combout\);

-- Location: LCCOMB_X25_Y16_N22
\inst|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~2_combout\ = (!\inst|counter\(16) & (\inst|LessThan3~3_combout\ & (\inst|LessThan5~0_combout\ & \inst|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(16),
	datab => \inst|LessThan3~3_combout\,
	datac => \inst|LessThan5~0_combout\,
	datad => \inst|LessThan3~2_combout\,
	combout => \inst|LessThan5~2_combout\);

-- Location: LCCOMB_X25_Y17_N18
\inst|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan4~3_combout\ = (!\inst|counter\(15) & (\inst|LessThan4~2_combout\ & (\inst|LessThan4~0_combout\ & \inst|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datab => \inst|LessThan4~2_combout\,
	datac => \inst|LessThan4~0_combout\,
	datad => \inst|LessThan5~2_combout\,
	combout => \inst|LessThan4~3_combout\);

-- Location: LCCOMB_X28_Y19_N30
\inst|state~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~42_combout\ = (\inst|state.SETUP~regout\ & (((\inst|counter\(31)) # (!\inst|LessThan4~3_combout\)) # (!\inst|counter[19]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[19]~32_combout\,
	datab => \inst|state.SETUP~regout\,
	datac => \inst|LessThan4~3_combout\,
	datad => \inst|counter\(31),
	combout => \inst|state~42_combout\);

-- Location: LCCOMB_X28_Y19_N20
\inst|state~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~39_combout\ = (\SW~combout\(0) & ((\inst|state~42_combout\) # ((\inst|state.WRITE_DATA~regout\ & \inst|state~37_combout\)))) # (!\SW~combout\(0) & (((\inst|state.WRITE_DATA~regout\ & \inst|state~37_combout\))))

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
	combout => \inst|state~39_combout\);

-- Location: LCFF_X28_Y19_N21
\inst|state.WRITE_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WRITE_DATA~regout\);

-- Location: LCCOMB_X25_Y17_N8
\inst|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~3_combout\ = (!\inst|counter\(10) & (!\inst|counter\(11) & (!\inst|counter\(12) & !\inst|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(10),
	datab => \inst|counter\(11),
	datac => \inst|counter\(12),
	datad => \inst|counter\(13),
	combout => \inst|LessThan5~3_combout\);

-- Location: LCCOMB_X25_Y17_N20
\inst|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~5_combout\ = (\inst|LessThan5~3_combout\ & ((\inst|LessThan5~4_combout\) # ((!\inst|counter\(8)) # (!\inst|counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~4_combout\,
	datab => \inst|counter\(9),
	datac => \inst|LessThan5~3_combout\,
	datad => \inst|counter\(8),
	combout => \inst|LessThan5~5_combout\);

-- Location: LCCOMB_X25_Y17_N6
\inst|LessThan5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~6_combout\ = (\inst|LessThan5~2_combout\ & (((\inst|LessThan5~5_combout\) # (!\inst|counter\(14))) # (!\inst|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datab => \inst|counter\(14),
	datac => \inst|LessThan5~5_combout\,
	datad => \inst|LessThan5~2_combout\,
	combout => \inst|LessThan5~6_combout\);

-- Location: LCCOMB_X28_Y17_N0
\inst|state~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~43_combout\ = (\inst|state.WRITE_DATA~regout\ & ((\inst|counter\(31)) # ((!\inst|LessThan5~6_combout\) # (!\inst|counter[19]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(31),
	datab => \inst|counter[19]~32_combout\,
	datac => \inst|state.WRITE_DATA~regout\,
	datad => \inst|LessThan5~6_combout\,
	combout => \inst|state~43_combout\);

-- Location: LCCOMB_X28_Y19_N2
\inst|state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~32_combout\ = (\inst|state~31_combout\ & (\inst|char_index[0]~6_combout\ & (!\inst|state~43_combout\ & !\inst|state~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~31_combout\,
	datab => \inst|char_index[0]~6_combout\,
	datac => \inst|state~43_combout\,
	datad => \inst|state~42_combout\,
	combout => \inst|state~32_combout\);

-- Location: LCCOMB_X28_Y19_N0
\inst|state~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~37_combout\ = (\inst|state~32_combout\ & ((\inst|state~34_combout\) # ((!\inst|Selector46~10_combout\ & \inst|state~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector46~10_combout\,
	datab => \inst|state~34_combout\,
	datac => \inst|state~36_combout\,
	datad => \inst|state~32_combout\,
	combout => \inst|state~37_combout\);

-- Location: LCCOMB_X28_Y19_N4
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

-- Location: LCFF_X28_Y19_N5
\inst|state.POWER_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state.POWER_ON~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.POWER_ON~regout\);

-- Location: LCCOMB_X25_Y19_N2
\inst|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_combout\ = (((!\inst|counter\(15) & !\inst|counter\(14))) # (!\inst|counter\(17))) # (!\inst|counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datab => \inst|counter\(16),
	datac => \inst|counter\(17),
	datad => \inst|counter\(14),
	combout => \inst|LessThan3~5_combout\);

-- Location: LCCOMB_X25_Y17_N0
\inst|LessThan3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~6_combout\ = ((!\inst|counter\(7) & (!\inst|counter\(6) & !\inst|counter\(8)))) # (!\inst|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datab => \inst|counter\(9),
	datac => \inst|counter\(6),
	datad => \inst|counter\(8),
	combout => \inst|LessThan3~6_combout\);

-- Location: LCCOMB_X25_Y19_N16
\inst|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_combout\ = (\inst|LessThan3~5_combout\) # ((!\inst|counter\(15) & (\inst|LessThan3~6_combout\ & \inst|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datab => \inst|LessThan3~5_combout\,
	datac => \inst|LessThan3~6_combout\,
	datad => \inst|LessThan5~3_combout\,
	combout => \inst|LessThan3~7_combout\);

-- Location: LCCOMB_X25_Y19_N18
\inst|LessThan3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~8_combout\ = (\inst|LessThan3~3_combout\ & (\inst|LessThan3~2_combout\ & ((\inst|LessThan3~4_combout\) # (\inst|LessThan3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~4_combout\,
	datab => \inst|LessThan3~3_combout\,
	datac => \inst|LessThan3~7_combout\,
	datad => \inst|LessThan3~2_combout\,
	combout => \inst|LessThan3~8_combout\);

-- Location: LCCOMB_X25_Y19_N30
\inst|Selector46~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~10_combout\ = (!\inst|state.POWER_ON~regout\ & (((\inst|counter\(31)) # (!\inst|LessThan3~8_combout\)) # (!\inst|counter[19]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[19]~32_combout\,
	datab => \inst|counter\(31),
	datac => \inst|state.POWER_ON~regout\,
	datad => \inst|LessThan3~8_combout\,
	combout => \inst|Selector46~10_combout\);

-- Location: LCCOMB_X28_Y19_N16
\inst|Selector46~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~12_combout\ = (\inst|counter[19]~32_combout\ & (\inst|state.SETUP~regout\ & (\inst|LessThan4~3_combout\ & !\inst|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[19]~32_combout\,
	datab => \inst|state.SETUP~regout\,
	datac => \inst|LessThan4~3_combout\,
	datad => \inst|counter\(31),
	combout => \inst|Selector46~12_combout\);

-- Location: LCCOMB_X29_Y19_N28
\inst|Selector46~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector46~9_combout\ = (\inst|Selector46~13_combout\) # ((\inst|Selector46~8_combout\) # ((\inst|Selector46~10_combout\) # (\inst|Selector46~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector46~13_combout\,
	datab => \inst|Selector46~8_combout\,
	datac => \inst|Selector46~10_combout\,
	datad => \inst|Selector46~12_combout\,
	combout => \inst|Selector46~9_combout\);

-- Location: LCFF_X29_Y19_N29
\inst|state.SETUP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector46~9_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.SETUP~regout\);

-- Location: LCCOMB_X28_Y17_N26
\inst|counter[19]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~80_combout\ = (\inst|state.POWER_ON~regout\ & ((\inst|state.WRITE_DATA~regout\) # (\inst|state.SETUP~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.POWER_ON~regout\,
	datac => \inst|state.WRITE_DATA~regout\,
	datad => \inst|state.SETUP~regout\,
	combout => \inst|counter[19]~80_combout\);

-- Location: LCCOMB_X25_Y17_N2
\inst|counter[19]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~81_combout\ = (\inst|counter[19]~80_combout\ & ((\inst|state.SETUP~regout\ & ((\inst|LessThan4~3_combout\))) # (!\inst|state.SETUP~regout\ & (\inst|LessThan5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~6_combout\,
	datab => \inst|state.SETUP~regout\,
	datac => \inst|counter[19]~80_combout\,
	datad => \inst|LessThan4~3_combout\,
	combout => \inst|counter[19]~81_combout\);

-- Location: LCCOMB_X28_Y17_N16
\inst|counter[19]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~78_combout\ = (\inst|state.POWER_ON~regout\ & (!\inst|state.WRITE_DATA~regout\ & !\inst|state.SETUP~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.POWER_ON~regout\,
	datac => \inst|state.WRITE_DATA~regout\,
	datad => \inst|state.SETUP~regout\,
	combout => \inst|counter[19]~78_combout\);

-- Location: LCCOMB_X25_Y16_N28
\inst|counter[19]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~106_combout\ = ((!\inst|counter\(25) & ((\inst|LessThan8~4_combout\) # (\inst|LessThan8~6_combout\)))) # (!\inst|counter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(26),
	datab => \inst|counter\(25),
	datac => \inst|LessThan8~4_combout\,
	datad => \inst|LessThan8~6_combout\,
	combout => \inst|counter[19]~106_combout\);

-- Location: LCCOMB_X25_Y16_N18
\inst|counter[19]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~107_combout\ = (\inst|counter[19]~78_combout\ & ((\inst|counter[19]~79_combout\) # ((\inst|state.WAIT~regout\ & \inst|counter[19]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[19]~79_combout\,
	datab => \inst|state.WAIT~regout\,
	datac => \inst|counter[19]~78_combout\,
	datad => \inst|counter[19]~106_combout\,
	combout => \inst|counter[19]~107_combout\);

-- Location: LCCOMB_X25_Y16_N0
\inst|counter[19]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[19]~82_combout\ = ((!\inst|counter[19]~77_combout\ & (!\inst|counter[19]~81_combout\ & !\inst|counter[19]~107_combout\))) # (!\inst|counter[19]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[19]~77_combout\,
	datab => \inst|counter[19]~76_combout\,
	datac => \inst|counter[19]~81_combout\,
	datad => \inst|counter[19]~107_combout\,
	combout => \inst|counter[19]~82_combout\);

-- Location: LCFF_X24_Y17_N1
\inst|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[0]~34_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(0));

-- Location: LCCOMB_X24_Y17_N2
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

-- Location: LCFF_X24_Y17_N3
\inst|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[1]~36_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(1));

-- Location: LCCOMB_X24_Y17_N4
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

-- Location: LCFF_X24_Y17_N5
\inst|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[2]~38_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(2));

-- Location: LCCOMB_X24_Y17_N8
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

-- Location: LCFF_X24_Y17_N9
\inst|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[4]~42_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(4));

-- Location: LCCOMB_X24_Y17_N14
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

-- Location: LCFF_X24_Y17_N15
\inst|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[7]~48_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(7));

-- Location: LCCOMB_X24_Y17_N18
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

-- Location: LCFF_X24_Y17_N19
\inst|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[9]~52_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(9));

-- Location: LCCOMB_X24_Y17_N22
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

-- Location: LCFF_X24_Y17_N23
\inst|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[11]~56_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(11));

-- Location: LCCOMB_X24_Y17_N26
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

-- Location: LCFF_X24_Y17_N27
\inst|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[13]~60_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(13));

-- Location: LCCOMB_X24_Y17_N28
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

-- Location: LCFF_X24_Y17_N29
\inst|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[14]~62_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(14));

-- Location: LCCOMB_X24_Y17_N30
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

-- Location: LCFF_X24_Y17_N31
\inst|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[15]~64_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(15));

-- Location: LCCOMB_X24_Y16_N0
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

-- Location: LCFF_X24_Y16_N1
\inst|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[16]~66_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(16));

-- Location: LCCOMB_X24_Y16_N2
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

-- Location: LCFF_X24_Y16_N3
\inst|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[17]~68_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(17));

-- Location: LCCOMB_X24_Y16_N4
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

-- Location: LCFF_X24_Y16_N5
\inst|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[18]~70_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(18));

-- Location: LCCOMB_X24_Y16_N8
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

-- Location: LCFF_X24_Y16_N9
\inst|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[20]~74_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(20));

-- Location: LCCOMB_X24_Y16_N14
\inst|counter[23]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[23]~88_combout\ = (\inst|counter\(23) & (!\inst|counter[22]~87\)) # (!\inst|counter\(23) & ((\inst|counter[22]~87\) # (GND)))
-- \inst|counter[23]~89\ = CARRY((!\inst|counter[22]~87\) # (!\inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(23),
	datad => VCC,
	cin => \inst|counter[22]~87\,
	combout => \inst|counter[23]~88_combout\,
	cout => \inst|counter[23]~89\);

-- Location: LCFF_X24_Y16_N15
\inst|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[23]~88_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(23));

-- Location: LCCOMB_X24_Y16_N18
\inst|counter[25]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[25]~92_combout\ = (\inst|counter\(25) & (!\inst|counter[24]~91\)) # (!\inst|counter\(25) & ((\inst|counter[24]~91\) # (GND)))
-- \inst|counter[25]~93\ = CARRY((!\inst|counter[24]~91\) # (!\inst|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(25),
	datad => VCC,
	cin => \inst|counter[24]~91\,
	combout => \inst|counter[25]~92_combout\,
	cout => \inst|counter[25]~93\);

-- Location: LCFF_X24_Y16_N19
\inst|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[25]~92_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(25));

-- Location: LCCOMB_X24_Y16_N22
\inst|counter[27]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[27]~96_combout\ = (\inst|counter\(27) & (!\inst|counter[26]~95\)) # (!\inst|counter\(27) & ((\inst|counter[26]~95\) # (GND)))
-- \inst|counter[27]~97\ = CARRY((!\inst|counter[26]~95\) # (!\inst|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(27),
	datad => VCC,
	cin => \inst|counter[26]~95\,
	combout => \inst|counter[27]~96_combout\,
	cout => \inst|counter[27]~97\);

-- Location: LCFF_X24_Y16_N23
\inst|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[27]~96_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(27));

-- Location: LCCOMB_X24_Y16_N26
\inst|counter[29]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[29]~100_combout\ = (\inst|counter\(29) & (!\inst|counter[28]~99\)) # (!\inst|counter\(29) & ((\inst|counter[28]~99\) # (GND)))
-- \inst|counter[29]~101\ = CARRY((!\inst|counter[28]~99\) # (!\inst|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(29),
	datad => VCC,
	cin => \inst|counter[28]~99\,
	combout => \inst|counter[29]~100_combout\,
	cout => \inst|counter[29]~101\);

-- Location: LCFF_X24_Y16_N27
\inst|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[29]~100_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(29));

-- Location: LCCOMB_X24_Y16_N28
\inst|counter[30]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[30]~102_combout\ = (\inst|counter\(30) & (\inst|counter[29]~101\ $ (GND))) # (!\inst|counter\(30) & (!\inst|counter[29]~101\ & VCC))
-- \inst|counter[30]~103\ = CARRY((\inst|counter\(30) & !\inst|counter[29]~101\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(30),
	datad => VCC,
	cin => \inst|counter[29]~101\,
	combout => \inst|counter[30]~102_combout\,
	cout => \inst|counter[30]~103\);

-- Location: LCFF_X24_Y16_N29
\inst|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[30]~102_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(30));

-- Location: LCCOMB_X24_Y16_N30
\inst|counter[31]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|counter[31]~104_combout\ = \inst|counter[30]~103\ $ (\inst|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(31),
	cin => \inst|counter[30]~103\,
	combout => \inst|counter[31]~104_combout\);

-- Location: LCFF_X24_Y16_N31
\inst|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|counter[31]~104_combout\,
	sclr => \inst|counter[19]~82_combout\,
	ena => \inst|counter[19]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|counter\(31));

-- Location: LCCOMB_X28_Y19_N12
\inst|state~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~41_combout\ = (\inst|state.WAIT_EXEC~regout\ & ((\inst|counter\(31)) # ((!\inst|LessThan6~2_combout\) # (!\inst|counter[19]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_EXEC~regout\,
	datab => \inst|counter\(31),
	datac => \inst|counter[19]~32_combout\,
	datad => \inst|LessThan6~2_combout\,
	combout => \inst|state~41_combout\);

-- Location: LCCOMB_X28_Y19_N26
\inst|state~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~38_combout\ = (\SW~combout\(0) & ((\inst|state~41_combout\) # ((\inst|state.PAGE_SELECT~regout\ & \inst|state~37_combout\)))) # (!\SW~combout\(0) & (((\inst|state.PAGE_SELECT~regout\ & \inst|state~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|state~41_combout\,
	datac => \inst|state.PAGE_SELECT~regout\,
	datad => \inst|state~37_combout\,
	combout => \inst|state~38_combout\);

-- Location: LCFF_X28_Y19_N27
\inst|state.PAGE_SELECT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.PAGE_SELECT~regout\);

-- Location: LCCOMB_X29_Y19_N16
\inst|char_index[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[0]~9_combout\ = (\inst|state.PAGE_SELECT~regout\) # (!\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.PAGE_SELECT~regout\,
	datac => \SW~combout\(0),
	combout => \inst|char_index[0]~9_combout\);

-- Location: LCFF_X25_Y19_N5
\inst|char_index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[0]~7_combout\,
	sclr => \inst|char_index[0]~9_combout\,
	ena => \inst|char_index[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(0));

-- Location: LCCOMB_X25_Y19_N8
\inst|char_index[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[2]~13_combout\ = (\inst|char_index\(2) & (\inst|char_index[1]~12\ $ (GND))) # (!\inst|char_index\(2) & (!\inst|char_index[1]~12\ & VCC))
-- \inst|char_index[2]~14\ = CARRY((\inst|char_index\(2) & !\inst|char_index[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|char_index\(2),
	datad => VCC,
	cin => \inst|char_index[1]~12\,
	combout => \inst|char_index[2]~13_combout\,
	cout => \inst|char_index[2]~14\);

-- Location: LCFF_X25_Y19_N9
\inst|char_index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[2]~13_combout\,
	sclr => \inst|char_index[0]~9_combout\,
	ena => \inst|char_index[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(2));

-- Location: LCCOMB_X25_Y19_N14
\inst|char_index[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|char_index[5]~19_combout\ = \inst|char_index\(5) $ (\inst|char_index[4]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|char_index\(5),
	cin => \inst|char_index[4]~18\,
	combout => \inst|char_index[5]~19_combout\);

-- Location: LCFF_X25_Y19_N15
\inst|char_index[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|char_index[5]~19_combout\,
	sclr => \inst|char_index[0]~9_combout\,
	ena => \inst|char_index[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|char_index\(5));

-- Location: LCCOMB_X25_Y19_N22
\inst|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~1_combout\ = (\inst|char_index\(4) & (\inst|char_index\(5) & \inst|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char_index\(4),
	datac => \inst|char_index\(5),
	datad => \inst|LessThan7~0_combout\,
	combout => \inst|LessThan7~1_combout\);

-- Location: LCCOMB_X29_Y19_N20
\inst|sub_state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~18_combout\ = (\SW~combout\(0) & ((\inst|sub_state.PAGE_ERROR~regout\) # ((\inst|LessThan7~1_combout\ & !\inst|sub_state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|LessThan7~1_combout\,
	datac => \inst|sub_state.PAGE_ERROR~regout\,
	datad => \inst|sub_state~17_combout\,
	combout => \inst|sub_state~18_combout\);

-- Location: LCFF_X29_Y19_N21
\inst|sub_state.PAGE_ERROR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|sub_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state.PAGE_ERROR~regout\);

-- Location: LCCOMB_X28_Y19_N18
\inst|sub_state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~17_combout\ = ((!\inst|LessThan7~1_combout\ & ((\inst|sub_state.PAGE_ERROR~regout\) # (!\inst|Equal0~2_combout\)))) # (!\inst|state.PAGE_SELECT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|sub_state.PAGE_ERROR~regout\,
	datac => \inst|LessThan7~1_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|sub_state~17_combout\);

-- Location: LCCOMB_X29_Y19_N18
\inst|sub_state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~20_combout\ = (\inst|sub_state.PAGE0~regout\ & (!\inst|LessThan7~1_combout\ & (!\inst|sub_state.PAGE_ERROR~regout\ & \inst|sub_state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub_state.PAGE0~regout\,
	datab => \inst|LessThan7~1_combout\,
	datac => \inst|sub_state.PAGE_ERROR~regout\,
	datad => \inst|sub_state~19_combout\,
	combout => \inst|sub_state~20_combout\);

-- Location: LCCOMB_X29_Y19_N4
\inst|sub_state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|sub_state~21_combout\ = (\inst|sub_state~20_combout\) # ((\SW~combout\(0) & (\inst|sub_state~17_combout\ & \inst|sub_state.PAGE2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \inst|sub_state~17_combout\,
	datac => \inst|sub_state.PAGE2~regout\,
	datad => \inst|sub_state~20_combout\,
	combout => \inst|sub_state~21_combout\);

-- Location: LCFF_X29_Y19_N5
\inst|sub_state.PAGE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|sub_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub_state.PAGE2~regout\);

-- Location: LCCOMB_X31_Y20_N10
\inst|Selector52~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector52~2_combout\ = (\inst|state.PAGE_SELECT~regout\ & (\inst|sub_state.PAGE2~regout\ & (!\inst|LessThan7~1_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.PAGE_SELECT~regout\,
	datab => \inst|sub_state.PAGE2~regout\,
	datac => \inst|LessThan7~1_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Selector52~2_combout\);

-- Location: LCCOMB_X31_Y20_N6
\inst|Selector52~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector52~3_combout\ = (\inst|Selector52~2_combout\) # ((\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state~30_combout\) # (!\inst|LessThan11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan11~8_combout\,
	datab => \inst|state~30_combout\,
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|Selector52~2_combout\,
	combout => \inst|Selector52~3_combout\);

-- Location: LCFF_X31_Y20_N7
\inst|state.WAIT_BUTTON_SHORT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~combout\,
	datain => \inst|Selector52~3_combout\,
	sclr => \ALT_INV_SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WAIT_BUTTON_SHORT~regout\);

-- Location: LCCOMB_X29_Y20_N24
\inst|Selector152~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector152~0_combout\ = (\inst|lcd_en_freq~regout\ & (((\inst|state_f.DIGIT_SELECT~regout\) # (\inst|state_f.HZ_DISPLAY~regout\)) # (!\inst|state_f.CHECK_AND_WAIT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_en_freq~regout\,
	datab => \inst|state_f.CHECK_AND_WAIT~regout\,
	datac => \inst|state_f.DIGIT_SELECT~regout\,
	datad => \inst|state_f.HZ_DISPLAY~regout\,
	combout => \inst|Selector152~0_combout\);

-- Location: LCCOMB_X29_Y20_N6
\inst|Selector152~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector152~1_combout\ = (\inst|state_f.WRITE_DATA~regout\) # (\inst|Selector152~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_f.WRITE_DATA~regout\,
	datac => \inst|Selector152~0_combout\,
	combout => \inst|Selector152~1_combout\);

-- Location: LCFF_X29_Y20_N7
\inst|lcd_en_freq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector152~1_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_en_freq~regout\);

-- Location: LCCOMB_X27_Y17_N10
\inst|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector13~1_combout\ = (\inst|state.WRITE_DATA~regout\) # ((\inst|lcd_en_cntr~regout\ & ((\inst|state.WAIT~regout\) # (!\inst|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector13~0_combout\,
	datab => \inst|state.WRITE_DATA~regout\,
	datac => \inst|lcd_en_cntr~regout\,
	datad => \inst|state.WAIT~regout\,
	combout => \inst|Selector13~1_combout\);

-- Location: LCFF_X27_Y17_N11
\inst|lcd_en_cntr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector13~1_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_en_cntr~regout\);

-- Location: LCCOMB_X27_Y17_N20
\inst|lcd_en_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_en_reg~0_combout\ = (\inst|state.WAIT_BUTTON_RELEASE~regout\ & (((\inst|lcd_en_freq~regout\)))) # (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_en_freq~regout\)) # 
-- (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|lcd_en_cntr~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|lcd_en_freq~regout\,
	datad => \inst|lcd_en_cntr~regout\,
	combout => \inst|lcd_en_reg~0_combout\);

-- Location: LCCOMB_X27_Y17_N22
\inst|lcd_en_reg\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_en_reg~combout\ = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_en_reg~0_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_en_reg~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lcd_en_reg~combout\,
	datac => \inst|lcd_en_reg~0_combout\,
	datad => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	combout => \inst|lcd_en_reg~combout\);

-- Location: LCCOMB_X27_Y17_N14
\inst|lcd_rs_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_rs_reg~0_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_rs_freq~regout\)) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_rs_freq~regout\)) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_rs_freq~regout\,
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a8\,
	combout => \inst|lcd_rs_reg~0_combout\);

-- Location: LCCOMB_X27_Y17_N28
\inst|lcd_rs_reg\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_rs_reg~combout\ = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_rs_reg~0_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_rs_reg~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lcd_rs_reg~combout\,
	datac => \inst|lcd_rs_reg~0_combout\,
	datad => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	combout => \inst|lcd_rs_reg~combout\);

-- Location: LCCOMB_X27_Y19_N0
\inst|lcd_data_reg[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg[5]~3_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (\inst|lcd_data_freq\(5))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(5))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_freq\(5),
	datab => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datac => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a5~portadataout\,
	combout => \inst|lcd_data_reg[5]~3_combout\);

-- Location: LCCOMB_X27_Y19_N16
\inst|lcd_data_reg[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg\(5) = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_data_reg[5]~3_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_data_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_reg\(5),
	datac => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	datad => \inst|lcd_data_reg[5]~3_combout\,
	combout => \inst|lcd_data_reg\(5));

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

-- Location: LCCOMB_X29_Y18_N26
\inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|n_index\(0) & (\inst|n_index\(1))) # (!\inst|n_index\(0) & ((\inst|n_index\(1) & (\SW~combout\(5))) # (!\inst|n_index\(1) & ((\SW~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|n_index\(0),
	datab => \inst|n_index\(1),
	datac => \SW~combout\(5),
	datad => \SW~combout\(13),
	combout => \inst|Mux0~0_combout\);

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

-- Location: LCCOMB_X29_Y18_N20
\inst|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst|n_index\(0) & ((\inst|Mux0~0_combout\ & ((\SW~combout\(1)))) # (!\inst|Mux0~0_combout\ & (\SW~combout\(9))))) # (!\inst|n_index\(0) & (\inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|n_index\(0),
	datab => \inst|Mux0~0_combout\,
	datac => \SW~combout\(9),
	datad => \SW~combout\(1),
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y18_N12
\inst|Selector148~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector148~0_combout\ = (\inst|lcd_data_freq[0]~4_combout\ & (\inst|Mux0~1_combout\)) # (!\inst|lcd_data_freq[0]~4_combout\ & (\inst|state_f.DIGIT_SELECT~regout\ & ((\inst|Mux0~1_combout\) # (\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_data_freq[0]~4_combout\,
	datab => \inst|Mux0~1_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst|state_f.DIGIT_SELECT~regout\,
	combout => \inst|Selector148~0_combout\);

-- Location: LCCOMB_X28_Y20_N26
\inst|lcd_data_freq[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_freq[0]~feeder_combout\ = \inst|Selector148~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Selector148~0_combout\,
	combout => \inst|lcd_data_freq[0]~feeder_combout\);

-- Location: LCFF_X28_Y20_N27
\inst|lcd_data_freq[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|lcd_data_freq[0]~feeder_combout\,
	ena => \inst|lcd_data_freq[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|lcd_data_freq\(0));

-- Location: M4K_X26_Y19
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

-- Location: LCCOMB_X27_Y19_N22
\inst|lcd_data_reg[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg[0]~8_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|lcd_data_freq\(0))))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & ((\inst|state.WAIT_BUTTON_RELEASE~regout\ & (\inst|lcd_data_freq\(0))) # 
-- (!\inst|state.WAIT_BUTTON_RELEASE~regout\ & ((\inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datab => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datac => \inst|lcd_data_freq\(0),
	datad => \inst|text_lut_inst|rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \inst|lcd_data_reg[0]~8_combout\);

-- Location: LCCOMB_X27_Y19_N14
\inst|lcd_data_reg[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|lcd_data_reg\(0) = (GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & ((\inst|lcd_data_reg[0]~8_combout\))) # (!GLOBAL(\inst|lcd_data_reg[7]~0clkctrl_outclk\) & (\inst|lcd_data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lcd_data_reg\(0),
	datac => \inst|lcd_data_reg[7]~0clkctrl_outclk\,
	datad => \inst|lcd_data_reg[0]~8_combout\,
	combout => \inst|lcd_data_reg\(0));

-- Location: LCCOMB_X29_Y16_N10
\inst|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (!\inst|page_index\(1) & ((\inst|page_index\(3) & ((!\inst|page_index\(2)))) # (!\inst|page_index\(3) & (!\inst|page_index\(0) & \inst|page_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(3),
	datab => \inst|page_index\(1),
	datac => \inst|page_index\(0),
	datad => \inst|page_index\(2),
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X30_Y16_N24
\inst|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr1~1_combout\ = (!\inst|page_index\(4) & \inst|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|page_index\(4),
	datad => \inst|WideOr1~0_combout\,
	combout => \inst|WideOr1~1_combout\);

-- Location: LCCOMB_X31_Y16_N26
\inst|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (!\inst|page_index\(3) & ((\inst|page_index\(0) & ((\inst|page_index\(2)) # (\inst|page_index\(1)))) # (!\inst|page_index\(0) & (\inst|page_index\(2) & \inst|page_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datab => \inst|page_index\(3),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(1),
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X31_Y16_N8
\inst|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~1_combout\ = (!\inst|page_index\(4) & \inst|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|page_index\(4),
	datad => \inst|WideOr0~0_combout\,
	combout => \inst|WideOr0~1_combout\);

-- Location: LCCOMB_X31_Y16_N10
\inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|page_index\(0) & (!\inst|page_index\(3) & (\inst|page_index\(2)))) # (!\inst|page_index\(0) & (\inst|page_index\(3) & (!\inst|page_index\(2) & !\inst|page_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datab => \inst|page_index\(3),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(1),
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y16_N0
\inst|WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~1_combout\ = (!\inst|page_index\(4) & \inst|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|page_index\(4),
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr2~1_combout\);

-- Location: LCCOMB_X31_Y16_N6
\inst|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|page_index\(3) & (\inst|page_index\(0) & (!\inst|page_index\(2) & !\inst|page_index\(1)))) # (!\inst|page_index\(3) & (((\inst|page_index\(2) & \inst|page_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|page_index\(0),
	datab => \inst|page_index\(3),
	datac => \inst|page_index\(2),
	datad => \inst|page_index\(1),
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y16_N12
\inst|WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~1_combout\ = (!\inst|page_index\(4) & \inst|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|page_index\(4),
	datad => \inst|WideOr3~0_combout\,
	combout => \inst|WideOr3~1_combout\);

-- Location: LCFF_X31_Y20_N25
\inst|test_led~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \inst|Selector98~2_combout\,
	ena => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|test_led~_Duplicate_1_regout\);

-- Location: LCCOMB_X31_Y20_N8
\inst|Selector98~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector98~1_combout\ = (\inst|state.WAIT_BUTTON_SHORT~regout\ & (((!\KEY~combout\(1) & \inst|test_led~_Duplicate_1_regout\)) # (!\KEY~combout\(0)))) # (!\inst|state.WAIT_BUTTON_SHORT~regout\ & (((\inst|test_led~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \KEY~combout\(1),
	datac => \inst|state.WAIT_BUTTON_SHORT~regout\,
	datad => \inst|test_led~_Duplicate_1_regout\,
	combout => \inst|Selector98~1_combout\);

-- Location: LCCOMB_X31_Y20_N22
\inst|Selector98~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector98~0_combout\ = (\inst|state.WAIT_BUTTON_RELEASE~regout\ & (((\inst|test_led~_Duplicate_1_regout\ & !\inst|LessThan11~8_combout\)) # (!\inst|state~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datab => \inst|test_led~_Duplicate_1_regout\,
	datac => \inst|state~30_combout\,
	datad => \inst|LessThan11~8_combout\,
	combout => \inst|Selector98~0_combout\);

-- Location: LCCOMB_X31_Y20_N24
\inst|Selector98~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector98~2_combout\ = (\inst|Selector98~0_combout\) # ((!\inst|state.WAIT_BUTTON_RELEASE~regout\ & \inst|Selector98~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WAIT_BUTTON_RELEASE~regout\,
	datac => \inst|Selector98~1_combout\,
	datad => \inst|Selector98~0_combout\,
	combout => \inst|Selector98~2_combout\);

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
	datain => \inst|lcd_en_reg~combout\,
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
	datain => \inst|lcd_rs_reg~combout\,
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
	datain => \inst|lcd_data_reg\(7),
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
	datain => \inst|lcd_data_reg\(6),
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
	datain => \inst|lcd_data_reg\(5),
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
	datain => \inst|lcd_data_reg\(4),
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
	datain => \inst|lcd_data_reg\(3),
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
	datain => \inst|lcd_data_reg\(2),
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
	datain => \inst|lcd_data_reg\(1),
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
	datain => \inst|lcd_data_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_DATA(0));

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


