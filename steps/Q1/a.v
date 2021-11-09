// Write your modules here!
module circuit2(
		input wire A, C,
		inout wire C);
  	
  	wire B;
  
  	assign #3 B = A && C;
	assign #2 C = !B;
endmodule