`timescale 1ns/1ps

module clock_tb;
    reg clock, reset;
    wire [5:0] sec, min;
    wire [4:0] hour;

    digital_clock uut (
        .clock(clock),
        .reset(reset),
        .sec(sec),
        .min(min),
        .hour(hour)
    );

    // Generate a 50 MHz clock
    always #1 clock = ~clock;  // Toggle clock every 1 ns 

    initial begin
        $dumpfile("clock_waveform.vcd");
        $dumpvars(0, clock_tb);

        clock = 0;
        reset = 1;
        #5 reset = 0; // Release reset after 50 ns
        #1_000_000_000; // Run simulation for 1 second

        $finish;
    end
endmodule
