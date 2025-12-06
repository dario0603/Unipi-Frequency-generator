transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/1.1\ test\ with\ VGA\ DAC {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/1.1 test with VGA DAC/ddfs.v}
vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/1.1\ test\ with\ VGA\ DAC {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/1.1 test with VGA DAC/freq_divider.v}
vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/1.1\ test\ with\ VGA\ DAC {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/1.1 test with VGA DAC/sin_lut.v}

vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/1.1\ test\ with\ VGA\ DAC {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/1.1 test with VGA DAC/tb_ddfs.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb_ddfs

add wave *
view structure
view signals
run -all
