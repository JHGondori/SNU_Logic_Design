`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:41:11 05/21/2025 
// Design Name: 
// Module Name:    occilator 
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
module oscillator(
    input ENA,
	 output CLK
    );
	 
	 wire nextclk;
	 nand(nextclk, ENA, CLK);
	 assign #50 CLK = nextclk; 



endmodule
