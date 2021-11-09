module system_2(
    output reg F,
    input wire A, B, C, D
);
    wire A0, B0;
  
  	assign A0 = ~A;
  	assign B0 = ~B;

    always @ (C, D) begin
        if (C | D == 2'b00)
            F <= A0;
        else if (C | D == 2'b01)
            F <= B;
        else if (C | D == 2'b10)
            F <= B0;
        else
            F <= 1'b0;
    end
endmodule
