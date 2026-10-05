`timescale 1ns/1ps

module TB_sumador_16bits;
      
      reg [15:0] A;
      reg [15:0] B;
      reg Cin;
      wire [15:0] S;
      wire Cout;
      reg [3:0] bHEX;
      wire a, b, c, d, e, f, g;
      
      sumador_16bits PROBE (A, B, Cin, S, Cout);
      
      Decoder D0_TEST (.b3(bHEX[3]), .b2(bHEX[2]), .b1(bHEX[1]), .b0(bHEX[0]), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
      
      initial begin
         $monitor("A=%h B=%h Cin=%b --> S=%h Cout=%b | bHEX=%h --> a=%b b=%b c=%b d=%b e=%b f=%b g=%b",
         	A, B, Cin, S, Cout,
         	bHEX, a, b, c, d, e, f, g);
            
            
            //Display
            bHEX = 4'b0000; #10; //0
            bHEX = 4'b0001; #10; //1
            bHEX = 4'b0010; #10; //2
            bHEX = 4'b0011; #10; //3
            bHEX = 4'b0100; #10; //4
            bHEX = 4'b0101; #10; //5
            bHEX = 4'b0110; #10; //6
            bHEX = 4'b0111; #10; //7
            bHEX = 4'b1000; #10; //8
            bHEX = 4'b1001; #10; //9
            bHEX = 4'b1010; #10; //A
            bHEX = 4'b1011; #10; //b
            bHEX = 4'b1100; #10; //C
            bHEX = 4'b1101; #10; //d
            bHEX = 4'b1110; #10; //E
            bHEX = 4'b1111; #10; //F
            
            //Sumador
            A= 16'b0000000000000000; B = 16'b0000000000000000; Cin = 1'b0; #10; //0 (funciona)
            A= 16'b0000000000000000; B = 16'b0000000000000000; Cin = 1'b1; #10; //1 (funciona) (POR TANTO Cin DEBE ESTAR EN 0)
            A= 16'b0000000000000001; B = 16'b0000000000000001; Cin = 1'b1; #10; //1+1+1=3 (funciona) (POR TANTO Cin DEBE ESTAR EN 0)
            A= 16'b0101011001010101; B = 16'b0100000010011111; Cin = 1'b0; #10; //22101+16543+0=38644 (funciona)
            A= 16'b1111111111111111; B = 16'b0000000000000001; Cin = 1'b0; #10; //65535+1+0=65536 (funciona Cout)
            
      end
endmodule