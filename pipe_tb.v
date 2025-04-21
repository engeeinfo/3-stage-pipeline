module pipe_tb;
    parameter n = 20;
    
    // Declare signals
    reg [n-1:0] a, b, c, d;
    reg clk;
    wire [n-1:0] f;

    // Instantiate the pipelined unit (UUT)
    pipel uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .clk(clk),
        .f(f)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #10 clk = ~clk;  // Clock with a period of 20 time units
    end

    // Stimulus for input values
    initial begin
        // Apply stimulus with delays
        #5 a = 10; b = 12; c = 6; d = 3;
        #20 a = 10; b = 10; c = 5; d = 3;
        #20 a = 15; b = 10; c = 8; d = 2;
        #20 a = 20; b = 15; c = 12; d = 4;
        #20 a = 5;  b = 10; c = 3; d = 1;
        #20 a = 7;  b = 8;  c = 6; d = 9;
        #20 a = 6;  b = 13; c = 11; d = 0;
        #20 a = 10; b = 12; c = 7; d = 6;
    end

    // Simulation dump for waveform analysis
    initial begin
        $dumpfile("pipe.vcd");
        $dumpvars(0, pipe_tb);  // Dump the waveform data
    end

    // Display the value of f at each change
    initial begin
        $monitor("time: %0t, a: %d, b: %d, c: %d, d: %d, f: %d", $time, a, b, c, d, f);
    end
endmodule
