# Arithmetic Logic Unit (ALU) in Verilog  

## 🔍 Overview  
This project implements a **16-bit Arithmetic Logic Unit (ALU)** in Verilog. The ALU supports **arithmetic and logical operations**, including addition, subtraction, AND, OR, XOR, and shift operations. It also provides status flags such as **sign, zero, and carry**.

## ⚡ Features  
- **Addition, Subtraction, AND, OR, XOR operations**  
- **Left and Right shift operations**  
- **Status flags:**  
  - **Sign**: Indicates if the result is negative  
  - **Zero**: Set if the output is zero  
  - **Carry**: Set if there's an overflow in addition/subtraction  
- **Verilog testbench included**  

## 🎯 ALU Operations  

| Operation     | Opcode  |
|--------------|---------|
| Addition     | `001`   |
| Subtraction  | `010`   |
| AND          | `011`   |
| OR           | `100`   |
| XOR          | `101`   |
| Left Shift   | `110`   |
| Right Shift  | `111`   |

---