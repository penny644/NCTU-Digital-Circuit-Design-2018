module Lab2_half_sub_gate_level(D, B, x, y);
	output D, B;
	input x, y;
	wire notx;
	not G1(notx,x);
	xor G2(D,x,y);
	and G3(B,notx,y);
endmodule
