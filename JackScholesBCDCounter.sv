//BCD Counter
module BCDCounter(Output,clk,reset);
output [3:0] Output ;
reg [3:0] Output ;

input clk ;
input reset ;


initial 
Output = 1;

always @ (posedge (clk)) 
begin

if (reset)
Output <= 5;
else if (Output < 9) begin

Output <= Output + 1;
end 

else if (Output==9)begin
Output <= 0;


end
end


endmodule 