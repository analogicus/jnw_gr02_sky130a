v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 110 90 140 {lab=#net1}
N 90 140 200 140 {lab=#net1}
N 200 220 200 240 {lab=#net2}
N 160 180 180 180 {lab=VSS}
N 160 180 160 270 {lab=VSS}
N 200 80 200 140 {lab=#net1}
N 160 40 180 40 {lab=VSS}
N 160 40 160 180 {lab=VSS}
N 120 50 160 50 {lab=VSS}
N 200 -80 200 -0 {lab=VREF}
N -60 -110 160 -110 {lab=#net3}
N -100 -80 -100 160 {lab=#net4}
N -100 160 -100 240 {lab=#net4}
N 200 300 200 320 {lab=VSS}
N -140 320 200 320 {lab=VSS}
N -140 270 -140 320 {lab=VSS}
N -100 300 -100 320 {lab=VSS}
N 160 270 160 320 {lab=VSS}
N 350 -80 350 -40 {lab=I_TEMP}
N 200 -40 240 -40 {lab=VREF}
N 280 -110 310 -110 {lab=#net3}
N 280 -160 280 -110 {lab=#net3}
N 160 -160 280 -160 {lab=#net3}
N 160 -160 160 -110 {lab=#net3}
N 350 -110 380 -110 {lab=VDD}
N 380 -180 380 -110 {lab=VDD}
N 350 -180 380 -180 {lab=VDD}
N 350 -180 350 -140 {lab=VDD}
N 220 -180 350 -180 {lab=VDD}
N 220 -180 220 -110 {lab=VDD}
N 200 -110 220 -110 {lab=VDD}
N 200 -180 200 -140 {lab=VDD}
N 200 -180 220 -180 {lab=VDD}
N -100 -180 -100 -140 {lab=VDD}
N -100 -180 200 -180 {lab=VDD}
N -120 -110 -100 -110 {lab=VDD}
N -120 -180 -120 -110 {lab=VDD}
N -120 -180 -100 -180 {lab=VDD}
N -440 -180 -440 -130 {lab=VDD}
N -440 -180 -120 -180 {lab=VDD}
N -460 -180 -460 -100 {lab=VDD}
N -460 -180 -440 -180 {lab=VDD}
N -440 -130 -440 -90 {lab=VDD}
N -460 -100 -460 -60 {lab=VDD}
N -460 -60 -440 -60 {lab=VDD}
N -400 -60 -40 -60 {lab=#net3}
N -40 -110 -40 -60 {lab=#net3}
N -440 -30 -400 -30 {lab=#net3}
N -400 -60 -400 -30 {lab=#net3}
N -100 110 50 110 {lab=#net4}
N -300 100 -300 180 {lab=LPI}
N -400 140 -300 140 {lab=LPI}
N -300 320 -140 320 {lab=VSS}
N -300 250 -300 320 {lab=VSS}
N -300 70 -280 70 {lab=VSS}
N -280 70 -260 70 {lab=VSS}
N -260 70 -260 320 {lab=VSS}
N -440 170 -440 320 {lab=VSS}
N -440 320 -300 320 {lab=VSS}
N -480 140 -440 140 {lab=VSS}
N -480 140 -480 320 {lab=VSS}
N -480 320 -440 320 {lab=VSS}
N -440 -30 -440 110 {lab=#net3}
N -300 -180 -300 40 {lab=VDD}
N -480 -180 -460 -180 {lab=VDD}
N -520 70 -340 70 {lab=PWR_UP}
N 20 -180 20 50 {lab=VDD}
N 70 -80 100 -80 {lab=LPO}
N -300 140 -220 140 {lab=LPI}
N -500 320 -480 320 {lab=VSS}
C {JNW_GR02_SKY130A/OPAMP_AK.sym} 70 -40 3 0 {name=x1}
C {devices/opin.sym} 100 -80 0 0 {name=p1 lab=LPO}
C {sky130_fd_pr/pnp_05v5.sym} -120 270 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 180 270 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {JNW_TR_SKY130A/JNWTR_RPPO4.sym} 200 140 1 0 {name=x2[0:1]}
C {devices/opin.sym} 350 -40 1 0 {name=p2 lab=I_TEMP}
C {devices/opin.sym} 240 -40 0 0 {name=p3 lab=VREF
}
C {JNW_TR_SKY130A/JNWTR_CAPX1.sym} -300 240 0 0 {name=x8[0:2] }
C {devices/ipin.sym} -480 -180 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -500 320 0 0 {name=p5 lab=VSS}
C {devices/ipin.sym} -520 70 0 0 {name=p6 lab=PWR_UP}
C {devices/opin.sym} -220 140 0 0 {name=p7 lab=LPI}
C {JNW_ATR_SKY130A/JNWATR_PCH_8C5F0.sym} -400 -60 0 1 {name=x8 }
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} -400 140 0 1 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_NCH_2C1F2.sym} -340 70 0 0 {name=x6 }
C {JNW_ATR_SKY130A/JNWATR_PCH_8C5F0.sym} -60 -110 0 1 {name=x7 }
C {JNW_ATR_SKY130A/JNWATR_PCH_8C5F0.sym} 160 -110 0 0 {name=x2 }
C {JNW_ATR_SKY130A/JNWATR_PCH_8C5F0.sym} 310 -110 0 0 {name=x3 }
C {JNW_TR_SKY130A/JNWTR_RPPO16.sym} 200 0 1 0 {name=x4[0]}
