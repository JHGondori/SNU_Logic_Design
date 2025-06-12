`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:22:11 04/30/2025 
// Design Name: 
// Module Name:    vklingon_behav 
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
module vklingon_behav(
    input in0,
    input in1,
    input in2,
    input in3,
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G
    );
	 wire [3:0] sel;
	 reg [6:0] out;
	 
	 assign sel = {in3, in2, in1, in0};
	 
	 assign A = out[6];
	 assign B = out[5];
	 assign C = out[4];
	 assign D = out[3];
	 assign E = out[2];
	 assign F = out[1];
	 assign G = out[0];
	 always@(*)
		begin
			case(sel)
				4'b0000 : out = 7'b1111110;
				4'b0001 : out = 7'b1000000;
				4'b0010 : out = 7'b1000001;
				4'b0011 : out = 7'b1001001;
				4'b0100 : out = 7'b0100011;
				4'b0101 : out = 7'b0011101;
				4'b0110 : out = 7'b0100101;
				4'b0111 : out = 7'b0010011;
				4'b1000 : out = 7'b0110110;
				4'b1001 : out = 7'b0110111;
				default : out = 7'b0000000;
			endcase
		end


endmodule
