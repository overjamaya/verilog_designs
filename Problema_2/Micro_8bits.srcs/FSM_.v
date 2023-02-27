`timescale 1ns / 1ps

module FSM_(
    input clk,
    input reset,
    input [7:0] rdata,
    input [7:0] dat,
    input [7:0] acumulador,
    output reg [2:0] a1,
    output reg roux,
    output reg [1:0] a4,
    output reg a6,
    output reg r_w, a2, a3,a5
    );
    
    // Maquina de estados
    parameter Iniciar = 3'd0, Busqueda = 3'd1, Ejecucion =3'd2, Anda =3'd3 , Suba =3'd4 , Adda=3'd5 , Idaxx=3'd6 , Idxxa=3'd7;
    reg [2:0] presente;
    reg [2:0] futuro;
    
    // registro de estados
    always @(posedge clk)
      begin
          presente <= futuro;
      end

    always @(*)
    
    if (reset == 1'b0)
      case(presente)
      
      Iniciar: begin
              futuro <= Busqueda;
              end
      Busqueda:
      
              if(dat == 8'b111)
                   futuro <= Busqueda;
              else
                   futuro <= Ejecucion;
      
      Ejecucion:
      
              case(rdata)
              
              8'b000: futuro <= Idaxx;
              8'b001: futuro <= Idxxa;
              8'b010: futuro <= Anda;
              8'b011: futuro <= Adda;
              8'b100: futuro <= Suba;
              default: futuro <= Busqueda;
              
              endcase
      
      Anda: futuro <= Busqueda;
      Suba: futuro <= Busqueda;
      Adda: futuro <= Busqueda;
      Idaxx: futuro <= Busqueda;
      Idxxa: futuro <= Busqueda;
      
      default: futuro <= Iniciar;
      
      endcase
      
      else
         futuro <= Iniciar;
    
    // logica de salida
    
    always @(*)
    begin
      case(presente)
      
          Iniciar: begin
            a1 <= 3'b101;
            a2 <= 1'b1;
            a3 <= 1'b1;
            a4 <= 2'b01;
            a5 <= 1'b1;
            a6 <= 1'b1;
            roux <= 1'b1;
            r_w <= 1'b1;
            end
            
          Busqueda: begin
            a1 <= 3'b011;
            a2 <= 1'b0;
            a3 <= 1'b0;
            a4 <= 2'b00;
            a5 <= 1'b0;
            a6 <= 1'b1;
            roux <= 1'b1;
            r_w <= 1'b1;
            end
            
          Ejecucion:
          
          case(rdata)
          8'b101: 
                  begin
                     
                     if (acumulador == 0)
                        a4 <= 2'b01;
                     else
                        a4 <= 2'b00;
                                   
                    a1 <= 3'b011;
                    a2 <= 1'b0;
                    a3 <= 1'b0;  
                    a5 <= 1'b0;
                    a6 <= 1'b1;
                    roux <= 1'b1;
                    r_w <= 1'b1;
                    end
            
          8'b110: 
                  begin
                    a1 <= 3'b011;
                    a2 <= 1'b0;
                    a3 <= 1'b0;
                    a4 <= 2'b01;
                    a5 <= 1'b0;
                    a6 <= 1'b1;
                    roux <= 1'b1;
                    r_w <= 1'b1;
                    end
                    
                  default: 
                      begin
                        a1 <= 3'b11;    
                        a2 <= 1'b0;
                        a3 <= 1'b0;
                        a4 <= 2'b10;
                        a5 <= 1'b0;
                        a6 <= 1'b1;
                        roux <= 1'b1;
                        r_w <= 1'b1;
                        end
          endcase
          
            
          Anda: begin
            a1 <= 3'b010;
            a2 <= 1'b0;
            a3 <= 1'b0;
            a4 <= 2'b00;
            a5 <= 1'b0;
            a6 <= 1'b0;
            roux <= 1'b1;
            r_w <= 1'b1;
            end
            
          Suba: begin
            a1 <= 3'b001;
            a2 <= 1'b0;
            a3 <= 1'b0;
            a4 <= 2'b00;
            a5 <= 1'b0;
            a6 <= 1'b0;
            roux <= 1'b1;
            r_w <= 1'b1;
            end
            
          Adda: begin
            a1 <= 3'b000;
            a2 <= 1'b0;
            a3 <= 1'b0;
            a4 <= 2'b00;
            a5 <= 1'b0;
            a6 <= 1'b0;
            roux <= 1'b1;
            r_w <= 1'b1;
            end
          
          Idaxx: begin
            a1 <= 3'b100;
            a2 <= 1'b0;
            a3 <= 1'b0;
            a4 <= 2'b00;
            a5 <= 1'b0;
            a6 <= 1'b0;
            roux <= 1'b1;
            r_w <= 1'b1;
            end
          
          Idxxa: begin
            a1 <= 3'b011;
            a2 <= 1'b0;
            a3 <= 1'b0;
            a4 <= 2'b00;
            a5 <= 1'b0;
            a6 <= 1'b0;
            roux <= 1'b0;
            r_w <= 1'b0;
            end
          
          default:
            begin
            a1 <= 3'b101;
            a2 <= 1'b1;
            a3 <= 1'b1;
            a4 <= 2'b1;
            a5 <= 1'b1;
            a6 <= 1'b1;
            roux <= 1'b1;
            r_w <= 1'b1;
            end
      endcase
   end
    
endmodule
