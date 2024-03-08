module t_Lab2_full_sub;
	wire D,B;
	reg x,y,z;
	Lab2_full_sub full_sub(D, B, x, y, z);
	initial
	 begin
	  x=1'b0; y=1'b0; z=1'b0;
	  #50 x=1'b0; y=1'b0; z=1'b1;
	  #50 x=1'b0; y=1'b1; z=1'b0;
	  #50 x=1'b0; y=1'b1; z=1'b1;
	  #50 x=1'b1; y=1'b0; z=1'b0;
	  #50 x=1'b1; y=1'b0; z=1'b1;
	  #50 x=1'b1; y=1'b1; z=1'b0;
	  #50 x=1'b1; y=1'b1; z=1'b1;
	 end
	initial #400 $finish;
endmodule

