onerror {exit -code 1}
vlib work
vlog -work work div_frec.vo
vlog -work work div_frec.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.div_frec_vlg_vec_tst -voptargs="+acc"
vcd file -direction div_frec.msim.vcd
vcd add -internal div_frec_vlg_vec_tst/*
vcd add -internal div_frec_vlg_vec_tst/i1/*
run -all
quit -f
