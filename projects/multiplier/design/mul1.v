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