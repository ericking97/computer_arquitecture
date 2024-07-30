`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 20:15:06
// Design Name: 
// Module Name: mux4a1w4
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

// Design of a multiplexor 4 to 1 with a width of 4 bits

module mux4a1w4(
    input logic [3:0] D0, D1, D2, D3,
    input logic [1:0] Sel,
    output logic [3:0] Yout
);

// Internal Signals
// ...
 
// Hardware

// Using a switch statement
// always @(...) suffers from time 0 race conditions that always_comb 
// avoids by ensuring that the latter triggers at time 0 
// regardless of whether or not it sees any event triggers
//always @ (D0, D1, D2, D3, Sel) begin
always_comb begin
    case(Sel)
        2'b00 : Yout = D0;
        2'b01 : Yout = D1;
        2'b10 : Yout = D2;
        default : Yout = D3;
    endcase
end;

// Concating if statements
//assign Yout = (Sel == 2'b00) ? D0 :
//    (Sel == 2'b01) ? D1 :
//    (Sel == 2'b10) ? D2 : D3;

endmodule
