view wave

add wave -label clk /tb_cpa24b/clk

add wave -divider input
add wave -label x     /tb_cpa24b/x
add wave -label y     /tb_cpa24b/y
#add wave -label c     /tb_cpa24b/c
add wave -label cin   /tb_cpa24b/cin

add wave -divider output
add wave -label z     /tb_cpa24b/z
add wave -label cout  /tb_cpa24b/adder/cout

run 1ms
