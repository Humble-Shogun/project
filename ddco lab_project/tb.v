module testbench_updown();
    reg clk,reset,updown;
    wire [2:0] counter;

    updown_counter fun(clk, reset, updown, counter);

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0,testbench_updown);
    end
    initial begin
        clk=0;
        repeat(90)
         #5 clk=~clk;
    end
    initial begin
        reset=1;
        updown=0;
        #20;
        reset=0;
        #200
        updown=1;
    end
endmodule


/*module counter_testbench();
    reg clk, reset;
    wire [2:0] counter1,counter2;

    up_counter up(clk, reset, counter1);
    down_counter down(clk, reset, counter2);

    initial begin
        $dumpfile("Counter.vcd");
        $dumpvars(0,counter_testbench);
    end
    initial begin 
        clk=0;
        repeat(96) 
            #5 clk=~clk;
    end
    initial begin
        reset = 1;
        #10
        reset = 0;
    end
endmodule*/