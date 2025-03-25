v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 10 150 10 {lab=VIN}
N 90 -120 90 10 {lab=VIN}
N 130 -120 150 -120 {lab=VIN}
N 190 10 230 10 {lab=VSS}
N 230 10 230 60 {lab=VSS}
N 190 -90 190 -20 {lab=VOUT}
N 190 -120 230 -120 {lab=VDD}
N 130 -230 190 -230 {lab=VDD}
N 190 40 190 60 {lab=VSS}
N 190 -60 230 -60 {lab=VOUT}
N 0 -230 130 -230 {lab=VDD}
N 90 10 130 10 {lab=VIN}
N 90 -120 130 -120 {lab=VIN}
N 230 60 230 160 {lab=VSS}
N 190 60 190 80 {lab=VSS}
N 190 80 190 160 {lab=VSS}
N 190 -230 230 -230 {lab=VDD}
N 190 -230 190 -190 {lab=VDD}
N 140 160 230 160 {lab=VSS}
N 190 -190 190 -150 {lab=VDD}
N 230 -230 230 -120 {lab=VDD}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C1F2.sym} 150 10 0 0 {name=x1 }
C {JNW_ATR_SKY130A/JNWATR_PCH_12C1F2.sym} 150 -120 0 0 {name=x2 }
C {devices/ipin.sym} 0 -230 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 90 -60 0 0 {name=p2 lab=VIN}
C {devices/ipin.sym} 140 160 0 0 {name=p3 lab=VSS}
C {devices/opin.sym} 230 -60 0 0 {name=p4 lab=VOUT}
