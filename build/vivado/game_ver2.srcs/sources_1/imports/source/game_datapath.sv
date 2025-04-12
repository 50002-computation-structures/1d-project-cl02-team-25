/*
    This file was generated automatically by Alchitry Labs 2.0.30-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module game_datapath #(
        parameter SLOW_CLOCK_DIV = 5'h1a,
        parameter LVL1_CLOCK_DIV = 5'h19,
        parameter LVL2_CLOCK_DIV = 5'h18,
        parameter LVL3_CLOCK_DIV = 5'h17
    ) (
        input wire button1,
        input wire button2,
        input wire button3,
        input wire button4,
        input wire button5,
        input wire button6,
        input wire buttonstart,
        input wire clk,
        input wire rst,
        output reg [31:0] timerout,
        output reg [31:0] scoreout,
        output reg [31:0] levelcounterout,
        output reg [31:0] awakeout,
        output reg [31:0] activebuttonout,
        output reg [31:0] activetypeout,
        output reg [31:0] cooldownout,
        output reg [31:0] interval1blinker,
        output reg [31:0] interval2blinker,
        output reg [31:0] interval3blinker,
        output reg slow_clock_out,
        output reg [3:0] debug_general
    );
    logic [31:0] input_alu_a;
    logic [31:0] input_alu_b;
    logic [31:0] M_game_alu_a;
    logic [31:0] M_game_alu_b;
    logic [5:0] M_game_alu_alufn;
    logic [31:0] M_game_alu_out;
    logic M_game_alu_z;
    logic M_game_alu_v;
    logic M_game_alu_n;
    
    alu game_alu (
        .a(M_game_alu_a),
        .b(M_game_alu_b),
        .alufn(M_game_alu_alufn),
        .out(M_game_alu_out),
        .z(M_game_alu_z),
        .v(M_game_alu_v),
        .n(M_game_alu_n)
    );
    
    
    localparam _MP_SIZE_453770447 = 1'h1;
    localparam _MP_DIV_453770447 = LVL1_CLOCK_DIV;
    localparam _MP_TOP_453770447 = 1'h0;
    localparam _MP_UP_453770447 = 1'h1;
    logic [0:0] M_level_one_interval_value;
    
    counter #(
        .SIZE(_MP_SIZE_453770447),
        .DIV(_MP_DIV_453770447),
        .TOP(_MP_TOP_453770447),
        .UP(_MP_UP_453770447)
    ) level_one_interval (
        .rst(rst),
        .clk(clk),
        .value(M_level_one_interval_value)
    );
    
    
    localparam _MP_SIZE_1417451202 = 1'h1;
    localparam _MP_DIV_1417451202 = LVL2_CLOCK_DIV;
    localparam _MP_TOP_1417451202 = 1'h0;
    localparam _MP_UP_1417451202 = 1'h1;
    logic [0:0] M_level_two_interval_value;
    
    counter #(
        .SIZE(_MP_SIZE_1417451202),
        .DIV(_MP_DIV_1417451202),
        .TOP(_MP_TOP_1417451202),
        .UP(_MP_UP_1417451202)
    ) level_two_interval (
        .rst(rst),
        .clk(clk),
        .value(M_level_two_interval_value)
    );
    
    
    localparam _MP_SIZE_1226254001 = 1'h1;
    localparam _MP_DIV_1226254001 = LVL3_CLOCK_DIV;
    localparam _MP_TOP_1226254001 = 1'h0;
    localparam _MP_UP_1226254001 = 1'h1;
    logic [0:0] M_level_three_interval_value;
    
    counter #(
        .SIZE(_MP_SIZE_1226254001),
        .DIV(_MP_DIV_1226254001),
        .TOP(_MP_TOP_1226254001),
        .UP(_MP_UP_1226254001)
    ) level_three_interval (
        .rst(rst),
        .clk(clk),
        .value(M_level_three_interval_value)
    );
    
    
    localparam _MP_SIZE_1189814771 = 1'h1;
    localparam _MP_DIV_1189814771 = SLOW_CLOCK_DIV;
    localparam _MP_TOP_1189814771 = 1'h0;
    localparam _MP_UP_1189814771 = 1'h1;
    logic [0:0] M_game_timer_clock_value;
    
    counter #(
        .SIZE(_MP_SIZE_1189814771),
        .DIV(_MP_DIV_1189814771),
        .TOP(_MP_TOP_1189814771),
        .UP(_MP_UP_1189814771)
    ) game_timer_clock (
        .rst(rst),
        .clk(clk),
        .value(M_game_timer_clock_value)
    );
    
    
    localparam _MP_RISE_29620426 = 1'h1;
    localparam _MP_FALL_29620426 = 1'h0;
    logic M_edge_detector_level_one_interval_out;
    
    edge_detector #(
        .RISE(_MP_RISE_29620426),
        .FALL(_MP_FALL_29620426)
    ) edge_detector_level_one_interval (
        .in(M_level_one_interval_value),
        .clk(clk),
        .out(M_edge_detector_level_one_interval_out)
    );
    
    
    localparam _MP_RISE_2053278094 = 1'h1;
    localparam _MP_FALL_2053278094 = 1'h0;
    logic M_edge_detector_level_two_interval_out;
    
    edge_detector #(
        .RISE(_MP_RISE_2053278094),
        .FALL(_MP_FALL_2053278094)
    ) edge_detector_level_two_interval (
        .in(M_level_two_interval_value),
        .clk(clk),
        .out(M_edge_detector_level_two_interval_out)
    );
    
    
    localparam _MP_RISE_2041338237 = 1'h1;
    localparam _MP_FALL_2041338237 = 1'h0;
    logic M_edge_detector_level_three_interval_out;
    
    edge_detector #(
        .RISE(_MP_RISE_2041338237),
        .FALL(_MP_FALL_2041338237)
    ) edge_detector_level_three_interval (
        .in(M_level_three_interval_value),
        .clk(clk),
        .out(M_edge_detector_level_three_interval_out)
    );
    
    
    localparam _MP_RISE_1063797808 = 1'h1;
    localparam _MP_FALL_1063797808 = 1'h0;
    logic M_edge_detector_game_timer_out;
    
    edge_detector #(
        .RISE(_MP_RISE_1063797808),
        .FALL(_MP_FALL_1063797808)
    ) edge_detector_game_timer (
        .in(M_game_timer_clock_value),
        .clk(clk),
        .out(M_edge_detector_game_timer_out)
    );
    
    
    logic [31:0] M_game_cu_regfile_rd2;
    logic [5:0] M_game_cu_alufn;
    logic [1:0] M_game_cu_asel;
    logic [3:0] M_game_cu_bsel;
    logic [2:0] M_game_cu_alu_out_sel;
    logic [4:0] M_game_cu_regfile_wa;
    logic [4:0] M_game_cu_regfile_ra1;
    logic [4:0] M_game_cu_regfile_ra2;
    logic M_game_cu_regfile_we;
    logic [3:0] M_game_cu_debug;
    
    game_cu game_cu (
        .button1(button1),
        .button2(button2),
        .button3(button3),
        .button4(button4),
        .button5(button5),
        .button6(button6),
        .buttonstart(buttonstart),
        .rst(rst),
        .interval1(M_edge_detector_level_one_interval_out),
        .interval2(M_edge_detector_level_two_interval_out),
        .interval3(M_edge_detector_level_three_interval_out),
        .decrease_timer(M_edge_detector_game_timer_out),
        .clk(clk),
        .regfile_rd2(M_game_cu_regfile_rd2),
        .alufn(M_game_cu_alufn),
        .asel(M_game_cu_asel),
        .bsel(M_game_cu_bsel),
        .alu_out_sel(M_game_cu_alu_out_sel),
        .regfile_wa(M_game_cu_regfile_wa),
        .regfile_ra1(M_game_cu_regfile_ra1),
        .regfile_ra2(M_game_cu_regfile_ra2),
        .regfile_we(M_game_cu_regfile_we),
        .debug(M_game_cu_debug)
    );
    
    
    logic [31:0] M_game_regfiles_data;
    logic [31:0] M_game_regfiles_rd1;
    logic [31:0] M_game_regfiles_rd2;
    logic [31:0] M_game_regfiles_timerout;
    logic [31:0] M_game_regfiles_scoreout;
    logic [31:0] M_game_regfiles_buttonmapout;
    logic [31:0] M_game_regfiles_modeout;
    logic [31:0] M_game_regfiles_levelcounterout;
    logic [31:0] M_game_regfiles_awakeout;
    logic [31:0] M_game_regfiles_activebuttonout;
    logic [31:0] M_game_regfiles_activetypeout;
    logic [31:0] M_game_regfiles_cooldownout;
    
    game_regfiles game_regfiles (
        .we(M_game_cu_regfile_we),
        .wa(M_game_cu_regfile_wa),
        .ra1(M_game_cu_regfile_ra1),
        .ra2(M_game_cu_regfile_ra2),
        .rst(rst),
        .clk(clk),
        .data(M_game_regfiles_data),
        .rd1(M_game_regfiles_rd1),
        .rd2(M_game_regfiles_rd2),
        .timerout(M_game_regfiles_timerout),
        .scoreout(M_game_regfiles_scoreout),
        .buttonmapout(M_game_regfiles_buttonmapout),
        .modeout(M_game_regfiles_modeout),
        .levelcounterout(M_game_regfiles_levelcounterout),
        .awakeout(M_game_regfiles_awakeout),
        .activebuttonout(M_game_regfiles_activebuttonout),
        .activetypeout(M_game_regfiles_activetypeout),
        .cooldownout(M_game_regfiles_cooldownout)
    );
    
    
    always @* begin
        M_game_cu_regfile_rd2 = M_game_regfiles_rd2;
        
        case (M_game_cu_asel)
            2'h0: begin
                input_alu_a = M_game_regfiles_rd1;
            end
            2'h1: begin
                input_alu_a = 3'h5;
            end
            2'h2: begin
                input_alu_a = 5'h14;
            end
            2'h3: begin
                input_alu_a = 7'h63;
            end
            default: begin
                input_alu_a = 1'h0;
            end
        endcase
        
        case (M_game_cu_bsel)
            4'h0: begin
                input_alu_b = M_game_regfiles_rd2;
            end
            4'h1: begin
                input_alu_b = 1'h1;
            end
            4'h2: begin
                input_alu_b = 2'h2;
            end
            4'h3: begin
                input_alu_b = 2'h3;
            end
            4'h4: begin
                input_alu_b = 3'h4;
            end
            4'h5: begin
                input_alu_b = 3'h5;
            end
            4'h6: begin
                input_alu_b = 3'h6;
            end
            4'h7: begin
                input_alu_b = 5'h14;
            end
            4'h8: begin
                input_alu_b = 6'h3c;
            end
            4'h9: begin
                input_alu_b = 7'h63;
            end
            default: begin
                input_alu_b = 1'h0;
            end
        endcase
        M_game_alu_a = input_alu_a;
        M_game_alu_b = input_alu_b;
        M_game_alu_alufn = M_game_cu_alufn;
        
        case (M_game_cu_alu_out_sel)
            2'h1: begin
                M_game_regfiles_data = 16'hffff;
            end
            2'h2: begin
                M_game_regfiles_data = 16'h1f1f;
            end
            2'h3: begin
                M_game_regfiles_data = 1'h0;
            end
            default: begin
                M_game_regfiles_data = M_game_alu_out;
            end
        endcase
        timerout = M_game_regfiles_timerout;
        scoreout = M_game_regfiles_scoreout;
        levelcounterout = M_game_regfiles_levelcounterout;
        activebuttonout = M_game_regfiles_activebuttonout;
        activetypeout = M_game_regfiles_activetypeout;
        slow_clock_out = M_game_timer_clock_value;
        interval1blinker = M_level_one_interval_value;
        interval2blinker = M_level_two_interval_value;
        interval3blinker = M_level_three_interval_value;
        awakeout = M_game_regfiles_awakeout;
        cooldownout = M_game_regfiles_cooldownout;
        debug_general = M_game_cu_debug;
    end
    
    
endmodule