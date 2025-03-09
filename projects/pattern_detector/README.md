# Pattern Detector (3 Consecutive 1's)

## Overview
This Verilog module implements a **pattern detector** that detects **three consecutive '1's** in an input stream. It is designed using a **Finite State Machine (FSM)**.

## Functionality
- The module takes a **serial input (IN)** and a **clock signal (clock)**.
- It continuously checks for the pattern **'111'** in the input stream.
- When three consecutive '1's are detected, the **output (OUT) is set to 1**.
- The detection is based on a **state transition mechanism** using two state variables (**Qa, Qb**), representing the FSM states.

## How It Works
This pattern detector operates using the following states:

1. **State 00**: No '1' detected yet.
2. **State 01**: A single '1' detected.
3. **State 10**: Two consecutive '1's detected.
4. **State 11**: Three consecutive '1's detected (sets OUT = 1).

The FSM transitions between states based on the current state and the input signal:
- If `IN = 1`, the FSM progresses towards detecting three consecutive 1's.
- If `IN = 0`, the FSM resets or remains in a stable state.

## State Transition Table
| Current State (`Qa Qb`) | Input (`IN`) | Next State (`Qa' Qb'`) | Output (`OUT`)|
|------------------|--------------|----------------|--------------|
| 00              | 0            | 00             | 0            |
| 00              | 1            | 01             | 0            |
| 01              | 0            | 00             | 0            |
| 01              | 1            | 10             | 0            |
| 10              | 0            | 00             | 0            |
| 10              | 1            | 11             | 1            |
| 11              | 0            | 00             | 0            |
| 11              | 1            | 11             | 1            |

## Verilog Code Implementation
The FSM is implemented in Verilog using an **always block triggered on the positive edge of the clock**. The `case` statement defines the transitions based on the current state and input.


## Expected Output
The output should be `1` whenever three consecutive `1's` are detected in the input stream. The testbench prints the input values along with the output, making it easier to debug.

## Conclusion
This Verilog pattern detector is an FSM-based sequential circuit that detects three consecutive `1's` in a serial input stream. It is useful in digital signal processing, communication systems, and error detection applications.

