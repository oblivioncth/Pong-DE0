module flicker (cloc,flick);
input cloc;
output reg flick;
reg [16:0] lol;
initial begin lol<=0; flick<=0;end 
always@(posedge cloc)begin
lol <= lol + 1;
if (lol>12500000) begin flick<=~flick; lol<=0; end
end
endmodule