module std_lfsr #(
    parameter WIDTH = 4,
    parameter TAPS = 4'b1101, // Example taps for a 4-bit LFSR
    parameter SEED = 4'b0001   // Initial seed value
)(
    input clk,
    input rst,
    output reg [WIDTH-1:0] lfsr_out
);
    wire feedback;
    assign feedback = ^(lfsr_out & TAPS); // XOR the tapped bits

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            lfsr_out <= SEED; // Load seed on reset
        end else begin
            lfsr_out <= {lfsr_out[WIDTH-2:0], feedback}; // Shift and insert feedback
        end
    end
endmodule