module Lab2_full_sub(D, B, x, y, z);
	output D, B;
	input x, y, z;
	wire D1,B1,B2;
	Lab2_half_sub_gate_level G1(D1,B1,x,y);
	Lab2_half_sub_gate_level G2(D,B2,D1,z);
	or G3(B,B1,B2);
endmodule
