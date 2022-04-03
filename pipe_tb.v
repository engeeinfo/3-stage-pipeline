module pipe_tb;
parameter n=20;
reg[n-1:0] a,b,c,d;
reg clk;
wire[n-1:0] f;

pipel uut(.a(a),.b(b),.c(c),.d(d),.clk(clk),.f(f));

initial begin clk=0;
forever #10 clk=~clk;
end

initial begin
#5 a=10;b=12;c=6;d=3;
#20 a=10;b=10;c=5;d=3;
#20 a=15;b=10;c=8;d=2;
end

initial
begin
$dumpfile("pipe.vcd");
$dumpvars(0,pipe_tb);
$monitor("time:%d,f=%d",$time,f);
end

endmodule
