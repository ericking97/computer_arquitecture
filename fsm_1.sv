`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2024 20:26:30
// Design Name: 
// Module Name: fsm_1
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


module fsm_1(
    input logic clk_n, rst, x, y,
    output logic [2:0] out
);

// This represents the states of the machine
// current state cs
// next state ns
enum logic [2:0] {s0, s1, s2, s3, s4, s5, s6} cs = s0, ns;

always_ff @ (negedge(clk_n)) begin
    if (rst) cs <= s0;
    else cs <= ns;
end;

always_comb begin
    out = 3'b000;
    ns = cs;
    case (cs)
        s0: begin
            ns = x ? s1 : s0;
        end
        s1: begin
            ns = y ? s2 : s3;
            out = y ? 3'b001 : 3'b010;
        end
        s2: begin
            out = 3'b110;
            ns = x ? s4 : s0;
        end
        s3: begin
            out = x ? 3'b101 : 3'b111;
            ns = x ? s0 : s6; 
        end
        s4: begin
            out = 3'b100;
            ns = (x & y) ? s5 : s3;
        end
        s5: begin
            out = 3'b101;
            ns = s0;
        end
        s6: begin
            out = 3'b110;
            ns = s5;
        end
        default: out = 3'b000;
    endcase;
end;

endmodule
