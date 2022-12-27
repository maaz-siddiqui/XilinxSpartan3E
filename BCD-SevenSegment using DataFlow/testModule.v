`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:24 12/27/2022 
// Design Name: 
// Module Name:    testModule 
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
module testModule(
    input [3:0] segSel,
    input [3:0] input,
    output [7:0] output,
    output [3:0] anode
    );
always @ (input or segSel)
begin 
case(input

endmodule
