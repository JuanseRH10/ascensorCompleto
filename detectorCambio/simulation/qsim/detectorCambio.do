onerror {exit -code 1}
vlib work
vlog -work work detectorCambio.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.detectorCambio_vlg_vec_tst -voptargs="+acc"
vcd file -direction detectorCambio.msim.vcd
vcd add -internal detectorCambio_vlg_vec_tst/*
vcd add -internal detectorCambio_vlg_vec_tst/i1/*
run -all
quit -f
