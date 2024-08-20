`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2024 20:40:23
// Design Name: 
// Module Name: tb_Qreg
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


module tb_Qreg();

parameter N = 4;
parameter Tclk = 10;

logic clk, rst, ldp, cta, l_and;
logic [N - 1 : 0] SW;
logic [N - 1 : 0] Qout;

Qreg #(.N(N)) uut(.*);

always begin
    clk = 1'b0;
    #(Tclk / 2);
    clk = 1'b1;
    #(Tclk / 2);
end

initial begin
    rst = 1'b1;
    ldp = 1'b0;
    cta = 1'b0;
    l_and = 1'b0;
    SW = 4'b0000;
    #(Tclk * 2);
    rst = 1'b0;
    #(Tclk * 10);
    @(negedge(clk));
    ldp = 1'b1;
    #(Tclk * 5);
    SW = 7;
    #(Tclk * 5);
    cta = 1'b1;
    #(Tclk * 5);
    ldp = 1'b0;
    #(Tclk * 50);
    cta = 1'b0;
    #(Tclk * 5);
    rst = 1'b1;
    #(Tclk * 5);
    $stop;
end

endmodule
