`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 20:53:02
// Design Name: 
// Module Name: tb_traffic
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


module tb_traffic();
   
logic clk, rst, ta, tb;
logic [1:0] la, lb;

traffic uut(.*);

parameter Tclk = 10;

always begin
    clk = 1'b0;
    #(Tclk / 2);
    clk = 1'b1;
    #(Tclk / 2);
end;

initial begin 
    rst = 1;
    {ta , tb} = 2'b00;
    #(20 * Tclk);
    rst = 0;
    @(posedge clk);
    {ta, tb} = 2'b10;
    #(20 * Tclk);
end;

endmodule
