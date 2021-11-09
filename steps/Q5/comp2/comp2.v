module comp2(
    output A_gt_B, A_lt_B, A_eq_B, 
    input [1:0] A, B);

    wire tmp1,tmp2,tmp3,tmp4,tmp5, tmp6, tmp7, tmp8;  

    // A = B
    assign tmp1 = A[1] ^~ B[1];  
    assign tmp2 = A[0] ^~ B[0];  
    assign A_eq_B = tmp1 && tmp2;  

    // A < B   
    assign tmp3 = (~A[0]) & (~A[1]) & B[0];  
    assign tmp4 = (~A[1]) & B[1];  
    assign tmp5 = (~A[0]) & B[1] & B[0];  
    assign A_lt_B = tmp3 | tmp4 | tmp5;  

    // A > B   
    assign tmp6 = (~B[0]) & (~B[1]) & A[0];  
    assign tmp7 = (~B[1]) & A[1];  
    assign tmp8 = (~B[0]) & A[1] & A[0];  
    assign A_gt_B = tmp6 | tmp7 | tmp8;  

endmodule 