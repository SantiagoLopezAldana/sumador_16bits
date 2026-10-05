module Full_Adder(input wire A, B, Cin, output wire S, Cout);
      assign S = A ^ B ^ Cin;
      assign Cout = (A & B) | (Cin & (A | B) );
endmodule