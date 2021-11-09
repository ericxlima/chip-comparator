// A = B1 when C = 1 else B2 when C = 2 else B3 when C = 3 else 0;
// write using structure if-else

module system_1(
    output reg A,
    input wire [1:0] B1, B2, B3, C
);
    always @(B1, B2, B3, C) begin
        if (C == 2'b01)
            A = B1;
      	else if (C == 2'b10)
            A = B2;
      	else if (C == 2'b11)
        	A = B3;
      	else
            A = 0;
    end
endmodule
