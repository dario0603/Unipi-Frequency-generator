transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/Keypad_module {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/Keypad_module/keypad_module.v}
vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/Keypad_module {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/Keypad_module/freq_divider.v}

vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/Keypad_module {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/Keypad_module/tb_keypad_module.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb_keypad_module

add wave *
view structure
view signals
run -all
