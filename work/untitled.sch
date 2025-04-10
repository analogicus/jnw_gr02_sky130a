v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -110 -80 -60 {lab=#net1}
N -80 -140 -20 -140 {lab=AVSS}
N -50 -170 -50 -140 {lab=AVSS}
N -80 -170 -20 -170 {lab=AVSS}
N -80 -110 -20 -110 {lab=#net1}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C1F2.sym} -120 -30 0 0 {name=x1 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} -120 -140 0 0 {name=x2 }
C {devices/iopin.sym} -210 -140 2 0 {name=p4 lab=A}
C {devices/iopin.sym} -80 -170 3 0 {name=p1 lab=AVSS}
C {devices/iopin.sym} -80 60 1 0 {name=p3 lab=VSS
}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} 20 -140 0 1 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_NCH_2C1F2.sym} -120 30 0 0 {name=x4 }
C {devices/lab_pin.sym} -80 -30 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -80 30 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -210 -100 2 0 {name=p6 lab=B
}
C {devices/lab_pin.sym} -120 -30 0 0 {name=p7 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -120 -140 0 0 {name=p8 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 20 -140 0 1 {name=p9 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -120 30 0 0 {name=p10 sig_type=std_logic lab=B}
