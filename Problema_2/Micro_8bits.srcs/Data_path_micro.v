`timescale 1ns / 1ps

module Data_path_micro(
    input clk,
    input reset,
    input [2:0] a1,
    input roux,a6,a2,a3,a5,
    input [1:0] a4,
    inout [7:0] datos,
    output [7:0] dir,
    output [7:0] rdat_in,
    output reg [7:0] A
    );
    
    // ALU: +, -, &
    
    always @(posedge clk)
     if(a5 == 0 | reset == 0)
        case (a1)
         3'd0: A <= A + datos;
         3'd1: A <= A - datos;
         3'd2: A <= A & datos;
         3'd3: A <= A;
         3'd4: A <= datos;
         3'd5: A <= 0;
         default: A <= A + datos;
        endcase 
     else
     A <= 0;
     
    // Triestado
    
    wire [7:0] cable;
    
    assign cable = roux? 8'dZ: A; 

    assign datos = cable; 

    // mux carga pc
    reg [7:0] PC;
    wire [7:0] carga_pc;
    
    //assign carga_pc = a4? datos: PC+1;
    
    assign carga_pc = (a4 == 2'b00) ? PC+1 : (a4 == 2'b01) ? datos : (a4 == 2'b10) ? PC : PC;
    
    // PC
    
    always @(posedge clk)
     if(a2 == 0 | reset == 0)
        PC <= carga_pc;
     else
        PC <= 0;
        
    // mux de dir
    
    assign dir = a6? PC: rdat_in;
    
    // registro C
    reg [7:0] C;
    
    always @(posedge clk)
    if(a3 == 0 | reset == 0)
      C <= datos;
    else
      C <= 1;
    
    assign rdat_in = C;
    
endmodule
