module systemx(
    output reg A,
    input wire B1, B2, B3, C
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



module systemx(
    output reg A,
  input wire [1:0] B1, B2, B3, C
);

  always @(B1, B2, B3, C) begin
        case (C)
            2'b01 : A = B1;
            2'b10 : A = B2;
            2'b11 : A = B3;
            default: A = 0;
        endcase    
    end

endmodule