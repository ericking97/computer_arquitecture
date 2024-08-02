
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 20:15:06
// Design Name: 
// Module Name: mayority
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

// Design of a multiplexor 2 to 1 with a width of 1 bit

module mayority(
    // Interface
    input logic x, y, z,
    output logic yout
);

// Physical Wires that connect the multiplexors
logic w0, w1

mux2a1w1 U2(.d0(w0), .d1(w1), .sel(x), .out(yout));
mux2a1w1 U1(.d0(z), .d1(1'b1), .sel(y), .out(w1));
mux2a1w1 U0(.d0(1'b0), .d1(z), .sel(y), .out(w0));

endmodule
