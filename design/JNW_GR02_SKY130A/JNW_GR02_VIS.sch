v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -760 -390 -760 -310 {lab=VSS}
N -760 -310 -380 -310 {lab=VSS}
N -270 -370 -270 -310 {lab=VSS}
N -810 -410 -800 -410 {lab=PWR_UP}
N -800 -410 -760 -410 {lab=PWR_UP}
N -790 -470 -790 -430 {lab=VDD}
N -790 -430 -760 -430 {lab=VDD}
N -810 -470 -400 -470 {lab=VDD}
N -290 -470 -290 -450 {lab=VDD}
N -290 -450 -270 -450 {lab=VDD}
N -540 90 -530 90 {lab=VSS}
N -290 -390 -290 -330 {lab=VRST}
N -290 -390 -270 -390 {lab=VRST}
N -380 -310 -270 -310 {lab=VSS}
N -400 -470 -290 -470 {lab=VDD}
N -460 -410 -440 -410 {lab=VREF}
N -460 -390 -440 -390 {lab=LPI}
N -460 -370 -440 -370 {lab=LPO}
N -440 -410 -380 -410 {lab=VREF}
N -380 -410 -300 -430 {lab=VREF}
N -300 -430 -270 -430 {lab=VREF}
N -460 -430 -430 -430 {lab=ITEMP_O}
N -1260 -470 -810 -470 {lab=VDD}
N -270 -310 -270 90 {lab=VSS}
N -530 90 -270 90 {lab=VSS}
N 50 -320 220 -320 {lab=#net1}
N 220 -320 305 -320 {lab=#net1}
N -290 -470 5 -470 {lab=VDD}
N 110 -150 110 90 {lab=VSS}
N -270 90 5 90 {lab=VSS}
N 110 90 385 90 {lab=VSS}
N 10 -300 10 85 {lab=VSS}
N 10 85 10 90 {lab=VSS}
N 345 -300 345 90 {lab=VSS}
N 30 -450 320 -450 {lab=VOUT}
N -455 -330 -455 -220 {lab=VRST}
N -455 -330 -290 -330 {lab=VRST}
N -285 -240 -220 -240 {lab=VDD}
N -220 -470 -220 -240 {lab=VDD}
N -285 -200 -270 -200 {lab=VSS}
N 385 -320 385 90 {lab=VSS}
N 220 -170 265 -170 {lab=VOUT}
N -285 -220 -260 -220 {lab=#net2}
N -55 -220 -35 -220 {lab=#net2}
N -260 -220 -240 -220 {lab=#net2}
N -240 -220 -240 -185 {lab=#net2}
N -240 -115 -240 90 {lab=VSS}
N 265 -340 265 -170 {lab=VOUT}
N 220 -320 220 -270 {lab=#net1}
N -45 -320 -30 -320 {lab=#net2}
N -45 -320 -45 -220 {lab=#net2}
N 265 -450 265 -340 {lab=VOUT}
N 110 -470 110 -280 {lab=VDD}
N 5 -470 110 -470 {lab=VDD}
N 5 90 110 90 {lab=VSS}
N -60 -220 -55 -220 {lab=#net2}
N -240 -220 -60 -220 {lab=#net2}
C {JNW_GR02_SKY130A/JNW_VIS_ITIME.sym} -120 -410 0 0 {name=x1}
C {JNW_GR02_SKY130A/JNW_VIS_TI.sym} -610 -400 0 0 {name=x2}
C {devices/ipin.sym} -1260 -470 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -540 90 0 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} -810 -410 0 0 {name=p5 lab=PWR_UP
}
C {devices/opin.sym} 320 -450 0 0 {name=p4 lab=VOUT
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
C {devices/lab_wire.sym} -455 -255 0 0 {name=p11 sig_type=std_logic lab=VRST}
C {JNW_GR02_SKY130A/JNW_VIS_OTA.sym} 160 -80 0 1 {name=x3}
C {JNW_TR_SKY130A/JNWTR_RPPO16.sym} -30 -320 0 0 {name=x5 }
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} 305 -320 0 0 {name=x4 }
C {JNW_GR02_SKY130A/JNW_VIS_INV.sym} -375 -220 0 1 {name=x6}
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} -240 -125 0 0 {name=x7[0:7]}
