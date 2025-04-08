v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -810 -410 -800 -410 {lab=PWR_UP}
N -800 -410 -760 -410 {lab=PWR_UP}
N -790 -470 -790 -430 {lab=VDD}
N -790 -430 -760 -430 {lab=VDD}
N -810 -470 -400 -470 {lab=VDD}
N -290 -470 -290 -450 {lab=VDD}
N -290 -450 -270 -450 {lab=VDD}
N -785 -300 -775 -300 {lab=VSS}
N -400 -470 -290 -470 {lab=VDD}
N -460 -410 -440 -410 {lab=VREF}
N -460 -390 -440 -390 {lab=LPI}
N -460 -370 -440 -370 {lab=LPO}
N -440 -410 -380 -410 {lab=VREF}
N -380 -410 -300 -430 {lab=VREF}
N -300 -430 -270 -430 {lab=VREF}
N -460 -430 -430 -430 {lab=ITEMP_O}
N -775 -300 -515 -300 {lab=VSS}
N -290 -470 5 -470 {lab=VDD}
N 5 -470 110 -470 {lab=VDD}
N -760 -390 -760 -300 {lab=VSS}
N -270 -370 -270 -300 {lab=VSS}
N 30 -450 50 -450 {lab=VOUT}
N -515 -300 -270 -300 {lab=VSS}
C {JNW_GR02_SKY130A/JNW_VIS_ITIME.sym} -120 -410 0 0 {name=x1}
C {JNW_GR02_SKY130A/JNW_VIS_TI.sym} -610 -400 0 0 {name=x2}
C {devices/ipin.sym} -810 -470 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -785 -300 0 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} -810 -410 0 0 {name=p5 lab=PWR_UP
}
C {devices/opin.sym} 50 -450 0 0 {name=p4 lab=VOUT
}
C {devices/opin.sym} -440 -390 0 0 {name=p6 lab=LPI
}
C {devices/opin.sym} -440 -370 0 0 {name=p7 lab=LPO
}
C {devices/opin.sym} -430 -430 0 0 {name=p8 lab=ITEMP_O
}
C {devices/lab_wire.sym} -400 -410 0 0 {name=p10 sig_type=std_logic lab=VREF}
C {devices/ipin.sym} -270 -410 0 0 {name=p9 lab=ITEMP_I
}
