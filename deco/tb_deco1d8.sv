`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 20:45:50
// Design Name: 
// Module Name: tb_deco1d8
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


module tb_deco1d8();

parameter N = 20;
logic [$clog2(N) - 1 : 0] in;
logic en;
logic [N - 1 : 0] out;

deco1d8 #(.N(N)) dut_inst1(.*);

initial begin
    en = 1'b0;
    in = 0;
    #50;
    en = 1'b1;
    #50;
    in = 3;
    #50;
    en = 1'b0;
    #50;
    in = 2;
    #50;
    en = 1'b1;
    #100;
    $stop;
end;

endmodule
