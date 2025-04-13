v {xschem version=3.4.5 file_version=1.2
}
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
N 410 -520 530 -520 {lab=#net1}
N 50 -460 110 -460 {lab=VREF_OUT}
N -550 -500 -410 -500 {lab=PWRUP_1V8}
N 50 -460 50 -410 {lab=VREF_OUT}
N -110 -520 30 -520 {lab=#net2}
N -110 -480 -100 -480 {lab=#net3}
N -110 -460 -100 -460 {lab=#net3}
N -110 -500 -10 -500 {lab=#net4}
N -720 -340 -560 -340 {lab=VSS}
N -680 -500 -650 -500 {lab=PWRUP_1V8}
N -650 -500 -550 -500 {lab=PWRUP_1V8}
N -10 -500 110 -500 {lab=#net4}
N 30 -480 110 -480 {lab=#net2}
N 50 -390 670 -390 {lab=VREF_OUT}
N 50 -410 50 -390 {lab=VREF_OUT}
N 630 -520 860 -520 {lab=#net5}
N 960 -520 990 -520 {lab=VREF_OUT}
N 990 -520 990 -390 {lab=VREF_OUT}
N 670 -390 990 -390 {lab=VREF_OUT}
N 990 -480 1150 -480 {
lab=VREF_OUT}
N -100 -480 -70 -480 {
lab=#net3}
N -70 -480 -70 -460 {
lab=#net3}
N -100 -460 -70 -460 {
lab=#net3}
N 30 -520 30 -480 {
lab=#net2}
C {devices/ipin.sym} -520 -590 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -720 -340 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -680 -500 0 0 {name=p3 lab=PWRUP_1V8}
C {JNW_GR02_SKY130A/JNW_VIS_ITIME.sym} 260 -480 0 0 {name=x1}
C {JNW_GR02_SKY130A/JNW_VIS_TI.sym} -260 -490 0 0 {name=x2}
C {JNW_TR_SKY130A/JNWTR_DFTSPCX1_CV.sym} 530 -460 0 0 {name=x3 }
C {devices/lab_pin.sym} 590 -550 0 0 {name=p10 sig_type=std_logic lab=VDD_1V8
}
C {devices/lab_pin.sym} 590 -430 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {JNW_TR_SKY130A/JNWTR_DFTSPCX1_CV.sym} 860 -460 0 0 {name=x4 }
C {devices/lab_pin.sym} 920 -550 0 0 {name=p13 sig_type=std_logic lab=VDD_1V8
}
C {devices/lab_pin.sym} 920 -430 0 0 {name=p14 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 860 -460 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/ipin.sym} -680 -540 2 1 {name=p12 lab=CLK
}
C {devices/lab_pin.sym} 530 -460 0 0 {name=p16 sig_type=std_logic lab=CLK}
C {devices/ipin.sym} 1150 -480 2 0 {name=p4 lab=VREF_OUT}
