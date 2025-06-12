`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:42 04/30/2025 
// Design Name: 
// Module Name:    vklingon_data 
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
module vklingon_data(
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
	 wire [6:0] out;
	 
	 assign sel = {in3, in2, in1, in0};
	 
	 assign A = out[6];
	 assign B = out[5];
	 assign C = out[4];
	 assign D = out[3];
	 assign E = out[2];
	 assign F = out[1];
	 assign G = out[0];
	 
	 assign out =  (sel == 4'b0000) ? 7'b1111110 :
						(sel == 4'b0001) ? 7'b1000000 :
						(sel == 4'b0010) ? 7'b1000001 :
						(sel == 4'b0011) ? 7'b1001001 :
						(sel == 4'b0100) ? 7'b0100011 :
						(sel == 4'b0101) ? 7'b0011101 :
						(sel == 4'b0110) ? 7'b0100101 :
						(sel == 4'b0111) ? 7'b0010011 :
						(sel == 4'b1000) ? 7'b0110110 :
						(sel == 4'b1001) ? 7'b0110111 :
						7'b0000000;


endmodule
