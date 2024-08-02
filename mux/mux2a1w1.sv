`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 20:15:06
// Design Name: 
// Module Name: mux2a1w1
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

module mux2a1w1(
    input logic d0, d1,
    input logic sel,
    output logic out
);

// Internal Signals
// ...
 
// Hardware

assign out = (sel) ? d1 : d0;

endmodule
