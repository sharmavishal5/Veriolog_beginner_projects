module multest();
    reg [15:0] A, B;
    wire [31:0] Out;  
  
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
