`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:47 04/23/2025 
// Design Name: 
// Module Name:    v3to8decoder 
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
module v74x139(
    input G1,
    input A1,
    input B1,
    input G2,
    input A2,
    input B2,
    output [3:0] Y1,
    output [3:0] Y2
    );
	 
	 wire nA1, nB1, nC1;
	 wire t01, t11, t21, t31;
	 wire nA2, nB2, nC2;
	 wire t02, t12, t22, t32;
	 
	 not(nA1, A1);
	 not(nB1, B1);
	 not(nG1, G1);
	 
	 and(t01, nA1, nB1, nG1);
	 and(t11, A1, nB1, nG1);
	 and(t21, nA1, B1, nG1);
	 and(t31, A1, B1, nG1);
	 
	 assign Y1 = {~t31, ~t21, ~t11, ~t01};
	 
	 not(nA2, A2);
	 not(nB2, B2);
	 not(nG2, G2);
	 
	 and(t02, nA2, nB2, nG2);
	 and(t12, A2, nB2, nG2);
	 and(t22, nA2, B2, nG2);
	 and(t32, A2, B2, nG2);
	 
	 assign Y2 = {~t32, ~t22, ~t12, ~t02};

endmodule
module v3to8decoder(
    input G,
    input A,
    input B,
    input C,
    output [7:0] Y
    );
	 wire goG1, goG2;
	 wire nC;
	 wire [3:0] Y01;
	 wire [3:0] Y02;
	 not(nC, C);
	 or(goG1, G, C);
	 or(goG2, G, nC);
	 v74x139 v0(.G1(goG1), .A1(A), .B1(B), .G2(goG2), .A2(A), .B2(B), .Y1(Y01), .Y2(Y02));
	 assign Y = {Y02, Y01};

endmodule
