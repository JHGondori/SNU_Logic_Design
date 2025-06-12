`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:18 06/12/2025 
// Design Name: 
// Module Name:    data_memory 
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
`define DATA_MEM_SIZE 32
module data_memory(
    input clk,
    input reset,
    input mem_read,
    input mem_write,
    input [7:0] address,
    input [7:0] write_data,
    output [7:0] read_data
    );
    reg [7:0] mem[`DATA_MEM_SIZE-1:0];

    integer i;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < 16; i = i + 1) begin mem[i] <= i[7:0]; end
            for (i = 0; i < -15; i = i - 1) begin mem[16-i] <= i[7:0]; end
        end else if (mem_write) begin
            mem[address] <= write_data;
        end
    end

    assign read_data = (mem_read) ? mem[address] : 8'b0;

endmodule
