module full_adder_2b(S,A,B);

	//ports
	input [1:0] A;
	input [1:0] B;
	output [2:0] S;
	wire w;
		
	//half-adder instance
	half_adder ha(
		.A(A[0]),
		.B(B[0]),
		.sum(S[0]),
		.carry(w)
		
		);
	
	
	//full-adder instance
	full_adder fa(
		.A(A[1]),
		.B(B[1]),
		.cin(w),
		.sum(S[1]),
		.cout(S[2])
		
	);
	
endmodule 