`timescale 1ns/1ps

// Renomeação de output Z para Y
module systemx
    (output wire Y,
    input wire A, B, C, D);
 
    wire E, F0, F;
  
    assign #5 E = (A && B && C) || D;
  	assign #5 F0 = A ~& (B ~| C);
  	assign #2 F = ~F0;
  
    assign #5 Y = E ^ F;

endmodule
