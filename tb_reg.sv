`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2024 20:58:45
// Design Name: 
// Module Name: tb_reg
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


module tb_reg();
parameter t = 10;
logic clk, rst, ldp;
logic [7:0] sw, qout;

RegQ uut(.clk(clk), .rst(rst), .ldp(ldp), .sw(sw), .qout(qout));

always begin
    clk = 1'b0;
    #(t/2);
    clk = 1'b1;
    #(t/2);
end;

initial begin
    rst = 1'b1;
    ldp = 1'b0;
    sw = 8'h00;
    #(3 * t);
    
    @(negedge(clk));
    rst = 1'b0;
    #(5 * t);
    sw = 8'hF0;
    #(5 * t);
    ldp = 1'b1;
    #(5 * t);
    sw = 8'h0F;
    #(5 * t);
    ldp = 1'b0;
    #(5 * t);
    sw = 8'hFF;
    #(5 * t);
    rst = 1;
    $stop;
end;

endmodule
