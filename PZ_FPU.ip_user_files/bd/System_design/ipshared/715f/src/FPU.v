`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2020 16:17:47
// Design Name: 
// Module Name: FPU
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


module FPU(
    input clk,
    input reset,
    
    input [7:0] in_instr_addr,
    input [63:0] in_instr_data,
        
    input [1:0] in_data_mem_op,
    input [4:0] in_data_mem_addr,
    input [63:0] in_data_mem_data,
    
    output [63:0] out_data_mem_data,
    
    output program_ready
);

/* control unit required wires */
wire[4:0] dmem_addr;
wire[1:0] dmem_op;
wire rf_in_mux;
wire rf_wr;
wire rf_precision;
wire rf_float_reg_wr;
wire[2:0] rf_sel_WR;
wire rf_float_reg_a;
wire[2:0] rf_sel_A;
wire rf_float_reg_b;
wire[2:0] rf_sel_B;
wire[4:0] alu_op;
wire alu_start_operation;
wire alu_result_ready;
wire alu_b_sel;
wire[63:0] alu_b_imm;

wire[63:0] dmem_out;
wire[63:0] alu_out;
wire[63:0] rf_in;
wire[63:0] rf_out_A;
wire[63:0] rf_out_B;
wire[63:0] alu_B_in;

wire[7:0] cu_pc;
wire[63:0] cu_instr_in;

wire w_program_ready;
control_unit CU(
    .clk(clk),
    .alu_result_ready(alu_result_ready),
    .reset(reset),
    
    .alu_start_operation(alu_start_operation),
    
    .program_counter(cu_pc),
    .instr_data(cu_instr_in),
    
    .dmem_addr(dmem_addr),
    .dmem_op(dmem_op),
    
    .rf_in_mux(rf_in_mux),
    
    .rf_wr(rf_wr),
    .rf_precision(rf_precision),
    .rf_float_reg_wr(rf_float_reg_wr),
    .rf_sel_WR(rf_sel_WR),
    .rf_float_reg_a(rf_float_reg_a),
    .rf_sel_A(rf_sel_A),
    .rf_float_reg_b(rf_float_reg_b),
    .rf_sel_B(rf_sel_B),
    .alu_b_imm(alu_b_imm),
    .alu_b_sel(alu_b_sel),
    
    .alu_op(alu_op),
    .program_ready(w_program_ready)
);

assign program_ready = w_program_ready;

data_mem data_memory(
    .clk(clk),
    .addr((reset == 1'b1 || w_program_ready == 1'b1) ? in_data_mem_addr : dmem_addr),
    .in_data((reset == 1'b1) ? in_data_mem_data : alu_out),
    .op((reset == 1'b1 || w_program_ready == 1'b1) ? in_data_mem_op : dmem_op),
    
    .out_data(dmem_out)
);

assign out_data_mem_data = dmem_out;

instr_mem instruction_memory(
    .reset(reset),
    .clk(clk),
    
    .instr_addr((reset == 1'b1) ? in_instr_addr : cu_pc),
    .in_instr(in_instr_data),
       
    .out_instr(cu_instr_in)
);

mux2 rf_mux(
    .in1(alu_out),
    .in2(dmem_out),
    .sel(rf_in_mux),
    .out(rf_in)
);

reg_file register_file(
    .clk(clk),
    .wr(rf_wr),
    .precision(rf_precision),
    .float_reg_wr(rf_float_reg_wr),
    .float_reg_a(rf_float_reg_a),
    .float_reg_b(rf_float_reg_b),
    .sel_WR(rf_sel_WR),
    .sel_A(rf_sel_A),
    .sel_B(rf_sel_B),
    .in_data(rf_in),
    
    .out_A(rf_out_A),
    .out_B(rf_out_B)
);

mux2 alu_mux(
    .in1(rf_out_B),
    .in2(alu_b_imm),
    .sel(alu_b_sel),
    
    .out(alu_B_in)
);

alu ALU(
    .clk(clk),
    .A(rf_out_A),
    .B(alu_B_in),
    .op(alu_op),
    .start_operation(alu_start_operation),
    
    .Y(alu_out),
    .result_ready(alu_result_ready)
);

endmodule