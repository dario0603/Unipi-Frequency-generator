transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/DDFS\ module/1.1\ test\ with\ VGA\ DAC\ and\ PLL {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/DDFS module/1.1 test with VGA DAC and PLL/ddfs.v}
vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/DDFS\ module/1.1\ test\ with\ VGA\ DAC\ and\ PLL {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/DDFS module/1.1 test with VGA DAC and PLL/freq_divider.v}
vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/DDFS\ module/1.1\ test\ with\ VGA\ DAC\ and\ PLL {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/DDFS module/1.1 test with VGA DAC and PLL/sin_lut.v}
vcom -93 -work work {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/DDFS module/1.1 test with VGA DAC and PLL/ALTPLa.vhd}

vlog -vlog01compat -work work +incdir+C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/DDFS\ module/1.1\ test\ with\ VGA\ DAC\ and\ PLL {C:/Users/posta/Desktop/Programmi/Verilog/Function_generator/DDFS module/1.1 test with VGA DAC and PLL/tb_ddfs.v}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_ddfs

add wave *
view structure
view signals
run -all
