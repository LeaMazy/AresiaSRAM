transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/db {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/db/clock1m_altpll.v}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/simul_var_pkg.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/SegmentDecoder.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/RAM8x4.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/RAM8_3.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/RAM8_2.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/RAM8_1.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/RAM8_0.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/ProgramCounter.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/Processor.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/InstructionDecoder.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/Displays.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/Counter.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/clock1M.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/Alu.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/Alignment.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/Bootloader.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/UART.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/UARTComm.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/Top.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/RegisterFile.vhd}
vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/DEBUGER.vhd}

vcom -93 -work work {C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/TestBench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  TestBench

do C:/Users/leama/Aresia/Git_AresiaSRAM/AresiaSRAM/simulation/modelsim/my_custom_view.do
