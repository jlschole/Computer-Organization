//One Counter

module OneCounter(In,Out); //declares counter module
parameter In_Width = 8; //sets input width to 8 bits
parameter Out_Width = 4; // sets output width to 4 bits
input reg[In_Width-1:0] In; //creates the 8 bit input signal
output reg [Out_Width-1:0] Out; //creates the 4 bit output signal
integer i; // creates an integer i


always @* begin
Out = 4'b0;//sets base output to 0000
  for (i=0; i<In_Width; i=i+1)
    Out = Out + In[i]; //sets output equal to input plus the last output counting the number of ones that have been present
end


endmodule