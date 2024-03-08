module  Lab1_dataflow(F,A,B,C,D);
	output F;
	input A,B,C,D;

	assign F=((A||C)&&(B||D))||(((!B)||C)&&(A||D));
endmodule 