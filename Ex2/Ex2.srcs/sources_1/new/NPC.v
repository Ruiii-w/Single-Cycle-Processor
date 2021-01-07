`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/05 15:20:10
// Design Name: 
// Module Name: NPC
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


module NPC(
    input [31:0] PC,
    input [25:0] IMM,
    input [1:0] NPCOP,
    input [31:0] RA,
    //input zero,
//input EXTOp,
    output [31:0] PC4,
    //output [31:0] PC_COPY,
    output [31:0] NPCtoPC
    );
    assign PC4 = PC + 4;
    //assign PC_COPY = PC;
    wire[31:0] BEQ_PC;
    reg [31:0] NPCtoPC_reg;
    
    wire [31:0] IMM_EX;
    
    S_EXT U_S_EXT(
    .IMM(IMM[15:0]),
    .EXTOp(1),
    .IMM_EX(IMM_EX)
    );
    assign NPCtoPC = NPCtoPC_reg;
    assign BEQ_PC = (PC4 +{IMM_EX[29:0],2'b00});
    //assign NPCtoPC = (NPCOP==2'b10) ? RA : ( (NPCOP==2'b11) ? {PC[31:28],IMM,2'b00} : ((NPCOP == 2'b01)? (PC4+{14'b0,IMM[15:0],2'b00}) : PC4 ));
    always@(*)
    begin
        case(NPCOP)
        2'b10:   NPCtoPC_reg <= RA;
        2'b11:   NPCtoPC_reg <={PC[31:28],IMM,2'b00};
        2'b01:   NPCtoPC_reg <= BEQ_PC;
        2'b00:   NPCtoPC_reg <= PC4;
        default: begin  end
        endcase
    end
endmodule
