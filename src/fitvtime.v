module fuckitvtime (rset,scr,cloco,zero,one,two,three,four,five);
input rset,scr,cloco;
output reg zero,one,two,three,four,five;
reg [2:0]score;
initial score<=0;
while (rset) score<=0;
while (~rset)begin
always @ (posedge scr) score<=score+1;
always @ (score)begin
if (score==0) {zero,one,two,three,four,five}<=111000;
if (score==1) {zero,one,two,three,four,five}<=010000;
if (score==2) {zero,one,two,three,four,five}<=001100;
if (score==3) {zero,one,two,three,four,five}<=010100;
if (score==4) {zero,one,two,three,four,five}<=010010;
if (score==5) {zero,one,two,three,four,five}<=000111;
end end endmodule 