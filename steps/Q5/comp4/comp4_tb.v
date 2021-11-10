`timescale 1ns / 1ps

module comp4_tb();

    reg [3:0] A_TB, B_TB;
    wire gt_TB, lt_TB, eq_TB;

    comp2 UUT (.A_gt_B(gt_TB), .A_lt_B(lt_TB), .A_eq_B(eq_TB), .A(A_TB), .B(B_TB));

    initial begin
        $dumpfile("comp4_tb.vcd");
        $dumpvars(0,comp4_tb);

            // Igual
            A_TB=4'b0000; B_TB=4'b0000;
        #10 A_TB=4'b1111; B_TB=4'b1111;
            // Maior
        #10 A_TB=4'b1111; B_TB=4'b0010;
        #10 A_TB=4'b1111; B_TB=4'b1100;
            // Menor
        #10 A_TB=4'b0000; B_TB=4'b1100;
        #10 A_TB=4'b0111; B_TB=4'b1110;

    end

endmodule