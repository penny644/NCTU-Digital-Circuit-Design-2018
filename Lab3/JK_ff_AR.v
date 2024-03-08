module JK_ff_AR( Q,NQ,J,K,clk,reset);
	output reg Q;
	output NQ;
	reg nextQ;
	input J,K,clk,reset;
	assign NQ=~Q;
	always @(posedge clk,negedge reset)
	  if(reset==0) Q<=0;
	  else case({J,K})
	    2'b00: Q<=Q;
	    2'b01: Q<=0;
	    2'b10: Q<=1;
	    2'b11: Q<=~Q;
	  endcase 
endmodule 