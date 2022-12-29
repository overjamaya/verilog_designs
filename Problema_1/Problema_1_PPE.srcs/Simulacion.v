`timescale 1ns / 1ps

module Simulacion();

    reg clk;
    reg [7:0] N_;
    wire salida; 
    reg Start_;
    wire B;

Main U1(
.Clk(clk),
.N(N_),
.Salida(salida), 
.Start(Start_),
.Busy_(B)
);

begin 
initial

clk = 1'b0;

end

always 
#0.5 clk =! clk;

initial begin

clk = 1'b1;

N_ = 8'd49;
#6

Start_ = 1'b1;
#7
Start_ = 0;
end


endmodule
