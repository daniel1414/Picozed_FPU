`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2020 15:53:32
// Design Name: 
// Module Name: instr_mem
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


module instr_mem(
    input reset,
    input clk,
    input[7:0] instr_addr,
    input[63:0] in_instr,
    
    output[63:0] out_instr
);

reg [63:0] r_memory [0:255];

initial
begin
    // read instructions in from a file
    /* file = $fopen("zad.mc", "rb");
    if(!file) $display("the file \"zad.mc\" could not be found");
    else begin
        while(!$feof(file)) begin
            $fscanf(file, "%b\n", r_memory[i]);
            i = i + 1;
        end
     end*/
end

always @(posedge clk)
begin
    if(reset)
        r_memory[instr_addr] <= in_instr;
end

assign out_instr = (reset == 1'b0) ? r_memory[instr_addr] : 64'b0;

endmodule

