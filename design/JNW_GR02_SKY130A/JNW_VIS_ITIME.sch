v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 60 40 60 {lab=I_TEMP}
N -130 80 -130 110 {lab=I_TEMP}
N 40 80 40 110 {lab=I_TEMP}
N -130 180 -130 220 {lab=VSS}
N -130 220 40 220 {lab=VSS}
N 40 170 40 220 {lab=VSS}
N 0 140 40 140 {lab=VSS}
N 0 140 0 220 {lab=VSS}
N -230 220 -130 220 {lab=VSS}
N -240 60 -130 60 {lab=I_TEMP}
N 0 -160 340 -160 {lab=VDD}
N 340 -160 340 -50 {lab=VDD}
N 340 80 340 220 {lab=VSS}
N 40 220 340 220 {lab=VSS}
N -240 -160 -0 -160 {lab=VDD}
N -130 60 -130 80 {lab=I_TEMP}
N 40 60 40 80 {lab=I_TEMP}
N 80 140 100 140 {lab=RST}
N 485 10 530 10 {lab=VOUT}
N 160 -40 230 -40 {lab=VREF}
N 40 60 230 60 {lab=I_TEMP}
C {devices/ipin.sym} -240 -160 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -230 220 0 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} 160 -40 0 0 {name=p3 lab=VREF}
C {devices/ipin.sym} -240 60 0 0 {name=p4 lab=I_TEMP}
C {JNW_GR02_SKY130A/JNW_VIS_OTA.sym} 290 150 0 0 {name=x7}
C {JNW_ATR_SKY130A/JNWATR_NCH_8C1F2.sym} 80 140 0 1 {name=x4 }
C {JNW_TR_SKY130A/JNWTR_CAPX1.sym} -130 170 0 0 {name=x1[0:59]}
C {devices/ipin.sym} 100 140 0 1 {name=p5 lab=RST}
C {devices/opin.sym} 530 10 0 0 {name=p6 lab=VOUT}
