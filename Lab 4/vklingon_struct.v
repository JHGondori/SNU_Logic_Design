`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:55 04/30/2025 
// Design Name: 
// Module Name:    vklingon 
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
module vklingon(
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
	 wire n0, n1, n2, n3;
	 not(n0, in0);
	 not(n1, in1);
	 not(n2, in2);
	 not(n3, in3);
	 //A
	 and(A, n2, n3);
	 //B
	 wire pB1, pB2;
	 and(pB1, in2, n0);
	 and(pB2, n1, n0);
	 or(B, pB1, pB2, in3);
	 //C
	 wire pC1, pC2, pC3;
	 and(pC1, n2, n0, n1);
	 and(pC2, in2, in0);
	 and(pC3, in3, n1);
	 or(C, pC1, pC2, pC3);
	 //D
	 wire pD1, pD2, pD3;
	 and(pD1, n0, n1, n2, n3);
	 and(pD2, in0, in1, n2, n3);
	 and(pD3, in0, n1, in2, n3);
	 or(D, pD1, pD2, pD3);
	 //E
	 wire pE1, pE2, pE3, pE4;
	 and(pE1, n0, n1, n2);
	 and(pE2, in0, n1, in2);
	 and(pE3, n2, in3);
	 and(pE4, n0, in1, in2);
	 or(E, pE1, pE2, pE3, pE4);
	 //F
	 wire pF1, pF2;
	 and(pF1, n0, n1);
	 and(pF2, in0, in1, in2);
	 or(F, pF1, pF2, in3);
	 //G
	 wire pG1, pG2;
	 and(pG1, in1, n3);
	 and(pG2, in0, in3);
	 or(G, pG1, pG2, in2);
	 


endmodule
