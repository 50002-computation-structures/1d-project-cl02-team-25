/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module game_regfiles (
        input wire clk,
        input wire rst,
        input wire [4:0] wa,
        input wire we,
        input wire [31:0] data,
        input wire [4:0] ra1,
        input wire [4:0] ra2,
        output reg [31:0] rd1,
        output reg [31:0] rd2,
        output reg [31:0] timerout,
        output reg [31:0] scoreout,
        output reg [31:0] buttonmapout,
        output reg [31:0] modeout,
        output reg [31:0] levelcounterout,
        output reg [31:0] awakeout,
        output reg [31:0] activebuttonout,
        output reg [31:0] activetypeout,
        output reg [31:0] cooldownout
    );
    logic [31:0] D_timer_d, D_timer_q = 1'h0;
    logic [31:0] D_score_d, D_score_q = 1'h0;
    logic [31:0] D_buttonmap_d, D_buttonmap_q = 1'h0;
    logic [31:0] D_mode_d, D_mode_q = 1'h0;
    logic [31:0] D_levelcounter_d, D_levelcounter_q = 1'h0;
    logic [31:0] D_awake_d, D_awake_q = 1'h0;
    logic [31:0] D_activebutton_d, D_activebutton_q = 1'h0;
    logic [31:0] D_activetype_d, D_activetype_q = 1'h0;
    logic [31:0] D_cooldown_d, D_cooldown_q = 1'h0;
    logic [31:0] D_tempforcmp_d, D_tempforcmp_q = 1'h0;
    logic [31:0] D_tempforadd_d, D_tempforadd_q = 1'h0;
    always @* begin
        D_timer_d = D_timer_q;
        D_score_d = D_score_q;
        D_buttonmap_d = D_buttonmap_q;
        D_mode_d = D_mode_q;
        D_levelcounter_d = D_levelcounter_q;
        D_awake_d = D_awake_q;
        D_activebutton_d = D_activebutton_q;
        D_activetype_d = D_activetype_q;
        D_cooldown_d = D_cooldown_q;
        D_tempforcmp_d = D_tempforcmp_q;
        D_tempforadd_d = D_tempforadd_q;
        
        if (we) begin
            
            case (wa)
                1'h0: begin
                    D_timer_d = data;
                end
                1'h1: begin
                    D_score_d = data;
                end
                2'h2: begin
                    D_buttonmap_d = data;
                end
                2'h3: begin
                    D_mode_d = data;
                end
                3'h4: begin
                    D_levelcounter_d = data;
                end
                3'h5: begin
                    D_awake_d = data;
                end
                3'h6: begin
                    D_activebutton_d = data;
                end
                3'h7: begin
                    D_activetype_d = data;
                end
                4'h8: begin
                    D_cooldown_d = data;
                end
                4'h9: begin
                    D_tempforcmp_d = data;
                end
                4'ha: begin
                    D_tempforadd_d = data;
                end
            endcase
        end
        
        case (ra1)
            1'h0: begin
                rd1 = D_timer_q;
            end
            1'h1: begin
                rd1 = D_score_q;
            end
            2'h2: begin
                rd1 = D_buttonmap_q;
            end
            2'h3: begin
                rd1 = D_mode_q;
            end
            3'h4: begin
                rd1 = D_levelcounter_q;
            end
            3'h5: begin
                rd1 = D_awake_q;
            end
            3'h6: begin
                rd1 = D_activebutton_q;
            end
            3'h7: begin
                rd1 = D_activetype_q;
            end
            4'h8: begin
                rd1 = D_cooldown_q;
            end
            4'h9: begin
                rd1 = D_tempforcmp_q;
            end
            4'ha: begin
                rd1 = D_tempforadd_q;
            end
            default: begin
                rd1 = 1'h0;
            end
        endcase
        
        case (ra2)
            1'h0: begin
                rd2 = D_timer_q;
            end
            1'h1: begin
                rd2 = D_score_q;
            end
            2'h2: begin
                rd2 = D_buttonmap_q;
            end
            2'h3: begin
                rd2 = D_mode_q;
            end
            3'h4: begin
                rd2 = D_levelcounter_q;
            end
            3'h5: begin
                rd2 = D_awake_q;
            end
            3'h6: begin
                rd2 = D_activebutton_q;
            end
            3'h7: begin
                rd2 = D_activetype_q;
            end
            4'h8: begin
                rd2 = D_cooldown_q;
            end
            4'h9: begin
                rd2 = D_tempforcmp_q;
            end
            4'ha: begin
                rd2 = D_tempforadd_q;
            end
            default: begin
                rd2 = 1'h0;
            end
        endcase
        timerout = D_timer_q;
        scoreout = D_score_q;
        buttonmapout = D_buttonmap_q;
        modeout = D_mode_q;
        levelcounterout = D_levelcounter_q;
        awakeout = D_awake_q;
        activebuttonout = D_activebutton_q;
        activetypeout = D_activetype_q;
        cooldownout = D_cooldown_q;
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_timer_q <= 1'h0;
            D_score_q <= 1'h0;
            D_buttonmap_q <= 1'h0;
            D_mode_q <= 1'h0;
            D_levelcounter_q <= 1'h0;
            D_awake_q <= 1'h0;
            D_activebutton_q <= 1'h0;
            D_activetype_q <= 1'h0;
            D_cooldown_q <= 1'h0;
            D_tempforcmp_q <= 1'h0;
            D_tempforadd_q <= 1'h0;
        end else begin
            D_timer_q <= D_timer_d;
            D_score_q <= D_score_d;
            D_buttonmap_q <= D_buttonmap_d;
            D_mode_q <= D_mode_d;
            D_levelcounter_q <= D_levelcounter_d;
            D_awake_q <= D_awake_d;
            D_activebutton_q <= D_activebutton_d;
            D_activetype_q <= D_activetype_d;
            D_cooldown_q <= D_cooldown_d;
            D_tempforcmp_q <= D_tempforcmp_d;
            D_tempforadd_q <= D_tempforadd_d;
        end
    end
endmodule