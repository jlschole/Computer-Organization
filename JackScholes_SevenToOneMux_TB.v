
//7 to 1 Mux TestBench

    `timescale 1ns / 1ps

  
module SevenToOneMux_TB;

     // Outputs

     

	
     // Inputs
     reg  i0;

     reg  i1;

     reg  i2;

     reg  i3;

     reg  i4;

     reg  i5;

     reg  i6;

     reg [2:0] s;

     wire  y;
     
     





     // Instantiate the Unit Under Test (UUT)
MyMux uut(
	.s(s), 

	.i0(i0), 

	.i1(i1), 

	.i2(i2), 

	.i3(i3), 
     
	.i4(i4), 

	.i5(i5), 

	.i6(i6),
      
	.y(y)
    );


     initial begin

      // Initialize Inputs

      s = 0;

      i0 = 0;

      i1 = 0;

      i2 = 0;

      i3 = 0;

      i4 = 0;

      i5 = 0;

      i6 = 0;


      // Wait 100 ns for global declaration to finish

      #20;

            

      // Add starting state 

      s = 000;

      i0 = 1'b0;

      i1 = 1'b1;

      i2 = 1'b0;

      i3 = 1'b1;

      i4 = 1'b0;

      i5 = 1'b1;

      i6 = 1'b0;

      

      //Selection input generation
 #20

      

       s = 000; #20;

       s = 001; #20;

       s = 010; #20;

       s = 011; #20;

       s = 100; #20;

       s = 101; #20;

       s = 110; #20;

       s = 111; #20;

       

    
     end

endmodule

