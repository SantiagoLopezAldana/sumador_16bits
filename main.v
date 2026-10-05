module main (input wire [15:0] A,
      input wire [15:0] B,
      output wire Cout_LED,
      output wire [6:0] HEX0,
      output wire [6:0] HEX1,
      output wire [6:0] HEX2,
      output wire [6:0] HEX3);   //4Display+Cout(LED)
      
      wire [15:0] S; //16S
      wire Cout;    //LED
      
      sumador_16bits SUM (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));  //Suma 16bits
      
      assign Cout_LED = Cout; //Salida bit 17
      
      wire [3:0] S0;     //nibble N0  (4BITS:d3,d2.d1,d0)
      wire [3:0] S1;	 //N1
      wire [3:0] S2;	 //N2
      wire [3:0] S3;	 //N3
      assign S0 = S[3:0];  //D0
      assign S1 = S[7:4];  //D1
      assign S2 = S[11:8];  //D2
      assign S3 = S[15:12]; //D3
      
             //Decoders
      Decoder D0(.b3(S0[3]), .b2(S0[2]), .b1(S0[1]), .b0(S0[0]),
            .a(HEX0[6]),
            .b(HEX0[5]),
            .c(HEX0[4]),
            .d(HEX0[3]),
            .e(HEX0[2]),
            .f(HEX0[1]),
            .g(HEX0[0]));
      Decoder D1(.b3(S1[3]), .b2(S1[2]), .b1(S1[1]), .b0(S1[0]),
            .a(HEX1[6]),
            .b(HEX1[5]),
            .c(HEX1[4]),
            .d(HEX1[3]),
            .e(HEX1[2]),
            .f(HEX1[1]),
            .g(HEX1[0]));
      Decoder D2(.b3(S2[3]), .b2(S2[2]), .b1(S2[1]), .b0(S2[0]),
            .a(HEX2[6]),
            .b(HEX2[5]),
            .c(HEX2[4]),
            .d(HEX2[3]),
            .e(HEX2[2]),
            .f(HEX2[1]),
            .g(HEX2[0]));
      Decoder D3(.b3(S3[3]), .b2(S3[2]), .b1(S3[1]), .b0(S3[0]),
            .a(HEX3[6]),
            .b(HEX3[5]),
            .c(HEX3[4]),
            .d(HEX3[3]),
            .e(HEX3[2]),
            .f(HEX3[1]),
            .g(HEX3[0]));
endmodule