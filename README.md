
[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)
[![SIM](../../actions/workflows/sim.yaml/badge.svg)](../../actions/workflows/sim.yaml)

# Who
Group2

# Why

<explain why you made this module>

**JNW_TEMPSENSOR_GROUP2**
- As per instruction we have started developing an integrated circuit that should in the end measure temperature. We have first started with the bandgap referance circuit from the lectures AIC2025, the module is called **JNW_VIS_TI**. Because this circuit needs an OTA we have also designed one, called it **JNW_VIS_OTA**. To do the first simulations and removing faults through trial and error we have created a testbench for the module **JNW_VIS_TI** called **TB_JNW_VIS_TI**. It has the option to run in xschem and we can see the operating points in the schematic. When this was done we created a module called **JNW_VIS_ITIME**, that converts the curreent from **JNW_VIS_TI** into the voltage over a capacitor that is then connected to the same OTA we have already designed. One input is the referance voltage generated by the **JNW_VIS_TI** the other is Vcap. Since the charge time of capacitor depends on the current that is dependant on the temperature, we can measure the time it takes the capacitor to fill up, Vcap = Vref. The output of the OPAMP goes to the verilog module.
- Below are the descriptions of each of the module with figures, measurments and notes.

**JNW_VIS_TI - Temperature to current conversion module**  
- First step in making the temperature sensor for AIC2025 course.  
- We are creating the references using the bandgap of the diode.  
- In the fight to make everything work in 3std we have begun to use the wide swing cascode current mirror, taking inspiration from the course materials  
- To fine tune the voltage referance and the current we are using a chain in standard resistors
- The module generates the current with linear change dependent on the temperature. It works from -20 to 130 degrees Celsius - check the plot image.  
- The module also generates a "stable" voltage reference of around 1.2V. Check the plot image bellow  
- For the nice plot you need to run the temp_tran_combine.py and the image will appear in the folder. It combines all simulations without Nosweep from the folder output/tran at the end.  
- The plots show the current and v_ref done from typical, etc and mc simulation of the type tempsweep  

![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_TI/combined_plot.png?raw=true)


- Bellow is a result from the transient simulations in all the corners and the montecarlo

|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
|**Referance Voltage**|**vref27** || **Spec**  | **0.90000** | **1.20000** | **1.50000** | **V** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 1.20066 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|1.19779 | 1.20082 | 1.20342 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|1.07695 | 1.20448 | 1.33201 | |
|**Temperature current**|**i\_temp27** || **Spec**  | **3.00000** | **4.00000** | **5.00000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 3.98492 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|3.42394 | 3.97680 | 4.64859 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|3.07677 | 4.00629 | 4.93581 | |

- Bellow are the plots and data of stability analysis  

| f3db            |  gm_db | lf_gain | pm_deg | ug  |
| :-              |  :-:   |  :-:    |  :-:   | :-: |
| 1.8567e+05 | -14.285 |    39.044 |   69.669 | 1.6604e+07 |

- **LOOP GAIN**  
![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_TI/lstb_schgtkttttvtnosweep_loop_gain.png?raw=true)  

- **LOOP PHASE**  
![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_TI/lstb_schgtkttttvtnosweep_loop_phase.png?raw=true)  

- DC analysis is a bit funky, it changes with the moon phases... current doesn't really compare to the tran analysis, vref is quite similar  

**JNW_VIS_OTA**  
- Current mirror OTA  
- Special care was taken to reduce the offset, especially during the etc and mc simulation, because it causes big problems in the workings of the main circuit  

|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
||**offset** || **Spec**  | **-50.000** | **0.000** | **50.000** | **mV** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | -0.180 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|-1.718 | -0.017 | 2.186 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|-20.067 | 0.309 | 20.685 | |


**JNW_VIS_ITIME - Current to time conversion module**  
- Second milestone for AIC Project  
- Using a basic capacitor and opamp as comparator we get the 1 or 0 if the Vcap is larger than Vref from previous module.  
- Current is filling this capacitor and we "measure" the voltage on it  
- Capacitor is emptied through MOSFET at a RST signal  
- Bellow is an image of Vcap and Vout signal, Vref is around 1.15V. The Vcap is reset twice in this figure. The speed of reset is way higher than it will be in the end design. Quick calculation lands us that f_rst will be less than 150kHz. In this simulation is 1MHz

![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_ITIME/Vcap_Vout.png?raw=true) 
---

# How

<explain short how you made this module>

**JNW_VIS_TI - Temperature to current conversion module**  
- Following the class and copying the design :)  
- Taking care to be in `gmid = 10` with all the transistors.  
- To fine-tune the reference voltage, we played with resistances.  
- We tried to reduce the current as much as possible to get more time between resets of the capacitor  

**JNW_VIS_OTA - Current mirror OTA**  
- Following the class and the AIC book. 
- Designed an OPAMP 
- Taking care to be in `gmid = 10` with the current mirrors and output transistors.  
- Having a hard time with the current mirror being in the triode region. We then used the short channel PMOS's  


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
