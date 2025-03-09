module digital_clock(
    input clock,        
    input reset,        
    output reg [5:0] sec,
    output reg [5:0] min,
    output reg [4:0] hour
);

    reg [31:0] counter;

    always @(posedge clock or posedge reset) begin
        if (reset) begin
            sec <= 0;
            min <= 0;
            hour <= 0;
            counter <= 0;
        end else begin
            counter <= counter + 1;
            
            // Assuming the system clock is 50 MHz, we need 50,000,000 cycles for 1 second
            if (counter == 50_000_000) begin
                counter <= 0;
                sec <= sec + 1;

                if (sec == 59) begin
                    sec <= 0;
                    min <= min + 1;

                    if (min == 59) begin
                        min <= 0;
                        hour <= hour + 1;

                        if (hour == 23) begin
                            hour <= 0;
                        end
                    end
                end
            end
        end
    end
endmodule
