v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -160 340 -160 {lab=VDD}
N 340 -160 340 -50 {lab=VDD}
N 340 80 340 220 {lab=VSS}
N -240 -160 -0 -160 {lab=VDD}
N 340 220 340 330 {lab=VSS}
N 170 -40 230 -40 {lab=VREF}
N 490 10 540 10 {lab=VOUT}
N 485 10 490 10 {lab=VOUT}
N -110 240 -90 240 {lab=#net1}
N -10 240 10 240 {lab=#net2}
N 90 240 110 240 {lab=#net3}
N 190 240 210 240 {lab=#net4}
N -150 280 -150 320 {lab=#net5}
N -150 320 -50 320 {lab=#net5}
N -50 280 -50 320 {lab=#net5}
N -50 320 50 320 {lab=#net5}
N 50 280 50 320 {lab=#net5}
N 50 320 150 320 {lab=#net5}
N 150 280 150 320 {lab=#net5}
N 150 320 250 320 {lab=#net5}
N 250 280 250 320 {lab=#net5}
N -150 200 250 200 {lab=#net6}
N -230 400 -190 400 {lab=I_TEMP}
N -500 400 -470 400 {lab=VSS}
N -340 -160 -300 -160 {lab=VDD}
N -300 -160 -240 -160 {lab=VDD}
N -150 320 -150 370 {lab=#net5}
N -470 60 -470 370 {lab=I_TEMP}
N -410 340 -410 400 {lab=I_TEMP}
N -470 340 -410 340 {lab=I_TEMP}
N -340 470 -150 470 {lab=VSS}
N -150 430 -150 470 {lab=VSS}
N -470 430 -470 470 {lab=VSS}
N -500 400 -500 470 {lab=VSS}
N 340 330 340 470 {lab=VSS}
N -150 470 340 470 {lab=VSS}
N -150 400 -120 400 {lab=VSS}
N -120 400 -120 470 {lab=VSS}
N -190 150 -190 240 {lab=VCO}
N -190 150 290 150 {lab=VCO}
N 290 150 290 240 {lab=VCO}
N -530 60 -470 60 {lab=I_TEMP}
N 170 60 230 60 {lab=RST}
N -150 310 290 310 {lab=#net5}
N 290 240 360 240 {lab=VCO}
N 400 280 400 320 {lab=VSS}
N 440 240 480 240 {lab=#net7}
N -540 470 -340 470 {lab=VSS}
N -430 400 -230 400 {lab=I_TEMP}
N -300 380 -300 470 {lab=VSS}
N -380 350 -380 400 {lab=I_TEMP}
N -380 350 -340 350 {lab=I_TEMP}
N -300 350 -270 350 {lab=VSS}
N -270 350 -270 470 {lab=VSS}
N -300 80 -300 320 {lab=#net8}
N -300 -160 -300 20 {lab=VDD}
N -330 50 -300 50 {lab=VDD}
N -330 -30 -330 50 {lab=VDD}
N -330 -30 -300 -30 {lab=VDD}
N -260 50 -190 50 {lab=#net8}
N -230 50 -230 110 {lab=#net8}
N -300 110 -230 110 {lab=#net8}
N -150 80 -150 200 {lab=#net6}
N -150 -160 -150 20 {lab=VDD}
N -150 50 -120 50 {lab=VDD}
N -120 -20 -120 50 {lab=VDD}
N -150 -20 -120 -20 {lab=VDD}
N 400 -160 400 200 {lab=VDD}
N 340 -160 400 -160 {lab=VDD}
N 560 240 630 240 {lab=VCOB}
N 520 280 520 320 {lab=VSS}
N 400 320 520 320 {lab=VSS}
N 400 200 520 200 {lab=VDD}
N 400 320 400 470 {lab=VSS}
N 340 470 400 470 {lab=VSS}
C {devices/ipin.sym} -340 -160 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -540 470 0 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} 170 -40 0 0 {name=p3 lab=VREF}
C {devices/ipin.sym} -530 60 0 0 {name=p4 lab=I_TEMP}
C {JNW_GR02_SKY130A/JNW_VIS_OTA.sym} 290 150 0 0 {name=x7}
C {devices/opin.sym} 540 10 0 0 {name=p6 lab=VOUT}
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} -190 240 0 0 {name=x1 }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} -90 240 0 0 {name=x2 }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 10 240 0 0 {name=x3 }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 110 240 0 0 {name=x5 }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 210 240 0 0 {name=x6 }
C {JNW_ATR_SKY130A/JNWATR_NCH_12C1F2.sym} -190 400 0 0 {name=x8}
C {JNW_ATR_SKY130A/JNWATR_NCH_12C1F2.sym} -430 400 0 1 {name=x4}
C {devices/ipin.sym} 170 60 0 0 {name=p5 lab=RST}
C {devices/lab_wire.sym} 120 150 0 0 {name=p7 sig_type=std_logic lab=VCO}
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} -100 300 0 0 {name=x9[0:1] }
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 0 300 0 0 {name=x1[0:1] }
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 100 300 0 0 {name=x2[0:1] }
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 200 300 0 0 {name=x3[0:1] }
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 290 300 0 0 {name=x4[0:1] }
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 360 240 0 0 {name=x9 }
C {devices/lab_wire.sym} 630 240 0 0 {name=p8 sig_type=std_logic lab=VCOB}
C {JNW_ATR_SKY130A/JNWATR_NCH_12C1F2.sym} -340 350 0 0 {name=x10}
C {JNW_ATR_SKY130A/JNWATR_PCH_12C1F2.sym} -260 50 0 1 {name=x11}
C {JNW_ATR_SKY130A/JNWATR_PCH_12C1F2.sym} -190 50 0 0 {name=x12}
C {JNW_TR_SKY130A/JNWTR_IVX4_CV.sym} 480 240 0 0 {name=x13 }
