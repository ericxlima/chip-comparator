// Write your modules here!
module systemx(
		input wire A,
		inout wire C,
		output wire C);

  	assign #3 B = A && C;
	assign #2 C = !B;
endmodule