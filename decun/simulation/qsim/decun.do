onerror {exit -code 1}
vlib work
vlog -work work decun.vo
vlog -work work decun.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decun_vlg_vec_tst -voptargs="+acc"
vcd file -direction decun.msim.vcd
vcd add -internal decun_vlg_vec_tst/*
vcd add -internal decun_vlg_vec_tst/i1/*
run -all
quit -f
