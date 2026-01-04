create_clock -name {CLOCK_50} -period 20.000 -waveform {0.000 10.000} { CLOCK_50 }
create_generated_clock -name {CLOCK_PLL} -source {inst_pll|altpll_component|pll|inclk[0]} -divide_by 5 -multiply_by 7 -duty_cycle 50.00 -phase 0.0 -offset 0.0 { inst_pll|altpll_component|pll|clk[0] }
create_generated_clock -name {CLK_FREQ_DIV} -source {inst_pll|altpll_component|pll|clk[0]} -divide_by 2 -multiply_by 1 -duty_cycle 50.00 { ddfs:inst_ddfs_mod|freq_divider_DDFS:f_div_inst|clk_out }
 
set_false_path -from [get_ports {GPIO_0[0] GPIO_0[1] GPIO_0[2] GPIO_0[3] SW[*]}]
set_false_path -to [get_ports {HEX0[*] HEX1[*] HEX2[*] HEX3[*] HEX4[*] HEX5[*] HEX6[*] HEX7[*]}]
set_false_path -to [get_ports {LEDR[*] LEDG[*]}]

#the LCD and GPIO_1 outputs are not synchronized; therefore, the clock limits within a cycle are arbitrary
set_output_delay -min 1 [get_ports {GPIO_1[0] GPIO_1[1] GPIO_1[2] GPIO_1[3]}] -clock [get_clocks CLOCK_PLL]
set_output_delay -max 1 [get_ports {GPIO_1[0] GPIO_1[1] GPIO_1[2] GPIO_1[3]}] -clock [get_clocks CLOCK_PLL]
set_output_delay -min 1 [get_ports LCD*] -clock [get_clocks CLOCK_PLL]
set_output_delay -max 1 [get_ports LCD*] -clock [get_clocks CLOCK_PLL]

#from datasheet min = thold = 2.5ns; max = tsetup = 1.5ns
#we take some margin
set_output_delay -min 3 [get_ports VGA*] -clock [get_clocks CLK_FREQ_DIV]
set_output_delay -max 2 [get_ports VGA*] -clock [get_clocks CLK_FREQ_DIV]
