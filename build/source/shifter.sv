/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module shifter (
        input wire [31:0] a,
        input wire [4:0] b,
        input wire [5:0] alufn,
        output reg [31:0] shift
    );
    logic [31:0] R_4b858797_i;
    logic [31:0] RR_4b858797_i;
    localparam logic [4:0][4:0] _MP_SHIFT_1470321404 = {{5'h1, 5'h2, 5'h4, 5'h8, 5'h10}};
    logic [4:0][31:0] M_xbitleftshift_a;
    logic [4:0] M_xbitleftshift_shift;
    logic [4:0] M_xbitleftshift_pad;
    logic [4:0][31:0] M_xbitleftshift_out;
    
    genvar idx_0_1470321404;
    
    generate
        for (idx_0_1470321404 = 0; idx_0_1470321404 < 5; idx_0_1470321404 = idx_0_1470321404 + 1) begin: forLoop_idx_0_1470321404
            x_bit_left_shifter #(
                .SHIFT(_MP_SHIFT_1470321404[idx_0_1470321404])
            ) xbitleftshift (
                .a(M_xbitleftshift_a[idx_0_1470321404]),
                .shift(M_xbitleftshift_shift[idx_0_1470321404]),
                .pad(M_xbitleftshift_pad[idx_0_1470321404]),
                .out(M_xbitleftshift_out[idx_0_1470321404])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_499665788 = {{5'h1, 5'h2, 5'h4, 5'h8, 5'h10}};
    logic [4:0][31:0] M_xbitrightshift_a;
    logic [4:0] M_xbitrightshift_shift;
    logic [4:0] M_xbitrightshift_pad;
    logic [4:0][31:0] M_xbitrightshift_out;
    
    genvar idx_0_499665788;
    
    generate
        for (idx_0_499665788 = 0; idx_0_499665788 < 5; idx_0_499665788 = idx_0_499665788 + 1) begin: forLoop_idx_0_499665788
            x_bit_right_shifter #(
                .SHIFT(_MP_SHIFT_499665788[idx_0_499665788])
            ) xbitrightshift (
                .a(M_xbitrightshift_a[idx_0_499665788]),
                .shift(M_xbitrightshift_shift[idx_0_499665788]),
                .pad(M_xbitrightshift_pad[idx_0_499665788]),
                .out(M_xbitrightshift_out[idx_0_499665788])
            );
        end
    endgenerate
    
    
    localparam logic [4:0][4:0] _MP_SHIFT_478173249 = {{5'h1, 5'h2, 5'h4, 5'h8, 5'h10}};
    logic [4:0][31:0] M_xbitrightsignshift_a;
    logic [4:0] M_xbitrightsignshift_shift;
    logic [4:0] M_xbitrightsignshift_pad;
    logic [4:0][31:0] M_xbitrightsignshift_out;
    
    genvar idx_0_478173249;
    
    generate
        for (idx_0_478173249 = 0; idx_0_478173249 < 5; idx_0_478173249 = idx_0_478173249 + 1) begin: forLoop_idx_0_478173249
            x_bit_right_arithmetic_shifter #(
                .SHIFT(_MP_SHIFT_478173249[idx_0_478173249])
            ) xbitrightsignshift (
                .a(M_xbitrightsignshift_a[idx_0_478173249]),
                .shift(M_xbitrightsignshift_shift[idx_0_478173249]),
                .pad(M_xbitrightsignshift_pad[idx_0_478173249]),
                .out(M_xbitrightsignshift_out[idx_0_478173249])
            );
        end
    endgenerate
    
    
    always @* begin
        M_xbitleftshift_a = {{32'h0, 32'h0, 32'h0, 32'h0, 32'h0}};
        M_xbitleftshift_shift = 1'h0;
        M_xbitleftshift_pad = 1'h0;
        shift = M_xbitleftshift_out[1'h0];
        M_xbitrightshift_a = {{32'h0, 32'h0, 32'h0, 32'h0, 32'h0}};
        M_xbitrightshift_shift = 1'h0;
        M_xbitrightshift_pad = 1'h0;
        M_xbitrightsignshift_a = {{32'h0, 32'h0, 32'h0, 32'h0, 32'h0}};
        M_xbitrightsignshift_pad = 1'h0;
        M_xbitrightsignshift_shift = 1'h0;
        for (RR_4b858797_i = 0; RR_4b858797_i < 3'h5; RR_4b858797_i = RR_4b858797_i + 1) begin
      R_4b858797_i = (0) + RR_4b858797_i * (1);
            if (R_4b858797_i == 1'h0) begin
                M_xbitleftshift_a[R_4b858797_i] = a;
                M_xbitleftshift_shift[R_4b858797_i] = b[3'h4 - R_4b858797_i];
                M_xbitleftshift_pad[R_4b858797_i] = 1'h0;
                M_xbitrightshift_a[R_4b858797_i] = a;
                M_xbitrightshift_shift[R_4b858797_i] = b[3'h4 - R_4b858797_i];
                M_xbitrightshift_pad[R_4b858797_i] = 1'h0;
                M_xbitrightsignshift_a[R_4b858797_i] = a;
                M_xbitrightsignshift_shift[R_4b858797_i] = b[3'h4 - R_4b858797_i];
                M_xbitrightsignshift_pad[R_4b858797_i] = a[5'h1f];
            end else begin
                M_xbitleftshift_a[R_4b858797_i] = M_xbitleftshift_out[R_4b858797_i - 1'h1];
                M_xbitleftshift_shift[R_4b858797_i] = b[3'h4 - R_4b858797_i];
                M_xbitleftshift_pad[R_4b858797_i] = 1'h0;
                M_xbitrightshift_a[R_4b858797_i] = M_xbitrightshift_out[R_4b858797_i - 1'h1];
                M_xbitrightshift_shift[R_4b858797_i] = b[3'h4 - R_4b858797_i];
                M_xbitrightshift_pad[R_4b858797_i] = 1'h0;
                M_xbitrightsignshift_a[R_4b858797_i] = M_xbitrightsignshift_out[R_4b858797_i - 1'h1];
                M_xbitrightsignshift_shift[R_4b858797_i] = b[3'h4 - R_4b858797_i];
                M_xbitrightsignshift_pad[R_4b858797_i] = a[5'h1f];
            end
        end
        
        case (alufn[1'h1:1'h0])
            2'h0: begin
                shift = M_xbitleftshift_out[3'h4];
            end
            2'h1: begin
                shift = M_xbitrightshift_out[3'h4];
            end
            2'h3: begin
                shift = M_xbitrightsignshift_out[3'h4];
            end
            default: begin
                shift = 1'h0;
            end
        endcase
    end
    
    
endmodule