`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2020 10:47:02
// Design Name: 
// Module Name: double_reg
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


module double_reg(
    input clk,
    input wr, // 0 - don't write, 1 - write
    input precision, // 0 - float, 1 - double
    input float_reg, // 0 - low, 1 - high
    input[63:0] in_data,
    
    output[63:0] out_data
);

wire high_wr;
wire low_wr;
wire[31:0] low_in_data;
wire[31:0] high_in_data;
wire[31:0] low_out_data;
wire[31:0] high_out_data;

/* write to high float if writing double or writing to high float */
assign high_wr = ((precision == 0 && float_reg == 1 && wr == 1) || (precision == 1 && wr == 1)) ? 1'b1 : 1'b0;
assign high_in_data = (precision == 0 && float_reg == 1) ? in_data[31:0] : in_data[63:32];
/* write to low float if writing double or writing to low float */
assign low_wr = ((precision == 0 && float_reg == 0 && wr == 1) || (precision == 1 && wr == 1)) ? 1'b1 : 1'b0;
assign low_in_data = in_data[31:0];

float_reg high(
    .clk(clk),
    .wr(high_wr),
    .in_data(high_in_data),
    
    .out_data(high_out_data)
);

float_reg low(
    .clk(clk),
    .wr(low_wr),
    .in_data(low_in_data),
    
    .out_data(low_out_data)
);

assign out_data = {high_out_data, low_out_data};

endmodule
