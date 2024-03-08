module Lab3_Mealy_structural (output z, input x, clock, reset);
	wire JA,JB,KA,KB,A,B,nota,notb;
	assign JA=x;
	assign KA=~x;
	assign JB=~x||A;
	assign KB=~x||A;
	assign z=~(A^B^x);
	JK_ff_AR g1( A,nota,JA,KA,clock,reset); 
	JK_ff_AR g2( B,notb,JB,KB,clock,reset); 
endmodule
