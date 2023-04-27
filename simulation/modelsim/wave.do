onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench/reset
add wave -noupdate -radix hexadecimal /testbench/ck
add wave -noupdate -radix hexadecimal /testbench/counter
add wave -noupdate -radix hexadecimal /testbench/progcounter
add wave -noupdate -radix hexadecimal /testbench/instr
add wave -noupdate -radix hexadecimal /testbench/dataAddr
add wave -noupdate -radix hexadecimal /testbench/load
add wave -noupdate -radix hexadecimal /testbench/store
add wave -noupdate -radix hexadecimal /testbench/dataLength
add wave -noupdate -radix hexadecimal /testbench/inputData
add wave -noupdate -radix hexadecimal /testbench/outputData
add wave -noupdate -radix hexadecimal /testbench/outputInstr
add wave -noupdate -radix hexadecimal /testbench/reg0D
add wave -noupdate -radix hexadecimal /testbench/reg0E
add wave -noupdate -radix hexadecimal /testbench/reg0F
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PChold
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCclock
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCreset
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCoffset
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCoffsetsign
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCjal
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCjalr
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCbranch
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCfunct3
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCauipc
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCalueq
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCaluinf
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCalusup
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCaluinfU
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCalusupU
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PClock
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCLoad
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PCnext
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/PC
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/SigBranchCond
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/SigMux1Sel
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/SigMux2Sel
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/SigMux1Out
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/SigMux2Out
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/SigOffSum
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/SigOffSub
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/SigPC
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/SigPCnext
add wave -noupdate -expand -group PC -radix hexadecimal /testbench/iTop/instPROC/instPC/MuxPC
add wave -noupdate -group DQ -radix hexadecimal /testbench/iTop/Memory/q_b
add wave -noupdate -group DQ /testbench/iTop/Memory/dq
add wave -noupdate -group DQ /testbench/iTop/instPROC/instALIGNMENT/IDimm12S
add wave -noupdate -group DQ /testbench/iTop/instPROC/instALIGNMENT/IDimm12I
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM0/data_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM1/data_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM2/data_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM3/data_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM0/data_a
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM1/data_a
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM2/data_a
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM3/data_a
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM0/address_a
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM1/address_a
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM2/address_a
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM3/address_a
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM0/address_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM1/address_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM2/address_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM3/address_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM0/q_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM1/q_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM2/q_b
add wave -noupdate -group RAM_0_1_2_3 -radix hexadecimal /testbench/iTop/Memory/instRAM3/q_b
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PChold
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCclock
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCreset
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCoffset
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCoffsetsign
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCjal
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCjalr
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCbranch
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCfunct3
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCauipc
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCalueq
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCaluinf
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCalusup
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCaluinfU
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCalusupU
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PClock
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCLoad
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PCnext
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/PC
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/SigBranchCond
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/SigMux1Sel
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/SigMux2Sel
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/SigMux1Out
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/SigMux2Out
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/SigOffSum
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/SigOffSub
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/SigPC
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/SigPCnext
add wave -noupdate -group RAM_0_1_2_3 -expand -group PC /testbench/iTop/instPROC/instPC/MuxPC
add wave -noupdate -group Alignment -radix binary /testbench/iTop/instPROC/instALIGNMENT/IDimm12S
add wave -noupdate -group Alignment -radix hexadecimal /testbench/iTop/instPROC/instALIGNMENT/IDimm12I
add wave -noupdate -group Alignment -radix hexadecimal -childformat {{/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(31) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(30) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(29) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(28) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(27) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(26) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(25) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(24) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(23) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(22) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(21) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(20) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(19) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(18) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(17) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(16) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(15) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(14) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(13) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(12) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(11) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(10) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(9) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(8) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(7) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(6) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(5) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(4) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(3) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(2) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(1) -radix hexadecimal} {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(0) -radix hexadecimal}} -subitemconfig {/testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(31) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(30) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(29) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(28) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(27) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(26) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(25) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(24) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(23) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(22) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(21) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(20) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(19) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(18) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(17) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(16) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(15) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(14) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(13) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(12) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(11) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(10) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(9) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(8) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(7) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(6) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(5) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(4) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(3) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(2) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(1) {-height 15 -radix hexadecimal} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in(0) {-height 15 -radix hexadecimal}} /testbench/iTop/instPROC/instALIGNMENT/RF_Align_in
add wave -noupdate -group Alignment -radix hexadecimal /testbench/iTop/instPROC/instALIGNMENT/Mask
add wave -noupdate -group Alignment -radix hexadecimal /testbench/iTop/instPROC/instALIGNMENT/RF_Align
add wave -noupdate -radix hexadecimal /testbench/iTop/instPROC/instRF/RFin
add wave -noupdate -group Register -radix hexadecimal /testbench/reg00
add wave -noupdate -group Register -radix hexadecimal /testbench/reg01
add wave -noupdate -group Register -radix hexadecimal /testbench/reg02
add wave -noupdate -group Register -radix hexadecimal /testbench/reg03
add wave -noupdate -group Register -radix hexadecimal /testbench/reg04
add wave -noupdate -group Register -radix hexadecimal /testbench/reg05
add wave -noupdate -group Register -radix hexadecimal /testbench/reg06
add wave -noupdate -group Register -radix hexadecimal /testbench/reg07
add wave -noupdate -group Register -radix hexadecimal /testbench/reg08
add wave -noupdate -group Register -radix hexadecimal /testbench/reg09
add wave -noupdate -group Register -radix hexadecimal /testbench/reg0A
add wave -noupdate -group Register -radix hexadecimal /testbench/reg0B
add wave -noupdate -group Register -radix hexadecimal /testbench/reg0C
add wave -noupdate -group Register -radix hexadecimal /testbench/reg10
add wave -noupdate -group Register -radix hexadecimal /testbench/reg11
add wave -noupdate -group Register -radix hexadecimal /testbench/reg12
add wave -noupdate -group Register -radix hexadecimal /testbench/reg13
add wave -noupdate -group Register -radix hexadecimal /testbench/reg14
add wave -noupdate -group Register -radix hexadecimal /testbench/reg15
add wave -noupdate -group Register -radix hexadecimal /testbench/reg16
add wave -noupdate -group Register -radix hexadecimal /testbench/reg17
add wave -noupdate -group Register -radix hexadecimal /testbench/reg18
add wave -noupdate -group Register -radix hexadecimal /testbench/reg19
add wave -noupdate -group Register -radix hexadecimal /testbench/reg1A
add wave -noupdate -group Register -radix hexadecimal /testbench/reg1B
add wave -noupdate -group Register -radix hexadecimal /testbench/reg1C
add wave -noupdate -group Register -radix hexadecimal /testbench/reg1D
add wave -noupdate -group Register -radix hexadecimal /testbench/reg1E
add wave -noupdate -group Register -radix hexadecimal /testbench/reg1F
add wave -noupdate -radix hexadecimal /testbench/SigTOPdisplay1
add wave -noupdate -radix hexadecimal /testbench/SigTOPdisplay2
add wave -noupdate -radix hexadecimal /testbench/iTop/instDISP/DISPinput
add wave -noupdate -radix hexadecimal /testbench/iTop/instDISP/DISPaddr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {139270190 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {49222 ns} {55914632 ps}
