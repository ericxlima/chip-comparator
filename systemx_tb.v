`timescale 1ns/1ps

module systemx_tb();

	reg A_TB, B_TB;
	wire F1_TB, F2_TB, F3_TB;

	systemx DUT(.F1(F1_TB), .F2(F2_TB), .F3(F3_TB), 
                .A(A_TB), .B(B_TB));

	initial
		begin
		
			$dumpfile("systemx_tb.vcd");
			$dumpvars(0,systemx_tb);
		
			    A_TB=0; B_TB=0;
			#10 A_TB=0; B_TB=0;
			#10 A_TB=0; B_TB=1;
			#10 A_TB=0; B_TB=1;
			#10 A_TB=1; B_TB=0;
			#10 A_TB=1; B_TB=0;
			#10 A_TB=1; B_TB=1;
			#10 A_TB=1; B_TB=1;
			#10 A_TB=0; B_TB=0;
		end

endmodule
