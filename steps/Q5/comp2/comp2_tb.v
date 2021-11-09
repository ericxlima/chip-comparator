`timescale 1ns / 1ps

module comp2_tb();

    reg [1:0] A_TB, B_TB;
    wire gt_TB, lt_TB, eq_TB;

    comp2 UUT (.A_gt_B(gt_TB), .A_lt_B(lt_TB), .A_eq_B(eq_TB), .A(A_TB), .B(B_TB));

    initial begin
        $dumpfile("comp2_tb.vcd");
        $dumpvars(0,comp2_tb);

            A_TB=2'b00; B_TB=2'b00;
        #10 A_TB=2'b00; B_TB=2'b01;
        #10 A_TB=2'b00; B_TB=2'b10;
        #10 A_TB=2'b00; B_TB=2'b11;
        #10 A_TB=2'b01; B_TB=2'b00;
        #10 A_TB=2'b01; B_TB=2'b01;
        #10 A_TB=2'b01; B_TB=2'b10;
        #10 A_TB=2'b01; B_TB=2'b11;
        #10 A_TB=2'b10; B_TB=2'b00;
        #10 A_TB=2'b10; B_TB=2'b01;
        #10 A_TB=2'b10; B_TB=2'b11;
        #10 A_TB=2'b10; B_TB=2'b10;
        #10 A_TB=2'b11; B_TB=2'b01;
        #10 A_TB=2'b11; B_TB=2'b00;
        #10 A_TB=2'b11; B_TB=2'b11;
        #10 A_TB=2'b11; B_TB=2'b11;
    end

endmodule