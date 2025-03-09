module alu(
    input [15:0] in1, in2,
    input [2:0] operations,
    input sel,
    output reg [15:0] out,
    output reg sign, zero, carry
);
    always @(*) begin
        case (operations)
            3'b001: begin // Addition
                {carry, out} = in1 + in2;
            end
            3'b010: begin // Subtraction
                if (sel == 0)
                    out = in1 - in2; // Normal subtraction
                else
                    out = in2 - in1; // Reverse subtraction
            end
            3'b011: begin // AND operation
                out = in1 & in2;
            end
            3'b100: begin // OR operation
                out = in1 | in2;
            end
            3'b101: begin // XOR operation
                out = in1 ^ in2;
            end
            3'b110: begin // Left Shift
                if (sel == 0)
                    out = in1 << in2; // Shift `in1` by `in2`
                else
                    out = in2 << in1; // Shift `in2` by `in1`
            end
            3'b111: begin // Right Shift
                if (sel == 0)
                    out = in1 >> in2; // Shift `in1` by `in2`
                else
                    out = in2 >> in1; // Shift `in2` by `in1`
            end
            default: begin
                out = 16'b0;
            end
        endcase

        // Set flags
        sign = out[15];  // MSB as sign bit
        zero = ~|out;
    end
endmodule
