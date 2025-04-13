
[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)
[![SIM](../../actions/workflows/sim.yaml/badge.svg)](../../actions/workflows/sim.yaml)

# Who
Group2

# Why


**JNW_TEMPSENSOR_GROUP2**
- As per instruction we have started developing an integrated circuit that should in the end measure temperature. We have first started with the bandgap referance circuit from the lectures AIC2025, the module is called **JNW_VIS_TI**. Because this circuit needs an OTA we have also designed one, called it **JNW_VIS_OTA**. To do the first simulations and removing faults through trial and error we have created a testbench for the module **JNW_VIS_TI** called **TB_JNW_VIS_TI**. It has the option to run in xschem and we can see the operating points in the schematic. When this was done we created a module called **JNW_VIS_ITIME**, that converts the curreent from **JNW_VIS_TI** into the voltage over a capacitor that is then connected to the same OTA we have already designed. One input is the referance voltage generated by the **JNW_VIS_TI** the other is Vcap. Since the charge time of capacitor depends on the current that is dependant on the temperature, we can measure the time it takes the capacitor to fill up, Vcap = Vref. The output of the OPAMP goes to the verilog module.
- Below are the descriptions of each of the module with figures, measurments and notes.

**JNW_GR02_VIS**  
- This is an analog solution to the temperature sensor
- Here an Inverter based VCO is used with current starvation. Current mirrors copy the current from the JNW_VIS_TI module that is dependant on temperature, therefore less current we have the slower the inverters work and therefore there is a reduction of frequency.

![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_GR02_VIS/SensorFunction.png?raw=true) 

![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/work/AIC_MainLayout.png?raw=true)  

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

|       f3db |   gm_db |   lf_gain |   pm_deg |         ug |
|------------|---------|-----------|----------|------------|
| 2.1902e+05 | -13.295 |    39.099 |    64.77 | 1.9513e+07 |


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
| | | | [Sch_typ](results/tran_Sch_typical.html) | | 0.772 |  | |
| | | | [Sch_etc](results/tran_Sch_etc.html) | -0.978 | 0.880 | 3.383 | |
| | | | [Sch_3std](results/tran_Sch_mc.html) | -15.165 | 1.743 | 18.650 | |


**JNW_VIS_ITIME - Current to time conversion module**  
- Second milestone for AIC Project  
- Using a basic capacitor and opamp as comparator we get the 1 or 0 if the Vcap is larger than Vref from previous module.  
- Current is filling this capacitor and we "measure" the voltage on it  
- Capacitor is emptied through MOSFET at a RST signal  
- Bellow is an image of Vcap and Vout signal, Vref is around 1.15V. The Vcap is reset twice in this figure. The speed of reset is way higher than it will be in the end design. Quick calculation lands us that f_rst will be less than 150kHz. In this simulation is 1MHz

![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/sim/JNW_VIS_ITIME/Vcap_Vout.png?raw=true) 

**svinst.spi - time to digital output**
- Using verilog code to generate a clock divider and a register to find out and mark when Vcap is larger than Vref (trigger goes high).  
  - code is located in rtl/dig.v 
- dividing the input clock to 1/256.
  - output resolution is 8 bit maximum, but probably much less.  
- ~~send RST signal to JNW_VIS_ITIME when clock counts to 256~~.  
- detect when Vcap is smaller than Vref (trigger goes low), and reset the internal counter.  
- stores the clock value when Vcap is larger than Vref, and give this as output.  
**CAUTION**  
The design was changed so that the verilog code doesen't affect its inputs. It is probable that the act of changing its own inputs caused slowdown in simulation.  


The current implementation does not implement scaling. since the expected current range is approx. 2e-6A to 6e-6A ( see earlier figure), the range where Vcap is larger than Vref is from a couple of cycles up to a maximum. The description of how a long it will take to get a voltage change over a capacitor can be written as: 
```math
I= C \cdot \frac{dV}{dt} \rightarrow \approx \Delta t = C \cdot \frac{\Delta V}{I}
```
Meaning it is expected that the output is somewhat inverse proportional to the current, and therefore temperature.

---

# How


**JNW_VIS_TI - Temperature to current conversion module**  
- Following the class and copying the design :)  
- Taking care to be in `gmid = 10` with all the transistors.  
- To fine-tune the reference voltage, we played with resistances.  
- We tried to reduce the current as much as possible to get more time between resets of the capacitor  

![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/Figures/AIC_JNW_VIS_TI.png?raw=true) 

**JNW_VIS_OTA - Current mirror OTA**  
- Following the class and the AIC book. 
- Designed an OPAMP 
- Taking care to be in `gmid = 10` with the current mirrors and output transistors.  
- Having a hard time with the current mirror being in the triode region. We then used the short channel PMOS's  

![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/Figures/AIC_JNW_VIS_OTA.png?raw=true)  

**JNW_VIS_ITIME - Current to Time conversion**
- Following the class and the AIC book.  
- Basic design using an OTA, reset switch and capacitor
- Always comparing capacitor voltage(filling up with current from **JNW_VIS_TI**) and referance voltage(from **JNW_VIS_TI**)

![Alt text](https://github.com/analogicus/jnw_gr02_sky130a/blob/main/Figures/AIC_JNW_VIS_ITIME.png?raw=true)  

# What

| What            |        Cell/Name |
| :-              |  :-:       |
| Schematic       | design/JNW_GR02_SKY130A/JNW_VIS_TI.sch |
| Schematic       | design/JNW_GR02_SKY130A/JNW_VIS_ITIME.sch |
| Schematic       | design/JNW_GR02_SKY130A/JNW_VIS_OTA.sch |


# Changelog/Plan

| Version | Status | Comment|
| :---| :---| :---|
|0.2.0 | :x: | Temperature to current, current to time |
|0.1.0 | :x: | The first module works linearly |


# Signal interface

| Signal       | Direction | Domain  | Description                               |
| :---         | :---:     | :---:   | :---                                      |
| VDD_1V8         | Input     | VDD_1V8 | Main supply                              |
| VSS             | Input     | Ground  |                                          |
| CLK             | Input     | CDD_1V8 | Clocking signal                          |
| PWRUP_1V8       | Input     | VDD_1V8 | Power up the circuit                     |
| VREF            | Output    | VDD_1V8 | Voltage referance of around 1.15V        |
| ISENS           | Output    | VDD_1V8 | Current dependant on the temperature     |


# Key parameters

| Parameter   | Min   | Typ             | Max   | Unit  |
| :---        | :---: | :---:           | :---: | :---: |
| Technology  |       | Skywater 130 nm |       |       |
| AVDD        | 1.7   | 1.8             | 1.9   | V     |
| Temperature | -40   | 27              | 130   | C     |

| Parameter           | Min     | Typ           | Max     | Unit  |
| :---                | :---:     | :---:           | :---:     | :---: |
| Technology          |         | Skywater 130 nm |         |       |
| AVDD                | 1.7    | 1.8           | 1.9    | V     |
| Temperature         | -20     | 27            | 130     | C     |
