module comp8(
    output A_eq_B, A_gt_B, A_lt_B, 
  	input [7:0] A, B);
    
    wire gt1, gt2, lt1, lt2, eq1, eq2;
    
    comp4 OP2(gt2, lt2, eq2, A[7:4], B[7:4]);
    comp4 OP1(gt1, lt1, eq1, A[3:0], B[3:0]);
    
    assign A_gt_B = (gt2)|(eq2 & gt1);
    assign A_lt_B = (lt2)|(eq2 & lt1);
    assign A_eq_B = eq1 & eq2; 
endmodule