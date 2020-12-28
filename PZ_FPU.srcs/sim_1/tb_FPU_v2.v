`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2020 11:01:58
// Design Name: 
// Module Name: tb_FPU_v2
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


module tb_FPU_v2(
);

reg clk = 1'b0;
reg [63:0] instruction_set [0:100];
reg [63:0] data_memory_set [0:255];
reg [63:0] current_external_instruction;
reg [63:0] current_external_data;
reg reset = 1'b1;
reg [7:0] instr_addr = 11'b0;
reg [4:0] data_addr = 8'b0;
reg [1:0] data_op = 2'b11; // write doubles
reg [10:0] cnt = 11'b0;
wire program_ready;

integer file1;
integer file2;
integer i1=0;
integer i2=0;

initial
begin
    file1 = $fopen("zad.mc", "rb");
    if(!file1) $display("the file \"zad.mc\" could not be found");
    else begin
        while(!$feof(file1)) begin
            $fscanf(file1, "%b\n", instruction_set[i1]);
            i1 = i1 + 1;
        end
    end

    current_external_instruction = instruction_set[0];
    
    file2 = $fopen("data_memory.mc", "rb");
    if(!file2) $display("the file \"data_memory.mc\" could not be found");
    else begin
        while(!$feof(file2)) begin
            $fscanf(file2, "%b\n", data_memory_set[i2]);
            i2 = i2 + 1;
        end
    end

    current_external_data = data_memory_set[0];
    #4;
    while(1)
    begin
        #1; clk = !clk;
    end
end

always @(posedge clk)
begin
    cnt <= cnt + 1;
    instr_addr <= instr_addr + 1;
    data_addr <= data_addr + 2;
    current_external_data = data_memory_set[data_addr / 2];
    current_external_instruction = instruction_set[instr_addr];
    
    if(cnt == (i1 > i2 ? i1 : i2))
    begin
        data_addr <= 4'h0;
        data_op <= 2'b10;
    end
    if(cnt == (i1 > i2 ? i1 + 32 : i2 + 32))
    begin
        reset <= 1'b0;
    end
    if(cnt == i2)
    begin
        data_op <= 2'b00;
    end
end

always @(posedge program_ready)
begin
    data_addr <= 4'b0;
    data_op <= 2'b00;
end

wire [63:0] data_mem_out_data;

FPU dut(
    .clk(clk),
    .reset(reset),
    .in_instr_addr(instr_addr),
    .in_instr_data(current_external_instruction),
    
    .in_data_mem_op(data_op),
    .in_data_mem_addr(data_addr),
    .in_data_mem_data(current_external_data),
    
    .out_data_mem_data(data_mem_out_data),
    .program_ready(program_ready)
);

endmodule
