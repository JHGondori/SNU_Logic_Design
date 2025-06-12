`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:11 05/14/2025 
// Design Name: 
// Module Name:    rca_s 
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
module rca_s(
    input a0,
    input a1,
    input b0,
    input b1,
    input c0,
    output s0,
    output s1,
    output c2
    );

	wire p0, g0, p1, g1, c1, tmp0, tmp1;
	
	xor t1(p0,a0,b0);
	xor t2(p1,a1,b1);
	and t3(g0,a0,b0);
	and t4(g1,a1,b1);
	and t5(tmp0,c0,p0);
	and t6(tmp1,c1,p1);
	xor t7(s0,p0,c0);
	xor t8(s1,p1,c1);
	or t9(c1,g0,tmp0);
	or t10(c2,g1,tmp1);


endmodule
