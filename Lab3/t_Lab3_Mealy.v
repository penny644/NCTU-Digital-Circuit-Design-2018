module t_Lab3_Mealy;
	wire z1,z2;
	reg x,clock,reset;
	Lab3_Mealy_structural M1(z1, x, clock, reset);
	Lab3_Mealy_state_diagram M2(z2, x, clock, reset);
	initial 
	  begin 
	    clock=0;
	    forever #5 clock=~clock;
	end
	initial 
	  begin 
	    x=0;
	    repeat(4) #10 x=~x;
	    #20 x=0;
	    #30 x=1;
	end
	initial
	  begin 
	    reset=0;
	    #10 reset=1;
	end
	initial #150 $finish;
endmodule    
	    