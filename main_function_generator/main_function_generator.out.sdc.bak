create_clock -name {ddfs:inst15|freq_divider_DDFS:f_div_inst|count[19]} -period 20 -waveform {0.000 10.00} { ddfs:inst15|freq_divider_DDFS:f_div_inst|count[19] }
create_clock -name {keypad_freq_sel_module:inst1|freq_divider_keypad_module:freq_div|q} -period 20 -waveform {0.000 10.00} { keypad_freq_sel_module:inst1|freq_divider_keypad_module:freq_div|q }
create_clock -name {CLOCK_50} -period 20.000 -waveform {0.000 10.000} { CLOCK_50 }
create_generated_clock -name {inst|altpll_component|pll|clk[0]} -source {inst|altpll_component|pll|inclk[0]} -divide_by 1 -multiply_by 2 -duty_cycle 50.00 { inst|altpll_component|pll|clk[0] }

set_clock_groups -asynchronous   -group {ddfs:inst15|freq_divider_DDFS:f_div_inst|count[19]}  -group {keypad_freq_sel_module:inst1|freq_divider_keypad_module:freq_div|q}
set_clock_groups -asynchronous   -group {inst|altpll_component|pll|clk[0]}  -group {keypad_freq_sel_module:inst1|freq_divider_keypad_module:freq_div|q}
set_clock_groups -asynchronous   -group {inst|altpll_component|pll|clk[0]}  -group {ddfs:inst15|freq_divider_DDFS:f_div_inst|count[19]}
set_clock_groups -asynchronous   -group {keypad_freq_sel_module:inst1|freq_divider_keypad_module:freq_div|q}  -group {CLOCK_50}
set_clock_groups -asynchronous   -group {inst|altpll_component|pll|clk[0]}  -group {CLOCK_50}

set_false_path -from [get_ports {GPIO_0[0] GPIO_0[1] GPIO_0[2] GPIO_0[3] SW[*]}]
set_false_path -to [get_ports {HEX0[*] HEX1[*] HEX2[*] HEX3[*] HEX4[*] HEX5[*] HEX6[*] HEX7[*]}]
set_false_path -to [get_ports {LEDR[*] LEDG[*]}]

#the LCD and GPIO_1 outputs are not synchronized; therefore, the clock limits within a cycle are arbitrary
set_output_delay -min 1 [get_ports {GPIO_1[0] GPIO_1[1] GPIO_1[2] GPIO_1[3]}] -clock [get_clocks keypad_freq_sel_module:inst1|freq_divider_keypad_module:freq_div|q]
set_output_delay -max 5 [get_ports {GPIO_1[0] GPIO_1[1] GPIO_1[2] GPIO_1[3]}] -clock [get_clocks keypad_freq_sel_module:inst1|freq_divider_keypad_module:freq_div|q]
set_output_delay -min 1 [get_ports LCD*] -clock [get_clocks CLOCK_50]
set_output_delay -max 5 [get_ports LCD*] -clock [get_clocks CLOCK_50]

#from datasheet min = thold = 2.5ns; max = tsetup = 1.5ns
#we take some margin
set_output_delay -min 3 [get_ports VGA*] -clock [get_clocks ddfs:inst15|freq_divider_DDFS:f_div_inst|count[19]]
set_output_delay -max 2 [get_ports VGA*] -clock [get_clocks ddfs:inst15|freq_divider_DDFS:f_div_inst|count[19]]
