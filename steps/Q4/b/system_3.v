module system_3(
    output reg A,
  input wire [1:0] B1, B2, B3, C1, C2, C3
);
  always @(B1, B2, B3, C1, C2, C3) begin
    	if (C1 == 2'b01)
            A = B1;
    	else if (C2 == 2'b01)
            A = B2;
    	else if (C3 == 2'b01)
        	A = B3;
      	else
            A = 1'b00;
    end
endmodule