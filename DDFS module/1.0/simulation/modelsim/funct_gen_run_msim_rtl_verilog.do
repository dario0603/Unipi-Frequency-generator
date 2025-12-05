transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/tommy/Documents/Quartus_projects/Function_generator_v2 {C:/Users/tommy/Documents/Quartus_projects/Function_generator_v2/ddfs.v}
vlog -vlog01compat -work work +incdir+C:/Users/tommy/Documents/Quartus_projects/Function_generator_v2 {C:/Users/tommy/Documents/Quartus_projects/Function_generator_v2/freq_divider.v}
vlog -vlog01compat -work work +incdir+C:/Users/tommy/Documents/Quartus_projects/Function_generator_v2 {C:/Users/tommy/Documents/Quartus_projects/Function_generator_v2/sin_lut.v}

vlog -vlog01compat -work work +incdir+C:/Users/tommy/Documents/Quartus_projects/Function_generator_v2 {C:/Users/tommy/Documents/Quartus_projects/Function_generator_v2/tb_ddfs.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb_ddfs

add wave *
view structure
view signals
run -all
