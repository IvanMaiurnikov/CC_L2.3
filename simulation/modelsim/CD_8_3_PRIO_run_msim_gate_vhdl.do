transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {CD_8_3_PRIO_8_1200mv_85c_slow.vho}

