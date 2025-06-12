`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:53 06/12/2025 
// Design Name: 
// Module Name:    sevenseg_instformat 
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
module sevenseg_instformat(
    input [7:0] dst_idx,
    input [1:0] opcode,
    output reg [6:0] seg2,
    output reg [6:0] seg1,
    output reg [6:0] seg0
    );
	 wire [6:0] hex1;
	 wire [6:0] hex0;
	 
	 seven_segment_display seg_high(dst_idx[7:4], hex1);
    seven_segment_display seg_low(dst_idx[3:0], hex0);
	 
	 always @(dst_idx, opcode) begin
		if(opcode==2'b11) begin
			seg2 <= 7'b0000000;
			seg1 <= 7'b1110011;
			seg0 <= 7'b0111001;
		end else if(opcode==2'b10) begin
			seg2 <= 7'b1110111;
			seg1 <= hex1;
			seg0 <= hex0;
		end else begin
			seg2 <= 7'b1101101;
			seg1 <= hex1;
			seg0 <= hex0;
		end
	 end


endmodule
