transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/Number_Cruncher.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/7_Segment_0_19.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/Clock_Divider.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/DE1_SOC.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/Mux_n.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/Add_Sub_n.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/Register.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/Program_Counter.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/Decoder_Register_Enable.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/RAM.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/All_Modules/DFF.v}

vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/4bit_Microprocessor_FPGA/DE1_SOC {D:/DSD Quartus/4bit_Microprocessor_FPGA/DE1_SOC/Test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Test

add wave *
view structure
view signals
run -all
