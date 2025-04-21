module pipel(a, b, c, d, clk, f);
    parameter n = 20;
    input [n-1:0] a, b, c, d;
    input clk;
    output [n-1:0] f;
    
    reg [n-1:0] r1, r2, r3, r4, r5, r6;

    always @(posedge clk) begin
        r1 <= a + b;       // r1 = a + b
        r2 <= a - b;       // r2 = a - b
        r3 <= d;           // r3 = d
        r4 <= r1 + r2;     // r4 = r1 + r2
    end

    always @(posedge clk) begin
        r5 <= r4;          // r5 = r4 (delayed version of r4)
    end

    always @(posedge clk) begin
        r6 <= r5;          // r6 = r5 (delayed version of r5)
    end

    // Compute output f at the last stage (r3 * r6)
    always @(posedge clk) begin
        f <= r3 * r6;      // f = r3 * r6
    end
endmodule
