`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 20:20:24
// Design Name: 
// Module Name: traffic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module traffic(
    input logic clk, 
    input logic rst,
    input logic ta, tb,
    // Necesitamos 2 bits para representar los estados del semaforo
    // 00 - Estado no usado, semaforo no esta en funcionamiento
    // 01 - Luz Verde
    // 10 - Luz Amarilla
    // 11 - Luz Roja
    output logic [1:0] la ,lb
);

enum logic [2:0] {s0, s1, s2, s3} current_state = s0, next_state;

/*
Declaramos el reloj que va a funcionar 
cuando tengamos una subida.

Si nos dan reset, entonces nos vamos al estado inicial
De otra forma, nos vamos al siguiente estado
*/

always_ff @ (posedge(clk)) begin
    if (rst) current_state <= s0;
    else current_state <= next_state;
end;

/**
Recordatorio:
// 00 - Estado no usado, semaforo no esta en funcionamiento
// 01 - Luz Verde
// 10 - Luz Amarilla
// 11 - Luz Roja
*/

always_comb begin
    case (current_state)
        s0: begin
            la = 2'b01;
            lb = 2'b11;
            next_state = ta ? s0 : s1;
        end
        s1: begin
            la = 2'b10;
            lb = 2'b11;
            next_state = s2;
        end
        s2: begin
            la = 2'b11;
            lb = 2'b01;
            next_state = tb ? s2 : s3;
        end
        s3: begin
            la = 2'b11;
            lb = 2'b01;
            next_state = s0;
        end
    endcase;
end;

endmodule