/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module adder #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] a,
        input wire [(SIZE)-1:0] b,
        input wire [5:0] alufn_signal,
        output reg [(SIZE)-1:0] out,
        output reg z,
        output reg v,
        output reg n
    );
    localparam _MP_SIZE_867812241 = 6'h20;
    logic [31:0] M_my_rca_a;
    logic [31:0] M_my_rca_b;
    logic M_my_rca_cin;
    logic [31:0] M_my_rca_s;
    
    rca #(
        .SIZE(_MP_SIZE_867812241)
    ) my_rca (
        .a(M_my_rca_a),
        .b(M_my_rca_b),
        .cin(M_my_rca_cin),
        .s(M_my_rca_s)
    );
    
    
    always @* begin
        M_my_rca_a = a;
        M_my_rca_b = b ^ {6'h20{alufn_signal[1'h0]}};
        M_my_rca_cin = alufn_signal[1'h0];
        out = M_my_rca_s;
        z = ~((|M_my_rca_s));
        v = (((alufn_signal[1'h0] ^ b[5'h1f]) & a[5'h1f]) & ~M_my_rca_s[5'h1f]) | ((~(alufn_signal[1'h0] ^ b[5'h1f]) & ~a[5'h1f]) & M_my_rca_s[5'h1f]);
        n = M_my_rca_s[5'h1f];
    end
    
    
endmodule