/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module rca #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] a,
        input wire [(SIZE)-1:0] b,
        input wire cin,
        output reg [(SIZE)-1:0] s
    );
    logic [31:0] R_090092ba_i;
    logic [31:0] RR_090092ba_i;
    logic [31:0] M_fa_a;
    logic [31:0] M_fa_b;
    logic [31:0] M_fa_cin;
    logic [31:0] M_fa_s;
    logic [31:0] M_fa_cout;
    
    genvar idx_0_1871311855;
    
    generate
        for (idx_0_1871311855 = 0; idx_0_1871311855 < 32; idx_0_1871311855 = idx_0_1871311855 + 1) begin: forLoop_idx_0_1871311855
            fa fa (
                .a(M_fa_a[idx_0_1871311855]),
                .b(M_fa_b[idx_0_1871311855]),
                .cin(M_fa_cin[idx_0_1871311855]),
                .s(M_fa_s[idx_0_1871311855]),
                .cout(M_fa_cout[idx_0_1871311855])
            );
        end
    endgenerate
    
    
    always @* begin
        M_fa_a = a;
        M_fa_b = b;
        M_fa_cin = 1'h0;
        for (RR_090092ba_i = 0; RR_090092ba_i < 6'h20; RR_090092ba_i = RR_090092ba_i + 1) begin
      R_090092ba_i = (0) + RR_090092ba_i * (1);
            if (R_090092ba_i == 1'h0) begin
                M_fa_cin[1'h0] = cin;
            end else begin
                M_fa_cin[R_090092ba_i] = M_fa_cout[R_090092ba_i - 1'h1];
            end
        end
        s = M_fa_s;
    end
    
    
endmodule