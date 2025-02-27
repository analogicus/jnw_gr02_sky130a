v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -70 -120 -70 {lab=PWR_UP}
N 180 -30 190 -30 {lab=I_TEMP}
N 190 -30 200 -30 {lab=I_TEMP}
N 200 -30 205 -30 {lab=I_TEMP}
N 180 -90 205 -90 {lab=VREF}
N -130 -50 -120 -50 {lab=VSS}
N -130 -90 -120 -90 {lab=VDD}
N 180 -70 205 -70 {lab=LPI}
N 180 -50 205 -50 {lab=LPO}
C {JNW_GR02_SKY130A/JNW_VIS_TI.sym} 30 -60 0 0 {name=x1}
C {devices/simulator_commands_shown.sym} 430 -200 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param mc_mm_switch=0
.param mc_pr_switch=0
.include tt.spi
*.include ss.spi
.option gmin=1e-15
.lib "../../../tech/ngspice/temperature.spi" Tl
.lib "../../../tech/ngspice/supply.spi" Vl
.include ../../../../cpdk/ngspice/ideal_circuits.spi
.include /home/domen/pro/aicex/ip/cpdk/ngspice/tian_subckt.lib

X999 LPI LPO loopgainprobe

VSS  VSS  0     dc 0
VDD  VDD VSS dc 1.8 
VPUP PWR_UP VSS PULSE ( 0 1.8 1NS 1PS 1PS 1NS 1S 1)
VSENS I_TEMP 0 dc 0.6


.option temp = 100
.option savecurrents
.save all
.control

.IC V(LPO)=0.5
optran 0 0 0 10n 10u 0
op
write TB_JNW_VIS_TI.raw
exit
.endc
.end

"}
C {devices/ipin.sym} -130 -90 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -130 -50 0 0 {name=p2 lab=VSS
}
C {devices/opin.sym} 205 -90 0 0 {name=p3 lab=VREF}
C {devices/opin.sym} 205 -30 0 0 {name=p4 lab=I_TEMP}
C {devices/ipin.sym} -130 -70 0 0 {name=p5 lab=PWR_UP
}
C {devices/opin.sym} 205 -70 0 0 {name=p6 lab=LPI
}
C {devices/opin.sym} 205 -50 0 0 {name=p7 lab=LPO
}
