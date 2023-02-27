`timescale 1ns / 1ps

module Memoria (
input clk,
inout [7:0] data,
input [7:0] address,
input we
);

reg [7:0] mem [0:255];

initial begin
mem[0] = 0;
mem[1] = 8'h80;
mem[2] = 8'b100;
mem[3] = 8'h81;
mem[4] = 8'b101;
mem[5] = 8'h8;
mem[6] = 8'b110;
mem[7] = 8'h2;
mem[8] = 8'b000;
mem[9] = 8'h83;
mem[10] = 8'b100;
mem[11] = 8'h81;
mem[12] = 8'b001;
mem[13] = 8'h83;
mem[14] = 8'b101;
mem[15] = 8'h12;
mem[16] = 8'b110;
mem[17] = 8'h0;
mem[18] = 8'b000;
mem[19] = 8'h84;
mem[20] = 8'b100;
mem[21] = 8'h81;
mem[22] = 8'b001;
mem[23] = 8'h84;
mem[24] = 8'b101;
mem[25] = 8'h1C;
mem[26] = 8'b110;
mem[27] = 8'h0;
mem[28] = 8'b000;
mem[29] = 8'h85;
mem[30] = 8'b001;
mem[31] = 8'h84;
mem[32] = 8'b000;
mem[33] = 8'h82;
mem[34] = 8'b011;
mem[35] = 8'h81;
mem[36] = 8'b001;
mem[37] = 8'h82;
mem[38] = 8'b111;
mem[39] = 8'b111;
mem[40] = 8'b110;
mem[41] = 8'h0;
mem[128] = 8'd4;
mem[129] = 8'd2;
mem[130] = 8'd2;
mem[131] = 8'd2;
mem[132] = 8'd2;

end

 wire [7:0] dato;

 assign data = ~we? 8'dz : dato; 

  always @(posedge clk)
    if (~we) 
      mem[address] <= data;
    
     
  assign dato = mem[address];
     
//  assign data = dato;

endmodule
