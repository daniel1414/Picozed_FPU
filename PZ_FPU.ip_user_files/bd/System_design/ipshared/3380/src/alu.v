`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2020 21:39:01
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/**
  * op[3:0] - operation to be performed
  * 0x0000 - add
  * 0x0001 - subtract
  * 0x0010 - multiply
  * 0x0011 - divide
  * 0x0100 - reciprocal
  * 0x0101 - square root
  * 0x0110 - logarithm
  * 0x0111 - exponent
*/

module alu(
    input clk,
    input[63:0] A,
    input[63:0] B,
    input[4:0] op,  // oldest bit for precision 0 - float, 1 - double, rest for operation
    input start_operation,    // signal to start operation
    
    output[63:0] Y,
    output result_ready     // 0 - result not ready, 1 - finished computing
);

/* --------------------------- OPERATION COMPONENTS --------------------------- */

// sum
wire[31:0] w_sum_f_result_tdata;
wire w_sum_f_result_ready;

alu_add_f sum_f (
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b00000) ? start_operation : 0),
    .s_axis_a_tdata(A[31:0]),
    .s_axis_b_tvalid((op[4:0] == 5'b00000) ? start_operation : 0),
    .s_axis_b_tdata(B[31:0]),
    .m_axis_result_tvalid(w_sum_f_result_ready),
    .m_axis_result_tdata(w_sum_f_result_tdata)
);

wire w_sum_d_result_ready;
wire[63:0] w_sum_d_result_tdata;

alu_add_d add_d(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b10000) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .s_axis_b_tvalid((op[4:0] == 5'b10000) ? start_operation : 0),
    .s_axis_b_tdata(B),
    .m_axis_result_tvalid(w_sum_d_result_ready),
    .m_axis_result_tdata(w_sum_d_result_tdata)
);

// subtraction
wire w_sub_f_result_ready;
wire[31:0] w_sub_f_result_tdata;

alu_sub_f sub_f(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b00001) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .s_axis_b_tvalid((op[4:0] == 5'b00001) ? start_operation : 0),
    .s_axis_b_tdata(B),
    .m_axis_result_tvalid(w_sub_f_result_ready),
    .m_axis_result_tdata(w_sub_f_result_tdata)
);

wire w_sub_d_result_ready;
wire[63:0] w_sub_d_result_tdata;

alu_sub_d sub_d(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b10001) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .s_axis_b_tvalid((op[4:0] == 5'b10001) ? start_operation : 0),
    .s_axis_b_tdata(B),
    .m_axis_result_tvalid(w_sub_d_result_ready),
    .m_axis_result_tdata(w_sub_d_result_tdata)
);

// multiplication
wire w_mul_f_result_ready;
wire[31:0] w_mul_f_result_tdata;

alu_mul_f mul_f(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b00010) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .s_axis_b_tvalid((op[4:0] == 5'b00010) ? start_operation : 0),
    .s_axis_b_tdata(B),
    .m_axis_result_tvalid(w_mul_f_result_ready),
    .m_axis_result_tdata(w_mul_f_result_tdata)
);

wire w_mul_d_result_ready;
wire[63:0] w_mul_d_result_tdata;

alu_mul_d mul_d(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b10010) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .s_axis_b_tvalid((op[4:0] == 5'b10010) ? start_operation : 0),
    .s_axis_b_tdata(B),
    .m_axis_result_tvalid(w_mul_d_result_ready),
    .m_axis_result_tdata(w_mul_d_result_tdata)
);

// division
wire w_div_f_result_ready;
wire[31:0] w_div_f_result_tdata;

alu_div_f div_f(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b00011) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .s_axis_b_tvalid((op[4:0] == 5'b00011) ? start_operation : 0),
    .s_axis_b_tdata(B),
    .m_axis_result_tvalid(w_div_f_result_ready),
    .m_axis_result_tdata(w_div_f_result_tdata)
);

wire w_div_d_result_ready;
wire[63:0] w_div_d_result_tdata;

alu_div_d div_d(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b10011) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .s_axis_b_tvalid((op[4:0] == 5'b10011) ? start_operation : 0),
    .s_axis_b_tdata(B),
    .m_axis_result_tvalid(w_div_d_result_ready),
    .m_axis_result_tdata(w_div_d_result_tdata)
);

// reciprocal
wire w_rec_f_result_ready;
wire[31:0] w_rec_f_result_tdata;

alu_rec_f rec_f(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b00100) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .m_axis_result_tvalid(w_rec_f_result_ready),
    .m_axis_result_tdata(w_rec_f_result_tdata)
);

wire w_rec_d_result_ready;
wire[63:0] w_rec_d_result_tdata;

alu_rec_d rec_d(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b10100) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .m_axis_result_tvalid(w_rec_d_result_ready),
    .m_axis_result_tdata(w_rec_d_result_tdata)
);

// square root
wire w_sqrt_f_result_ready;
wire[31:0] w_sqrt_f_result_tdata;

alu_sqrt_f sqrt_f(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b00101) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .m_axis_result_tvalid(w_sqrt_f_result_ready),
    .m_axis_result_tdata(w_sqrt_f_result_tdata)
);

wire w_sqrt_d_result_ready;
wire[63:0] w_sqrt_d_result_tdata;

alu_sqrt_d sqrt_d(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b10101) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .m_axis_result_tvalid(w_sqrt_d_result_ready),
    .m_axis_result_tdata(w_sqrt_d_result_tdata)
);

// loarithm
wire w_log_f_result_ready;
wire[31:0] w_log_f_result_tdata;

alu_log_f log_f(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b00110) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .m_axis_result_tvalid(w_log_f_result_ready),
    .m_axis_result_tdata(w_log_f_result_tdata)
);

wire w_log_d_result_ready;
wire[63:0] w_log_d_result_tdata;

alu_log_d log_d(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b10110) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .m_axis_result_tvalid(w_log_d_result_ready),
    .m_axis_result_tdata(w_log_d_result_tdata)
);

// exponential
wire w_exp_f_result_ready;
wire[31:0] w_exp_f_result_tdata;

alu_exp_f exp_f(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b00111) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .m_axis_result_tvalid(w_exp_f_result_ready),
    .m_axis_result_tdata(w_exp_f_result_tdata)
);

wire w_exp_d_result_ready;
wire[63:0] w_exp_d_result_tdata;

/*alu_exp_d exp_d(
    .aclk(clk),
    .s_axis_a_tvalid((op[4:0] == 5'b10111) ? start_operation : 0),
    .s_axis_a_tdata(A),
    .m_axis_result_tvalid(w_exp_d_result_ready),
    .m_axis_result_tdata(w_exp_d_result_tdata)
);*/

/* --------------------------- MULTIPLEXING --------------------------- */

wire[63:0] w_sum_result_tdata;

mux2 sum_mux (
    .in1({32'h00000000, w_sum_f_result_tdata}),
    .in2(w_sum_d_result_tdata),
    .sel(op[4]),
    .out(w_sum_result_tdata)
);
wire w_sum_result_ready;
assign w_sum_result_ready = (op[4] == 0) ? w_sum_f_result_ready : w_sum_d_result_ready;

wire[63:0] w_sub_result_tdata;

mux2 sub_mux (
    .in1({32'h00000000, w_sub_f_result_tdata}),
    .in2(w_sub_d_result_tdata),
    .sel(op[4]),
    .out(w_sub_result_tdata)
);

wire w_sub_result_ready;
assign w_sub_result_ready = (op[4] == 0) ? w_sub_f_result_ready : w_sub_d_result_ready;

wire[63:0] w_mul_result_tdata;

mux2 mul_mux (
    .in1({32'h00000000, w_mul_f_result_tdata}),
    .in2(w_mul_d_result_tdata),
    .sel(op[4]),
    .out(w_mul_result_tdata)
);

wire w_mul_result_ready;
assign w_mul_result_ready = (op[4] == 0) ? w_mul_f_result_ready : w_mul_d_result_ready;

wire[63:0] w_div_result_tdata;

mux2 div_mux (
    .in1({32'h00000000, w_div_f_result_tdata}),
    .in2(w_div_d_result_tdata),
    .sel(op[4]),
    .out(w_div_result_tdata)
);

wire w_div_result_ready;
assign w_div_result_ready = (op[4] == 0) ? w_div_f_result_ready : w_div_d_result_ready;

wire[63:0] w_rec_result_tdata;

mux2 rec_mux (
    .in1({32'h00000000, w_rec_f_result_tdata}),
    .in2(w_rec_d_result_tdata),
    .sel(op[4]),
    .out(w_rec_result_tdata)
);

wire w_rec_result_ready;
assign w_rec_result_ready = (op[4] == 0) ? w_rec_f_result_ready : w_rec_d_result_ready;

wire[63:0] w_sqrt_result_tdata;

mux2 sqrt_mux (
    .in1({32'h00000000, w_sqrt_f_result_tdata}),
    .in2(w_sqrt_d_result_tdata),
    .sel(op[4]),
    .out(w_sqrt_result_tdata)
);

wire w_sqrt_result_ready;
assign w_sqrt_result_ready = (op[4] == 0) ? w_sqrt_f_result_ready : w_sqrt_d_result_ready;

wire[63:0] w_log_result_tdata;

mux2 log_mux (
    .in1({32'h00000000, w_log_f_result_tdata}),
    .in2(w_log_d_result_tdata),
    .sel(op[4]),
    .out(w_log_result_tdata)
);

wire w_log_result_ready;
assign w_log_result_ready = (op[4] == 0) ? w_log_f_result_ready : w_log_d_result_ready;

wire[63:0] w_exp_result_tdata;

mux2 exp_mux (
    .in1({32'h00000000, w_exp_f_result_tdata}),
    .in2(w_exp_d_result_tdata),
    .sel(op[4]),
    .out(w_exp_result_tdata)
);

wire w_exp_result_ready;
assign w_exp_result_ready = (op[4] == 0) ? w_exp_f_result_ready : w_exp_d_result_ready;

// mux

assign Y =  (op[3:0] == 4'b0000) ? w_sum_result_tdata : ((op[3:0]  == 4'b0001) ? w_sub_result_tdata : 
            ((op[3:0] == 4'b0010) ? w_mul_result_tdata : ((op[3:0] == 4'b0011) ? w_div_result_tdata : 
            ((op[3:0] == 4'b0100) ? w_rec_result_tdata : ((op[3:0] == 4'b0101) ? w_sqrt_result_tdata :
            ((op[3:0] == 4'b0110) ? w_log_result_tdata : ((op[3:0] == 4'b0111) ? w_exp_result_tdata : B)))))));
            
assign result_ready = (op[3:0] == 4'b0000) ? w_sum_result_ready : ((op[3:0]  == 4'b0001) ? w_sub_result_ready : 
                        ((op[3:0] == 4'b0010) ? w_mul_result_ready : ((op[3:0] == 4'b0011) ? w_div_result_ready : 
                        ((op[3:0] == 4'b0100) ? w_rec_result_ready : ((op[3:0] == 4'b0101) ? w_sqrt_result_ready :
                        ((op[3:0] == 4'b0110) ? w_log_result_ready : ((op[3:0] == 4'b0111) ? w_exp_result_ready : 0)))))));

/*assign Y =  (op[3:0] == 4'b0000) ? w_sum_f_result_tdata : ((op[3:0]  == 4'b0001) ? w_sub_f_result_tdata : 
            ((op[3:0] == 4'b0010) ? w_mul_f_result_tdata : ((op[3:0] == 4'b0011) ? w_div_f_result_tdata : 
            ((op[3:0] == 4'b0100) ? w_rec_f_result_tdata : ((op[3:0] == 4'b0101) ? w_sqrt_f_result_tdata :
            ((op[3:0] == 4'b0110) ? w_log_f_result_tdata : ((op[3:0] == 4'b0111) ? w_exp_f_result_tdata : B)))))));
            
assign result_ready = (op[3:0] == 4'b0000) ? w_sum_f_result_ready : ((op[3:0]  == 4'b0001) ? w_sub_f_result_ready : 
                        ((op[3:0] == 4'b0010) ? w_mul_f_result_ready : ((op[3:0] == 4'b0011) ? w_div_f_result_ready : 
                        ((op[3:0] == 4'b0100) ? w_rec_f_result_ready : ((op[3:0] == 4'b0101) ? w_sqrt_f_result_ready :
                        ((op[3:0] == 4'b0110) ? w_log_f_result_ready : ((op[3:0] == 4'b0111) ? w_exp_f_result_ready : 0)))))));
*/
endmodule
