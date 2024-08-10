`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2024 20:55:10
// Design Name: 
// Module Name: Hex2Led
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


module Hex2Led(
    input logic [3:0] hex,
    output logic [6:0] led
);

logic [3:0] ROM [0:15] = '{
    0: 7'b000_0010,
    1: 7'hF3,
    2: 7'd5,
    3: 7'd3,
    4: 7'd4,
    5: 7'h5,
    6: 7'h6,
    8: 7'h8,
    9: 7'h9,
    10: 7'hA,
    13: 7'hD,
    14: 7'hB,
    15: 7'hf,
    default: 7'b0000000
};

assign led = ROM[hex];

endmodule
