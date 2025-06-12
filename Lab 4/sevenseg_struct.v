`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:23 04/30/2025 
// Design Name: 
// Module Name:    sevenseg_struct 
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
module sevenseg_struct(
    input [3:0] I,
    output [6:0] Y
    );
	 wire A, B, C, D;
	 assign A = I[3];
	 assign B = I[2];
	 assign C = I[1];
	 assign D = I[0];
	 
	 wire nA, nB, nC, nD;
	 not(nA, A);
	 not(nB, B);
	 not(nC, C);
	 not(nD, D);
	  // Segment a
    wire a, BD, nBnD;
    and (BD, B, D);         
    and (nBnD, nB, nD);          

    or (a, A, BD, C, nBnD);

    // Segment b
    wire b, CD, nCnD;
    and (CD, C, D);         
    nor (nCnD, C, D);

    or (b, CD, nCnD, nB);

    // Segment c
    wire c;

    or (c, B, nC, D);

    // Segment e
    wire e, CnD;
    and (CnD, C, nD);
    or (e, nBnD, CnD);

    // Segment f
    wire f, BnD, BnC;
    and (BnD, B, nD);         
    and (BnC, B, nC);         

    or (f, A, B, nCnD);

    // Segment g
    wire g, nBC;
    and (nBC, nB, C);         

    or (g, A, CnD, BnC, nBC);
	 
	 // Segment d
    wire d, BnCD;
    and (BnCD, B, nC, D);         // 0000

    or (d, A, nBnD, CnD, nBC, BnCD);
	 
	 assign Y = {g, f, e, d, c, b, a};


endmodule
