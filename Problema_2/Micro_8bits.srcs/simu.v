`timescale 1ns / 1ps

module simu();

reg clk,reset;

Main U1(
.clk_(clk),
.reset_(reset)
);

begin 
initial

clk = 1'b0;

end

always 
#0.5 clk =! clk;

initial begin

clk = 1'b1;

reset = 1;
#1
reset = 0;

end


endmodule
