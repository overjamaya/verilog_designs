`timescale 1ns / 1ps

module Main(
    input clk_,
    input reset_
    );
    
    wire [2:0] a1_;
    wire a2_,a3_,a5_,a6_,r_,rw;
    wire [1:0] a4_;
    wire [7:0] a,dir_,dat_;
    wire [7:0] con_;
    
    
    Data_path_micro U1 (
    
    .clk(clk_),
    .reset(reset_),
    .a1(a1_),
    .a4(a4_),
    .roux(r_),
    .a6(a6_),
    .a2(a2_),
    .a3(a3_),
    .a5(a5_),
    .datos(dat_),
    .dir(dir_),
    .rdat_in(con_),
    .A(a)
    );
    
    FSM_ U2 (
    .clk(clk_),
    .reset(reset_),
    .rdata(con_),
    .acumulador(a),
    .a1(a1_),
    .roux(r_),
    .a4(a4_),
    .a6(a6_),
    .r_w(rw), 
    .a2(a2_), 
    .a3(a3_),
    .a5(a5_),
    .dat(dat_)
    );
    
    Memoria U3 (
    .clk(clk_),
    .data(dat_),
    .address(dir_),
    .we(rw)
    );
    
endmodule
