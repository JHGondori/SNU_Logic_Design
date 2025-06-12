`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:54 06/12/2025 
// Design Name: 
// Module Name:    microprocessor 
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

module microprocessor(
    input OSC,
    input reset,
	 input [7:0] instruction,
	 output [6:0] inst_seg2,
    output [6:0] inst_seg1,
	 output [6:0] inst_seg0,
    output [6:0] seg1,
    output [6:0] seg0,
	 output [1:0] eq_seg,
	 output clk,
	 output [7:0] pc
    );
    wire [1:0] opcode = instruction[7:6];
    wire [1:0] rs = instruction[5:4];
    wire [1:0] rt = instruction[3:2];
    wire [1:0] rd = instruction[1:0];
    wire signed [1:0] imm = instruction[1:0];

    wire reg_dst, reg_write, alu_src, branch, mem_read, mem_write, mem_to_reg;
    wire [1:0] write_reg = (reg_dst) ? rd : rt;

    wire [7:0] reg_data1, reg_data2, alu_in2, alu_result, mem_data, write_data;
	 wire [7:0] dst_idx;
	 
	 freqdivider freq(OSC, reset, clk);

    program_counter pc_unit(clk, reset, branch, {{6{imm[1]}}, imm}, pc);
    control_unit cu(opcode, reg_dst, reg_write, alu_src, branch, mem_read, mem_write, mem_to_reg);
    register_file rf(clk, reset, reg_write, rs, rt, write_reg, write_data, reg_data1, reg_data2);
    alu alu_unit(reg_data1, alu_in2, alu_result);
    data_memory dmem(clk, reset, mem_read, mem_write, alu_result, reg_data2, mem_data);
	 
	 sevenseg_instformat inst(dst_idx, opcode, inst_seg2, inst_seg1, inst_seg0);

    assign alu_in2 = (alu_src) ? {{6{imm[1]}}, imm} : reg_data2;
	 assign dst_idx = (mem_write) ? alu_result : {6'b0, write_reg};
							
    assign write_data = (mem_to_reg) ? mem_data : 
								(branch) ? pc + 8'd1 + $signed(imm):
								(mem_write) ? reg_data2 : alu_result;
	 assign eq_seg = 2'b11;

    seven_segment_display seg_high(write_data[7:4], seg1);
    seven_segment_display seg_low(write_data[3:0], seg0);

endmodule
