`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 21:24:45
// Design Name: 
// Module Name: mux8a1w4
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


module mux8a1w4(
    input logic [3:0] d[8],
    input logic [2:0] sel,
    output logic [3:0] out
);

assign out = d[sel];

endmodule
