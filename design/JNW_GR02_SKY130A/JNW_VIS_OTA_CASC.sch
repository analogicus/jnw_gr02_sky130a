v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -70 -100 -30 {lab=V2}
N 100 -70 100 -30 {lab=V1}
N -100 30 -100 60 {lab=#net1}
N -90 60 100 60 {lab=#net1}
N 100 30 100 60 {lab=#net1}
N -100 0 -60 0 {lab=#net1}
N -60 0 -60 60 {lab=#net1}
N 60 0 100 0 {lab=#net1}
N 60 0 60 60 {lab=#net1}
N -100 -150 -100 -130 {lab=VOP}
N -90 -150 100 -150 {lab=VOP}
N 100 -150 100 -130 {lab=VOP}
N -210 0 -140 0 {lab=V2}
N -170 -40 -170 0 {lab=V2}
N -170 -40 -100 -40 {lab=V2}
N 140 0 240 0 {lab=V1}
N 100 -40 190 -40 {lab=V1}
N 190 -40 190 0 {lab=V1}
N -100 -100 -70 -100 {lab=VOP}
N -70 -150 -70 -100 {lab=VOP}
N 70 -100 100 -100 {lab=VOP}
N 70 -150 70 -100 {lab=VOP}
N 140 -100 160 -100 {lab=VIN}
N -160 -100 -140 -100 {lab=VIP}
N -100 -150 -90 -150 {lab=VOP}
N -100 60 -90 60 {lab=#net1}
C {devices/ipin.sym} -160 -100 0 0 {name=p4 lab=VIP
}
C {devices/ipin.sym} 160 -100 0 1 {name=p5 lab=VIN}
C {devices/lab_wire.sym} 50 -150 0 0 {name=p7 sig_type=std_logic lab=VOP}
C {devices/lab_wire.sym} 140 -40 0 0 {name=p8 sig_type=std_logic lab=V1
}
C {devices/lab_wire.sym} -130 -40 0 0 {name=p9 sig_type=std_logic lab=V2
}
C {JNW_ATR_SKY130A/JNWATR_PCH_12C1F2.sym} -140 -100 0 0 {name=x1 }
C {JNW_ATR_SKY130A/JNWATR_PCH_12C1F2.sym} 140 -100 0 1 {name=x2 }
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} -140 0 0 0 {name=x7 }
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} 140 0 0 1 {name=x9 }
