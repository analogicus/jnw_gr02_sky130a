v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -520 -590 -450 -590 {lab=VDD_1V8}
N -450 -590 -450 -520 {lab=VDD_1V8}
N -450 -520 -410 -520 {lab=VDD_1V8}
N -450 -590 80 -590 {lab=VDD_1V8}
N 80 -590 80 -520 {lab=VDD_1V8}
N 80 -520 110 -520 {lab=VDD_1V8}
N -560 -340 -430 -340 {lab=VSS}
N -430 -480 -430 -340 {lab=VSS}
N -430 -480 -410 -480 {lab=VSS}
N -430 -340 70 -340 {lab=VSS}
N 70 -440 70 -340 {lab=VSS}
N 70 -440 110 -440 {lab=VSS}
N 410 -520 530 -520 {lab=TRIGGER}
N 50 -460 110 -460 {lab=CAP_RESET}
N -550 -500 -410 -500 {lab=PWRUP_1V8}
N 40 -410 50 -410 {lab=CAP_RESET}
N 50 -460 50 -410 {lab=CAP_RESET}
N -110 -520 30 -520 {lab=VREF_OUT}
N -110 -480 -100 -480 {lab=LPO}
N -110 -460 -100 -460 {lab=LPI}
N -110 -500 -10 -500 {lab=I_TEMP_OUT}
N -10 -500 -10 -480 {lab=I_TEMP_OUT}
N 30 -520 30 -500 {lab=VREF_OUT}
N 30 -500 110 -500 {lab=VREF_OUT}
N -10 -480 110 -480 {lab=I_TEMP_OUT}
N 30 -330 400 -330 {lab=VREF_OUT}
N 30 -500 30 -330 {lab=VREF_OUT}
N -10 -480 -10 -370 {lab=I_TEMP_OUT}
N -10 -370 400 -370 {lab=I_TEMP_OUT}
N -720 -340 -560 -340 {lab=VSS}
N -680 -500 -650 -500 {lab=PWRUP_1V8}
N -570 -500 -550 -500 {lab=PWRUP_1V8}
N -650 -500 -560 -500 {lab=PWRUP_1V8}
N -720 -410 40 -410 {lab=CAP_RESET}
N -960 -1010 -700 -1010 {lab=COUNT_0}
N -960 -990 -700 -990 {lab=COUNT_1}
N -960 -970 -700 -970 {lab=#net1}
N -960 -950 -700 -950 {lab=#net2}
N -960 -930 -700 -930 {lab=#net3}
N -960 -910 -700 -910 {lab=#net4}
N -960 -890 -700 -890 {lab=#net5}
N -960 -870 -700 -870 {lab=#net6}
N -830 -700 -780 -700 {lab=#net7}
N -780 -830 -780 -700 {lab=#net7}
N -780 -830 -700 -830 {lab=#net7}
N -1310 -870 -1260 -870 {lab=VSS}
N -1280 -870 -1280 -630 {lab=VSS}
N -1280 -630 -740 -630 {lab=VSS}
N -740 -810 -740 -630 {lab=VSS}
N -740 -810 -700 -810 {lab=VSS}
N -880 -660 -880 -630 {lab=VSS}
N -880 -1110 -880 -740 {lab=VDD_1V8}
N -1260 -1110 -880 -1110 {lab=VDD_1V8}
N -1260 -1110 -1260 -1030 {lab=VDD_1V8}
N -1290 -1110 -1260 -1110 {lab=VDD_1V8}
N -880 -1110 -710 -1110 {lab=VDD_1V8}
N -710 -1110 -700 -1110 {lab=VDD_1V8}
N -700 -1110 -700 -1040 {lab=VDD_1V8}
N -1430 -750 -1280 -750 {lab=VSS}
N -1390 -790 -700 -790 {lab=COUNT_NRST}
N -1430 -1060 -1430 -820 {lab=VDD_1V8}
N -1430 -1060 -1260 -1060 {lab=VDD_1V8}
N -1370 -960 -1370 -790 {lab=COUNT_NRST}
N -1370 -960 -1260 -960 {lab=COUNT_NRST}
C {devices/ipin.sym} -520 -590 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -720 -340 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -680 -500 0 0 {name=p3 lab=PWRUP_1V8}
C {JNW_GR02_SKY130A/JNW_VIS_ITIME.sym} 260 -480 0 0 {name=x1}
C {JNW_GR02_SKY130A/JNW_VIS_TI.sym} -260 -490 0 0 {name=x2}
C {devices/ipin.sym} 530 -520 2 0 {name=p5 lab=TRIGGER
}
C {devices/ipin.sym} -720 -410 0 0 {name=p4 lab=CAP_RESET}
C {devices/ipin.sym} 400 -370 2 0 {name=p6 lab=I_TEMP_OUT}
C {devices/ipin.sym} -100 -460 2 0 {name=p7 lab=LPI}
C {devices/ipin.sym} -100 -480 2 0 {name=p8 lab=LPO}
C {devices/ipin.sym} 400 -330 2 0 {name=p9 lab=VREF_OUT}
C {JNW_GR02_SKY130A/JNW_GR02_8bMEMORY.sym} -550 -850 0 0 {name=x3}
C {JNW_GR02_SKY130A/JNW_GR02_COUNTER.sym} -1110 -910 0 0 {name=x4}
C {JNW_TR_SKY130A/JNWTR_ANX1_CV.sym} -920 -690 0 0 {name=x5 }
C {devices/lab_pin.sym} -920 -710 0 0 {name=p10 sig_type=std_logic lab=TRIGGER}
C {devices/lab_pin.sym} -920 -690 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {devices/ipin.sym} -400 -1010 2 0 {name=p12 lab=D0
}
C {devices/ipin.sym} -400 -990 2 0 {name=p13 lab=D1

}
C {devices/ipin.sym} -400 -970 2 0 {name=p14 lab=D2
}
C {devices/ipin.sym} -400 -950 2 0 {name=p15 lab=D3
}
C {devices/ipin.sym} -400 -930 2 0 {name=p16 lab=D4
}
C {devices/ipin.sym} -400 -910 2 0 {name=p17 lab=D5
}
C {devices/ipin.sym} -400 -890 2 0 {name=p18 lab=D6
}
C {devices/ipin.sym} -400 -870 2 0 {name=p19 lab=D7}
C {devices/lab_pin.sym} -1290 -1110 0 0 {name=p20 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_pin.sym} -1310 -870 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1260 -1000 0 0 {name=p22 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -960 -840 2 0 {name=p24 sig_type=std_logic lab=CAP_RESET}
C {devices/lab_pin.sym} -1470 -790 0 0 {name=p25 sig_type=std_logic lab=PWRUP_1V8}
C {JNW_TR_SKY130A/JNWTR_IVX2_CV.sym} -1470 -790 0 0 {name=x6 }
C {devices/ipin.sym} -830 -1010 1 0 {name=p23 lab=COUNT_0}
C {devices/ipin.sym} -780 -990 1 0 {name=p26 lab=COUNT_1}
C {devices/ipin.sym} -1360 -960 0 0 {name=p27 lab=COUNT_NRST}
