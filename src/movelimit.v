module movelimit (inpit,fingclock,megacharizard);
input inpit,fingclock;
output reg megacharizard;
reg [22:0] zed;
always@(posedge fingclock)begin if (inpit==1 & zed==0)begin
												megacharizard <= 1;
												zed <= zed +1; end
											else begin if (zed>0) begin megacharizard <=0;
												if (zed<62500000) zed<=zed+1;
												else zed<=0; end end end endmodule
											
												