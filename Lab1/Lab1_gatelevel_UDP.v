module Lab1_gatelevel_UDP(F,A,B,C,D);
	output F;
	input A,B,C,D;
	wire w1,w2,w3;

	not (w3,B);
	UDP (w1,A,B,C,D);
	UDP (w2,w3,A,C,D);
	or (F,w1,w2);
endmodule
