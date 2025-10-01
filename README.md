# Verilog Beginner Project

## Overview

This project serves as an introduction to Verilog, focusing on fundamental digital design concepts through practical implementations. It includes various combinational and sequential circuits, leading up to more advanced designs.

## Completed Projects

1. **16-bit Multiplier (mul1)**

   - Implements a **shift-and-add multiplication algorithm**.
   - Uses **bitwise shifting and accumulation** to compute the product.
   - Verified with a testbench to ensure correct functionality.

2. **3-bit Pattern Detector (pattern\_detector1)**

   - Implements a **Finite State Machine (FSM)**.
   - Detects three consecutive `1`s in a serial data stream.
   - Uses **state transitions** to track input sequences.

3. **ALU (Arithmetic Logic Unit)**

   - Supports **addition, subtraction, AND, OR, XOR, and shift operations**.
   - Uses a **case statement** to select operations.
   - Outputs **zero flag and carry flag**.
     
4. **Digital Clock (digital_clock)**
   
   - Implements a real-time clock using Verilog.
   - Uses a counter-based approach to track hours, minutes, and seconds.
   - Simulated with a testbench to verify accurate timekeeping.
   - Generates waveform outputs to visualize clock transitions.
   - Supports reset functionality to set time back to zero.
5. **Linear Feedback Shift Register (LFSR)**

   - Implements a pseudo-random number generator using a shift register and XOR feedback logic.
   - Uses a tapped feedback polynomial for bit generation.
   - Can be configured for different lengths (e.g., 4-bit, 8-bit).
   - Generates a maximum-length sequence before repeating (depending on polynomial choice).

## Goals

- Strengthen Verilog coding skills.
- Gain hands-on experience with **hardware description languages (HDLs)**.
- Build foundational knowledge for **FPGA and ASIC design**.
- Work towards more complex projects.

This document will be updated as more projects are completed. Stay tuned for progress!

