`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:56 06/12/2025 
// Design Name: 
// Module Name:    instruction_memory 
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
module instruction_memory(
    input [7:0] address,
    output [7:0] instruction
    );

    wire [7:0] MemByte[31:0];
	 
	 assign MemByte[0] = {2'b01, 2'b10, 2'b10, 2'b01};
	 
	 assign MemByte[1] = {2'b00, 2'b10, 2'b10, 2'b10};
	 
	 assign MemByte[2] = {2'b00, 2'b10, 2'b10, 2'b10};
	 
	 assign MemByte[3] = {2'b10, 2'b10, 2'b10, 2'b00};
	 
	 assign MemByte[4] = {2'b11, 2'b00, 2'b00, 2'b01};
	 
	 assign MemByte[5] = {2'b11, 2'b00, 2'b00, 2'b10};
	 
	 assign instruction = MemByte[address];

endmodule
