module qeeq (cloc,bigtic,reset0,xmov);
input cloc, bigtic,reset0;
output reg xmov;
reg [31:0] lol;
reg [31:0] tic;
always@(posedge reset0 or posedge bigtic)begin if (reset0) tic<=12500000;
else tic<=tic*100/105;end
always@(posedge cloc)begin
lol <= lol + 1;
if (lol>tic) begin xmov<=~xmov; lol<=0; end
end

endmodule
