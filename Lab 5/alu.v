`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:05:40 05/14/2025 
// Design Name: 
// Module Name:    alu 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:01 05/14/2025 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input M,
    input S0,
    input S1,
    input A,
    input B,
    output [5:0] F
    );
	 
	 wire N_A, N_M, N_S0, N_S1;
	 wire F0, F1, F2, F3, F4, F5, F6, F7;
	 wire O0, O1, O2, O3, O6, O7;
	 not(N_A,A);
	 not(N_M,M);
	 not(N_S0,S0);
	 not(N_S1,S1);
	
	 assign F0=A;
	 assign F1= N_A;
	 xor T3(F2,A,B);
	 xnor T4(F3,A,B);
	 assign F4= A;
	 assign F5= N_A;
	 or T7(F6,A,B);
	 or T8(F7,N_A,B);
	 
	 and(O0, F0, N_S1, N_S0);
	 and(O1, F1, N_S1, S0);
	 and(O2, F2, N_M, S1, N_S0);
	 and(O3, F3, N_M, S1, S0);
	 and(O6, F6, M, S1, N_S0);
	 and(O7, F7, M, S1, S0);
	 
	 assign F = {O0, O1, O2, O3, O6, O7};
	 
	


endmodule

