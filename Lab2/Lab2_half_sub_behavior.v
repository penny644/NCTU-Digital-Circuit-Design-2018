module Lab2_half_sub_behavior(D, B, x, y);
	output reg D, B;
	input x, y;
	always @(*)
	 begin
	  D=x^y;
	  B=(!x)&y;
	 end
endmodule
