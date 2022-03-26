module updown_counter(input clk,reset,updown, output [2:0] counter);

    reg [2:0] updowncounter;

    always @(posedge clk or posedge reset)
    
    begin
        if(reset==1) 
        begin
            updowncounter <= 3'b0;
        end
        
        else
            if(updown==1)
            begin
                updowncounter <= updowncounter + 1'b1;
            end
            
            else
            begin
                updowncounter <= updowncounter - 1'b1;
            end
    end

    assign counter = updowncounter;
endmodule


/*module up_counter(input clk, reset, output[2:0] counter);
    reg [2:0] counter_up;                           // Initialise register counter_up to find up counter states
    always @(posedge clk or posedge reset)          // Postive edge triggered circuit
    begin
        if(reset)
            begin
                counter_up = 3'd0;                  // If reset==1, set counter to 0000
            end
        else
            begin
                counter_up = counter_up + 3'd1;     // Else, add 0001 to counter
            end       
    end 
    assign counter = counter_up;                    // Return new value of counter
endmodule

module down_counter(input clk, reset, output [2:0] counter);
    reg [2:0] counter_down;                         // Initialise register counter_down to find down counter states
    always @(posedge clk or posedge reset)          // Postive edge triggered circuit
    begin
        if(reset)
            begin
                counter_down = 3'hf;                // If reset==1, set counter to 1111
            end
        else
            begin
                counter_down = counter_down - 3'd1; // Else, subtract 0001 from counter
            end                                     
    end 
    assign counter = counter_down;                  // Return new value of counter
endmodule*/