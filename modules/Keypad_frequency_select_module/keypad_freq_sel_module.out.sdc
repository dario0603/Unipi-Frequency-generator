set_time_format -unit ns -decimal_places 3

create_clock -name {CLOCK_50} -period 20.000 -waveform {0.000 10.000} { CLOCK_50 }

set_false_path -from [get_ports {GPIO_0[0] GPIO_0[1] GPIO_0[2] GPIO_0[3] SW[*]}]
set_false_path -to [get_ports {HEX0[*] HEX1[*] HEX2[*] HEX3[*] HEX4[*] HEX5[*] HEX6[*] HEX7[*]}]
set_false_path -to [get_ports {LEDR[*] LEDG[*]}]

#the GPIO_1 outputs are not synchronized; therefore, the clock limits within a cycle are arbitrary
set_output_delay -min 1 [get_ports {GPIO_1[0] GPIO_1[1] GPIO_1[2] GPIO_1[3]}] -clock [get_clocks CLOCK_50]
set_output_delay -max 1 [get_ports {GPIO_1[0] GPIO_1[1] GPIO_1[2] GPIO_1[3]}] -clock [get_clocks CLOCK_50]
