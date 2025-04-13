/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module bit_reverse #(
        parameter SIZE = 6'h20
    ) (
        input wire [(SIZE)-1:0] in,
        output reg [(SIZE)-1:0] reversed
    );
    logic [31:0] R_7720e0b9_i;
    logic [31:0] RR_7720e0b9_i;
    always @* begin
        for (RR_7720e0b9_i = 0; RR_7720e0b9_i < SIZE; RR_7720e0b9_i = RR_7720e0b9_i + 1) begin
      R_7720e0b9_i = (0) + RR_7720e0b9_i * (1);
            reversed[R_7720e0b9_i] = in[SIZE - 1'h1 - R_7720e0b9_i];
        end
    end
    
    
endmodule