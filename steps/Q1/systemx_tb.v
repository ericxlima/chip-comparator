`timescale 1ns/1ps

module systemx_tb();
	reg A_TB;
	wire C_TB;

	systemx DUT(.C(C_TB), .A(A_TB));

	initial
		begin
			$dumpfile("systemx_tb.vcd");
			$dumpvars(0,systemx_tb);
		
				A_TB=0;
			#10 A_TB=1;
		end

endmodule
