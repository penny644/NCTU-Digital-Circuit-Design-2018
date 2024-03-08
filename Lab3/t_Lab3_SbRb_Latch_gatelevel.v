module t_Lab3_SbRb_Latch_gatelevel;
	wire Q,NQ;
	reg Sb,Rb;
	Lab3_SbRb_Latch_gatelevel M1(Q, NQ, Sb, Rb);
	initial 
	  begin 
	    Sb=1; Rb=0;
	    #10 Sb=1; Rb=1;
	    #10 Sb=0; Rb=1;
	    #10 Sb=1; Rb=1;
	    #10 Sb=0; Rb=0;
	    #10 Sb=1; Rb=1;
	    #10 Sb=1; Rb=0;
	  end
	initial #70 $finish;
endmodule
	    