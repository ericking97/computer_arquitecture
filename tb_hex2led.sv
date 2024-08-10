`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2024 21:11:18
// Design Name: 
// Module Name: tb_hex2led
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


module tb_hex2led();

logic [3:0] hex;
logic [6:0] led;

Hex2Led uut(.*);

initial begin
    hex = 0;
    #100;
    for (int i = 1; i < 16; i++) begin
        hex = i;
        #50;
    end;
    $stop;
end;

endmodule
