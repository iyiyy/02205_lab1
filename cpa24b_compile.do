## Compiles the VHDL files and launches a simulation

vcom -quiet clock.vhd
vcom -quiet cpa24b.vhd
vcom -quiet tb_cpa24b.vhd

vsim -do cpa24b_sim.do lab1_lib.tb_cpa24b
