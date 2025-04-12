/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module bin_to_dec #(
        parameter DIGITS = 3'h4,
        parameter LEADING_ZEROS = 1'h0
    ) (
        input wire [($clog2((64'(4'ha) ** (DIGITS))))-1:0] value,
        output reg [(DIGITS)-1:0][3:0] digits
    );
    logic [31:0] R_6e038cf7_j;
    logic [31:0] RR_6e038cf7_j;
    logic [31:0] R_684435ea_i;
    logic [31:0] RR_684435ea_i;
    logic [($bits(value))-1:0] L_2f251685_remainder;
    logic L_2f251685_blank;
    logic [($bits(value))-1:0] L_34ba4257_scale;
    logic [($bits(value))-1:0] L_17fdd893_sub_value;
    always @* begin
        digits = {DIGITS{{{4'hb}}}};
        L_2f251685_remainder = value;
        L_2f251685_blank = !LEADING_ZEROS;
        if (value < (64'(4'ha) ** (DIGITS))) begin
            for (RR_6e038cf7_j = 0; RR_6e038cf7_j < DIGITS; RR_6e038cf7_j = RR_6e038cf7_j + 1) begin
        R_6e038cf7_j = (DIGITS - 1'h1) + RR_6e038cf7_j * (-2'sh1);
                L_34ba4257_scale = (64'(4'ha) ** (R_6e038cf7_j));
                if (L_2f251685_remainder < L_34ba4257_scale) begin
                    if (R_6e038cf7_j != 1'h0 && L_2f251685_blank) begin
                        digits[R_6e038cf7_j] = 4'ha;
                    end else begin
                        digits[R_6e038cf7_j] = 1'h0;
                    end
                end else begin
                    L_2f251685_blank = 1'h0;
                    L_17fdd893_sub_value = 1'h0;
                    for (RR_684435ea_i = 0; RR_684435ea_i < 4'h9; RR_684435ea_i = RR_684435ea_i + 1) begin
            R_684435ea_i = (4'h9) + RR_684435ea_i * (-2'sh1);
                        if (L_2f251685_remainder < (R_684435ea_i + 1'h1) * L_34ba4257_scale) begin
                            digits[R_6e038cf7_j] = R_684435ea_i;
                            L_17fdd893_sub_value = R_684435ea_i * L_34ba4257_scale;
                        end
                    end
                    L_2f251685_remainder = L_2f251685_remainder - L_17fdd893_sub_value;
                end
            end
        end
    end
    
    
endmodule