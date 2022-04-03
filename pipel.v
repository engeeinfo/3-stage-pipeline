module pipel(a,b,c,d,clk,f);
parameter n=20;
input[n-1:0] a,b,c,d;
input clk;
output[n-1:0] f;
reg[n-1:0] r1,r2,r3,r4,r5,r6,f;
always@(posedge clk)
begin
r1<=a+b;
r2<=a-b;
r3<=d;
end

always@(posedge clk)
begin
r3<=r1+r2;
r5<=r3;
end

always@(posedge clk)
begin
r6<=r5;
f=r3*r6;
end
endmodule
