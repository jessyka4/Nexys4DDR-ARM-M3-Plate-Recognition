// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module draw_line (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_data_stream_V_dout,
        src_data_stream_V_empty_n,
        src_data_stream_V_read,
        dst_rows_V_dout,
        dst_rows_V_empty_n,
        dst_rows_V_read,
        dst_cols_V_dout,
        dst_cols_V_empty_n,
        dst_cols_V_read,
        dst_data_stream_V_din,
        dst_data_stream_V_full_n,
        dst_data_stream_V_write,
        bound_x_min_address0,
        bound_x_min_ce0,
        bound_x_min_q0,
        bound_x_max_address0,
        bound_x_max_ce0,
        bound_x_max_q0,
        bound_y_min_dout,
        bound_y_min_empty_n,
        bound_y_min_read,
        bound_y_max_dout,
        bound_y_max_empty_n,
        bound_y_max_read,
        box_num_dout,
        box_num_empty_n,
        box_num_read
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_pp0_stage0 = 5'd4;
parameter    ap_ST_fsm_pp0_stage1 = 5'd8;
parameter    ap_ST_fsm_state6 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] src_data_stream_V_dout;
input   src_data_stream_V_empty_n;
output   src_data_stream_V_read;
input  [31:0] dst_rows_V_dout;
input   dst_rows_V_empty_n;
output   dst_rows_V_read;
input  [31:0] dst_cols_V_dout;
input   dst_cols_V_empty_n;
output   dst_cols_V_read;
output  [7:0] dst_data_stream_V_din;
input   dst_data_stream_V_full_n;
output   dst_data_stream_V_write;
output  [2:0] bound_x_min_address0;
output   bound_x_min_ce0;
input  [15:0] bound_x_min_q0;
output  [2:0] bound_x_max_address0;
output   bound_x_max_ce0;
input  [15:0] bound_x_max_q0;
input  [15:0] bound_y_min_dout;
input   bound_y_min_empty_n;
output   bound_y_min_read;
input  [15:0] bound_y_max_dout;
input   bound_y_max_empty_n;
output   bound_y_max_read;
input  [7:0] box_num_dout;
input   box_num_empty_n;
output   box_num_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_data_stream_V_read;
reg dst_rows_V_read;
reg dst_cols_V_read;
reg dst_data_stream_V_write;
reg bound_x_min_ce0;
reg bound_x_max_ce0;
reg bound_y_min_read;
reg bound_y_max_read;
reg box_num_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    src_data_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage1;
reg   [0:0] exitcond_i_reg_600;
reg    dst_rows_V_blk_n;
reg    dst_cols_V_blk_n;
reg    dst_data_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg    bound_y_min_blk_n;
reg    bound_y_max_blk_n;
reg    box_num_blk_n;
reg   [31:0] t_V_2_reg_254;
reg   [31:0] rows_V_reg_554;
reg    ap_block_state1;
reg   [31:0] cols_V_reg_559;
wire   [31:0] tmp_i_fu_266_p1;
reg   [31:0] tmp_i_reg_564;
wire   [31:0] tmp_8_i_fu_270_p1;
reg   [31:0] tmp_8_i_reg_570;
wire   [8:0] tmp_i_22_fu_278_p2;
reg   [8:0] tmp_i_22_reg_576;
wire   [0:0] exitcond2_i_fu_294_p2;
wire    ap_CS_fsm_state2;
wire   [31:0] i_V_fu_299_p2;
reg   [31:0] i_V_reg_585;
wire   [0:0] brmerge1_i_fu_337_p2;
reg   [0:0] brmerge1_i_reg_590;
wire   [0:0] brmerge2_i_fu_343_p2;
reg   [0:0] brmerge2_i_reg_595;
wire   [0:0] exitcond_i_fu_349_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state5_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] j_V_fu_354_p2;
reg   [31:0] j_V_reg_604;
wire   [0:0] tmp_3_i_fu_363_p2;
reg   [0:0] tmp_3_i_reg_609;
wire   [7:0] p_character_index_1_i_fu_369_p3;
reg   [7:0] p_character_index_1_i_reg_615;
wire   [0:0] tmp_14_i_fu_387_p2;
reg   [0:0] tmp_14_i_reg_634;
reg   [7:0] tmp_2_reg_639;
reg    ap_block_state4_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_11001;
wire   [0:0] sel_tmp_fu_437_p2;
reg   [0:0] sel_tmp_reg_646;
wire   [0:0] sel_tmp3_fu_449_p2;
reg   [0:0] sel_tmp3_reg_651;
wire   [0:0] sel_tmp6_fu_466_p2;
reg   [0:0] sel_tmp6_reg_657;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_block_pp0_stage1_subdone;
reg   [31:0] t_V_reg_243;
wire    ap_CS_fsm_state6;
reg   [31:0] ap_phi_mux_t_V_2_phi_fu_258_p4;
wire   [63:0] tmp_4_i_fu_377_p1;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] inBlock_i_fu_166;
wire   [0:0] inBlock_6_i_fu_531_p2;
reg   [7:0] character_index_i_fu_170;
wire   [7:0] character_index_5_i_fu_486_p3;
wire   [8:0] tmp_9_cast_i_fu_274_p1;
wire   [0:0] ult_fu_315_p2;
wire   [0:0] ult1_fu_326_p2;
wire   [0:0] rev_fu_320_p2;
wire   [0:0] rev1_fu_331_p2;
wire   [0:0] tmp_1_i_fu_305_p2;
wire   [0:0] tmp_2_i_fu_310_p2;
wire   [8:0] tmp_13_cast_i_fu_383_p1;
wire   [0:0] not_i_fu_395_p2;
wire   [31:0] tmp_6_i_fu_406_p1;
wire   [31:0] tmp_11_i_fu_416_p1;
wire   [7:0] tmp_15_i_fu_426_p2;
wire   [0:0] p_inBlock_1_i_fu_400_p2;
wire   [0:0] tmp_7_i_fu_410_p2;
wire   [0:0] sel_tmp2_fu_443_p2;
wire   [0:0] inBlock_1_i_not_fu_455_p2;
wire   [0:0] sel_tmp5_fu_461_p2;
wire   [0:0] tmp_12_i_fu_420_p2;
wire   [7:0] character_index_fu_431_p3;
wire   [7:0] sel_tmp9_fu_472_p3;
wire   [7:0] sel_tmp1_fu_479_p3;
wire   [7:0] d_val_0_1_fu_498_p3;
wire   [7:0] d_val_0_2_fu_504_p3;
wire   [7:0] d_val_0_3_fu_510_p3;
wire   [7:0] d_val_0_4_fu_516_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_i_fu_294_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond2_i_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((exitcond2_i_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_reg_600 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        character_index_i_fu_170 <= character_index_5_i_fu_486_p3;
    end else if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        character_index_i_fu_170 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_reg_600 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        inBlock_i_fu_166 <= inBlock_6_i_fu_531_p2;
    end else if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        inBlock_i_fu_166 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_reg_600 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_2_reg_254 <= j_V_reg_604;
    end else if (((exitcond2_i_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_2_reg_254 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_reg_243 <= i_V_reg_585;
    end else if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_243 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_i_fu_294_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        brmerge1_i_reg_590 <= brmerge1_i_fu_337_p2;
        brmerge2_i_reg_595 <= brmerge2_i_fu_343_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_V_reg_559 <= dst_cols_V_dout;
        rows_V_reg_554 <= dst_rows_V_dout;
        tmp_8_i_reg_570[15 : 0] <= tmp_8_i_fu_270_p1[15 : 0];
        tmp_i_22_reg_576 <= tmp_i_22_fu_278_p2;
        tmp_i_reg_564[15 : 0] <= tmp_i_fu_266_p1[15 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_i_reg_600 <= exitcond_i_fu_349_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_585 <= i_V_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_V_reg_604 <= j_V_fu_354_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_349_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_character_index_1_i_reg_615 <= p_character_index_1_i_fu_369_p3;
        tmp_14_i_reg_634 <= tmp_14_i_fu_387_p2;
        tmp_3_i_reg_609 <= tmp_3_i_fu_363_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_reg_600 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        sel_tmp3_reg_651 <= sel_tmp3_fu_449_p2;
        sel_tmp6_reg_657 <= sel_tmp6_fu_466_p2;
        sel_tmp_reg_646 <= sel_tmp_fu_437_p2;
        tmp_2_reg_639 <= src_data_stream_V_dout;
    end
end

always @ (*) begin
    if ((exitcond_i_fu_349_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_i_fu_294_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (exitcond_i_reg_600 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_t_V_2_phi_fu_258_p4 = j_V_reg_604;
    end else begin
        ap_phi_mux_t_V_2_phi_fu_258_p4 = t_V_2_reg_254;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_i_fu_294_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        bound_x_max_ce0 = 1'b1;
    end else begin
        bound_x_max_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        bound_x_min_ce0 = 1'b1;
    end else begin
        bound_x_min_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_y_max_blk_n = bound_y_max_empty_n;
    end else begin
        bound_y_max_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_y_max_read = 1'b1;
    end else begin
        bound_y_max_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_y_min_blk_n = bound_y_min_empty_n;
    end else begin
        bound_y_min_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_y_min_read = 1'b1;
    end else begin
        bound_y_min_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        box_num_blk_n = box_num_empty_n;
    end else begin
        box_num_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        box_num_read = 1'b1;
    end else begin
        box_num_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_cols_V_blk_n = dst_cols_V_empty_n;
    end else begin
        dst_cols_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_cols_V_read = 1'b1;
    end else begin
        dst_cols_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (exitcond_i_reg_600 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dst_data_stream_V_blk_n = dst_data_stream_V_full_n;
    end else begin
        dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_600 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dst_data_stream_V_write = 1'b1;
    end else begin
        dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_rows_V_blk_n = dst_rows_V_empty_n;
    end else begin
        dst_rows_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        dst_rows_V_read = 1'b1;
    end else begin
        dst_rows_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_600 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        src_data_stream_V_blk_n = src_data_stream_V_empty_n;
    end else begin
        src_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_600 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        src_data_stream_V_read = 1'b1;
    end else begin
        src_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_i_fu_294_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_i_fu_349_p2 == 1'd1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_i_fu_349_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((exitcond_i_reg_600 == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond_i_reg_600 == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond_i_reg_600 == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((exitcond_i_reg_600 == 1'd0) & (src_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((exitcond_i_reg_600 == 1'd0) & (src_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((box_num_empty_n == 1'b0) | (bound_y_max_empty_n == 1'b0) | (bound_y_min_empty_n == 1'b0) | (dst_cols_V_empty_n == 1'b0) | (dst_rows_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage1_iter0 = ((exitcond_i_reg_600 == 1'd0) & (src_data_stream_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter1 = ((exitcond_i_reg_600 == 1'd0) & (dst_data_stream_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound_x_max_address0 = tmp_4_i_fu_377_p1;

assign bound_x_min_address0 = tmp_4_i_fu_377_p1;

assign brmerge1_i_fu_337_p2 = (rev_fu_320_p2 | rev1_fu_331_p2);

assign brmerge2_i_fu_343_p2 = (tmp_2_i_fu_310_p2 | tmp_1_i_fu_305_p2);

assign character_index_5_i_fu_486_p3 = ((sel_tmp6_fu_466_p2[0:0] === 1'b1) ? p_character_index_1_i_reg_615 : sel_tmp1_fu_479_p3);

assign character_index_fu_431_p3 = ((tmp_14_i_reg_634[0:0] === 1'b1) ? tmp_15_i_fu_426_p2 : p_character_index_1_i_reg_615);

assign d_val_0_1_fu_498_p3 = ((brmerge1_i_reg_590[0:0] === 1'b1) ? tmp_2_reg_639 : 8'd200);

assign d_val_0_2_fu_504_p3 = ((brmerge2_i_reg_595[0:0] === 1'b1) ? 8'd200 : tmp_2_reg_639);

assign d_val_0_3_fu_510_p3 = ((sel_tmp_reg_646[0:0] === 1'b1) ? d_val_0_1_fu_498_p3 : tmp_2_reg_639);

assign d_val_0_4_fu_516_p3 = ((sel_tmp3_reg_651[0:0] === 1'b1) ? d_val_0_2_fu_504_p3 : d_val_0_3_fu_510_p3);

assign dst_data_stream_V_din = ((sel_tmp6_reg_657[0:0] === 1'b1) ? d_val_0_1_fu_498_p3 : d_val_0_4_fu_516_p3);

assign exitcond2_i_fu_294_p2 = ((t_V_reg_243 == rows_V_reg_554) ? 1'b1 : 1'b0);

assign exitcond_i_fu_349_p2 = ((ap_phi_mux_t_V_2_phi_fu_258_p4 == cols_V_reg_559) ? 1'b1 : 1'b0);

assign i_V_fu_299_p2 = (t_V_reg_243 + 32'd1);

assign inBlock_1_i_not_fu_455_p2 = (inBlock_i_fu_166 ^ 1'd1);

assign inBlock_6_i_fu_531_p2 = (sel_tmp6_reg_657 | sel_tmp3_reg_651);

assign j_V_fu_354_p2 = (ap_phi_mux_t_V_2_phi_fu_258_p4 + 32'd1);

assign not_i_fu_395_p2 = (tmp_3_i_reg_609 ^ 1'd1);

assign p_character_index_1_i_fu_369_p3 = ((tmp_3_i_fu_363_p2[0:0] === 1'b1) ? 8'd0 : character_index_i_fu_170);

assign p_inBlock_1_i_fu_400_p2 = (not_i_fu_395_p2 & inBlock_i_fu_166);

assign rev1_fu_331_p2 = (ult1_fu_326_p2 ^ 1'd1);

assign rev_fu_320_p2 = (ult_fu_315_p2 ^ 1'd1);

assign sel_tmp1_fu_479_p3 = ((sel_tmp3_fu_449_p2[0:0] === 1'b1) ? p_character_index_1_i_reg_615 : sel_tmp9_fu_472_p3);

assign sel_tmp2_fu_443_p2 = (tmp_7_i_fu_410_p2 ^ 1'd1);

assign sel_tmp3_fu_449_p2 = (sel_tmp2_fu_443_p2 & p_inBlock_1_i_fu_400_p2);

assign sel_tmp5_fu_461_p2 = (tmp_3_i_reg_609 | inBlock_1_i_not_fu_455_p2);

assign sel_tmp6_fu_466_p2 = (tmp_12_i_fu_420_p2 & sel_tmp5_fu_461_p2);

assign sel_tmp9_fu_472_p3 = ((sel_tmp_fu_437_p2[0:0] === 1'b1) ? character_index_fu_431_p3 : p_character_index_1_i_reg_615);

assign sel_tmp_fu_437_p2 = (tmp_7_i_fu_410_p2 & p_inBlock_1_i_fu_400_p2);

assign tmp_11_i_fu_416_p1 = bound_x_min_q0;

assign tmp_12_i_fu_420_p2 = ((t_V_2_reg_254 == tmp_11_i_fu_416_p1) ? 1'b1 : 1'b0);

assign tmp_13_cast_i_fu_383_p1 = p_character_index_1_i_fu_369_p3;

assign tmp_14_i_fu_387_p2 = (($signed(tmp_13_cast_i_fu_383_p1) < $signed(tmp_i_22_reg_576)) ? 1'b1 : 1'b0);

assign tmp_15_i_fu_426_p2 = (p_character_index_1_i_reg_615 + 8'd1);

assign tmp_1_i_fu_305_p2 = ((t_V_reg_243 == tmp_i_reg_564) ? 1'b1 : 1'b0);

assign tmp_2_i_fu_310_p2 = ((t_V_reg_243 == tmp_8_i_reg_570) ? 1'b1 : 1'b0);

assign tmp_3_i_fu_363_p2 = ((ap_phi_mux_t_V_2_phi_fu_258_p4 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_4_i_fu_377_p1 = p_character_index_1_i_fu_369_p3;

assign tmp_6_i_fu_406_p1 = bound_x_max_q0;

assign tmp_7_i_fu_410_p2 = ((t_V_2_reg_254 == tmp_6_i_fu_406_p1) ? 1'b1 : 1'b0);

assign tmp_8_i_fu_270_p1 = bound_y_max_dout;

assign tmp_9_cast_i_fu_274_p1 = box_num_dout;

assign tmp_i_22_fu_278_p2 = ($signed(tmp_9_cast_i_fu_274_p1) + $signed(9'd511));

assign tmp_i_fu_266_p1 = bound_y_min_dout;

assign ult1_fu_326_p2 = ((t_V_reg_243 < tmp_8_i_reg_570) ? 1'b1 : 1'b0);

assign ult_fu_315_p2 = ((tmp_i_reg_564 < t_V_reg_243) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_i_reg_564[31:16] <= 16'b0000000000000000;
    tmp_8_i_reg_570[31:16] <= 16'b0000000000000000;
end

endmodule //draw_line