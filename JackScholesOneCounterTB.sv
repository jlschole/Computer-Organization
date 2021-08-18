//OneCounterTB
`timescale 1ns / 1ps

  
module OneCounterTB;

     // Outputs

     reg [3:0] Out;

	
     // Inputs
     reg [7:0] In;
     reg[7:0] count = 8'b0;

     





     // Instantiate the Unit Under Test (UUT)

OneCounter dut(
      .In(In), 

      .Out(Out)

     );


     initial 
	begin

      // Initialize Inputs

      In = 00000000;

      // Wait 100 ns for global declaration to finish

      #100;

      In = 00000000;
      
      #100


      //For Loop For incrementation of count and input

      
for (count = 0; count < 256; count = count + 1'b1) // goes through an increment from 0 to 256 in a loop 

  	begin

   		In = count; // sets the input equal to the incrementing count

   		#20;

  	end

    end

endmodule

