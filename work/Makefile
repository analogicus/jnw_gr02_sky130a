
#- Core makefile provides the following commands:
# -----------------------------------------------------------
# ip: generate ../design/<LIB> from ../cic/ip.json
# gds: generate gds/<CELL>.gds
# cdl: generate cdl/<CELL>.cdl
# xlvs: Check cdl/<CELL>.cdl versus ../design/<LIB>/<CELL>.mag
# lpe: Extract parasitics lpe/<CELL>.spi
# drc: Run design rule checks on ../design/<LIB>/<CELL>.mag
# -----------------------------------------------------------


PREFIX=
LIB=JNW_GR02_SKY130A
CELL=JNW_GR02_VIS#JNW_GR02_VIS

#- Provide cells you want to check for the lvsall drcall commands
CELLS = JNW_GR02_VIS JNW_VIS_TI JNW_VIS_OTA



include ../tech/make/core.make
#include ./core_vis.make