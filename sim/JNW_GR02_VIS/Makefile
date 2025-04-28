

all: typical etc mc summary



TB=tran
#VIEW=Sch
VIEW=Lay
CELL=JNW_GR02_VIS
LIB =JNW_GR02_SKY130A
OPT=

include ../../tech/make/sim.make

test:
	${MAKE} typical OPT="Debug"

tempsweep: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_tempsweep ${TB} ${OPT} ${VIEW} Gt Ktt Tt Vt

tempsweep_fs: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_tempsweep ${TB} ${OPT} ${VIEW} Gt Kfs Tt Vt

tempsweep_sf: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_tempsweep ${TB} ${OPT} ${VIEW} Gt Ksf Tt Vt

tempsweep_etc: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_tempsweep ${TB} ${OPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs,Ktt" Tt Vt

tempsweep_mc: netlist
	cicsim run --replace replace.yaml --name ${VIEW}_tempsweep --count 30 ${TB} ${OPT} ${VIEW} Gt "Kttmm" "Tt" "Vt"

typical: netlist
	cicsim run --name ${VIEW}_typical ${TB} ${OPT} ${VIEW} Gt Ktt Tt Vt Nosweep

slow: netlist
	cicsim run --name ${VIEW}_slow ${TB} ${OPT} ${VIEW} Gt Kss "Th,Tl" Vl Nosweep

slow_fast: netlist
	cicsim run --name ${VIEW}_slow ${TB} ${OPT} ${VIEW} Gt Ksf Tt Vl Nosweep

fast_slow: netlist
	cicsim run --name ${VIEW}_slow ${TB} ${OPT} ${VIEW} Gt Kfs Tt Vl Nosweep

fast: netlist
	cicsim run --name ${VIEW}_fast ${TB} ${OPT} ${VIEW} Gt Kff "Th,Tl" Vh Nosweep

tfs: netlist
	cicsim run --name ${VIEW}_tfs ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt,Th,Tl" Vt Nosweep

etc: netlist
	cicsim run --name ${VIEW}_etc ${TB} ${OPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" "Th,Tl" Vt Nosweep

mc: netlist
	cicsim run --name ${VIEW}_mc --count 30 ${TB} ${OPT} ${VIEW} Gt "Kttmm" "Tt" "Vt" Nosweep

ntc: netlist
	cicsim run --name ${VIEW}_ntc ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt Nosweep

temp: netlist
	cicsim run --name ${VIEW}_temp ${TB} ${OPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt Nosweep

summary:
	cicsim summary --output "README.md"

slide:
	pandoc -s  -t slidy README.md -o README.html


clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
