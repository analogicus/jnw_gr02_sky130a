v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 -20 -150 -20 {lab=VDD}
N -180 0 -150 0 {lab=PWR_UP}
N -180 20 -150 20 {lab=VSS}
N 150 -30 180 -30 {lab=VREF}
N 150 30 180 30 {lab=I_TEMP}
N 150 -10 180 -10 {lab=LPO}
N 150 10 180 10 {lab=LPI}
C {JNW_GR02_SKY130A/TEMP_CURR_AK.sym} 0 0 0 0 {name=x1}
C {devices/ipin.sym} -180 -20 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -180 0 0 0 {name=p2 lab=PWR_UP}
C {devices/ipin.sym} -180 20 0 0 {name=p3 lab=VSS}
C {devices/opin.sym} 180 -30 0 0 {name=p4 lab=VREF}
C {devices/opin.sym} 180 30 0 0 {name=p5 lab=I_TEMP}
C {devices/opin.sym} 180 -10 0 0 {name=p6 lab=LPO}
C {devices/opin.sym} 180 10 0 0 {name=p7 lab=LPI}
C {devices/simulator_commands_shown.sym} 350 -270 0 0 {name=COMMANDS
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
.include ~/pro/aicex/ip/cpdk/ngspice/tian_subckt.lib

X999 LPI LPO loopgainprobe

VSS  VSS  0     dc 0
VDD  VDD VSS dc 1.8 
VPUP PWR_UP VSS PULSE ( 0 1.8 1NS 1PS 1PS 1NS 1S 1)
VSENS I_TEMP 0 dc 0.5
.option temp = 25
.option savecurrents
.save all
.control


optran 0 0 0 10n 10u 0
op
write TEMP_CURR_AK_SYM.raw
exit
.endc
.end

"}
