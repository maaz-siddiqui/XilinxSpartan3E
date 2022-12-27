`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:55:19 12/28/2022
// Design Name:   test01
// Module Name:   C:/Users/Maaz/test/sevenSegTest.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test01
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sevenSegTest;

	// Inputs
	reg [3:0] segSel;
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire [3:0] anodeOut;
	wire [7:0] sevenOut;

	// Instantiate the Unit Under Test (UUT)
	test01 uut (
		.segSel(segSel), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.anodeOut(anodeOut), 
		.sevenOut(sevenOut)
	);

	initial begin
		// Initialize Inputs
		segSel = 0;
		a = 0;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#10	a=1;	b=1; 	c=1; 	d=1; segSel = 4'b0000;
		#10	a=1;	b=1; 	c=1; 	d=0;
		#10	a=1;	b=1; 	c=0; 	d=1;
		#10	a=1;	b=1; 	c=0; 	d=0;
		#10	a=1;	b=0; 	c=1; 	d=1;
		#10	a=1;	b=0; 	c=1; 	d=0;
		#10	a=1;	b=0; 	c=0; 	d=1;
		#10	a=1;	b=0; 	c=0; 	d=0;
		#10	a=0;	b=1; 	c=1; 	d=1;
		#10	a=0;	b=1; 	c=1; 	d=0;
		#10	a=0;	b=1; 	c=0; 	d=1;
		#10	a=0;	b=1; 	c=0; 	d=0;
		#10	a=0;	b=0; 	c=1; 	d=1;
		#10	a=0;	b=0; 	c=1; 	d=0;
		#10	a=0;	b=0; 	c=0; 	d=1;
		#10	a=0;	b=0; 	c=0; 	d=0;

        
		// Add stimulus here

	end
      
endmodule

