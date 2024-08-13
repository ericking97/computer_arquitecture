`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2024 21:25:18
// Design Name: 
// Module Name: fsm
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


module fsm(
    input logic clk, 
    input logic rst,
    output logic [2:0] fout
);

enum {
    s0 = 3'b000, 
    s1 = 3'b001, 
    s2 = 3'b010, 
    s3 = 3'b011, 
    s4 = 3'b100, 
    s5 = 3'b101
} ep = s0, es;

always_ff @(posedge(clk)) begin
    if (rst) 
        ep <= s0;
    else
        ep <= es;
end;

always_comb begin
    case (ep)
        s0: begin ep = s1; fout = 3'b000; end
        s1: begin ep = s2; fout = 3'b001; end
        s2: begin ep = s3; fout = 3'b010; end
        s3: begin ep = s4; fout = 3'b011; end
        s4: begin ep = s5; fout = 3'b100; end
        s5: begin ep = s0; fout = 3'b101; end
        default: begin es = s0; fout = 3'bXXX; end
    endcase;
end;

endmodule
