`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:43 06/12/2025 
// Design Name: 
// Module Name:    register_file 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define OP_ADD  2'b00
`define OP_LW   2'b01
`define OP_SW   2'b10
`define OP_JUMP 2'b11

// Instruction types
`define TYPE_R 2'b00
`define TYPE_I 2'b01
`define TYPE_J 2'b10

// Register and memory settings
`define REG_NUM 4
`define DATA_MEM_SIZE 32
module register_file(
    input clk,
    input reset,
    input reg_write,
    input [1:0] rs,
    input [1:0] rt,
    input [1:0] rd,
    input [7:0] write_data,
    output [7:0] read_data1,
    output [7:0] read_data2
    );
    reg [7:0] regs[`REG_NUM-1:0];

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            regs[0] <= 8'd0;
            regs[1] <= 8'd0;
            regs[2] <= 8'd0;
            regs[3] <= 8'd0;
        end else if (reg_write) begin
            regs[rd] <= write_data;
        end
    end

    assign read_data1 = regs[rs];
    assign read_data2 = regs[rt];

endmodule
