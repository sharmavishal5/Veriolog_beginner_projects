# 16-bit Multiplier (mul1)

## Overview
This Verilog module implements a **16-bit unsigned multiplier** using a bitwise shift-and-add method. It takes two 16-bit input operands (`A` and `B`) and produces a **32-bit product (`Out`)**.

## Functionality
- The module performs **unsigned multiplication** of two 16-bit numbers.
- It uses **bitwise shift-and-add** logic instead of the built-in `*` operator.
- The result is stored in a 32-bit output register `Out`.

## How It Works
The multiplication is performed using an **iterative approach**, similar to how multiplication is done manually in binary:

1. Initialize a **partial sum** (`partial_sum`) to zero.
2. Iterate through each bit of `B` (from LSB to MSB).
3. If a bit in `B` is `1`, shift `A` left by the bit's position and add it to `partial_sum`.
4. Store the final computed value in `Out`.

### Algorithm (Shift-and-Add Multiplication)
For two numbers:
- `A = 16'bXXXX_XXXX_XXXX_XXXX`
- `B = 16'bYYYY_YYYY_YYYY_YYYY`

The multiplication works as follows:
- If `B[0] = 1`, add `A << 0` to `partial_sum`
- If `B[1] = 1`, add `A << 1` to `partial_sum`
- If `B[2] = 1`, add `A << 2` to `partial_sum`
- ...
- If `B[15] = 1`, add `A << 15` to `partial_sum`

At the end of 16 iterations, `partial_sum` contains the final product.

## Verilog Code Implementation
```verilog
module mul1(A, B, Out);
    input [15:0] A, B;
    output reg [31:0] Out;  

    integer i;
    reg [31:0] partial_sum;

    always @(*) begin
        partial_sum = 0;  
        for (i = 0; i < 16; i = i + 1) begin
            if (B[i])  
                partial_sum = partial_sum + (A << i);
        end
        Out = partial_sum;
    end
endmodule
```

## Testbench
To verify the functionality, a testbench (`multest`) applies test cases and monitors the output.

```verilog
module multest();
    reg [15:0] A, B;
    wire [31:0] Out;  
    
    // Instantiate the multiplier module
    mul1 dut(A, B, Out);
    
    initial begin 
        #10;
        A = 16'd3; 
        B = 16'd2; 
        #10;
        $display("A = %d, B = %d, Out = %d", A, B, Out);
        
        #10;
        A = 16'd10;
        B = 16'd5;
        #10;
        $display("A = %d, B = %d, Out = %d", A, B, Out);
        
        #10;
        A = 16'd255;
        B = 16'd255;
        #10;
        $display("A = %d, B = %d, Out = %d", A, B, Out);
        
        #10;
        $finish;
    end
endmodule
```

## Expected Output
For different input values of `A` and `B`, the output should be:

| A   | B   | Expected Out |
|-----|-----|-------------|
| 3   | 2   | 6           |
| 10  | 5   | 50          |
| 255 | 255 | 65025       |

## Conclusion
This Verilog multiplier efficiently multiplies two 16-bit numbers using **bitwise shift-and-add** operations, making it suitable for hardware implementations where multipliers are required but dedicated multiplication units are unavailable.