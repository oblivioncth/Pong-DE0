module xposv (SorR, clocke,go,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
input SorR, clocke,go;
output reg x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
reg dir;
initial begin {xl,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,xu} = 16'b00000010000000000; dir = 0; end
always @ (posedge clocke or posedge SorR) begin 
if (SorR==0)begin
	if (dir==1) {xl,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,xu} << 1;
	else {xl,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,xu}>>1;end
else {xl,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,xu} = 16'b00000010000000000; end endmodule 