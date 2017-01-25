module seven_segment_decoder(x,y,z,A,B,C,D,E,F,G); //seven segment decoder
	input x,y,z;
	output A,B,C,D,E,F,G;
	
	assign A = (~x&y)|(~x&~z)|(x&z);
	assign B = ~x|(~y&~z);
	assign C = ~y|z;
	assign D = (~x&y)|(~x&~z)|(x&z);
	assign E = ~x&~z;
	assign F = (~y&~z)|(x&~y);	
	assign G = x^y;
endmodule