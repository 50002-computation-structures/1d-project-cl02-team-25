/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module buttonmap_awake (
        input wire [31:0] a,
        input wire [31:0] b,
        output reg [31:0] out
    );
    always @* begin
        
        case (b)
            1'h0: begin
                
                case (a[5'h14:5'h10])
                    5'h0: begin
                        out = 4'h8;
                    end
                    5'h1: begin
                        out = 3'h6;
                    end
                    5'h2: begin
                        out = 4'h8;
                    end
                    5'h3: begin
                        out = 3'h6;
                    end
                    5'h4: begin
                        out = 4'h8;
                    end
                    5'h5: begin
                        out = 3'h6;
                    end
                    5'h6: begin
                        out = 4'h8;
                    end
                    5'h7: begin
                        out = 4'h8;
                    end
                    5'h8: begin
                        out = 4'h8;
                    end
                    5'h9: begin
                        out = 3'h6;
                    end
                    5'ha: begin
                        out = 4'h8;
                    end
                    5'hb: begin
                        out = 3'h6;
                    end
                    5'hc: begin
                        out = 4'h8;
                    end
                    5'hd: begin
                        out = 3'h6;
                    end
                    5'he: begin
                        out = 4'h8;
                    end
                    5'hf: begin
                        out = 3'h6;
                    end
                    5'h10: begin
                        out = 4'h8;
                    end
                    5'h11: begin
                        out = 3'h6;
                    end
                    5'h12: begin
                        out = 4'h8;
                    end
                    5'h13: begin
                        out = 3'h6;
                    end
                    5'h14: begin
                        out = 4'h8;
                    end
                    5'h15: begin
                        out = 4'h8;
                    end
                    5'h16: begin
                        out = 4'h8;
                    end
                    5'h17: begin
                        out = 3'h6;
                    end
                    5'h18: begin
                        out = 4'h8;
                    end
                    5'h19: begin
                        out = 3'h6;
                    end
                    5'h1a: begin
                        out = 4'h8;
                    end
                    5'h1b: begin
                        out = 3'h6;
                    end
                    5'h1c: begin
                        out = 4'h8;
                    end
                    5'h1d: begin
                        out = 3'h6;
                    end
                    5'h1e: begin
                        out = 4'h8;
                    end
                    5'h1f: begin
                        out = 4'h8;
                    end
                    default: begin
                        out = 4'h8;
                    end
                endcase
            end
            1'h1: begin
                
                case (a[5'h14:5'h10])
                    5'h0: begin
                        out = 3'h7;
                    end
                    5'h1: begin
                        out = 2'h2;
                    end
                    5'h2: begin
                        out = 3'h4;
                    end
                    5'h3: begin
                        out = 2'h3;
                    end
                    5'h4: begin
                        out = 2'h2;
                    end
                    5'h5: begin
                        out = 3'h4;
                    end
                    5'h6: begin
                        out = 3'h7;
                    end
                    5'h7: begin
                        out = 2'h2;
                    end
                    5'h8: begin
                        out = 3'h6;
                    end
                    5'h9: begin
                        out = 3'h4;
                    end
                    5'ha: begin
                        out = 3'h4;
                    end
                    5'hb: begin
                        out = 3'h4;
                    end
                    5'hc: begin
                        out = 3'h7;
                    end
                    5'hd: begin
                        out = 2'h2;
                    end
                    5'he: begin
                        out = 3'h6;
                    end
                    5'hf: begin
                        out = 2'h3;
                    end
                    5'h10: begin
                        out = 3'h4;
                    end
                    5'h11: begin
                        out = 3'h4;
                    end
                    5'h12: begin
                        out = 3'h6;
                    end
                    5'h13: begin
                        out = 2'h3;
                    end
                    5'h14: begin
                        out = 3'h4;
                    end
                    5'h15: begin
                        out = 3'h4;
                    end
                    5'h16: begin
                        out = 2'h2;
                    end
                    5'h17: begin
                        out = 3'h4;
                    end
                    5'h18: begin
                        out = 2'h3;
                    end
                    5'h19: begin
                        out = 3'h4;
                    end
                    5'h1a: begin
                        out = 3'h6;
                    end
                    5'h1b: begin
                        out = 2'h3;
                    end
                    5'h1c: begin
                        out = 3'h4;
                    end
                    5'h1d: begin
                        out = 3'h4;
                    end
                    5'h1e: begin
                        out = 3'h6;
                    end
                    5'h1f: begin
                        out = 2'h3;
                    end
                    default: begin
                        out = 3'h4;
                    end
                endcase
            end
            2'h3: begin
                
                case (a[5'h14:5'h10])
                    5'h0: begin
                        out = 2'h2;
                    end
                    5'h1: begin
                        out = 1'h1;
                    end
                    5'h2: begin
                        out = 2'h2;
                    end
                    5'h3: begin
                        out = 1'h0;
                    end
                    5'h4: begin
                        out = 1'h1;
                    end
                    5'h5: begin
                        out = 1'h0;
                    end
                    5'h6: begin
                        out = 2'h3;
                    end
                    5'h7: begin
                        out = 2'h3;
                    end
                    5'h8: begin
                        out = 2'h2;
                    end
                    5'h9: begin
                        out = 1'h1;
                    end
                    5'ha: begin
                        out = 1'h1;
                    end
                    5'hb: begin
                        out = 2'h2;
                    end
                    5'hc: begin
                        out = 2'h2;
                    end
                    5'hd: begin
                        out = 1'h1;
                    end
                    5'he: begin
                        out = 1'h1;
                    end
                    5'hf: begin
                        out = 1'h0;
                    end
                    5'h10: begin
                        out = 2'h2;
                    end
                    5'h11: begin
                        out = 1'h0;
                    end
                    5'h12: begin
                        out = 1'h1;
                    end
                    5'h13: begin
                        out = 1'h1;
                    end
                    5'h14: begin
                        out = 2'h2;
                    end
                    5'h15: begin
                        out = 2'h3;
                    end
                    5'h16: begin
                        out = 1'h1;
                    end
                    5'h17: begin
                        out = 1'h1;
                    end
                    5'h18: begin
                        out = 1'h1;
                    end
                    5'h19: begin
                        out = 1'h0;
                    end
                    5'h1a: begin
                        out = 2'h2;
                    end
                    5'h1b: begin
                        out = 2'h2;
                    end
                    5'h1c: begin
                        out = 1'h1;
                    end
                    5'h1d: begin
                        out = 1'h0;
                    end
                    5'h1e: begin
                        out = 2'h3;
                    end
                    5'h1f: begin
                        out = 1'h1;
                    end
                    default: begin
                        out = 1'h0;
                    end
                endcase
            end
            default: begin
                out = 3'h5;
            end
        endcase
    end
    
    
endmodule