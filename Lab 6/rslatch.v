`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:22 05/21/2025 
// Design Name: 
// Module Name:    rslatch 
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
module rslatch(
    input R,
    input S,
    output Q,
    output N_Q
    );
	 
	 nor(Q,R,N_Q);
	 nor(N_Q,S,Q);


endmodule
