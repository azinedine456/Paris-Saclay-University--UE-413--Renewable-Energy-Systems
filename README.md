# Paris-Saclay-University—UE-413—Renewable-Energy-Systems  
## Complete Modeling of a Multi-Source DC Microgrid (Wind–PV–Battery) Using Energetic Macroscopic Representation

This repository contains the complete work carried out for the **UE-413: Systèmes d’Énergie Autonomes** course at **Université Paris-Saclay (M1 E3A – Mobilité Électrique & Énergies Renouvelables)**.

The project develops and simulates a **multi-source renewable energy system** consisting of:

- An **induction Motor (IM)**
- A **photovoltaic generator with MPPT**
- A **LiFePO₄ lithium battery model**
- A **DC bus and power electronic interface**
- A full **Energetic Macroscopic Representation (EMR)** MPPT-based control strategy for the **grid-tied wind turbine induction generator (IM)**

All subsystems were modeled and implemented in **MATLAB/Simulink**.

---

##  Key Features

### **1. Induction Motor (IM) Modeling**
- Full Park transformation: stator/rotor equations, currents, fluxes, torque  
- Validation: torque–speed curves, power, reactive power, efficiency

### **2. LiFePO₄ Battery Model**
- Dynamic RC-network model with SOC computation  
- OCV–SOC curve fitting  
- Current and voltage limiting  
- Discharge curves showing Peukert effect

### **3. Photovoltaic Generator + MPPT**
- Single-diode PV cell and module model  
- IV and PV characteristics under irradiance & temperature variation  
- **P&O MPPT algorithm**  
- DC-DC Boost converter model

### **4. Wind Turbine Aerodynamic Model**
- Power extraction:
<p>P = ½ · &rho; · S · v³ · C<sub>p</sub>(&lambda;)</p>

- Optimal torque calculation for each wind speed  
- Polynomial-fitting of maximum-power curve  
- Mechanical coupling with IM shaft

### **5. Energetic Macroscopic Representation (EMR)**
- System-level causal modeling  
- Derivation of control structure using causal inversion  
- Multi-source DC bus energy coordination  
- **V/F control** of the induction generator  
- MPPT-based optimal operating points

---

##  Project Objectives

- Model each subsystem based on physical equations  
- Integrate all sources in a unified DC microgrid  
- Use EMR to design the global control architecture  
- Implement MPPT for PV and wind turbine  
- Validate system operation under changing wind/irradiance  
- Analyze dynamic response, steady-state efficiency, and energy flow

---

##  Requirements

- **MATLAB R2022b or newer**
- **Simulink**
- **Simscape Electrical** (recommended)
- Curve Fitting Toolbox (optional)
- Optimization Toolbox (optional)

---

## Simulation Results & Final Simulink Diagram (Wind Turbine & IM MPPT)
<img width="1535" height="514" alt="image" src="https://github.com/user-attachments/assets/d0eed598-e25c-4f3d-810e-06bab3690110" />




The report contains :

- All mathematical derivations  
- Modeling strategies  
- Simulation results  
- Discussion of assumptions and limitations  
- Full bibliography  
Note : relevant documentation for each subsection of the project is provided in the subfolders
---

##  Authors

- **Hamou Zinedine Abayahia**  
- **Gehang Gao**  
Master 1 E3A – Université Paris-Saclay — 2023/2024



