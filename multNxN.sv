`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2024 20:29:40
// Design Name: 
// Module Name: multNxN
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


module multNxN #(
    parameter n = 8, w = 4
)(
    input logic [n - 1 : 0] multer,
    input logic [w - 1 : 0] multor,
    output logic [n + w - 1 : 0] result
);

assign result = multer * multor;

endmodule
