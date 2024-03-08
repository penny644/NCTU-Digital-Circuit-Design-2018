module t_Lab2_BCD_7segment_decoder;
	wire [6:0] A1,A2,A3;
	reg [3:0] D;
	Lab2_BCD_7segment_decoder_gatelevel gatelevel(A1,D);
	Lab2_BCD_7segment_decoder_dataflow dataflow(A2,D);
	Lab2_BCD_7segment_decoder_behavior behavior(A3,D);
	initial
	 begin
	  D=4'b0000;
	  repeat(15)
	  #50 D=D+4'b0001;
	 end
	initial #800 $finish;
endmodule
