module Lab3_SbRb_Latch_gatelevel(output Q, NQ, input Sb, Rb);
	nand #(2)g3(Q,Sb,NQ);
	nand #(2)g4(NQ,Rb,Q);
endmodule 