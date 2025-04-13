/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
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
    localparam SIZE = 6'h20;
    localparam _MP_SIZE_1156542066 = 6'h20;
    logic [31:0] M_adder_a;
    logic [31:0] M_adder_b;
    logic [5:0] M_adder_alufn_signal;
    logic [31:0] M_adder_out;
    logic M_adder_z;
    logic M_adder_v;
    logic M_adder_n;
    
    adder #(
        .SIZE(_MP_SIZE_1156542066)
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
    
    
    localparam _MP_SIZE_1844656957 = 6'h20;
    logic [31:0] M_boolean_a;
    logic [31:0] M_boolean_b;
    logic [5:0] M_boolean_alufn;
    logic [31:0] M_boolean_out;
    
    boolean #(
        .SIZE(_MP_SIZE_1844656957)
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
    
    
    logic [31:0] M_activebutton_a;
    logic [31:0] M_activebutton_b;
    logic [31:0] M_activebutton_out;
    
    buttonmap_button activebutton (
        .a(M_activebutton_a),
        .b(M_activebutton_b),
        .out(M_activebutton_out)
    );
    
    
    logic [31:0] M_activetype_a;
    logic [31:0] M_activetype_b;
    logic [31:0] M_activetype_out;
    
    buttonmap_type activetype (
        .a(M_activetype_a),
        .b(M_activetype_b),
        .out(M_activetype_out)
    );
    
    
    logic [31:0] M_awake_a;
    logic [31:0] M_awake_b;
    logic [31:0] M_awake_out;
    
    buttonmap_awake awake (
        .a(M_awake_a),
        .b(M_awake_b),
        .out(M_awake_out)
    );
    
    
    logic [31:0] M_cooldown_a;
    logic [31:0] M_cooldown_b;
    logic [31:0] M_cooldown_out;
    
    buttonmap_cooldown cooldown (
        .a(M_cooldown_a),
        .b(M_cooldown_b),
        .out(M_cooldown_out)
    );
    
    
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
        M_activebutton_a = a;
        M_activebutton_b = b;
        M_activetype_a = a;
        M_activetype_b = b;
        M_awake_a = a;
        M_awake_b = b;
        M_cooldown_a = a;
        M_cooldown_b = b;
        
        case (alufn)
            6'h0: begin
                out = M_adder_out;
            end
            6'h1: begin
                out = M_adder_out;
            end
            6'h2: begin
                out = M_multiplier_out;
            end
            6'h18: begin
                out = M_boolean_out;
            end
            6'h1e: begin
                out = M_boolean_out;
            end
            6'h16: begin
                out = M_boolean_out;
            end
            6'h1a: begin
                out = M_boolean_out;
            end
            6'h20: begin
                out = M_shifter_shift;
            end
            6'h21: begin
                out = M_shifter_shift;
            end
            6'h23: begin
                out = M_shifter_shift;
            end
            6'h33: begin
                out = M_compare_cmp;
            end
            6'h35: begin
                out = M_compare_cmp;
            end
            6'h37: begin
                out = M_compare_cmp;
            end
            6'h38: begin
                out = M_activebutton_out;
            end
            6'h39: begin
                out = M_activetype_out;
            end
            6'h3a: begin
                out = M_awake_out;
            end
            6'h3b: begin
                out = M_cooldown_out;
            end
            default: begin
                out = 1'h0;
            end
        endcase
    end
    
    
endmodule