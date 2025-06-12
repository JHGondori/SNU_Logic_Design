`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:43:34 04/30/2025 
// Design Name: 
// Module Name:    sevenseg_data 
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
module sevenseg_data(
    input [3:0] I,
    output [6:0] Y
    );
	 wire A, B, C, D, a,b,c,d,e,f,g;
	 assign A = I[3];
	 assign B = I[2];
	 assign C = I[1];
	 assign D = I[0];
	 
	 assign a = A | (B & D) | C | (~B & ~D);
	 assign b = (~C & ~D) | (C & D) | ~B;
	 assign c = B | ~C | D;
	 assign d = A | (~B & ~D) | (C & ~D) | (~B & C) | (B & ~C & D);
	 assign e = (~B & ~D) | (C & ~D);
	 assign f = A | B | (~C & ~D);
	 assign g = A | (C & ~D) | (B & ~C) | (~B & C);
	 
	 assign Y = {g,f,e,d,c,b,a};
	 


endmodule
