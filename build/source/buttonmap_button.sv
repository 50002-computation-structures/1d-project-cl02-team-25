/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module buttonmap_button (
        input wire [31:0] a,
        input wire [31:0] b,
        output reg [31:0] out
    );
    always @* begin
        
        case (a[4'ha:3'h5])
            6'h0: begin
                out = 1'h1;
            end
            6'h1: begin
                out = 2'h2;
            end
            6'h2: begin
                out = 3'h4;
            end
            6'h3: begin
                out = 4'h8;
            end
            6'h4: begin
                out = 5'h10;
            end
            6'h5: begin
                out = 6'h20;
            end
            6'h6: begin
                out = 1'h1;
            end
            6'h7: begin
                out = 2'h2;
            end
            6'h8: begin
                out = 3'h4;
            end
            6'h9: begin
                out = 4'h8;
            end
            6'ha: begin
                out = 5'h10;
            end
            6'hb: begin
                out = 6'h20;
            end
            6'hc: begin
                out = 1'h1;
            end
            6'hd: begin
                out = 2'h2;
            end
            6'he: begin
                out = 3'h4;
            end
            6'hf: begin
                out = 4'h8;
            end
            6'h10: begin
                out = 5'h10;
            end
            6'h11: begin
                out = 6'h20;
            end
            6'h12: begin
                out = 1'h1;
            end
            6'h13: begin
                out = 2'h2;
            end
            6'h14: begin
                out = 3'h4;
            end
            6'h15: begin
                out = 4'h8;
            end
            6'h16: begin
                out = 5'h10;
            end
            6'h17: begin
                out = 6'h20;
            end
            6'h18: begin
                out = 1'h1;
            end
            6'h19: begin
                out = 2'h2;
            end
            6'h1a: begin
                out = 3'h4;
            end
            6'h1b: begin
                out = 4'h8;
            end
            6'h1c: begin
                out = 5'h10;
            end
            6'h1d: begin
                out = 6'h20;
            end
            6'h1e: begin
                out = 1'h1;
            end
            6'h1f: begin
                out = 2'h2;
            end
            6'h20: begin
                out = 3'h4;
            end
            6'h21: begin
                out = 4'h8;
            end
            6'h22: begin
                out = 5'h10;
            end
            6'h23: begin
                out = 6'h20;
            end
            6'h24: begin
                out = 1'h1;
            end
            6'h25: begin
                out = 2'h2;
            end
            6'h26: begin
                out = 3'h4;
            end
            6'h27: begin
                out = 4'h8;
            end
            6'h28: begin
                out = 5'h10;
            end
            6'h29: begin
                out = 6'h20;
            end
            6'h2a: begin
                out = 1'h1;
            end
            6'h2b: begin
                out = 2'h2;
            end
            6'h2c: begin
                out = 3'h4;
            end
            6'h2d: begin
                out = 4'h8;
            end
            6'h2e: begin
                out = 5'h10;
            end
            6'h2f: begin
                out = 6'h20;
            end
            6'h30: begin
                out = 1'h1;
            end
            6'h31: begin
                out = 2'h2;
            end
            6'h32: begin
                out = 3'h4;
            end
            6'h33: begin
                out = 4'h8;
            end
            6'h34: begin
                out = 5'h10;
            end
            6'h35: begin
                out = 6'h20;
            end
            6'h36: begin
                out = 1'h1;
            end
            6'h37: begin
                out = 2'h2;
            end
            6'h38: begin
                out = 3'h4;
            end
            6'h39: begin
                out = 4'h8;
            end
            6'h3a: begin
                out = 5'h10;
            end
            6'h3b: begin
                out = 6'h20;
            end
            6'h3c: begin
                out = 1'h1;
            end
            6'h3d: begin
                out = 2'h2;
            end
            6'h3e: begin
                out = 3'h4;
            end
            6'h3f: begin
                out = 4'h8;
            end
            default: begin
                out = 5'h10;
            end
        endcase
    end
    
    
endmodule