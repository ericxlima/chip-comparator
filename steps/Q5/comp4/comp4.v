module comp4(
    output A_eq_B, A_gt_B, A_lt_B, 
  	input [3:0] A, B);
    
    wire gt1, gt2, lt1, lt2, eq1, eq2;
    
    comp2 OP2(gt2, lt2, eq2, A[3:2], B[3:2]);
    comp2 OP1(gt1, lt1, eq1, A[1:0], B[1:0]);
    
    assign A_gt_B = (gt2)|(eq2 & gt1);
    assign A_lt_B = (lt2)|(eq2 & lt1);
    assign A_eq_B = eq1 & eq2; 
endmodule