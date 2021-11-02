module systemx
	(output wire Z,
	input wire A, B, C, D);

	wire E, F;
  
  	assign E = (A && B && C) || D;
    assign F = A ~& (B ~| C);

	assign Z = E ^ ~F;

endmodule