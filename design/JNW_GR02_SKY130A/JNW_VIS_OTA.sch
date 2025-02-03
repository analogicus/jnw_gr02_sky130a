v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -110 -160 -70 {lab=#net1}
N 30 -110 30 -70 {lab=#net2}
N -160 -10 -160 20 {lab=VSS}
N -160 20 30 20 {lab=VSS}
N 30 -10 30 20 {lab=VSS}
N -160 -40 -120 -40 {lab=VSS}
N -120 -40 -120 20 {lab=VSS}
N -10 -40 30 -40 {lab=VSS}
N -10 -40 -10 20 {lab=VSS}
N -160 -190 -160 -170 {lab=#net3}
N -160 -190 30 -190 {lab=#net3}
N 30 -190 30 -170 {lab=#net3}
N -270 -40 -200 -40 {lab=#net1}
N -310 -10 -310 20 {lab=VSS}
N -310 20 -160 20 {lab=VSS}
N -230 -80 -230 -40 {lab=#net1}
N -230 -80 -160 -80 {lab=#net1}
N 70 -40 170 -40 {lab=#net2}
N 30 -80 120 -80 {lab=#net2}
N 120 -80 120 -40 {lab=#net2}
N 30 20 210 20 {lab=VSS}
N 210 -10 210 20 {lab=VSS}
N 210 -40 240 -40 {lab=VSS}
N 240 -40 240 20 {lab=VSS}
N 210 20 240 20 {lab=VSS}
N -70 -340 -70 -190 {lab=#net3}
N -190 -530 -110 -530 {lab=#net4}
N -150 -530 -150 -470 {lab=#net4}
N -230 -470 -150 -470 {lab=#net4}
N -230 -590 -230 -560 {lab=VDD}
N -230 -590 -70 -590 {lab=VDD}
N -70 -590 -70 -560 {lab=VDD}
N -270 -590 -230 -590 {lab=VDD}
N -340 20 -310 20 {lab=VSS}
N -70 -500 -70 -340 {lab=#net3}
N -270 -320 170 -320 {lab=#net5}
N -310 -290 -310 -70 {lab=#net5}
N -310 -250 -220 -250 {lab=#net5}
N -220 -320 -220 -250 {lab=#net5}
N -310 -590 -310 -350 {lab=VDD}
N -310 -590 -270 -590 {lab=VDD}
N -450 -590 -310 -590 {lab=VDD}
N -70 -590 210 -590 {lab=VDD}
N 210 -590 210 -350 {lab=VDD}
N -360 -320 -310 -320 {lab=VDD}
N -360 -390 -360 -320 {lab=VDD}
N -360 -390 -310 -390 {lab=VDD}
N 210 -390 260 -390 {lab=VDD}
N -330 -40 -310 -40 {lab=VSS}
N -330 -40 -330 20 {lab=VSS}
N -160 -140 -130 -140 {lab=#net3}
N -130 -190 -130 -140 {lab=#net3}
N 0 -140 30 -140 {lab=#net3}
N 0 -190 0 -140 {lab=#net3}
N 70 -140 90 -140 {lab=VIN}
N -220 -140 -200 -140 {lab=VIP}
N -370 20 -340 20 {lab=VSS}
N -70 -530 -40 -530 {lab=VDD}
N -40 -590 -40 -530 {lab=VDD}
N -260 -530 -230 -530 {lab=VDD}
N -260 -590 -260 -530 {lab=VDD}
N -230 -500 -230 -470 {lab=#net4}
N -550 20 -370 20 {lab=VSS}
N -440 -370 -440 20 {lab=VSS}
N -480 -410 -460 -410 {lab=VSS}
N -480 -410 -480 20 {lab=VSS}
N -440 -470 -440 -450 {lab=#net4}
N -440 -470 -230 -470 {lab=#net4}
N 210 -290 210 -70 {lab=VOUT
}
N 210 -320 260 -320 {lab=VDD}
N 260 -390 260 -320 {lab=VDD}
N 210 -180 260 -180 {lab=VOUT}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} -200 -140 0 0 {name=x1 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} 70 -140 0 1 {name=x2 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -200 -40 0 0 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 70 -40 0 1 {name=x4 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -270 -40 0 1 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 170 -40 0 0 {name=x6 }
C {devices/ipin.sym} -450 -590 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -220 -140 0 0 {name=p4 lab=VIP
}
C {devices/ipin.sym} 90 -140 0 1 {name=p5 lab=VIN}
C {devices/ipin.sym} -550 20 0 0 {name=p3 lab=VSS}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -440 -450 1 0 {name=x10[0:1]}
C {devices/opin.sym} 260 -180 0 0 {name=p2 lab=VOUT}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -190 -530 0 1 {name=x10 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -270 -320 0 1 {name=x7 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -110 -530 0 0 {name=x8 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 170 -320 0 0 {name=x9 }
