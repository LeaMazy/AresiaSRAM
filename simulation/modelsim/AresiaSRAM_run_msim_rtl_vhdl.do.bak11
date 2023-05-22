transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/ECE/Aresia/TestProcGit/AresiaSRAM/db {C:/ECE/Aresia/TestProcGit/AresiaSRAM/db/clock1m_altpll.v}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/simul_var_pkg.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/SegmentDecoder.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/RAM8x4.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/RAM8_3.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/RAM8_2.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/RAM8_1.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/RAM8_0.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/ProgramCounter.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/Processor.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/InstructionDecoder.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/Displays.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/Counter.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/clock1M.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/Alu.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/Alignment.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/Bootloader.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/UART.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/UARTComm.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/Top.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/RegisterFile.vhd}
vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/DEBUGER.vhd}

vcom -93 -work work {C:/ECE/Aresia/TestProcGit/AresiaSRAM/TestBench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  TestBench

do C:/ECE/Aresia/TestProcGit/AresiaSRAM/simulation/modelsim/my_custom_view.do
