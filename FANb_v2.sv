`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 21:04:36
// Design Name: 
// Module Name: FANb_v2
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


module FANb_v2#(
    parameter n = 16
)(
    input logic [n - 1 : 0] a, b,
    input logic cin,
    output logic [n - 1 : 0] s,
    output logic cout
);

// Non simplified version
//logic [n : 0] temp;
//assign temp = a + b + cin;
//assign s = temp[n - 1 : 0];
//assign cout = temp[n];

// Simplified version
// We add one bit for the carry
assign {cout, s} = {1'b0, a} + {1'b0, b} + cin;

endmodule
