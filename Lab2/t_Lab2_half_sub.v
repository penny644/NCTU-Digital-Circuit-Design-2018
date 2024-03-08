module t_Lab2_half_sub;
	wire D_gatelevel,B_gatelevel,D_dataflow,B_dataflow,D_behavior,B_behavior;
	reg x,y;

	Lab2_half_sub_gate_level gatelevel(D_gatelevel,B_gatelevel, x, y);
	Lab2_half_sub_dataflow dataflow(D_dataflow,B_dataflow, x, y);
	Lab2_half_sub_behavior behavior(D_behavior,B_behavior, x, y);
	
	initial
	 begin
	  x=1'b0; y=1'b0;
	  #50 x=1'b0; y=1'b1;
  	  #50 x=1'b1; y=1'b0;
  	  #50 x=1'b1; y=1'b1;
	 end
	initial #200 $finish;
endmodule
