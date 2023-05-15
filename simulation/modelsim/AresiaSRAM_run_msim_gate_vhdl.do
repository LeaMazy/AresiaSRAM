transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {AresiaSRAM.vho}

vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/TestBench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=AresiaSRAM_vhd.sdo -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  TestBench

do C:/ECE/Aresia/TestProcGit/AresiaSRAM/simulation/modelsim/my_custom_view.do
