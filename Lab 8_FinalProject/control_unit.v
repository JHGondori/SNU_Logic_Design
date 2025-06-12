`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:06 06/12/2025 
// Design Name: 
// Module Name:    control_unit 
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

module control_unit(
    input [1:0] opcode,
    output reg reg_dst,
    output reg reg_write,
    output reg alu_src,
    output reg branch,
    output reg mem_read,
    output reg mem_write,
    output reg mem_to_reg
    );
    always @(*) begin
        case (opcode)
            `OP_ADD: begin
                reg_dst    = 1;
                reg_write  = 1;
                alu_src    = 0;
                branch     = 0;
                mem_read   = 0;
                mem_write  = 0;
                mem_to_reg = 0;
            end
            `OP_LW: begin
                reg_dst    = 0;
                reg_write  = 1;
                alu_src    = 1;
                branch     = 0;
                mem_read   = 1;
                mem_write  = 0;
                mem_to_reg = 1;
            end
            `OP_SW: begin
                reg_dst    = 0; // don't care
                reg_write  = 0;
                alu_src    = 1;
                branch     = 0;
                mem_read   = 0;
                mem_write  = 1;
                mem_to_reg = 0; // don't care
            end
            `OP_JUMP: begin
                reg_dst    = 0; // don't care
                reg_write  = 0;
                alu_src    = 0;
                branch     = 1;
                mem_read   = 0;
                mem_write  = 0;
                mem_to_reg = 0; // don't care
            end
            default: begin
                reg_dst    = 0;
                reg_write  = 0;
                alu_src    = 0;
                branch     = 0;
                mem_read   = 0;
                mem_write  = 0;
                mem_to_reg = 0;
            end
        endcase
    end


endmodule
