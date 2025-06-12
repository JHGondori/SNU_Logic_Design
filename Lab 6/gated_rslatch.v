`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:59 05/21/2025 
// Design Name: 
// Module Name:    gated_rslatch 
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


module gated_rslatch(
    input R,
    input S,
    input E,
    output Q,
    output N_Q
    );
	 wire r,s;
	 and(r,R,E);
	 and(s,S,E);
	 rslatch latch(
		.R(r),
		.S(s),
		.Q(Q),
		.N_Q(N_Q)
	 );
	 


endmodule
