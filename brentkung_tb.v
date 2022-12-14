`timescale 1ns / 1ps

module brentkung_tb;

	// Inputs
	reg [15:0] X;
	reg [15:0] Y;
	reg Cin;

	// Outputs
	wire Cout;
	wire [15:0] SUM;

	// Instantiate the Unit Under Test (UUT)
	Brentkung_adder uut (
		.X(X), 
		.Y(Y), 
		.Cin(Cin), 
		.Cout(Cout), 
		.SUM(SUM)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#10;
        X=20;
		  Y=87;
		  Cin=1;
		  #10
		   X=280;
		  Y=361;
		  Cin=1;
		  
		  		  #10
		   X=2000;
		  Y=5000;
		  Cin=1;
		  
		  		  #10
		   X=6400;
		  Y=21000;
		  Cin=0;
		  		  #10
		   X=750;
		  Y=361;
		  Cin=0;
  #20
		   X=25000;
		  Y=4801;
		  Cin=0;
		  #20
		   X=3150;
		  Y=5800;
		  Cin=1;
		  #20
		   X=7;
		  Y=6;
		  Cin=1;





		  
		// Add stimulus here

	end
      
endmodule

