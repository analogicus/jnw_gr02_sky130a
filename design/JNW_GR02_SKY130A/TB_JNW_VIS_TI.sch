v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -80 -120 -80 {lab=VDD}
N -130 -60 -120 -60 {lab=PWR_UP}
N -130 -40 -120 -40 {lab=VSS}
N 180 -60 190 -60 {lab=I_TEMP}
N 190 -60 200 -60 {lab=I_TEMP}
N 200 -60 205 -60 {lab=I_TEMP}
N 180 -80 205 -80 {lab=VREF}
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

VSS  VSS  0     dc 0
VDD  VDD VSS dc 1.8 
VPUP PWR_UP VSS PULSE ( 0 1.8 1NS 1PS 1PS 1NS 1S 1)
VSENS I_TEMP 0 dc 0.5

.option savecurrents
.save all
.control


optran 0 0 0 10n 10u 0
op
write TB_JNW_VIS_TI.raw
exit
.endc
.end

"}
C {devices/ipin.sym} -130 -80 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -130 -40 0 0 {name=p2 lab=VSS
}
C {devices/opin.sym} 205 -80 0 0 {name=p3 lab=VREF}
C {devices/opin.sym} 205 -60 0 0 {name=p4 lab=I_TEMP}
C {devices/ipin.sym} -130 -60 0 0 {name=p5 lab=PWR_UP
}
