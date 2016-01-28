source /home/ece327/lib/lib-msim.tcl

proc reload {} {
  vcom -93 +acc -work work-msim fir.vhd fir_tb.vhd
}

if { "fir_tb.sim" ne "" } {
  source fir_tb.sim
}


