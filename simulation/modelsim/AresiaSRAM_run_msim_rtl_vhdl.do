transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/leama/Aresia/AresiaSRAM/db {C:/Users/leama/Aresia/AresiaSRAM/db/clock1m_altpll.v}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/simul_var_pkg.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/SegmentDecoder.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/ProgramCounter.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/Processor.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/InstructionDecoder.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/Displays.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/Counter.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/clock1M.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/Alu.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/AresiaSRAM/Alignment.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/AresiaSRAM/RAM8x4.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/AresiaSRAM/RAM8_1.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/AresiaSRAM/RAM8_2.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/AresiaSRAM/RAM8_3.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/AresiaSRAM/RAM8_0.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/Top.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/RegisterFile.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/PROC-ECE_SYNC SRAM/VHDL files/DEBUGER.vhd}

vcom -93 -work work {C:/Users/leama/Aresia/AresiaSRAM/../PROC-ECE_SYNC SRAM/VHDL files/TestBench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  TestBench

do C:/Users/leama/Aresia/AresiaSRAM/simulation/modelsim/my_custom_view.do
