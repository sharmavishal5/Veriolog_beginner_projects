module std_lfsr_tb;

    parameter WIDTH = 4;
    reg clk;
    reg rst;

    wire [WIDTH-1:0] lfsr_out;

    std_lfsr uut(clk, rst, lfsr_out);
    always #5 clk = ~clk; // 10 time units clock period
    initial begin
        clk = 0;
        rst = 1;
        #15;
        rst = 0;
        #200; // Run the simulation for a while
        $finish;
    end
endmodule