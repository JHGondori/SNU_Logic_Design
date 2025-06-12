`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:48 04/23/2025 
// Design Name: 
// Module Name:    v4_1mux 
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
module v4_1mux_struct(
    input [3:0] I,
    input [1:0] S,
    output O
    );
	wire nS0, nS1;
   wire and0, and1, and2, and3;

   not (nS0, S[0]);
   not (nS1, S[1]);

   and (and0, I[0], nS1, nS0); 
   and (and1, I[1], nS1, S[0]); 
   and (and2, I[2], S[1], nS0); 
   and (and3, I[3], S[1], S[0]); 

   or (O, and0, and1, and2, and3);

endmodule
