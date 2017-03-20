view wave

add wave -label clk /tb_cpa24b/clk

add wave -divider inputs
add wave -label x     /tb_cpa24b/x
add wave -label y     /tb_cpa24b/y

add wave -divider outputs
add wave -label z     /tb_cpa24b/z

run 1ms
