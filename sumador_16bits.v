module sumador_16bits(input wire [15:0] A,
      input wire [15:0] B,
      input wire Cin,
      output wire [15:0] S,
      output wire Cout);
      
      wire [15:1] C;
      
      Full_Adder FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(C[1]));
      Full_Adder FA1(.A(A[1]), .B(B[1]), .Cin(C[1]), .S(S[1]), .Cout(C[2]));
      Full_Adder FA2(.A(A[2]), .B(B[2]), .Cin(C[2]), .S(S[2]), .Cout(C[3]));
      Full_Adder FA3(.A(A[3]), .B(B[3]), .Cin(C[3]), .S(S[3]), .Cout(C[4]));
      Full_Adder FA4(.A(A[4]), .B(B[4]), .Cin(C[4]), .S(S[4]), .Cout(C[5]));
      Full_Adder FA5(.A(A[5]), .B(B[5]), .Cin(C[5]), .S(S[5]), .Cout(C[6]));
      Full_Adder FA6(.A(A[6]), .B(B[6]), .Cin(C[6]), .S(S[6]), .Cout(C[7]));
      Full_Adder FA7(.A(A[7]), .B(B[7]), .Cin(C[7]), .S(S[7]), .Cout(C[8]));
      Full_Adder FA8(.A(A[8]), .B(B[8]), .Cin(C[8]), .S(S[8]), .Cout(C[9]));
      Full_Adder FA9(.A(A[9]), .B(B[9]), .Cin(C[9]), .S(S[9]), .Cout(C[10]));
      Full_Adder FA10(.A(A[10]), .B(B[10]), .Cin(C[10]), .S(S[10]), .Cout(C[11]));
      Full_Adder FA11(.A(A[11]), .B(B[11]), .Cin(C[11]), .S(S[11]), .Cout(C[12]));
      Full_Adder FA12(.A(A[12]), .B(B[12]), .Cin(C[12]), .S(S[12]), .Cout(C[13]));
      Full_Adder FA13(.A(A[13]), .B(B[13]), .Cin(C[13]), .S(S[13]), .Cout(C[14]));
      Full_Adder FA14(.A(A[14]), .B(B[14]), .Cin(C[14]), .S(S[14]), .Cout(C[15]));
      Full_Adder FA15(.A(A[15]), .B(B[15]), .Cin(C[15]), .S(S[15]), .Cout(Cout));

endmodule