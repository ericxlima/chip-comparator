module systemx
    (output wire Y,
    input wire A, B, C, D);
 
    wire E, F;
  
    assign #5 E = (A && B && C) || D;
  	assign #5 F = ~~(A & (B ~| C));
  	
  	// Como a porta NAND recebe uma negação
  	// Ela se transforma em uma porta AND
    assign #2 Y = E ^ ~~F;

endmodule