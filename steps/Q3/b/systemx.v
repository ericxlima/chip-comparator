module systemx(
    output reg F,
    input wire A, B, C, D
);
    wire A0, B0;
  
  	assign A0 = ~A;
  	assign B0 = ~B;

    always @ (C, D) begin
        case (C | D)
            2'b00 : F <= A0;
            2'b01 : F <= B;
            2'b10 : F <= B0;
            default : F <= 1'b0;
        endcase
    end
endmodule
