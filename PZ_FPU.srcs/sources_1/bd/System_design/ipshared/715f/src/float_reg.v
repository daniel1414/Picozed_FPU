`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2020 10:48:10
// Design Name: 
// Module Name: float_reg
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


module float_reg(
    input clk,
    input wr, // 0 - don't write, 1 - write
    input[31:0] in_data,
    
    output[31:0] out_data
);
reg[31:0] data = 32'h00000000;
always @(posedge clk)
begin
    if(wr)
        data <= in_data;
end
assign out_data = data;
endmodule
