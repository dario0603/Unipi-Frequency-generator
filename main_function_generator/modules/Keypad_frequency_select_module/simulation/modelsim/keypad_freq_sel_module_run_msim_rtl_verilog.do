transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator\ -\ with\ dividers/modules/Keypad_frequency_select_module {C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator - with dividers/modules/Keypad_frequency_select_module/keypad_module.v}
vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator\ -\ with\ dividers/modules/Keypad_frequency_select_module {C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator - with dividers/modules/Keypad_frequency_select_module/DDFS_frequency_converter.v}
vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator\ -\ with\ dividers/modules/Keypad_frequency_select_module {C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator - with dividers/modules/Keypad_frequency_select_module/keypad_freq_sel_module.v}
vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator\ -\ with\ dividers/modules/Keypad_frequency_select_module {C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator - with dividers/modules/Keypad_frequency_select_module/BCD_to_7seg.v}
vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator\ -\ with\ dividers/modules/Keypad_frequency_select_module {C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator - with dividers/modules/Keypad_frequency_select_module/BCD_to_C1_converter.v}

vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator\ -\ with\ dividers/modules/Keypad_frequency_select_module {C:/Users/posta/Desktop/Programmi/Verilog/Unipi-Frequency-generator/main_function_generator - with dividers/modules/Keypad_frequency_select_module/tb_DDFS_frequency_converter.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb_DDFS_frequency_converter

add wave *
view structure
view signals
run -all
