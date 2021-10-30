view wave 
wave clipboard store
wave create -driver freeze -pattern repeater -initialvalue UUUUUUUU -period 100ps -sequence { 00000000 00000001 00000011 00000111 00001111 00011111 00111111 01111111 11111111  } -repeat forever -range 7 0 -starttime 0ps -endtime 900ps sim:/cd_8_3_prio/X 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 900ps sim:/cd_8_3_prio/W 
WaveCollapseAll -1
wave clipboard restore
