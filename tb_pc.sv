`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2024 21:17:49
// Design Name: 
// Module Name: tb_pc
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


module tb_pc();

logic clk, rst, ldp, cta;
logic [31 : 0] SW;
logic [31 : 0] PC;
parameter Tclk = 10;

PCreg dut(.*);

initial begin
  clk = 1'b0;
  #(Tclk/2);
  forever
     #(Tclk/2) clk = ~clk;
end

always begin
    {rst, ldp, cta} = {3'b100};
    #(Tclk * 5);
    @(negedge(clk));
    {rst, ldp, cta, SW} = {3'b000, 32'h0000_FFFF};
    #(Tclk * 5);
    {rst, ldp, cta, SW} = {3'b010, 32'h0000_FFFF};
    #(Tclk * 5);
    {rst, ldp, cta, SW} = {3'b001, 32'h0000_FFFF};
    #(Tclk * 50);
    {rst, ldp, cta, SW} = {3'b000, 32'h0000_FFFF};
    #(Tclk * 5);
    {rst, ldp, cta, SW} = {3'b100, 32'h0000_FFFF};
    $stop;
end
endmodule
