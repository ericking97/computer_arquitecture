`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 21:10:18
// Design Name: 
// Module Name: tb_mux4a1wN
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


module tb_mux4a1wN();

parameter W = 4;
logic [W - 1 : 0] d0, d1, d2, d3, out;
logic [1 : 0] sel;

mux4a1wN #(.N(W)) dut1(.*);

// Stimulus
initial begin
    {d0, d1, d2, d3, sel} = {4'b0000, 4'b0000, 4'b0000, 4'b0000, 2'b00};
    #(50);
    d0 = 4;
    #(20);
    d1 = 10;
    #(20);
    sel = 1;
    #(50);
    sel = 3;
    #(5);
    d3 = 4'hF;
    d0 = 8;
    d1 = 3;
    d2 = 7;
    #25;
    sel = 2;
end;

endmodule
