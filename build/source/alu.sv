/*
    This file was generated automatically by Alchitry Labs 2.0.29-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module alu (
        input wire [31:0] a,
        input wire [31:0] b,
        input wire [5:0] alufn,
        output reg [31:0] out,
        output reg z,
        output reg v,
        output reg n
    );
    logic [31:0] R_1649835c_i;
    logic [31:0] RR_1649835c_i;
    localparam SIZE = 6'h20;
    localparam _MP_SIZE_1465832290 = 6'h20;
    logic [31:0] M_adder_a;
    logic [31:0] M_adder_b;
    logic [5:0] M_adder_alufn_signal;
    logic [31:0] M_adder_out;
    logic M_adder_z;
    logic M_adder_v;
    logic M_adder_n;
    
    adder #(
        .SIZE(_MP_SIZE_1465832290)
    ) adder (
        .a(M_adder_a),
        .b(M_adder_b),
        .alufn_signal(M_adder_alufn_signal),
        .out(M_adder_out),
        .z(M_adder_z),
        .v(M_adder_v),
        .n(M_adder_n)
    );
    
    
    logic M_compare_z;
    logic M_compare_v;
    logic M_compare_n;
    logic [5:0] M_compare_alufn;
    logic [0:0] M_compare_cmp;
    
    compare compare (
        .z(M_compare_z),
        .v(M_compare_v),
        .n(M_compare_n),
        .alufn(M_compare_alufn),
        .cmp(M_compare_cmp)
    );
    
    
    localparam _MP_SIZE_855796346 = 6'h20;
    logic [31:0] M_boolean_a;
    logic [31:0] M_boolean_b;
    logic [5:0] M_boolean_alufn;
    logic [31:0] M_boolean_out;
    
    boolean #(
        .SIZE(_MP_SIZE_855796346)
    ) boolean (
        .a(M_boolean_a),
        .b(M_boolean_b),
        .alufn(M_boolean_alufn),
        .out(M_boolean_out)
    );
    
    
    logic [31:0] M_shifter_a;
    logic [4:0] M_shifter_b;
    logic [5:0] M_shifter_alufn;
    logic [31:0] M_shifter_shift;
    
    shifter shifter (
        .a(M_shifter_a),
        .b(M_shifter_b),
        .alufn(M_shifter_alufn),
        .shift(M_shifter_shift)
    );
    
    
    logic [31:0] M_multiplier_a;
    logic [31:0] M_multiplier_b;
    logic [31:0] M_multiplier_out;
    
    multiplier multiplier (
        .a(M_multiplier_a),
        .b(M_multiplier_b),
        .out(M_multiplier_out)
    );
    
    
    logic [31:0] M_divider_a;
    logic [31:0] M_divider_b;
    logic [31:0] M_divider_out;
    
    divider divider (
        .a(M_divider_a),
        .b(M_divider_b),
        .out(M_divider_out)
    );
    
    
    logic [31:0] M_modulo_a;
    logic [31:0] M_modulo_b;
    logic [31:0] M_modulo_out;
    
    modulo modulo (
        .a(M_modulo_a),
        .b(M_modulo_b),
        .out(M_modulo_out)
    );
    
    
    logic [31:0] M_mux4_s0;
    logic [31:0] M_mux4_s1;
    logic [31:0][3:0] M_mux4_in;
    logic [31:0] M_mux4_out;
    
    genvar idx_0_363602400;
    
    generate
        for (idx_0_363602400 = 0; idx_0_363602400 < 32; idx_0_363602400 = idx_0_363602400 + 1) begin: forLoop_idx_0_363602400
            mux_4 mux4 (
                .s0(M_mux4_s0[idx_0_363602400]),
                .s1(M_mux4_s1[idx_0_363602400]),
                .in(M_mux4_in[idx_0_363602400]),
                .out(M_mux4_out[idx_0_363602400])
            );
        end
    endgenerate
    
    
    logic [31:0] M_mux4_01_s0;
    logic [31:0] M_mux4_01_s1;
    logic [31:0][3:0] M_mux4_01_in;
    logic [31:0] M_mux4_01_out;
    
    genvar idx_0_1908907024;
    
    generate
        for (idx_0_1908907024 = 0; idx_0_1908907024 < 32; idx_0_1908907024 = idx_0_1908907024 + 1) begin: forLoop_idx_0_1908907024
            mux_4 mux4_01 (
                .s0(M_mux4_01_s0[idx_0_1908907024]),
                .s1(M_mux4_01_s1[idx_0_1908907024]),
                .in(M_mux4_01_in[idx_0_1908907024]),
                .out(M_mux4_01_out[idx_0_1908907024])
            );
        end
    endgenerate
    
    
    logic [31:0] M_mux2_s0;
    logic [31:0][1:0] M_mux2_in;
    logic [31:0] M_mux2_out;
    
    genvar idx_0_2031031435;
    
    generate
        for (idx_0_2031031435 = 0; idx_0_2031031435 < 32; idx_0_2031031435 = idx_0_2031031435 + 1) begin: forLoop_idx_0_2031031435
            mux_2 mux2 (
                .s0(M_mux2_s0[idx_0_2031031435]),
                .in(M_mux2_in[idx_0_2031031435]),
                .out(M_mux2_out[idx_0_2031031435])
            );
        end
    endgenerate
    
    
    logic [5:0] add_ctr;
    always @* begin
        M_adder_a = a;
        M_adder_b = b;
        M_adder_alufn_signal = alufn;
        z = M_adder_z;
        v = M_adder_v;
        n = M_adder_n;
        M_compare_z = M_adder_z;
        M_compare_v = M_adder_v;
        M_compare_n = M_adder_n;
        M_compare_alufn = alufn;
        M_boolean_a = a;
        M_boolean_b = b;
        M_boolean_alufn = alufn;
        M_shifter_a = a;
        M_shifter_b = b[3'h4:1'h0];
        M_shifter_alufn = alufn;
        M_multiplier_a = a;
        M_multiplier_b = b;
        M_divider_a = a;
        M_divider_b = b;
        M_modulo_a = a;
        M_modulo_b = b;
        M_mux4_s0 = {6'h20{alufn[3'h4]}};
        M_mux4_s1 = {6'h20{alufn[3'h5]}};
        M_mux4_01_s0 = {6'h20{alufn[1'h0]}};
        M_mux4_01_s1 = {6'h20{alufn[1'h1]}};
        M_mux2_s0 = {6'h20{alufn[2'h2]}};
        for (RR_1649835c_i = 0; RR_1649835c_i < 6'h20; RR_1649835c_i = RR_1649835c_i + 1) begin
      R_1649835c_i = (0) + RR_1649835c_i * (1);
            M_mux4_in[R_1649835c_i][1'h0] = M_mux4_01_out[R_1649835c_i];
            M_mux4_in[R_1649835c_i][1'h1] = M_boolean_out[R_1649835c_i];
            M_mux4_in[R_1649835c_i][2'h2] = M_shifter_shift[R_1649835c_i];
            M_mux4_01_in[R_1649835c_i][1'h0] = M_adder_out[R_1649835c_i];
            M_mux4_01_in[R_1649835c_i][1'h1] = M_mux2_out[R_1649835c_i];
            M_mux4_01_in[R_1649835c_i][2'h2] = M_multiplier_out[R_1649835c_i];
            M_mux4_01_in[R_1649835c_i][2'h3] = M_divider_out[R_1649835c_i];
            M_mux2_in[R_1649835c_i][1'h0] = M_adder_out[R_1649835c_i];
            M_mux2_in[R_1649835c_i][1'h1] = M_modulo_out[R_1649835c_i];
            if (R_1649835c_i == 1'h0) begin
                M_mux4_in[R_1649835c_i][2'h3] = M_compare_cmp;
            end else begin
                M_mux4_in[R_1649835c_i][2'h3] = 1'h0;
            end
        end
        out = M_mux4_out;
    end
    
    
endmodule