onerror {quit -f}
vlib work
vlog -work work projQuartus.vo
vlog -work work projQuartus.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.projQuartus_vlg_vec_tst
vcd file -direction projQuartus.msim.vcd
vcd add -internal projQuartus_vlg_vec_tst/*
vcd add -internal projQuartus_vlg_vec_tst/i1/*
add wave /*
run -all
