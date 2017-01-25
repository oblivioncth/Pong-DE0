module scorecounter (rset,scr,zero,one,two,three,four,five);
input rset,scr;
output reg zero,one,two,three,four,five;
reg [2:0]score;
always @ (posedge rset or posedge scr) 
begin
if(rset) score<=0;
else score <= score + 1;
end
//always @ (posedge scr) score<=score+1;
always @ (score)begin
if (score==0) {zero,one,two,three,four,five}<=111000;
if (score==1) {zero,one,two,three,four,five}<=010000;
if (score==2) {zero,one,two,three,four,five}<=001100;
if (score==3) {zero,one,two,three,four,five}<=010100;
if (score==4) {zero,one,two,three,four,five}<=010010;
if (score==5) {zero,one,two,three,four,five}<=000111;
end endmodule 