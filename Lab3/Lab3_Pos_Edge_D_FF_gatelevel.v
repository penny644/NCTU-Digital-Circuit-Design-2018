module Lab3_Pos_Edge_D_FF_gatelevel(output Q, NQ, input D, clock);
	wire a,b,c,e;
	nand #(2) g1(a,b,e);
	nand #(2) g2(b,a,clock);
	nand #(2) g3(c,b,clock,e);
	nand #(2) g4(e,c,D);
	Lab3_SbRb_Latch_gatelevel g5(Q, NQ, b , c);
endmodule
