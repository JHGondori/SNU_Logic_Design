`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:10 04/23/2025 
// Design Name: 
// Module Name:    v4_1mux_behav 
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
module v4_1mux_behav(
    input [3:0] I,
    input [1:0] S,
    output O
    );
	 reg out;
	 assign O = out;
	always @(*) begin
    case (S)
      2'b00: out = I[0];
      2'b01: out = I[1];
      2'b10: out = I[2];
      2'b11: out = I[3];
    endcase
  end

endmodule
