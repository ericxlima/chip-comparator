`timescale 1ns/1ps

module systemx_tb();

	reg A_TB, B_TB;
	wire F_TB;

	systemx DUT(.F(F_TB), .A(A_TB), .B(B_TB));
    initial
		begin
			$dumpfile("systemx_tb.vcd");
			$dumpvars(0,systemx_tb);
		
				A_TB=0; B_TB=0;
			#10 A_TB=0; B_TB=1;
			#10 A_TB=1; B_TB=0;
			#10 A_TB=1; B_TB=1;			
		end
endmodule
