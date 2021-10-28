module systemx
	(output wire F1, F2, F3,
	input wire A, B, IN);

	wire An, Bn, Cn;
	wire m0, m2,m6;

	assign An = ~A;
	assign Bn = ~B;
	assign Cn = ~C;

	assign F = 0;
	
endmodule
