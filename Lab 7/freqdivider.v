`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:31 05/28/2025 
// Design Name: 
// Module Name:    freqdivider 
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
module freqdivider(
    input CLK,
    input R,
    output reg out
    );
	 reg [31:0] cnt;
	 always@(posedge CLK) begin
		if(R) begin
		  cnt <= 32'd0;
		  out <= 1'b0;
		end
		else if (cnt == 32'd25000000) begin
			cnt <= 32'd0;
			out <= ~out;
		end
		else begin
			cnt <= cnt + 1;
		end
	 end


endmodule
