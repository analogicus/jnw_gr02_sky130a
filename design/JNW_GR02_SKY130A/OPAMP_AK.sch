v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -80 -20 -80 {lab=#net1}
N -180 -140 20 -140 {lab=VDD}
N 20 -140 20 -110 {lab=VDD}
N -120 -140 -120 -110 {lab=VDD}
N -140 -80 -120 -80 {lab=VDD}
N -140 -140 -140 -80 {lab=VDD}
N 20 -80 40 -80 {lab=VDD}
N 40 -140 40 -80 {lab=VDD}
N 20 -140 40 -140 {lab=VDD}
N -120 -50 -120 -20 {lab=#net1}
N -260 -20 -120 -20 {lab=#net1}
N -120 -20 -50 -20 {lab=#net1}
N -50 -80 -50 -20 {lab=#net1}
N -330 60 -330 100 {lab=#net2}
N -70 160 110 160 {lab=#net3}
N -70 190 -40 190 {lab=#net3}
N -40 160 -40 190 {lab=#net3}
N 80 190 110 190 {lab=#net3}
N 80 160 80 190 {lab=#net3}
N 20 -50 20 160 {lab=#net3}
N 150 190 180 190 {lab=VD1}
N -140 190 -110 190 {lab=VD1P}
N -70 220 -70 280 {lab=#net4}
N 110 220 110 280 {lab=#net5}
N -150 310 -110 310 {lab=#net4}
N -130 260 -70 260 {lab=#net4}
N -130 260 -130 310 {lab=#net4}
N 150 310 190 310 {lab=#net5}
N 110 260 170 260 {lab=#net5}
N 170 260 170 310 {lab=#net5}
N -350 20 -350 140 {lab=VSS}
N -190 100 -190 280 {lab=#net6}
N -190 -140 -190 40 {lab=VDD}
N -190 -140 -180 -140 {lab=VDD}
N -240 -140 -190 -140 {lab=VDD}
N 230 100 230 280 {lab=VOUT}
N -150 70 190 70 {lab=#net6}
N -190 100 -150 100 {lab=#net6}
N -150 70 -150 100 {lab=#net6}
N 230 340 230 380 {lab=VSS}
N 110 340 110 380 {lab=VSS}
N 80 310 110 310 {lab=VSS}
N 80 310 80 380 {lab=VSS}
N -70 340 -70 380 {lab=VSS}
N -70 310 -40 310 {lab=VSS}
N -40 310 -40 380 {lab=VSS}
N -190 340 -190 380 {lab=VSS}
N -230 310 -190 310 {lab=VSS}
N -230 310 -230 380 {lab=VSS}
N 230 310 260 310 {lab=VSS}
N 260 310 260 380 {lab=VSS}
N 230 380 260 380 {lab=VSS}
N -330 -20 -260 -20 {lab=#net1}
N -330 180 -330 380 {lab=VSS}
N -350 140 -350 380 {lab=VSS}
N 40 -140 230 -140 {lab=VDD}
N 230 -140 230 40 {lab=VDD}
N 230 70 260 70 {lab=VDD}
N 260 40 260 70 {lab=VDD}
N 230 40 260 40 {lab=VDD}
N -370 380 230 380 {lab=VSS}
N 230 200 240 200 {lab=VOUT}
C {devices/ipin.sym} -240 -140 0 0 {name=p1 lab=VDD}
C {JNW_ATR_SKY130A/JNWATR_PCH_8C1F2.sym} -80 -80 0 1 {name=x1 }
C {JNW_ATR_SKY130A/JNWATR_PCH_8C1F2.sym} -20 -80 0 0 {name=x2 }
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -330 -20 1 0 {name=x3[0:1]}
C {JNW_TR_SKY130A/JNWTR_RPPO4.sym} -330 100 1 0 {name=x4 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} -110 190 0 0 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} 150 190 0 1 {name=x6 }
C {devices/ipin.sym} -140 190 1 0 {name=p2 lab=VD1P}
C {devices/ipin.sym} 180 190 3 1 {name=p3 lab=VD1}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -110 310 0 0 {name=x7 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 150 310 0 1 {name=x8 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 190 310 0 0 {name=x9 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -150 310 0 1 {name=x10 }
C {JNW_ATR_SKY130A/JNWATR_PCH_8C1F2.sym} -150 70 0 1 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_PCH_8C1F2.sym} 190 70 0 0 {name=x11 }
C {devices/ipin.sym} -370 380 0 0 {name=p4 lab=VSS}
C {devices/opin.sym} 240 200 0 0 {name=p5 lab=VOUT}
