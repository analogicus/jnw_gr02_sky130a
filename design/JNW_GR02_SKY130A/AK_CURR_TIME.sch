v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 -0 310 0 {lab=VOUT}
N -80 -50 -0 -50 {lab=VREF}
N -310 50 -0 50 {lab=I_TEMP}
N -260 50 -260 100 {lab=I_TEMP}
N -110 50 -110 100 {lab=I_TEMP}
N -310 200 110 200 {lab=VSS}
N 110 70 110 200 {lab=VSS}
N -110 160 -110 200 {lab=VSS}
N -260 170 -260 200 {lab=VSS}
N -70 130 -50 130 {lab=RST}
N 110 -80 110 -60 {lab=VDD}
C {JNW_GR02_SKY130A/JNW_VIS_OTA.sym} 60 140 0 0 {name=x1}
C {devices/ipin.sym} 110 -80 1 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -310 200 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -80 -50 0 0 {name=p3 lab=VREF}
C {devices/ipin.sym} -310 50 0 0 {name=p4 lab=I_TEMP}
C {devices/opin.sym} 310 0 0 0 {name=p5 lab=VOUT}
C {JNW_TR_SKY130A/JNWTR_CAPX1.sym} -260 160 0 0 {name=x2 }
C {JNW_ATR_SKY130A/JNWATR_NCH_8C1F2.sym} -70 130 0 1 {name=x3 }
C {devices/ipin.sym} -50 130 0 1 {name=p6 lab=RST}
