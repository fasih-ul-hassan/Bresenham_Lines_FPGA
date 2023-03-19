transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines_FPGA/DE1_SOC {D:/DSD Quartus/Bresenham_Lines_FPGA/DE1_SOC/DE1_SOC.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules/vga_adapter {D:/DSD Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules/vga_adapter/vga_pll.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules/vga_adapter {D:/DSD Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules/vga_adapter/vga_controller.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules/vga_adapter {D:/DSD Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules/vga_adapter/vga_address_translator.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules/vga_adapter {D:/DSD Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules/vga_adapter/vga_adapter.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules {D:/DSD Quartus/Bresenham_Lines_FPGA/DE1_SOC/All_Modules/xy_coordinates.v}

vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines_FPGA/DE1_SOC {D:/DSD Quartus/Bresenham_Lines_FPGA/DE1_SOC/Test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Test

add wave *
view structure
view signals
run -all
