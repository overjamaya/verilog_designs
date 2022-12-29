`timescale 1ns / 1ps

module Data_path(
    input clk,
    input [7:0] n,
    input a1,
    input a2,
    input a3,
    input a4,
    input a5,
    input a6,
    input a7,
    output reg [7:0] A,
    output reg P,
    output reg [7:0] K,
    output reg [7:0] E
    );
    
    // restador a
    wire [7:0] T1;
    assign T1 = a1? A-K: n;
    
    always @(posedge clk)
     A <= T1;
     
    // registro de guardado E
    wire [7:0] T2;
    assign T2 = a4? E: A;
    
    always @(posedge clk)
     E <= T2; 
    
    // restador K
    wire [7:0] T3,T4;
    assign T3 = a2? K: T4;
    assign T4 = a3? K-1: n-1;
    
    always @(posedge clk)
     K <= T3;
     
    // sumador C
    wire [7:0] T5,T6;
    reg  [7:0] C;
    assign T5 = a6? C: T6;
    assign T6 = a5? C+1: 1;
    
    always @(posedge clk)
     C <= T5;
     
    // salida P
    wire T7;
    assign T7 = a7? P: (C == 2);
    
    always @(posedge clk)
     P <= T7; 
    
     
     
endmodule
