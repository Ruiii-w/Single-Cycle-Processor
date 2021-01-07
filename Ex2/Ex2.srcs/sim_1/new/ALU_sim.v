`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/12 16:07:04
// Design Name: 
// Module Name: ALU_sim
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


module ALU_sim(

    );
    reg [4:0]ALUOp;
    reg [31:0] IMM_EX;
    reg [31:0] RF_RD2;
    reg [31:0] RF_RD1;
    reg [4:0] IM_D;
    reg BSel;
    reg ZeroG;
    wire Zero;
    wire [31:0] result;
    
    ALU aaa(
    .ALUOp(ALUOp),
    .IMM_EX(IMM_EX),
    .RF_RD2(RF_RD2),
    .RF_RD1(RF_RD1),
    .IM_D(IM_D),
    .BSel(BSel),
    .ZeroG(ZeroG),
    .Zero(Zero),
    .result(result)
    );
    
    initial
    begin
        ALUOp = 5'b00000;
        IMM_EX = 32'b001111000111100;
        RF_RD1 = 32'b01;
        RF_RD2 = 32'b01;
        IM_D = 5'b00100;
        BSel = 0;
        ZeroG = 0;
    end
    
    always
    begin
        #50 ALUOp = ALUOp + 1;
        #500 ALUOp = 5'b10110 ;
             ZeroG = 1;
             BSel = 0;
    end
endmodule
