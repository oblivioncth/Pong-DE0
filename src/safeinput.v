module safeinput (inp,clk3,safe); 
	input inp,clk3; 
	output reg safe; 
reg [63:0] zed; 
always@(posedge clk3)
	begin 
		if (inp==1 & zed==0)
			begin 
				safe <= 1; 
				zed <= zed +1; 
			end 
		else 
			begin 
				if (zed>0) 
					begin safe <=0; 
						if (zed<62500001) zed<=zed+1; 
						else zed<=0; 
					end 
			end 
	end 
endmodule