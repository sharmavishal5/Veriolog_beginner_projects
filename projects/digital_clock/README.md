# Digital Clock in Verilog

## Overview  
This is a **digital clock** implemented in **Verilog**, capable of tracking **hours, minutes, and seconds**. The clock operates based on a **1 Hz signal**, derived from a higher-frequency input clock (e.g., **50 MHz**).  

## Features  
- **24-hour format (HH:MM:SS)**  
- **Automatic rollover** (59 sec → 0 sec, 59 min → 0 min, 23 hr → 0 hr)  
- **Reset functionality** to reset time  
- **Verilog testbench** included for simulation  

## How It Works  
The module takes an **input system clock** (e.g., 50 MHz) and divides it down to **1 Hz** using a counter. Every second, the **seconds counter increments**. After **59 seconds**, it resets to **0** and increments **minutes**, and so on.  

### **State Transitions**  
Seconds: 0 → 1 → ... → 59 → 0
Minutes: 0 → 1 → ... → 59 → 0
Hours: 0 → 1 → ... → 23 → 0