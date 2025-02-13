
[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)
[![SIM](../../actions/workflows/sim.yaml/badge.svg)](../../actions/workflows/sim.yaml)

# Who
Group2

# Why

<explain why you made this module>
JNW_VIS_TI - Temperature to current conversion module
    First step in making the temperature sensor for AIC2025 course
    The module generates the current with linear change dependant on the temperature, it works from -50 to 150 deegres celsius - check the plot image
    The module also generates a "stable" voltage referance of around 1.2V

    ![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_TI/Figure_1_GoodLinearity.png?raw=true)
    

# How

<explain short how you made this module>
JNW_VIS_TI - Temperature to current conversion module
    Following the class and copying the design :)
    Designed an OPAMP - similar tactics as above
    Taking care to be in gmid = 10 with all the transistors
    To fine tune the referance voltage we have played with resistances
    More current less problems looks like the answer to life :)


# What

| What            |        Cell/Name |
| :-              |  :-:       |
| Schematic       | design/JNW_GR02_SKY130A/JJNW_VIS_TI.sch |


# Changelog/Plan

| Version | Status | Comment|
| :---| :---| :---|
|0.1.0 | :x: | The first module works linearly |


# Signal interface

| Signal       | Direction | Domain  | Description                               |
| :---         | :---:     | :---:   | :---                                      |
| VDD_1V8         | Input     | VDD_1V8 | Main supply                              |
| VSS         | Input     | Ground  |                                           |
| PWRUP_1V8     | Input    | VDD_1V8 | Power up the circuit                       |
| VREF     | Output    | VDD_1V8 | Voltage referance of around 1.2V                       |
| ISENS     | Output    | VDD_1V8 | Current dependant on the temperature                       |


# Key parameters

| Parameter           | Min     | Typ           | Max     | Unit  |
| :---                | :---:     | :---:           | :---:     | :---: |
| Technology          |         | Skywater 130 nm |         |       |
| AVDD                | 1.7    | 1.8           | 1.9    | V     |
| Temperature         | -40     | 27            | 125     | C     |
