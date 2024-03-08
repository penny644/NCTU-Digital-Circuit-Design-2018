module t_Lab2_4_bit_sub;
	wire [3:0]Diff1,Diff2;
	wire Bout1,Bout2;
	reg [3:0]X,Y;
	reg Bin;
	Lab2_ripple_borrow_4_bit_sub M1(Diff1, Bout1, X, Y, Bin);
	Lab2_borrow_lookahead_sub M2(Diff2, Bout2,X, Y, Bin);
	initial
	 begin
	  X=4'b1101; Y=4'b0101; Bin=0;
	  #50 X=4'b1100; Y=4'b1000; Bin=1;
	  #50 X=4'b0101; Y=4'b1101; Bin=0;
	  #50 X=4'b1000; Y=4'b1100; Bin=1;
	  #50 X=4'b0101; Y=4'b0101; Bin=0;
	  #50 X=4'b1011; Y=4'b1011; Bin=1;
	 end
	initial #300 $finish;
endmodule
