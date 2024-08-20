`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2024 20:26:59
// Design Name: 
// Module Name: Qreg
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


module Qreg#(
    parameter N = 8
)(
    input logic clk, rst, ldp, cta, l_and,
    input logic [N-1 : 0] SW,
    output logic [N-1 : 0] Qout
);

logic [N-1 : 0] qtmp = '0;
assign Qout = qtmp;

always_ff @(posedge(clk)) begin
    if (rst)
        qtmp <= '0;
    else if (ldp)
        qtmp <= SW;
    else if (cta)
        qtmp <= qtmp + 1;
    else if (l_and)
        qtmp <= qtmp & SW;
end


endmodule
