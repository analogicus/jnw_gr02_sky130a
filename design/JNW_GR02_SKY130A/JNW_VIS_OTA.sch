v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -110 -160 -70 {lab=V2}
N 30 -110 30 -70 {lab=V1}
N -160 -10 -160 20 {lab=VSS}
N -160 20 30 20 {lab=VSS}
N 30 -10 30 20 {lab=VSS}
N -160 -40 -120 -40 {lab=VSS}
N -120 -40 -120 20 {lab=VSS}
N -10 -40 30 -40 {lab=VSS}
N -10 -40 -10 20 {lab=VSS}
N -160 -190 -160 -170 {lab=VOP}
N -160 -190 30 -190 {lab=VOP}
N 30 -190 30 -170 {lab=VOP}
N -270 -40 -200 -40 {lab=V2}
N -310 -10 -310 20 {lab=VSS}
N -310 20 -160 20 {lab=VSS}
N -230 -80 -230 -40 {lab=V2}
N -230 -80 -160 -80 {lab=V2}
N 70 -40 170 -40 {lab=V1}
N 30 -80 120 -80 {lab=V1}
N 120 -80 120 -40 {lab=V1}
N 30 20 210 20 {lab=VSS}
N 210 -10 210 20 {lab=VSS}
N 210 -40 240 -40 {lab=VSS}
N 240 -40 240 20 {lab=VSS}
N 210 20 240 20 {lab=VSS}
N -70 -340 -70 -190 {lab=VOP}
N -340 20 -310 20 {lab=VSS}
N -270 -320 170 -320 {lab=#net1}
N -310 -290 -310 -70 {lab=#net1}
N -310 -250 -220 -250 {lab=#net1}
N -220 -320 -220 -250 {lab=#net1}
N -360 -320 -310 -320 {lab=VDD}
N -360 -390 -360 -320 {lab=VDD}
N -360 -390 -310 -390 {lab=VDD}
N 210 -390 260 -390 {lab=VDD}
N -330 -40 -310 -40 {lab=VSS}
N -330 -40 -330 20 {lab=VSS}
N -160 -140 -130 -140 {lab=VOP}
N -130 -190 -130 -140 {lab=VOP}
N 0 -140 30 -140 {lab=VOP}
N 0 -190 0 -140 {lab=VOP}
N 70 -140 90 -140 {lab=VIN}
N -220 -140 -200 -140 {lab=VIP}
N -370 20 -340 20 {lab=VSS}
N -550 20 -370 20 {lab=VSS}
N -440 -470 -440 -450 {lab=#net2}
N -440 -470 -230 -470 {lab=#net2}
N 210 -290 210 -70 {lab=VOUT
}
N 210 -320 260 -320 {lab=VDD}
N 260 -390 260 -320 {lab=VDD}
N 210 -180 260 -180 {lab=VOUT}
N -310 -930 -310 -590 {lab=VDD}
N -310 -940 -310 -930 {lab=VDD}
N -560 -940 -310 -940 {lab=VDD}
N 210 -930 210 -590 {lab=VDD}
N 210 -940 210 -930 {lab=VDD}
N -310 -940 210 -940 {lab=VDD}
N -440 -190 -440 -140 {lab=VSS}
N -440 -290 -440 -270 {lab=#net4}
N -440 -390 -440 -370 {lab=#net2}
N -480 -330 -460 -330 {lab=VSS}
N -480 -330 -480 -230 {lab=VSS}
N -480 -230 -460 -230 {lab=VSS}
N -480 -230 -460 -230 {lab=VSS}
N -480 -230 -480 -170 {lab=VSS}
N -480 -170 -440 -170 {lab=VSS}
N -70 -500 -70 -490 {lab=VOP}
N -440 -450 -440 -390 {lab=#net2}
N -310 -400 -310 -350 {lab=VDD}
N 210 -400 210 -350 {lab=VDD}
N -70 -490 -70 -340 {lab=VOP}
N -310 -580 -310 -460 {lab=VDD}
N -310 -590 -310 -580 {lab=VDD}
N 210 -590 210 -460 {lab=VDD}
N -310 -460 -310 -400 {lab=VDD}
N 210 -460 210 -400 {lab=VDD}
N -70 -810 -70 -800 {lab=VOP}
N -230 -930 -230 -870 {lab=VDD}
N -230 -940 -230 -930 {lab=VDD}
N -70 -940 -70 -870 {lab=VDD}
N -70 -840 -40 -840 {lab=VDD}
N -40 -940 -40 -840 {lab=VDD}
N -260 -840 -230 -840 {lab=VDD}
N -260 -940 -260 -840 {lab=VDD}
N -190 -840 -110 -840 {lab=#net2}
N -480 -170 -480 -100 {lab=VSS}
N -440 -60 -440 20 {lab=VSS}
N -440 -140 -440 -60 {lab=VSS}
N -480 -100 -480 20 {lab=VSS}
N -230 -810 -230 -790 {lab=#net2}
N -230 -790 -230 -720 {lab=#net2}
N -70 -800 -70 -720 {lab=VOP}
N -70 -660 -70 -500 {lab=VOP}
N -150 -840 -150 -770 {lab=#net2}
N -230 -660 -230 -470 {lab=#net2}
N -230 -720 -230 -660 {lab=#net2}
N -70 -720 -70 -660 {lab=VOP}
N -230 -770 -150 -770 {lab=#net2}
C {devices/ipin.sym} -560 -940 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -220 -140 0 0 {name=p4 lab=VIP
}
C {devices/ipin.sym} 90 -140 0 1 {name=p5 lab=VIN}
C {devices/ipin.sym} -550 20 0 0 {name=p3 lab=VSS}
C {devices/opin.sym} 260 -180 0 0 {name=p2 lab=VOUT}
C {devices/lab_wire.sym} -20 -190 0 0 {name=p7 sig_type=std_logic lab=VOP}
C {devices/lab_wire.sym} 70 -80 0 0 {name=p8 sig_type=std_logic lab=V1
}
C {devices/lab_wire.sym} -190 -80 0 0 {name=p9 sig_type=std_logic lab=V2
}
C {JNW_ATR_SKY130A/JNWATR_PCH_12C1F2.sym} -200 -140 0 0 {name=x1[0:3] }
C {JNW_ATR_SKY130A/JNWATR_PCH_12C1F2.sym} 70 -140 0 1 {name=x2[0:3] }
C {JNW_ATR_SKY130A/JNWATR_NCH_12C5F0.sym} 170 -40 0 0 {name=x10}
C {JNW_ATR_SKY130A/JNWATR_NCH_12C5F0.sym} -200 -40 0 0 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_NCH_12C5F0.sym} -270 -40 0 1 {name=x2}
C {JNW_ATR_SKY130A/JNWATR_NCH_12C5F0.sym} 70 -40 0 1 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_PCH_12C5F0.sym} 170 -320 0 0 {name=x9 }
C {JNW_ATR_SKY130A/JNWATR_PCH_12C5F0.sym} -270 -320 0 1 {name=x1 }
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -440 -370 1 0 {name=x6}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -440 -270 1 0 {name=x8[0:1]}
C {JNW_ATR_SKY130A/JNWATR_PCH_12C5F0.sym} -190 -840 0 1 {name=x13 }
C {JNW_ATR_SKY130A/JNWATR_PCH_12C5F0.sym} -110 -840 0 0 {name=x14 }
