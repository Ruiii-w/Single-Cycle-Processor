`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/05 14:22:34
// Design Name: 
// Module Name: programrom
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


module programrom(
    input [31:0]PC,
    input clock,
    output [31:0] Instruction
    );
    
    //���� 64KB ROM��
//���� 64KB ROM��
prgrom instmem(
    .clka(clock), // input wire clka
    .addra(PC[15:2]), // input wire [13 : 0] addra
    .douta(Instruction) // output wire [31 : 0] douta
);
endmodule
