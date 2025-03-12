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
N 50 -460 110 -460 {lab=#net1}
N -550 -500 -410 -500 {lab=#net2}
N -560 -410 40 -410 {lab=#net1}
N 40 -410 50 -410 {lab=#net1}
N 50 -460 50 -410 {lab=#net1}
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
N -600 -380 -600 -340 {lab=VSS}
N -720 -410 -640 -410 {lab=CAP_RESET}
N -680 -500 -650 -500 {lab=PWRUP_1V8}
N -610 -480 -610 -420 {lab=xxx}
N -650 -420 -610 -420 {lab=xxx}
N -650 -430 -650 -420 {lab=xxx}
N -570 -500 -550 -500 {lab=#net2}
N -690 -440 -650 -420 {lab=xxx}
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
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} -640 -350 0 0 {name=x2[0:49]}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -640 -410 0 0 {name=x9[0:1]}
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} -650 -440 0 0 {name=x1[0:49]}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -650 -500 0 0 {name=x3[0:1]}
C {devices/lab_pin.sym} -690 -1330 2 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -720 -1330 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -690 -440 0 0 {name=p12 sig_type=std_logic lab=VSS}
