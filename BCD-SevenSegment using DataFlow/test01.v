`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:10 12/27/2022 
// Design Name: 
// Module Name:    test01 
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
module test01(
    input [3:0] segSel,
	 
    input a,
	 input b,
	 input c,
	 input d,

    output reg [3:0] anodeOut,
    output reg [7:0] sevenOut
    );
always @ (segSel or a or b or c or d) begin
sevenOut[0]<={a&~b&~c&~d}|{~a&~b&c&~d}|{~a&b&c&~d};
sevenOut[1]<={a&~b&c&~d}|{~a&b&c&~d};
sevenOut[2]<={~a&b&~c&~d};
sevenOut[3]<={a&~b&~c&~d}|{~a&~b&c&~d}|{a&b&c&~d}|{a&~b&~c&d};
sevenOut[4]<={a&~b&~c&~d}|{a&b&~c&~d}|{~a&~b&c&~d}|{a&~b&c&~d}|{a&b&c&~d}|{a&~b&~c&d}; //e
sevenOut[5]<={a&~b&~c&~d}|{~a&b&~c&~d}|{a&b&~c&~d}|{a&b&c&~d}; //f
sevenOut[6]<={~a&~b&~c&~d}|{a&~b&~c&~d}|{a&b&c&~d}; //g
sevenOut[7]<=1;
anodeOut = segSel;
end
endmodule
