`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:55 05/21/2025 
// Design Name: 
// Module Name:    rsflipflop 
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

module rsflipflop(
    input R,
    input S,
    input CLK,
    output Q,
    output N_Q
    );
	 wire q, n_q;
	 reg E;
	 
	 gated_rslatch latch(
		.R(R),
		.S(S),
		.E(E),
		.Q(Q),
		.N_Q(N_Q)
	 );
	 initial begin E <= 0; end
	 always @(negedge CLK) begin
		E <= 1;
		#5;
		E <= 0;
	 end


endmodule
