onerror {quit -f}
vlib work
vlog -work work simple-architecture.vo
vlog -work work simple-architecture.vt
vsim -novopt -c -t 1ps -L cyclone_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Controller_vlg_vec_tst
vcd file -direction simple-architecture.msim.vcd
vcd add -internal Controller_vlg_vec_tst/*
vcd add -internal Controller_vlg_vec_tst/i1/*
add wave /*
run -all