`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 21:00:30
// Design Name: 
// Module Name: mux4a1wN
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


module mux4a1wN #(
    parameter N = 8
)(
    input logic [N - 1 : 0] d0, d1, d2, d3,
    input logic [1 : 0] sel,
    output logic [N - 1 : 0] out
);

// Internal Signals

// Hardware
always_comb begin
    case(sel)
        2'b00 : out = d0;
        2'b01 : out = d1;
        2'b10 : out = d2;
        2'b11 : out = d3;
        default : out = 4'bXXXX;
    endcase
end;

endmodule
