module pattern_detector1(
    input IN,
    input clock,
    output OUT
);
	reg Qa, Qb, IN;
    
    always @(posedge clock)
        case({Qa,Qb,IN})
		3'b000: begin 
			{Qa,Qb} <= 2'b00;
			assign OUT = 0;
		end
		3'b001: begin
			{Qa,Qb} <= 2'b01;
			assign OUT = 0;
		end
		3'b010: begin
			{Qa,Qb} <= 2'b00;
			assign OUT = 0;
		end
		3'b011: begin 
			{Qa,Qb} <= 2'b10;
			assign OUT = 0;
		end
		3'b100: begin
			{Qa,Qb} <= 2'b00;
			assign OUT = 0;
		end
		3'b101: begin
			{Qa,Qb} <= 2'b11;
			assign OUT = 1;
		end
		3'b110: begin 
			{Qa,Qb} <= 2'b00;
			assign OUT = 0;
		end
		3'b111: begin
			{Qa,Qb} <= 2'b11;
			assign OUT = 1;
		end
	endcase
endmodule

