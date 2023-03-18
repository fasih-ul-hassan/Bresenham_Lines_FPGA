transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines/DE1_SOC/All_Modules/vga_adapter {D:/DSD Quartus/Bresenham_Lines/DE1_SOC/All_Modules/vga_adapter/vga_pll.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines/DE1_SOC/All_Modules/vga_adapter {D:/DSD Quartus/Bresenham_Lines/DE1_SOC/All_Modules/vga_adapter/vga_controller.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines/DE1_SOC/All_Modules/vga_adapter {D:/DSD Quartus/Bresenham_Lines/DE1_SOC/All_Modules/vga_adapter/vga_address_translator.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines/DE1_SOC/All_Modules/vga_adapter {D:/DSD Quartus/Bresenham_Lines/DE1_SOC/All_Modules/vga_adapter/vga_adapter.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines/DE1_SOC/All_Modules {D:/DSD Quartus/Bresenham_Lines/DE1_SOC/All_Modules/DE1_SOC.v}
vlog -vlog01compat -work work +incdir+D:/DSD\ Quartus/Bresenham_Lines/DE1_SOC/All_Modules {D:/DSD Quartus/Bresenham_Lines/DE1_SOC/All_Modules/xy_coordinates.v}

