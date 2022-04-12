`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:22:13 04/12/2022 
// Design Name: 
// Module Name:    Weight_ROM 
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
module Weight_ROM(
	input [7:0] address,
	input enable,
	output [7:0] data
);

reg [7:0] mem [127:0];

initial begin
	mem[0] = 1;
	mem[1] = 3;
	mem[2] = 2;
	mem[3] = 5;
	mem[4] = 6;
	mem[5] = 5;
	mem[6] = 5;
	mem[7] = 2;
end

assign data = enable ? mem[address] : 8'bzzzzzzzz;

endmodule
