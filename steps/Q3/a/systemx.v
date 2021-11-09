module systemx(
    output wire F,
    input wire A, B, C, D
);
    wire A0, B0;
  
  	assign A0 = ~A;
  	assign B0 = ~B;

    assign F = D ? (C ? 1'b0 : B0) : (C ? B : A0);

endmodule
