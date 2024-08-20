`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2024 21:11:20
// Design Name: 
// Module Name: PCreg
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


module PCreg(
    input clk, rst, ldp, cta,
    input [31:0] SW,
    output [31:0] PC
);

logic [31:0] pctmp = 32'hF0F0F0F0;

assign PC = pctmp;
always_ff @(posedge(clk)) begin
    if (rst)
        pctmp = '0;
    else if (ldp)
        pctmp = SW;
    else if (cta)
        pctmp = pctmp + 4;
end

endmodule
