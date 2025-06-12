`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:23 05/28/2025 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input CLK,
    input R,
    output reg [6:0] CNT
    );
	 initial begin CNT = 7'd0; end
	 always @(posedge CLK) begin
		CNT = (R || CNT == 7'd99) ? 0 : CNT+1;
	 end
	 


endmodule
