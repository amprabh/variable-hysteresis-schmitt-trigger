![Logo design by @amprabh](https://github.com/amprabh/variable-hysteresis-schmitt-trigger/blob/main/doc/HOLOHorse.png)

Project HOLOHorse
=============================================

> "Because a fixed trigger is just a one-trick pony!"
> *NEIGH*

This library contains the full schematic, layout, testing, extractions and characterization of a 14T Variable Hysteresis Schmitt Trigger, demonstrating a successful integration of a customized design utilizing [Google SkyWater SKY130 PDK](https://github.com/google/skywater-pdk). 


## Table of Contents
- [Introduction](#Introduction)
- [Pre-Layout Schematic and Simulations](#Pre-Layout-Schematic-and-Simulations)
- [Layout and Post-Layout Simulations](#Layout-and-Post-Layout-Simulations)
- [Quantus Characterization](#Quantus-Characterization)
- [Tools Utilized](#Tools-Utilized)
- [Future Work](#Future-Work)
- [Citations](#Citations) 
- [Acknowledgement](#Acknowledgement)
- [Contact Information](#Contact-Information) 

## Introduction
Schmitt triggers are foundational components in mixed-signal and IoT VLSI systems, serving as the primary defense against signal noise and environmental interference. However, current open-source standard cell libraries exclusively offer fixed-hysteresis designs, if any. While variable hysteresis triggers exist in advanced literature, they overwhelmingly rely on complex continuous analog bias voltages that are hostile to automated digital standard-cell workflows. This project proposes the design and verification of a novel, digitally selectable variable CMOS Schmitt trigger IP macro.

## Pre-Layout Schematic and Simulations
14T implementation of an adjustable Schmitt trigger and its corresponding testbench:
![14T Schmitt Trigger Schematic](https://github.com/amprabh/variable-hysteresis-schmitt-trigger/blob/main/doc/schematic.png)

![14T Schmitt Trigger Testbench](https://github.com/amprabh/variable-hysteresis-schmitt-trigger/blob/main/doc/tb.png)

Pre-Extraction performance metrics of the adjustable Schmitt trigger:
|Output|State_00​|State_01​|State_10​|State_11​|
|------|-------|------|---------|-------|
|VLH​|0.9900|0.9900|0.9900|0.9900|
|VHL​|0.8463|0.7021|0.6301|0.5944|
|target_width|0.1440|0.2880|0.3600|0.3960|
|ΔVtrip​|0.1437|0.2879|0.3599|0.3956|
|ΔVcenter​|0.9181|0.8461|0.8100|0.7922|
|delayLH​|57.79|57.87|58.05|58.14|
|delayHL​|71.33|72.92|74.55|75.25|
|power|28.82|29.96|30.92|31.35|
|width_err|0.2148|0.0406|0.0298|0.1037|

## Layout and Post-Layout Simulations
![14T Schmitt Trigger Schematic](https://github.com/amprabh/variable-hysteresis-schmitt-trigger/blob/main/doc/layout.png)
Post-Extraction performance metrics of the adjustable Schmitt trigger:
| Output | State_00 | State_01 | State_10 | State_11 |
| --- | --- | --- | --- | --- |
| VLH | 0.9555 | 1.025 | 1.086 | 1.115 |
| VHL | 0.7794 | 0.6339 | 0.6247 | 0.5727 |
| target_width | 0.144 | 0.288 | 0.360 | 0.396 |
| ΔVtrip | 0.176 | 0.3915 | 0.4608 | 0.5419 |
| ΔVcenter | 0.8675 | 0.8297 | 0.8551 | 0.8437 |
| delayLH | 303.9 | 345 | 350 | 378.7 |
| delayHL | 173.6 | 174.5 | 175.7 | 176.4 |
| power | 19.24 | 38.93 | 46.53 | 58.49 |
| width_err | 22.2 | 35.9 | 28.0 | 36.8 |

schematic, layout, maestro and symbol views are provided in [schmitt_var](https://github.com/amprabh/variable-hysteresis-schmitt-trigger/tree/main/cadence/schmitt_var/schmitt_var) and [schmitt_var_tb](https://github.com/amprabh/variable-hysteresis-schmitt-trigger/tree/main/cadence/schmitt_var/schmitt_var_tb)

## Quantus Characterization
[schmitt_var_pkg](https://github.com/amprabh/variable-hysteresis-schmitt-trigger/tree/main/schmitt_var_pkg) contains the following files:

| File |Description|
| --- | --- |
| cfg.yml | settings and configurations for package in Hammer CAD flow|
| schmitt_var.lef | contains physical layout and pin locations of the cell|
| schmitt_var.lib | contains timing, power and noise models of the cell|
| schmitt_var.sp | contains spice netlist data + parasitics of the cell |
| schmitt_var.v | Blackbox verilog wrapper for the schmitt_var macro |
| schmitt_var_top.v | original test harness for top level instantation |

## Tools Utilized
| Name of Tool | Description |
|--------|--------|
| [Cadence Virtuoso Studio](https://www.cadence.com/en_US/home/tools/custom-ic-analog-rf-design/virtuoso-studio.html) |An IC design platform for schematic design and simulation.|
| [Cadence Virtuoso Layout Suite](https://www.cadence.com/en_US/home/tools/custom-ic-analog-rf-design/layout-design/virtuoso-layout-suite.html) | A specialized environment within the Virtuoso suite that allows for the creation and routing of physical layout |
| [Pegasus Verification System](https://www.cadence.com/en_US/home/tools/digital-design-and-signoff/silicon-signoff/pegasus-verification-system.html)| A physical verification signoff tool utilized to perform DRC (Design Rule Check) and LVS (Layout Versus Schematic) checks for advanced process nodes|
|[Quantus Extraction Solution](https://www.cadence.com/en_US/home/tools/digital-design-and-signoff/silicon-signoff/quantus-extraction-solution.html)|A parasitic extraction signoff tool utilized for extracting parasitics and capacitances of IC layouts|
|[Hammer CAD Tools](https://www.hammer-eda.org/)| A physical design framework that wraps around vendor specific technologies and tools to provide a single API to create ASICs|

## Future Work
Because Schmitt trigger architectures are highly customizable to the specific noise profiles of target systems, this IP block establishes a pathway for future modifications. Future iterations of this open-source initiative could explore structural enhancements, such as utilizing dual power supplies to isolate noisy digital voltage domains from the analog core, or exploring alternative, lower-cost logic gates to drive the feedback networks. Additionally, future work can also modify the current PMOS/NMOS stack architecture to actively reduce the overall transistor count for ultra-high-density applications. Ultimately, continuous tape-out implementations based on this digitally selectable framework will increase accessibility within the SKY130's library and help lower the barrier to entry for future hardware engineers. 

## Citations
[1]        Z. Chen and S. Chen, “A high-speed low voltage CMOS Schmitt Trigger with adjustable hysteresis,” in *2017 IEEE/ACIS 16th International Conference on Computer and Information Science (ICIS)*, Wuhan, China: IEEE, May 2017, pp. 293–297. doi: 10.1109/ICIS.2017.7960008.

[2]        C.-K. Pham, “CMOS Schmitt Trigger Circuit with Controllable Hysteresis Using Logical Threshold Voltage Control Circuit,” in *6th IEEE/ACIS International Conference on Computer and Information Science (ICIS 2007)*, Melbourne, Australia: IEEE, 2007, pp. 48–53. doi: 10.1109/ICIS.2007.76.

[3]        V. Katyal, R. L. Geiger, and D. J. Chen, “Adjustable hysteresis CMOS Schmitt triggers,” in *2008 IEEE International Symposium on Circuits and Systems (ISCAS)*, Seattle, WA, USA: IEEE, May 2008, pp. 1938–1941. doi: 10.1109/ISCAS.2008.4541823.

[4]        M. U. Khalid, T. Ytterdal, and S. Aunet, “Robust DTMOS Schmitt-Trigger Circuits in *130 nm SOI CMOS for Sub-100mV Supply Voltage,” in 2025 40th Conference on Design of Circuits and Integrated Systems (DCIS)*, Santander, Spain: IEEE, Nov. 2025, pp. 262–267. doi: 10.1109/DCIS67520.2025.11281895.

[5]        ShravanaHS, *CMOS-Based Schmitt Trigger*. (Mar. 07, 2025). GitHub. [Online]. Available: https://github.com/ShravanaHS/CMOS-Schemitt-Trigger-

[6]        Rachith-H, *Inverting Schmitt Trigger using Sky130 PDK.* (Jul. 19, 2025). GitHub. [Online]. Available: https://github.com/Rachith-H/Schmitt-Trigger-SKY130-design

[7]        SouptikRoy, *Optimized-Hex-Schmitt-Trigger-Circuit-Design-for-Noise-Resilient-Digital-Signal-Processing.* (Jan. 19, 2025). GitHub. [Online]. Available: https://github.com/SouptikRoy/Optimized-Hex-Schmitt-Trigger-Circuit-Design-for-Noise-Resilient-Digital-Signal-Processing

[8]        ayush-agarwal-0502, *Digital-Schmitt-Trigger-Controller-System-Verilog.* (Jun. 26, 2023). SystemVerilog. GitHub. [Online]. Available: https://github.com/ayush-agarwal-0502/Digital-Schmitt-Trigger-Controller-System-Verilog

[9]        Z. Wang, “CMOS adjustable Schmitt triggers,” *IEEE Trans. Instrum.* Meas., vol. 40, no. 3, pp. 601–605, Jun. 1991, doi: 10.1109/19.87026.

[10]      Edward Wang, Colin Schmidt, Adam Izraelevitz, John Wright, Borivoje Nikolić, Elad Alon, Jonathan Bachrach. “A Methodology for Reusable Physical Design”. In *proceedings of the 21st International Symposium on Quality Electronic Design (ISQED 2020)*, Santa Clara, USA, March 2020.
## Acknowledgement
* [Michael Taylor](https://people.ece.uw.edu/taylor_michael/), Professor, Department of Electrical and Computer Engineering, University of Washington-Seattle.
* [Ahmed R. Aboulsaad](https://www.linkedin.com/in/ahmed-refaat-aboulsaad-71445910a), Graduate Research Assistant, Department of Electrical and Computer Engineering, University of Washington-Seattle.
* [Rico Li](https://www.linkedin.com/in/kangli-li), PhD, Paul G. Allen School of Computer Science and Engineering, University of Washington-Seattle.
## Contact Information
* [Amita Prabhala](https://www.linkedin.com/in/amita-prabhala)
* [Aiden Sallows](https://www.linkedin.com/in/aiden-sallows)
