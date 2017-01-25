module fivesec (cloc,flick);
input cloc;
output reg flick;
reg [31:0] lol;
always@(posedge cloc)begin
lol <= lol + 1;
if (lol>12500000) begin flick<=~flick; lol<=0; end
end
endmodule
