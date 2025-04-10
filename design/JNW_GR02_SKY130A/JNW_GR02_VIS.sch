v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -810 -410 -800 -410 {lab=PWR_UP}
N -800 -410 -760 -410 {lab=PWR_UP}
N -790 -470 -790 -430 {lab=VDD}
N -790 -430 -760 -430 {lab=VDD}
N -810 -470 -400 -470 {lab=VDD}
N -785 -300 -775 -300 {lab=VSS}
N -400 -470 -290 -470 {lab=VDD}
N -460 -410 -440 -410 {lab=#net1}
N -460 -390 -440 -390 {lab=LPI}
N -460 -370 -440 -370 {lab=LPO}
N -460 -430 -430 -430 {lab=ITEMP_O}
N -775 -300 -515 -300 {lab=VSS}
N -760 -390 -760 -300 {lab=VSS}
N -515 -300 -270 -300 {lab=VSS}
N 290 -740 630 -740 {lab=VDD}
N 50 -740 290 -740 {lab=VDD}
N 180 -340 200 -340 {lab=#net2}
N 280 -340 300 -340 {lab=#net3}
N 380 -340 400 -340 {lab=#net4}
N 480 -340 500 -340 {lab=#net5}
N 140 -300 140 -260 {lab=#net6}
N 140 -260 240 -260 {lab=#net6}
N 240 -300 240 -260 {lab=#net6}
N 240 -260 340 -260 {lab=#net6}
N 340 -300 340 -260 {lab=#net6}
N 340 -260 440 -260 {lab=#net6}
N 440 -300 440 -260 {lab=#net6}
N 440 -260 540 -260 {lab=#net6}
N 540 -300 540 -260 {lab=#net6}
N 140 -380 540 -380 {lab=#net7}
N 60 -180 100 -180 {lab=ITEMP_I}
N -210 -180 -180 -180 {lab=VSS}
N -50 -740 -10 -740 {lab=VDD}
N -10 -740 50 -740 {lab=VDD}
N 140 -260 140 -210 {lab=#net6}
N -120 -240 -120 -180 {lab=ITEMP_I}
N -180 -240 -120 -240 {lab=ITEMP_I}
N -50 -110 140 -110 {lab=VSS}
N 140 -150 140 -110 {lab=VSS}
N -180 -150 -180 -110 {lab=VSS}
N -210 -180 -210 -110 {lab=VSS}
N 140 -110 630 -110 {lab=VSS}
N 140 -180 170 -180 {lab=VSS}
N 170 -180 170 -110 {lab=VSS}
N 100 -430 100 -340 {lab=VCO}
N 100 -430 580 -430 {lab=VCO}
N 580 -430 580 -340 {lab=VCO}
N 580 -340 650 -340 {lab=VCO}
N 690 -300 690 -260 {lab=VSS}
N 730 -340 770 -340 {lab=#net8}
N -250 -110 -50 -110 {lab=VSS}
N -140 -180 60 -180 {lab=ITEMP_I}
N -10 -200 -10 -110 {lab=VSS}
N -90 -230 -90 -180 {lab=ITEMP_I}
N -90 -230 -50 -230 {lab=ITEMP_I}
N -10 -230 20 -230 {lab=VSS}
N 20 -230 20 -110 {lab=VSS}
N -10 -500 -10 -260 {lab=#net9}
N -10 -740 -10 -560 {lab=VDD}
N -40 -530 -10 -530 {lab=VDD}
N -40 -610 -40 -530 {lab=VDD}
N -40 -610 -10 -610 {lab=VDD}
N 30 -530 100 -530 {lab=#net9}
N 60 -530 60 -470 {lab=#net9}
N -10 -470 60 -470 {lab=#net9}
N 140 -500 140 -380 {lab=#net7}
N 140 -740 140 -560 {lab=VDD}
N 140 -530 170 -530 {lab=VDD}
N 170 -600 170 -530 {lab=VDD}
N 140 -600 170 -600 {lab=VDD}
N 690 -740 690 -380 {lab=VDD}
N 630 -740 690 -740 {lab=VDD}
N 850 -340 920 -340 {lab=VOUT}
N 810 -300 810 -260 {lab=VSS}
N 690 -260 810 -260 {lab=VSS}
N 690 -380 810 -380 {lab=VDD}
N 690 -260 690 -110 {lab=VSS}
N 630 -110 690 -110 {lab=VSS}
N -270 -410 -190 -410 {lab=ITEMP_I}
N -190 -410 -180 -410 {lab=ITEMP_I}
N -180 -410 -180 -210 {lab=ITEMP_I}
N -290 -740 -50 -740 {lab=VDD}
N -290 -740 -290 -470 {lab=VDD}
N -260 -110 -250 -110 {lab=VSS}
N -260 -300 -260 -110 {lab=VSS}
N -270 -300 -260 -300 {lab=VSS}
N 190 -270 190 -260 {lab=#net6}
N 290 -270 290 -260 {lab=#net6}
N 390 -270 390 -260 {lab=#net6}
N 490 -270 490 -260 {lab=#net6}
N 580 -270 580 -260 {lab=#net6}
N 540 -260 580 -260 {lab=#net6}
C {JNW_GR02_SKY130A/JNW_VIS_TI.sym} -610 -400 0 0 {name=x2}
C {devices/ipin.sym} -810 -470 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -785 -300 0 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} -810 -410 0 0 {name=p5 lab=PWR_UP
}
C {devices/opin.sym} -440 -390 0 0 {name=p6 lab=LPI
}
C {devices/opin.sym} -440 -370 0 0 {name=p7 lab=LPO
}
C {devices/opin.sym} -430 -430 0 0 {name=p8 lab=ITEMP_O
}
C {devices/ipin.sym} -270 -410 0 0 {name=p9 lab=ITEMP_I
}
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 100 -340 0 0 {name=x1 }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 200 -340 0 0 {name=x3 }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 300 -340 0 0 {name=x4 }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 400 -340 0 0 {name=x5 }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 500 -340 0 0 {name=x6 }
C {JNW_ATR_SKY130A/JNWATR_NCH_8C1F2.sym} 100 -180 0 0 {name=x8}
C {JNW_ATR_SKY130A/JNWATR_NCH_12C1F2.sym} -140 -180 0 1 {name=x9}
C {devices/lab_wire.sym} 410 -430 0 0 {name=p15 sig_type=std_logic lab=VCO}
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 190 -280 0 0 {name=x9[0:1] }
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 290 -280 0 0 {name=x1[0:1] }
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 390 -280 0 0 {name=x2[0:1] }
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 490 -280 0 0 {name=x3[0:1] }
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 580 -280 0 0 {name=x4[0:1] }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 650 -340 0 0 {name=x10 }
C {JNW_ATR_SKY130A/JNWATR_NCH_8C1F2.sym} -50 -230 0 0 {name=x11}
C {JNW_ATR_SKY130A/JNWATR_PCH_12C1F2.sym} 30 -530 0 1 {name=x12}
C {JNW_ATR_SKY130A/JNWATR_PCH_12C1F2.sym} 100 -530 0 0 {name=x13}
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 770 -340 0 0 {name=x14 }
C {devices/opin.sym} 920 -340 0 0 {name=p3 lab=VOUT
}
