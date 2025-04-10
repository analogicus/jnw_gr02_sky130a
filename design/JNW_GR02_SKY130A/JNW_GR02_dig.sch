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
N 50 -460 110 -460 {lab=#net2}
N -550 -500 -410 -500 {lab=PWRUP_1V8}
N 50 -460 50 -410 {lab=#net2}
N -110 -520 30 -520 {lab=I_TEMP_OUT}
N -110 -480 -100 -480 {lab=LPO}
N -110 -460 -100 -460 {lab=LPI}
N -110 -500 -10 -500 {lab=VREF_OUT}
N -10 -500 -10 -480 {lab=VREF_OUT}
N 30 -330 400 -330 {lab=I_TEMP_OUT}
N -10 -480 -10 -370 {lab=VREF_OUT}
N -10 -370 400 -370 {lab=VREF_OUT}
N -720 -340 -560 -340 {lab=VSS}
N -680 -500 -650 -500 {lab=PWRUP_1V8}
N -650 -500 -550 -500 {lab=PWRUP_1V8}
N -10 -500 110 -500 {lab=VREF_OUT}
N 30 -520 30 -330 {lab=I_TEMP_OUT}
N 30 -480 110 -480 {lab=I_TEMP_OUT}
N 50 -390 670 -390 {lab=#net2}
N 50 -410 50 -390 {lab=#net2}
N 630 -520 860 -520 {lab=#net3}
N 960 -520 990 -520 {lab=#net2}
N 990 -520 990 -390 {lab=#net2}
N 670 -390 990 -390 {lab=#net2}
N 990 -460 1250 -460 {
lab=#net2}
C {devices/ipin.sym} -520 -590 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -720 -340 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -680 -500 0 0 {name=p3 lab=PWRUP_1V8}
C {JNW_GR02_SKY130A/JNW_VIS_ITIME.sym} 260 -480 0 0 {name=x1}
C {JNW_GR02_SKY130A/JNW_VIS_TI.sym} -260 -490 0 0 {name=x2}
C {devices/ipin.sym} 400 -330 2 0 {name=p6 lab=I_TEMP_OUT}
C {devices/ipin.sym} -100 -460 2 0 {name=p7 lab=LPI}
C {devices/ipin.sym} -100 -480 2 0 {name=p8 lab=LPO}
C {devices/ipin.sym} 400 -370 2 0 {name=p9 lab=VREF_OUT}
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
C {devices/lab_pin.sym} 530 -460 0 0 {name=p16 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1250 -540 0 0 {name=p4 sig_type=std_logic lab=VDD_1V8
}
C {devices/lab_pin.sym} 1250 -400 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1250 -320 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {devices/ipin.sym} 1550 -390 2 0 {name=p17 lab=I_TEMP_OUT8}
C {devices/ipin.sym} 1550 -410 2 0 {name=p18 lab=I_TEMP_OUT7}
C {devices/ipin.sym} 1550 -430 2 0 {name=p19 lab=I_TEMP_OUT6}
C {devices/ipin.sym} 1550 -450 2 0 {name=p20 lab=I_TEMP_OUT5}
C {devices/ipin.sym} 1550 -470 2 0 {name=p21 lab=I_TEMP_OUT4}
C {devices/ipin.sym} 1550 -490 2 0 {name=p22 lab=I_TEMP_OUT3}
C {devices/ipin.sym} 1550 -510 2 0 {name=p23 lab=I_TEMP_OUT2}
C {devices/ipin.sym} 1550 -530 2 0 {name=p24 lab=I_TEMP_OUT1
}
C {JNW_GR02_SKY130A/dig.sym} 1400 -430 0 0 {name=x5}
C {devices/simulator_commands_shown.sym} 1730 -770 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include /home/georg/aicex/ip/jnw_gr02_sky130a/design/JNW_GR02_SKY130A/dig.spice

"}
