// BCD Counter TB
`timescale 10ps / 1 ps

module BCDCounterTB;

	wire [3:0] Output;
	reg clk;
	reg reset;

BCDCounter uut (

.Output(Output),
.clk(clk),
.reset(reset)
);

initial // Clock generator
  begin
    clk = 0;
    forever #20 clk=~clk;
  end

initial
 begin
#100
reset=1'b0; // sets reset to 1
#100
reset=0'b0; // sets reset to 0
#100
reset=1'b0; // sets reset to 1

end
endmodule



