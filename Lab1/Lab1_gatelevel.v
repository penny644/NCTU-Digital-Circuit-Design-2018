module Lab1_gatelevel(F,A,B,C,D);
	output F;
	input A,B,C,D;
	wire w1,w2,w3,w4,w5,w6,w7;
	
	not G1(w7,B);
	or G2(w1,A,C);
	or G3(w2,D,B);
	or G4(w3,w7,C);
	or G5(w4,D,A);
	and G6(w5,w1,w2);
	and G7(w6,w3,w4);
	or G8(F,w5,w6);
endmodule

