module tb_full_adder_4b;

	//tb signals
	reg [3:0]  A;
	reg [3:0]  B;
	wire [4:0] S;
	
	
	//half-adder instance
	full_adder_4b dut(
	.A(A),
	.B(B),
	.S(S)
	
	);
	
	//apply stimuli
	
	initial begin
		A = 0; B = 0; #1;
		repeat(15)begin
			B = 2'd0;
			A = A+ 2'd1;
			#1;
				repeat(15)begin
					B = B+2'd1;
					#1;
				end
		end
	end
	
endmodule
	