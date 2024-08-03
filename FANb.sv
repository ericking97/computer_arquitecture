`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 20:22:01
// Design Name: 
// Module Name: FANb
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


module FANb #(
    parameter n = 8
)(
    input logic [n - 1 : 0] a, b,
    input logic cin,
    output logic [n - 1 : 0] s,
    output logic cout
);

// Internal signals

// Hardware

always_comb begin
    logic [n : 0] c;
    c[0] = cin;
    for (int i = 0; i < n; i++) begin
        s[i] = a[i] ^ b[i] ^ c[i];
        c[i + 1] = (a[i] & b[i]) | (a[i] & c[i]) | (b[i] & c[i]);
    end;
    cout = c[n];
end;

endmodule
