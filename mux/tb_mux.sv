`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 20:29:32
// Design Name: 
// Module Name: tb_mux
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


module tb_mux();

// Simulation signals
logic [3:0] D0, D1, D2, D3;
logic [1:0] Sel;
logic [3:0] Yout;

// Instance of test unit
//mux4a1w4 test_unit(
//    .D0(D0),
//    .D1(D1),
//    .D2(D2),
//    .D3(D3)
//);

mux4a1w4 test_unit(.*);

// Stimulus
initial begin
    {D0, D1, D2, D3, Sel} = {4'b0000, 4'b0110, 4'b1001, 4'b1010, 2'b00}; 
    #20;
    
    {D0, D1, D2, D3, Sel} = {4'b0000, 4'b0110, 4'b1001, 4'b1010, 2'b01}; 
    #20;
    
    {D0, D1, D2, D3, Sel} = {4'b0000, 4'b0110, 4'b1001, 4'b1010, 2'b10}; 
    #20;
    
    {D0, D1, D2, D3, Sel} = {4'b0000, 4'b0110, 4'b1001, 4'b1010, 2'b11};
    #20; 
    $stop;
end;

endmodule
