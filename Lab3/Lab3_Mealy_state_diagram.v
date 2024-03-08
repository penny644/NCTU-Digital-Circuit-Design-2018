module Lab3_Mealy_state_diagram(output reg z, input x, clock, reset);
	reg [1:0] state;
	parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
	always @(posedge clock,negedge reset)
	  if(reset==0) state<=S0;
	  else case(state)
	    S0: if(x) state<=S2; else state<=S1;
	    S1: if(x) state<=S3; else state<=S0;
	    S2: if(x) state<=S3; else state<=S1;
	    S3: if(x) state<=S2; else state<=S0;
	  endcase
	always @(state,x)
	  case(state)
	    S0: z=~x;
	    S1: z=x;
	    S2: z=x;
	    S3: z=~x;
	  endcase 
endmodule 
