`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:01:32 04/23/2025 
// Design Name: 
// Module Name:    v74x139_c 
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
module v74x139_c(
    input G1,
    input A1,
    input B1,
    input G2,
    input A2,
    input B2,
    output [3:0] Y1,
    output [3:0] Y2
    );
	 reg [3:0] out1;
	 reg [3:0] out2;
	 assign Y1 = out1;
	 assign Y2 = out2;

	always @(*) begin
    if (G1)
      out1 = 4'b1111;
    else begin
      case ({B1,A1})
        2'b00: out1 = 4'b1110;
        2'b01: out1 = 4'b1101;
        2'b10: out1 = 4'b1011;
        2'b11: out1 = 4'b0111;
      endcase
    end
	 if (G2)
      out2 = 4'b1111;
    else begin
      case ({B2,A2})
        2'b00: out2 = 4'b1110;
        2'b01: out2 = 4'b1101;
        2'b10: out2 = 4'b1011;
        2'b11: out2 = 4'b0111;
      endcase
    end
  end
endmodule
