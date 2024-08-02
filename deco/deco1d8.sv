`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 20:27:39
// Design Name: 
// Module Name: deco1d8
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


module deco1d8#(
    parameter N = 8
)(
//    Ceiling log 2
    input logic [$clog2(N) - 1:0] in,
    input logic en,
    output logic [N-1:0] out
);

// Internal Signals

//always_comb begin
//    if(!en)
//        out = '0;
//    else
//        for(int i = 0; i < N; i++) begin
//            if (i == in)
//                out[i] = 1'b1;
//            else
//                out[i] = 1'b0;
//        end  
//end;

// Another implementation
always_comb begin
    out = '0;
    out[in] = en ? 1'b1 : 1'b0;
end;

endmodule
