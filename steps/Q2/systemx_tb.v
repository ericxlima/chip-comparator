`timescale 1ns/1ps

module systemx_tb();

	reg A_TB, B_TB, C_TB, D_TB;
	wire Y_TB;

	systemx DUT(.Y(Y_TB), .A(A_TB), .B(B_TB), .C(C_TB), .D(D_TB));

	initial
		begin
			$dumpfile("systemx_tb.vcd");
			$dumpvars(0,systemx_tb);
		
				A_TB=0; B_TB=0; C_TB=0; D_TB=0 ;
			#10 A_TB=0; B_TB=0; C_TB=0; D_TB=1 ;
			#10 A_TB=0; B_TB=0; C_TB=1; D_TB=0 ;
			#10 A_TB=0; B_TB=0; C_TB=1; D_TB=1 ;
			#10 A_TB=0; B_TB=1; C_TB=0; D_TB=0 ;
			#10 A_TB=0; B_TB=1; C_TB=0; D_TB=1 ;
			#10 A_TB=0; B_TB=1; C_TB=1; D_TB=0 ;
			#10 A_TB=0; B_TB=1; C_TB=1; D_TB=1 ;
			#10 A_TB=1; B_TB=0; C_TB=0; D_TB=0 ;
			#10 A_TB=1; B_TB=0; C_TB=0; D_TB=1 ;
			#10 A_TB=1; B_TB=0; C_TB=1; D_TB=0 ;
			#10 A_TB=1; B_TB=0; C_TB=1; D_TB=1 ;
			#10 A_TB=1; B_TB=1; C_TB=0; D_TB=0 ;
			#10 A_TB=1; B_TB=1; C_TB=0; D_TB=1 ;
			#10 A_TB=1; B_TB=1; C_TB=1; D_TB=0 ;
            #10 A_TB=1; B_TB=1; C_TB=1; D_TB=1 ;
			#10 A_TB=0; B_TB=0; C_TB=0; D_TB=0 ;
		end

endmodule
