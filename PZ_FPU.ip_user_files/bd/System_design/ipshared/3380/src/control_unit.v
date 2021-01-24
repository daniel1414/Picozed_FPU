`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2020 21:24:12
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input clk,
    input alu_result_ready,
    input reset,
    
    output alu_start_operation,
    // instruction memory
    output[7:0] program_counter,
    input[63:0] instr_data,
    // data memory
    output[7:0] dmem_addr,
    output[1:0] dmem_op,
    // mux before register file
    output rf_in_mux,
    // register file
    output rf_wr,
    output rf_precision,
    output rf_float_reg_wr,
    output[2:0] rf_sel_WR,
    output rf_float_reg_a,
    output[2:0] rf_sel_A,
    output rf_float_reg_b,
    output[2:0] rf_sel_B,
    // alu mux
    output [31:0] alu_b_imm,
    output alu_b_sel,
    // alu
    output[4:0] alu_op,
    output program_ready
);
reg[7:0] pc = 8'b0;
reg r_alu_start_operation = 1'b0;
reg waiting_for_alu_result = 1'b0;
reg r_rf_wr = 1'b0;
reg[63:0] r_instruction_data = 95'b0;
reg r_program_ready = 1'b0;

always @(posedge clk)
begin
    if(!reset && !r_program_ready)
    begin
        if(r_alu_start_operation == 1'b1)
        begin
            r_alu_start_operation <= 1'b0;
        end
        if(alu_result_ready)
        begin
            waiting_for_alu_result <= 1'b0;
            r_rf_wr <= 1'b1;
        end
        if(!waiting_for_alu_result)
        begin
            pc <= pc + 1; 
            r_instruction_data <= instr_data; 
            r_alu_start_operation <= ((instr_data[36:33] < 8) ? 1'b1 : 1'b0);
            waiting_for_alu_result <= ((instr_data[36:33] < 8) ? 1'b1 : 1'b0);
            r_rf_wr <= ((instr_data[36:33] < 8) ? 1'b0 : instr_data[51]);
            r_program_ready <= instr_data[63];
        end
    end
    if(reset)
    begin
        pc <= 8'b0;
        r_program_ready <= 1'b0;
    end
end

assign alu_start_operation = r_alu_start_operation;
assign program_counter = pc;

assign alu_b_imm = r_instruction_data[31:0];
assign alu_b_sel = r_instruction_data[32];
assign alu_op = r_instruction_data[37:33];
assign rf_sel_B = r_instruction_data[40:38];
assign rf_sel_A = r_instruction_data[43:41];
assign rf_sel_WR = r_instruction_data[46:44];
assign rf_float_reg_b = r_instruction_data[47];
assign rf_float_reg_a = r_instruction_data[48];
assign rf_float_reg_wr = r_instruction_data[49];
assign rf_precision = r_instruction_data[50];
assign rf_wr = r_rf_wr;
assign rf_in_mux = r_instruction_data[52];
assign dmem_op = r_instruction_data[54:53];
assign dmem_addr = r_instruction_data[62:55];
assign program_ready = r_program_ready;

endmodule