v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Visnar Temperature to Current} -920 -600 0 0 1 1 {}
T {cpdk/ngspice/ideal_circuits.spi for ideal opamp} -910 -520 0 0 0.4 0.4 {}
N -480 -350 -420 -350 {lab=#net1}
N -520 -430 -520 -380 {lab=VDD}
N -520 -430 -380 -430 {lab=VDD}
N -170 -430 -170 -380 {lab=VDD}
N -890 -430 -890 -380 {lab=VDD}
N -690 -430 -520 -430 {lab=VDD}
N -890 -280 -890 -170 {lab=#net1}
N -650 -310 -450 -310 {lab=#net1}
N -450 -350 -450 -310 {lab=#net1}
N -890 -380 -890 -340 {lab=VDD}
N -940 190 -890 190 {lab=VSS}
N -890 130 -890 190 {lab=VSS}
N -940 -310 -890 -310 {lab=VDD}
N -940 -430 -940 -310 {lab=VDD}
N -940 -430 -890 -430 {lab=VDD}
N -940 100 -890 100 {lab=VSS}
N -550 -350 -520 -350 {lab=VDD}
N -550 -430 -550 -350 {lab=VDD}
N -170 -350 -130 -350 {lab=VDD}
N -130 -430 -130 -350 {lab=VDD}
N -170 -430 -130 -430 {lab=VDD}
N -520 -320 -520 -150 {lab=VIN}
N -520 90 -520 110 {lab=VIN}
N -690 190 -520 190 {lab=VSS}
N -520 170 -520 190 {lab=VSS}
N -580 140 -560 140 {lab=VSS}
N -580 140 -580 190 {lab=VSS}
N -520 190 -350 190 {lab=VSS}
N -170 170 -170 190 {lab=VSS}
N -230 140 -210 140 {lab=VSS}
N -230 140 -230 190 {lab=VSS}
N -170 90 -170 110 {lab=VD2}
N -240 -350 -210 -350 {lab=#net1}
N -200 -430 -170 -430 {lab=VDD}
N -890 -170 -890 70 {lab=#net1}
N -520 -150 -520 90 {lab=VIN}
N -380 -430 -200 -430 {lab=VDD}
N -420 -350 -240 -350 {lab=#net1}
N -350 190 -170 190 {lab=VSS}
N -230 50 -190 50 {lab=VSS}
N -230 50 -230 140 {lab=VSS}
N -890 190 -690 190 {lab=VSS}
N -890 -430 -690 -430 {lab=VDD}
N -850 -310 -650 -310 {lab=#net1}
N -800 100 -800 110 {lab=LPI}
N -850 100 -800 100 {lab=LPI}
N -800 180 -800 190 {lab=VSS}
N -800 100 -690 100 {lab=LPI}
N -690 -270 -690 100 {lab=LPI}
N -690 -280 -690 -270 {lab=LPI}
N -350 -280 -350 -275 {lab=LPO}
N -690 -285 -690 -280 {lab=LPI}
N -350 -285 -350 -280 {lab=LPO}
N -410 -430 -410 -130 {lab=VDD}
N -280 -130 -255 -130 {lab=VSS}
N -255 -130 -255 190 {lab=VSS}
N -170 -320 -170 -280 {lab=VREF}
N -170 -280 -170 -275 {lab=VREF}
N -230 -225 -190 -225 {lab=VSS}
N -170 -300 -140 -300 {lab=VREF}
N -255 -405 -255 -350 {lab=#net1}
N -255 -405 -40 -405 {lab=#net1}
N -40 -405 -40 -350 {lab=#net1}
N -130 -430 -0 -430 {lab=VDD}
N -0 -430 -0 -380 {lab=VDD}
N 0 -350 35 -350 {lab=VDD}
N 35 -430 35 -350 {lab=VDD}
N 0 -430 35 -430 {lab=VDD}
N -0 -320 -0 -265 {lab=I_TEMP}
N -800 -20 -800 100 {lab=LPI}
N -800 -430 -800 -80 {lab=VDD}
N -940 -50 -840 -50 {lab=PWR_UP}
N -800 -50 -760 -50 {lab=VSS}
N -760 -50 -760 190 {lab=VSS}
N -890 -220 -830 -220 {lab=#net1}
N -830 -310 -830 -220 {lab=#net1}
N -300 -20 -300 -10 {lab=VIN}
N -170 -275 -170 -265 {lab=VREF}
N -230 -225 -230 50 {lab=VSS}
N -170 -70 -170 10 {lab=VIP}
N -170 -185 -170 -70 {lab=VIP}
N -980 -50 -940 -50 {lab=PWR_UP}
N -990 190 -940 190 {lab=VSS}
N -940 100 -940 190 {lab=VSS}
N -400 0 -170 -0 {lab=VIP}
N -400 -20 -400 0 {lab=VIP}
N -520 -10 -300 -10 {lab=VIN}
N -430 -285 -350 -285 {lab=LPO}
N -430 -285 -430 -280 {lab=LPO}
N -485 -285 -485 -280 {lab=LPI}
N -690 -285 -485 -285 {lab=LPI}
C {devices/ipin.sym} -940 -430 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -990 190 0 0 {name=p2 lab=VSS
}
C {sky130_fd_pr/pnp_05v5.sym} -540 140 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -190 140 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {JNW_GR02_SKY130A/JNW_VIS_OTA.sym} -210 -80 3 0 {name=x7}
C {devices/opin.sym} -140 -300 0 0 {name=p3 lab=VREF}
C {devices/opin.sym} 0 -265 1 0 {name=p4 lab=I_TEMP}
C {JNW_ATR_SKY130A/JNWATR_NCH_12C1F2.sym} -840 -50 0 0 {name=x11 }
C {devices/ipin.sym} -980 -50 0 0 {name=p5 lab=PWR_UP
}
C {JNW_TR_SKY130A/JNWTR_CAPX1.sym} -800 170 0 0 {name=x1[0:2]}
C {devices/lab_wire.sym} -170 -60 0 0 {name=p6 sig_type=std_logic lab=VIP}
C {devices/lab_wire.sym} -520 -60 0 0 {name=p7 sig_type=std_logic lab=VIN}
C {JNW_TR_SKY130A/JNWTR_RPPO8.sym} -170 -265 1 0 {name=x5[0:1]}
C {JNW_TR_SKY130A/JNWTR_RPPO4.sym} -170 10 1 0 {name=x8[0:6]}
C {JNW_ATR_SKY130A/JNWATR_PCH_8C1F2.sym} -850 -310 0 1 {name=x1 }
C {JNW_ATR_SKY130A/JNWATR_PCH_8C1F2.sym} -480 -350 0 1 {name=x2 }
C {JNW_ATR_SKY130A/JNWATR_PCH_8C1F2.sym} -210 -350 0 0 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_PCH_2C1F2.sym} -40 -350 0 0 {name=x4 }
C {JNW_ATR_SKY130A/JNWATR_NCH_8C5F0.sym} -850 100 0 1 {name=x6 }
C {devices/opin.sym} -485 -280 1 0 {name=p8 lab=LPI}
C {devices/opin.sym} -430 -280 1 0 {name=p9 lab=LPO}
C {devices/lab_wire.sym} -170 100 0 0 {name=p10 sig_type=std_logic lab=VD2
}
