/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module multiplier (
        input wire [31:0] a,
        input wire [31:0] b,
        output reg [31:0] out
    );
    logic [31:0] R_7a929aba_i;
    logic [31:0] RR_7a929aba_i;
    logic [31:0] R_01a9c786_j;
    logic [31:0] RR_01a9c786_j;
    logic [31:0] R_114d5c85_k;
    logic [31:0] RR_114d5c85_k;
    logic [495:0] M_fa_a;
    logic [495:0] M_fa_b;
    logic [495:0] M_fa_cin;
    logic [495:0] M_fa_s;
    logic [495:0] M_fa_cout;
    
    genvar idx_0_924433665;
    
    generate
        for (idx_0_924433665 = 0; idx_0_924433665 < 496; idx_0_924433665 = idx_0_924433665 + 1) begin: forLoop_idx_0_924433665
            fa fa (
                .a(M_fa_a[idx_0_924433665]),
                .b(M_fa_b[idx_0_924433665]),
                .cin(M_fa_cin[idx_0_924433665]),
                .s(M_fa_s[idx_0_924433665]),
                .cout(M_fa_cout[idx_0_924433665])
            );
        end
    endgenerate
    
    
    logic [8:0] current_row_fa_index;
    logic [8:0] previous_row_fa_index;
    always @* begin
        M_fa_a = 496'h0;
        M_fa_b = 496'h0;
        M_fa_cin = 496'h0;
        out[1'h0] = b[1'h0] & a[1'h0];
        for (RR_7a929aba_i = 0; RR_7a929aba_i < 5'h1f; RR_7a929aba_i = RR_7a929aba_i + 1) begin
      R_7a929aba_i = (1'h1) + RR_7a929aba_i * (1);
            if (R_7a929aba_i == 1'h1) begin
                for (RR_01a9c786_j = 0; RR_01a9c786_j < 5'h1f; RR_01a9c786_j = RR_01a9c786_j + 1) begin
          R_01a9c786_j = (1'h0) + RR_01a9c786_j * (1);
                    M_fa_a[R_01a9c786_j] = a[R_01a9c786_j] & b[1'h1];
                    M_fa_b[R_01a9c786_j] = a[R_01a9c786_j + 1'h1] & b[1'h0];
                    if (R_01a9c786_j == 1'h0) begin
                        M_fa_cin[R_01a9c786_j] = 1'h0;
                    end else begin
                        M_fa_cin[R_01a9c786_j] = M_fa_cout[R_01a9c786_j - 1'h1];
                    end
                end
                out[1'h1] = M_fa_s[1'h0];
                previous_row_fa_index = 1'h0;
                current_row_fa_index = 5'h1f;
            end else begin
                for (RR_114d5c85_k = 0; RR_114d5c85_k < 6'h20 - R_7a929aba_i; RR_114d5c85_k = RR_114d5c85_k + 1) begin
          R_114d5c85_k = (0) + RR_114d5c85_k * (1);
                    M_fa_a[current_row_fa_index + R_114d5c85_k] = a[R_114d5c85_k] & b[R_7a929aba_i];
                    M_fa_b[current_row_fa_index + R_114d5c85_k] = M_fa_s[previous_row_fa_index + 1'h1 + R_114d5c85_k];
                    if (R_114d5c85_k == 1'h0) begin
                        M_fa_cin[current_row_fa_index + R_114d5c85_k] = 1'h0;
                    end else begin
                        M_fa_cin[current_row_fa_index + R_114d5c85_k] = M_fa_cout[current_row_fa_index + R_114d5c85_k - 1'h1];
                    end
                end
                previous_row_fa_index = current_row_fa_index;
                current_row_fa_index = current_row_fa_index + (6'h20 - R_7a929aba_i);
                out[R_7a929aba_i] = M_fa_s[previous_row_fa_index];
            end
        end
        M_fa_a[9'h1ef] = a[1'h0] & b[5'h1f];
        M_fa_b[9'h1ef] = M_fa_s[9'h1ee];
        M_fa_cin[9'h1ef] = 1'h0;
        out[5'h1f] = M_fa_s[9'h1ef];
    end
    
    
endmodule