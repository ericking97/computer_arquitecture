`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2024 21:05:39
// Design Name: 
// Module Name: tb_fsm1
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


module tb_fsm1();

logic clk_n, rst, x, y;
logic [2:0] out;

fsm_1 uut(.*);

parameter Tclk = 10;

always begin
    clk_n = 1'b0;
    #(Tclk / 2);
    clk_n = 1'b1;
    #(Tclk / 2);
end;

initial begin 
    rst = 1;
    {x , y} = 2'b00;
    #(20 * Tclk);
    rst = 0;
    @(posedge clk_n);
    {x, y} = 2'b10;
    #(20 * Tclk);
end;

endmodule
