
[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)
[![SIM](../../actions/workflows/sim.yaml/badge.svg)](../../actions/workflows/sim.yaml)

# Who
Group2

# Why

<explain why you made this module>

**JNW_VIS_TI - Temperature to current conversion module**  
- First step in making the temperature sensor for AIC2025 course.  
- The module generates the current with linear change dependent on the temperature. It works from -40 to 130 degrees Celsius - check the plot image.  
- The module also generates a "stable" voltage reference of around 1.15V.  
- For the nice plot you need to comment out the **return** in the `jnw_gr02_sky130a/sim/JNW_VIS_TI` and run the `make tempsweep` - it will take a while...  

![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_TI/Figure_1_GoodLinearity.png?raw=true)

- Bellow are the plots and data of stability analysis  

| f3db            |  gm_db | lf_gain | pm_deg | ug  |
| :-              |  :-:   |  :-:    |  :-:   | :-: |
| 4.5765 MHz       |  -6.6304   |  25.399    |  41.874   | 87.122 MHz |

- **LOOP GAIN**  
![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_TI/lstb_schgtkttttvtnosweep_loop_gain.png?raw=true)  

- **LOOP PHASE**  
![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_TI/lstb_schgtkttttvtnosweep_loop_phase.png?raw=true)  

- DC analysis is a bit funky, it changes with the moon phases... current doesn't really compare to the tran analysis, vref is quite similar  

- **VREF**
![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_TI/vref_dc_plot.png?raw=true)  

- **I_TEMP**
![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_TI/isens_dc_plot.png?raw=true)  

---

# How

<explain short how you made this module>

**JNW_VIS_TI - Temperature to current conversion module**  
- Following the class and copying the design :)  
- Designed an OPAMP - similar tactics as above.  
- Taking care to be in `gmid = 10` with all the transistors.  
- To fine-tune the reference voltage, we played with resistances.  
- **"More current, fewer problems"** looks like the answer to life :)  


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
| VREF     | Output    | VDD_1V8 | Voltage referance of around 1.15V                       |
| ISENS     | Output    | VDD_1V8 | Current dependant on the temperature                       |


# Key parameters

| Parameter           | Min     | Typ           | Max     | Unit  |
| :---                | :---:     | :---:           | :---:     | :---: |
| Technology          |         | Skywater 130 nm |         |       |
| AVDD                | 1.7    | 1.8           | 1.9    | V     |
| Temperature         | -40     | 27            | 130     | C     |
