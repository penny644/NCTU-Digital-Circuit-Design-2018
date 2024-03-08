module Lab2_borrow_lookahead_sub (output [3:0] Diff, output Bout, input [3:0] X, Y, input Bin);
	wire [3:0]G,P,notP,notx,w;
	wire B1,B2,B3;
	not (notx[0],X[0]);
	not (notx[1],X[1]);
	not (notx[2],X[2]);
	not (notx[3],X[3]);
	
	and (G[0],notx[0],Y[0]);
	xor (P[0],X[0],Y[0]);
	not (notP[0],P[0]);
	and (w[0],notP[0],Bin);
	or (B1,w[0],G[0]);
	xor (Diff[0],P[0],Bin);

	and (G[1],notx[1],Y[1]);
	xor (P[1],X[1],Y[1]);
	not (notP[1],P[1]);
	and (w[1],notP[1],B1);
	or (B2,w[1],G[1]);
	xor (Diff[1],P[1],B1);

	and (G[2],notx[2],Y[2]);
	xor (P[2],X[2],Y[2]);
	not (notP[2],P[2]);
	and (w[2],notP[2],B2);
	or (B3,w[2],G[2]);
	xor (Diff[2],P[2],B2);

	and (G[3],notx[3],Y[3]);
	xor (P[3],X[3],Y[3]);
	not (notP[3],P[3]);
	and (w[3],notP[3],B3);
	or (Bout,w[3],G[3]);
	xor (Diff[3],P[3],B3);
endmodule 