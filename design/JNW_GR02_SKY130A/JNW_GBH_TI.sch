v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -270 40 -250 40 {lab=VSS}
N -230 70 -230 110 {lab=#net1}
N -280 140 -270 140 {lab=VSS}
N -280 140 -280 190 {lab=VSS}
N -280 190 -230 190 {lab=VSS}
N -230 170 -230 190 {lab=VSS}
N -470 190 -280 190 {lab=VSS}
N -560 140 -560 190 {lab=VSS}
N -520 170 -520 190 {lab=VSS}
N -560 190 -470 190 {lab=VSS}
N -510 50 -390 50 {lab=#net2}
N -520 50 -510 50 {lab=#net2}
N -520 50 -520 110 {lab=#net2}
N -350 -90 -350 -10 {lab=VREF}
N -350 -10 -230 -10 {lab=VREF}
N -230 -10 -230 10 {lab=VREF}
N -390 -90 -390 50 {lab=#net2}
N -1030 190 -970 190 {lab=VSS}
N -1020 190 -560 190 {lab=VSS}
N -1000 160 -970 160 {lab=VSS}
N -1000 160 -1000 190 {lab=VSS}
N -970 -330 -920 -330 {lab=CM_TEMP}
N -920 -360 -920 -330 {lab=CM_TEMP}
N -930 -360 -920 -360 {lab=CM_TEMP}
N -970 -410 -970 -390 {lab=VDD}
N -1050 -410 -970 -410 {lab=VDD}
N -1000 -360 -970 -360 {lab=VDD}
N -1000 -410 -1000 -360 {lab=VDD}
N -970 -410 -40 -410 {lab=VDD}
N -40 -410 -40 -380 {lab=VDD}
N -70 -350 -40 -350 {lab=VDD}
N -70 -410 -70 -350 {lab=VDD}
N -270 -350 -240 -350 {lab=VDD}
N -270 -410 -270 -350 {lab=VDD}
N -240 -410 -240 -380 {lab=VDD}
N -550 -350 -520 -350 {lab=VDD}
N -550 -410 -550 -350 {lab=VDD}
N -520 -410 -520 -380 {lab=VDD}
N -970 -330 -970 130 {lab=CM_TEMP}
N -920 -360 -900 -360 {lab=CM_TEMP}
N -520 -320 -520 50 {lab=#net2}
N -40 -320 -40 -270 {lab=I_TEMP}
N -40 -270 -0 -270 {lab=I_TEMP}
N -0 -270 -0 -260 {lab=I_TEMP}
N -1050 90 -830 90 {lab=PWR_UP}
N -790 -410 -790 60 {lab=VDD}
N -790 120 -790 160 {lab=V_TEMP}
N -930 160 -790 160 {lab=V_TEMP}
N -240 -350 -230 -350 {lab=VDD}
N -230 -320 -230 -270 {lab=VREF}
N -230 -270 -200 -270 {lab=VREF}
N -230 -270 -230 -10 {lab=VREF}
C {devices/ipin.sym} -1050 -410 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -1030 190 0 0 {name=p2 lab=VSS
}
C {devices/opin.sym} -200 -270 0 0 {name=p3 lab=VREF}
C {devices/opin.sym} 0 -265 1 0 {name=p4 lab=I_TEMP}
C {devices/ipin.sym} -1050 90 2 1 {name=p5 lab=PWR_UP
}
C {sky130_fd_pr/pnp_05v5.sym} -250 140 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -540 140 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_tests/ota1tb.sym} -370 -240 3 0 {name=x1}
C {devices/lab_pin.sym} -270 40 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -430 -150 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -310 -150 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} -930 160 0 1 {name=x2 }
C {devices/lab_pin.sym} -370 -260 1 0 {name=p9 sig_type=std_logic lab=V_TEMP}
C {devices/lab_pin.sym} -790 160 2 0 {name=p10 sig_type=std_logic lab=V_TEMP}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} -930 -360 0 1 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} -480 -350 0 1 {name=x4 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} -190 -350 0 1 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} 0 -350 0 1 {name=x6 }
C {devices/lab_pin.sym} -900 -360 2 0 {name=p11 sig_type=std_logic lab=CM_TEMP}
C {devices/lab_pin.sym} -480 -350 2 0 {name=p12 sig_type=std_logic lab=CM_TEMP}
C {devices/lab_pin.sym} -190 -350 2 0 {name=p13 sig_type=std_logic lab=CM_TEMP}
C {devices/lab_pin.sym} 0 -350 2 0 {name=p14 sig_type=std_logic lab=CM_TEMP}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C5F0.sym} -830 90 0 0 {name=x7 }
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -230 0 1 0 {name=x8 }
