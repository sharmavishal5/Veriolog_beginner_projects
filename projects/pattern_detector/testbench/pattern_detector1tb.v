module pattern_detector1tb();
    reg IN;
    reg clock;
    wire OUT;
    
    pattern_detector1 dut(
        .IN(IN),
        .clock(clock),
        .OUT(OUT)
    );
    
    always #5 clock = ~clock; 
    
    initial begin
        $dumpfile("pattern_detector1.vcd");
        $dumpvars(0, pattern_detector1tb);
        clock = 0;
        IN = 0;
        #10 IN = 1; 
        #10 IN = 0; 
        #10 IN = 1; 
        #10 IN = 1; 
        #10 IN = 0; 
        #10 IN = 1; 
        #10 IN = 1; 
        #10 IN = 0;
        #10 IN = 0;
        #10 IN = 1;
        #10 IN = 1;
        #10 IN = 1;
        #10 IN = 1;
        #10 IN = 1;
        #10 IN = 0;
        #10 IN = 1;
        #10 IN = 1;
        #10 IN = 1;
        #10 IN = 1;
        #10 IN = 0;
        #10 IN = 1;
        #20;
        $finish;
    end
    initial begin
        $monitor("Time = %0t, IN = %b, OUT = %b", $time, IN, OUT);
    end
endmodule
