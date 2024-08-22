`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2024 21:02:26
// Design Name: 
// Module Name: RFile
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

// Design of a Register File
module RFile#(
    parameter N = 32, W = 32
)(
    input clk, rst, we,
    // Clock, Reset, Write Enable
    input [N - 1 : 0] Din,
    input [$clog2(W) - 1 : 0] dst, // Destination
    input [$clog2(W) - 1 : 0] fteA, fteB,
    output [N - 1 : 0] BusA, BusB
);

logic [N - 1: 0] rf [0: W - 1] = '{default: '0};

always_ff @(posedge(clk)) begin
    if (rst) 
        rf <= '{default: '0};
    else if (we)
        rf[dst] <= Din;
end

assign BusA = rf[fteA];
assign BusB = rf[fteB];

endmodule
