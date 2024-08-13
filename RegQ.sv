`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2024 20:46:26
// Design Name: 
// Module Name: RegQ
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


module RegQ(
    input logic clk,
    input logic rst,
    input logic ldp,
    input logic [7 : 0] sw,
    output logic [7 : 0] qout
);

logic [7 : 0] q_tmp = 8'b11000011;
assign qout = q_tmp;

always_ff @ (posedge(clk)) begin : sincrono
    if (rst) qout <= '0;
    else if (ldp) qout <= sw;
end;


endmodule
