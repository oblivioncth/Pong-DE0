module slow(clk, sclk);
	input clk;
	output reg sclk;
reg [31:0] greg;
always@(posedge clk)
	begin greg <= greg + 1;
		if (greg>15000000) 
			begin sclk<=~sclk;
				greg<=0;
			end
	end
endmodule
