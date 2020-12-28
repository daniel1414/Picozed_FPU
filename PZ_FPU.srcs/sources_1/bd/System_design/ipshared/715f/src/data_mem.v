`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2020 18:25:22
// Design Name: 
// Module Name: data_mem
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

/* data memory to store floats and doubles */

module data_mem(
    input clk,
    input[4:0] addr,
    input[63:0] in_data,
    input[1:0] op, // operacja 00 - odczyt float, 01 - zapis float, 10 - odczyt double, 11 - zapis double
    
    output[63:0] out_data
);

reg [31:0] memory [0:31];

assign out_data = (op == 2'b00) ? {32'h00000000, memory[addr][31:0]} : 
             ((op == 2'b10) ? {memory[addr][31:0], memory[addr + 1][31:0]} : 64'h0000000000000000);

always @(posedge clk)
begin
    if(op == 2'b01) // zapis liczby pojedynczej precyzji
    begin
        memory[addr][31:0] <= in_data[31:0];
    end
    else if(op == 2'b11) // zapis liczby podwójnej precyzji
    begin
        memory[addr][31:0] <= in_data[63:32];
        memory[addr + 1][31:0] <= in_data[31:0];
    end
end

endmodule