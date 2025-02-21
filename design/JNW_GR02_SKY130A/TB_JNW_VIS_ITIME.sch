v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -230 -20 -150 -20 {lab=VREF}
N -530 20 -530 100 {lab=VSS}
N -530 100 -150 100 {lab=VSS}
N -40 40 -40 100 {lab=VSS}
N -580 0 -570 0 {lab=PWR_UP}
N -570 0 -530 0 {lab=PWR_UP}
N -570 100 -530 100 {lab=VSS}
N -560 -60 -560 -20 {lab=VDD}
N -560 -20 -530 -20 {lab=VDD}
N -580 -60 -170 -60 {lab=VDD}
N -60 -60 -60 -40 {lab=VDD}
N -60 -40 -40 -40 {lab=VDD}
N -580 100 -570 100 {lab=VSS}
N -70 80 -60 80 {lab=RST}
N -60 20 -60 80 {lab=RST}
N -60 20 -40 20 {lab=RST}
N 260 -40 290 -40 {lab=VOUT}
N -150 100 -40 100 {lab=VSS}
N -170 -60 -60 -60 {lab=VDD}
N -150 -20 -40 -20 {lab=VREF}
N -230 0 -210 -0 {lab=LPI}
N -230 20 -210 20 {lab=LPO}
N -230 40 -210 40 {lab=ITEMP_O}
N -60 0 -40 0 {lab=ITEMP_I}
C {JNW_GR02_SKY130A/JNW_VIS_ITIME.sym} 110 0 0 0 {name=x1}
C {JNW_GR02_SKY130A/JNW_VIS_TI.sym} -380 10 0 0 {name=x2}
C {devices/ipin.sym} -580 -60 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -580 100 0 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} -580 0 0 0 {name=p5 lab=PWR_UP
}
C {devices/ipin.sym} -70 80 0 0 {name=p3 lab=RST
}
C {devices/opin.sym} 290 -40 0 0 {name=p4 lab=VOUT
}
C {devices/opin.sym} -210 0 0 0 {name=p6 lab=LPI
}
C {devices/opin.sym} -210 20 0 0 {name=p7 lab=LPO
}
C {devices/opin.sym} -210 40 0 0 {name=p8 lab=ITEMP_O
}
C {devices/ipin.sym} -60 0 0 0 {name=p9 lab=ITEMP_I
}
C {devices/lab_wire.sym} -140 -20 0 0 {name=p10 sig_type=std_logic lab=VREF}
