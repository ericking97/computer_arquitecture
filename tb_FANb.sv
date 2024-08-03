`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 20:40:54
// Design Name: 
// Module Name: tb_FANb
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


module tb_FANb();

// Internal Signals
parameter n = 4;
logic [n - 1 : 0] a = '1, b = '0, s;
logic cin = 1'b0, cout;

FANb #(.n(n)) uut(.*);

// Stimulus
initial begin
    #50;
    a = 5;
    #50;
    cin = 1;
    #50;
    b = 9;
    #50;
    {a, b} = 8'b1010_1101;
    #50;
    cin = 0;
    #50; 
end;

endmodule
