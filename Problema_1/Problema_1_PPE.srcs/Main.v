`timescale 1ns / 1ps

module Main(
    input Clk,
    input [7:0] N,
    input Start,
    output Busy_,
    output Salida
    );
    
    wire a1_,a2_,a3_,a4_,a5_,a6_,a7_;
    wire [7:0] A_,E_,K_;
    
    Data_path U1 (
    
    .clk(Clk),
    .n(N),
    .a1(a1_),
    .a2(a2_),
    .a3(a3_),
    .a4(a4_),
    .a5(a5_),
    .a6(a6_),
    .a7(a7_),
    .A(A_),
    .P(Salida),
    .K(K_),
    .E(E_)
    
    );
    FSM U2 (
    
    .clk(Clk),
    .start(Start),
    .A(A_),
    .E(E_),
    .K(K_),
    .Busy(Busy_),
    .a1(a1_),
    .a2(a2_),
    .a3(a3_),
    .a4(a4_),
    .a5(a5_),
    .a6(a6_),
    .a7(a7_)
    
    );
    
endmodule
