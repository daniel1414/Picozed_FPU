`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2020 11:20:40
// Design Name: 
// Module Name: reg_file
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

module reg_file(
    input clk,
    input wr,           // 0 - read,  1 - write
    input precision,    // 0 - float, 1 - double
    input float_reg_wr, // 0 - write to the lower, 1 - higher 32 bits of the double register
    input float_reg_a,  // 0 - lower float,   1 - higher float in out_A if reading floats
    input float_reg_b,  // 0 - lower float,   1 - higher float in out_B if reading floats
    input[2:0] sel_WR,  // select the double register to access
    input[2:0] sel_A,   // select double register for out_A value
    input[2:0] sel_B,   // select double register for out_B value
    input[63:0] in_data,
    
    output[63:0] out_A,
    output[63:0] out_B
);
wire[63:0] d0_out;
double_reg d0(
    .clk(clk),
    .precision(precision),
    .float_reg(float_reg_wr),
    .wr(((sel_WR == 3'b000) ? 1'b1 : 1'b0) && (wr == 1'b1)),
    .in_data(in_data),
    
    .out_data(d0_out)
);
wire[63:0] d1_out;
double_reg d1(
    .clk(clk),
    .precision(precision),
    .float_reg(float_reg_wr),
    .wr(((sel_WR == 3'b001) ? 1'b1 : 1'b0) && (wr == 1'b1)),
    .in_data(in_data),
    
    .out_data(d1_out)
);
wire[63:0] d2_out;
double_reg d2(
    .clk(clk),
    .precision(precision),
    .float_reg(float_reg_wr),
    .wr(((sel_WR == 3'b010) ? 1'b1 : 1'b0) && (wr == 1'b1)),
    .in_data(in_data),
    
    .out_data(d2_out)
);
wire[63:0] d3_out;
double_reg d3(
    .clk(clk),
    .precision(precision),
    .float_reg(float_reg_wr),
    .wr(((sel_WR == 3'b011) ? 1'b1 : 1'b0) && (wr == 1'b1)),
    .in_data(in_data),
    
    .out_data(d3_out)
);
wire[63:0] d4_out;
double_reg d4(
    .clk(clk),
    .precision(precision),
    .float_reg(float_reg_wr),
    .wr(((sel_WR == 3'b100) ? 1'b1 : 1'b0) && (wr == 1'b1)),
    .in_data(in_data),
    
    .out_data(d4_out)
);
wire[63:0] d5_out;
double_reg d5(
    .clk(clk),
    .precision(precision),
    .float_reg(float_reg_wr),
    .wr(((sel_WR == 3'b101) ? 1'b1 : 1'b0) && (wr == 1'b1)),
    .in_data(in_data),
    
    .out_data(d5_out)
);
wire[63:0] d6_out;
double_reg d6(
    .clk(clk),
    .precision(precision),
    .float_reg(float_reg_wr),
    .wr(((sel_WR == 3'b110) ? 1'b1 : 1'b0) && (wr == 1'b1)),
    .in_data(in_data),
    
    .out_data(d6_out)
);
wire[63:0] d7_out;
double_reg d7(
    .clk(clk),
    .precision(precision),
    .float_reg(float_reg_wr),
    .wr(((sel_WR == 3'b111) ? 1'b1 : 1'b0) && (wr == 1'b1)),
    .in_data(in_data),
    
    .out_data(d7_out)
);

// assign the output for the A wire
assign out_A =  (precision == 1) ? ((sel_A == 3'b000) ? d0_out : ((sel_A == 3'b001) ? d1_out : ((sel_A == 3'b010) ? d2_out : ((sel_A == 3'b011) ? d3_out : ((sel_A == 3'b100) ? d4_out : ((sel_A == 3'b101) ? d5_out : ((sel_A == 3'b110) ? d6_out : d7_out))))))) : 
                ((sel_A == 3'b000 && float_reg_a == 0) ? {32'h00000000, d0_out[31:0]} : ((sel_A == 3'b000 && float_reg_a == 1) ? {32'h00000000, d0_out[63:32]} :
                ((sel_A == 3'b001 && float_reg_a == 0) ? {32'h00000000, d1_out[31:0]} : ((sel_A == 3'b001 && float_reg_a == 1) ? {32'h00000000, d1_out[63:32]} :
                ((sel_A == 3'b010 && float_reg_a == 0) ? {32'h00000000, d2_out[31:0]} : ((sel_A == 3'b010 && float_reg_a == 1) ? {32'h00000000, d2_out[63:32]} :
                ((sel_A == 3'b011 && float_reg_a == 0) ? {32'h00000000, d3_out[31:0]} : ((sel_A == 3'b011 && float_reg_a == 1) ? {32'h00000000, d3_out[63:32]} :
                ((sel_A == 3'b100 && float_reg_a == 0) ? {32'h00000000, d4_out[31:0]} : ((sel_A == 3'b100 && float_reg_a == 1) ? {32'h00000000, d4_out[63:32]} :
                ((sel_A == 3'b101 && float_reg_a == 0) ? {32'h00000000, d5_out[31:0]} : ((sel_A == 3'b101 && float_reg_a == 1) ? {32'h00000000, d5_out[63:32]} :
                ((sel_A == 3'b110 && float_reg_a == 0) ? {32'h00000000, d6_out[31:0]} : ((sel_A == 3'b110 && float_reg_a == 1) ? {32'h00000000, d6_out[63:32]} :
                ((sel_A == 3'b111 && float_reg_a == 0) ? {32'h00000000, d7_out[31:0]} : {32'h00000000, d7_out[63:32]})))))))))))))));

// assign the output fot the B wire
assign out_B =  (precision == 1) ? ((sel_B == 3'b000) ? d0_out : ((sel_B == 3'b001) ? d1_out : ((sel_B == 3'b010) ? d2_out : ((sel_B == 3'b011) ? d3_out : ((sel_B == 3'b100) ? d4_out : ((sel_B == 3'b101) ? d5_out : ((sel_B == 3'b110) ? d6_out : d7_out))))))) : 
                ((sel_B == 3'b000 && float_reg_b == 0) ? {32'h00000000, d0_out[31:0]} : ((sel_B == 3'b000 && float_reg_b == 1) ? {32'h00000000, d0_out[63:32]} :
                ((sel_B == 3'b001 && float_reg_b == 0) ? {32'h00000000, d1_out[31:0]} : ((sel_B == 3'b001 && float_reg_b == 1) ? {32'h00000000, d1_out[63:32]} :
                ((sel_B == 3'b010 && float_reg_b == 0) ? {32'h00000000, d2_out[31:0]} : ((sel_B == 3'b010 && float_reg_b == 1) ? {32'h00000000, d2_out[63:32]} :
                ((sel_B == 3'b011 && float_reg_b == 0) ? {32'h00000000, d3_out[31:0]} : ((sel_B == 3'b011 && float_reg_b == 1) ? {32'h00000000, d3_out[63:32]} :
                ((sel_B == 3'b100 && float_reg_b == 0) ? {32'h00000000, d4_out[31:0]} : ((sel_B == 3'b100 && float_reg_b == 1) ? {32'h00000000, d4_out[63:32]} :
                ((sel_B == 3'b101 && float_reg_b == 0) ? {32'h00000000, d5_out[31:0]} : ((sel_B == 3'b101 && float_reg_b == 1) ? {32'h00000000, d5_out[63:32]} :
                ((sel_B == 3'b110 && float_reg_b == 0) ? {32'h00000000, d6_out[31:0]} : ((sel_B == 3'b110 && float_reg_b == 1) ? {32'h00000000, d6_out[63:32]} :
                ((sel_B == 3'b111 && float_reg_b == 0) ? {32'h00000000, d7_out[31:0]} : {32'h00000000, d7_out[63:32]})))))))))))))));
endmodule




