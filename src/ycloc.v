module ycloc (cloc,bigtic,reset0,ymov);
input cloc, bigtic,reset0;
output reg ymov;
reg [31:0] lol;
reg [31:0] tic;
always@(posedge reset0 or posedge bigtic)begin if (reset0) tic<=55000000;
else tic<=tic*100/103;end
always@(posedge cloc)begin
lol <= lol + 1;
if (lol>tic) begin ymov<=~ymov; lol<=0; end
end

endmodule
