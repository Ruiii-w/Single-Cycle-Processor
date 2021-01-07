`timescale 1ns / 1ps
`include "para.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/12 10:18:26
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [4:0] ALUOp,
    input [31:0] IMM_EX,
    input [31:0] RF_RD2,
    input [31:0] RF_RD1,
    input [4:0] IM_D,
    input BSel,
    input ZeroG,
    output Zero,
    output reg[31:0] result
    );
    reg [31:0] ALU_A;
    reg [31:0] ALU_B;
    wire [4:0] ALU_C; 
    assign ALU_C = IM_D;
    assign Zero = ZeroG? (result == 32'b0) : 0;
//    assign result = ( ALUOp == `ADD)? (ALU_A + ALU_B):
//                    ((ALUOp == `SUB) ? (ALU_A - ALU_B):
//                    ((ALUOp == `AND) ? (ALU_A & ALU_B):
//                    ((ALUOp == `BGTZ)? ((($signed(ALU_A)) > 0 ) ?32'b01:32'b0):
//                    ((ALUOp == `OR)  ? (ALU_A | ALU_B) :
//                    ((ALUOp == `XOR) ? (ALU_A ^ ALU_B) :
//                    ((ALUOp == `NOR) ? (~(ALU_A|ALU_B)):
//                    ((ALUOp == `SLL) ? (ALU_B << ALU_C):
//                    ((ALUOp == `SRL) ? (ALU_B >> ALU_C):
//                    ((ALUOp == `SRA) ? (($signed(ALU_B)) >>> ALU_C):
//                    ((ALUOp == `SLLV)? (ALU_B << ALU_A):
//                    ((ALUOp == `SRLV)? (ALU_B >> ALU_A):
//                    ((ALUOp == `SRAV)?(($signed(ALU_B)) >>> ALU_A):
//                    //((ALUOp == `SRAV)?(ALU_B >>> ALU_A):
//                    ((ALUOp == `X)   ? 32'bx :
//                    ((ALUOp == `LUI) ? (( IMM_EX<<16 ) & 32'b11111111111111110000000000000000):
//                    ((ALUOp == `J)   ? 32'bx :
//                    ((ALUOp == `JAL) ? 32'bx:
//                    ((ALUOp == `SLTI)? ((($signed(ALU_A - ALU_B)) < 0)? 32'b01: 32'b00):
//                    32'bx
//                    )))))))))))))))));
      always@(*)
      begin
         ALU_A = RF_RD1;
         ALU_B = BSel? IMM_EX:RF_RD2;
      end
//        end
    always@(*)
    begin
        case(ALUOp)
        `ADD: 
        begin
            result = ALU_A + ALU_B ;
        end
//        `ADDI:
//        begin
//            result <= ALU_A + ALU_B ;
//        end
//        `LW:
//        begin
//            result <= ALU_A + ALU_B ;
//        end
//        `SW:
//        begin
//            result <= ALU_A + ALU_B ;
//        end
        `SUB:
        begin
            result = ALU_A - ALU_B ;
        end
        `SLTI:
        begin
            result = ((($signed(ALU_A - ALU_B)) < 0)? 32'b01: 32'b00) ;
        end
//        `BEQ:
//        begin
//            result <= ALU_A - ALU_B ;
//        end
//        `BNE:
//        begin
//            result <= ALU_A - ALU_B ;
//        end
        `BGTZ:
        begin
            result = ( ($signed(ALU_A)) > 0 ) ?32'b01:32'b0;
        end
        
        `AND:
        begin
            result = ALU_A & ALU_B;
        end 
//        `ANDI:
//        begin
//            result <= ALU_A & ALU_B;
//        end
        `OR:
        begin
            result = ALU_A | ALU_B;
        end
//        `ORI:
//        begin
//            result <= ALU_A | ALU_B;
//        end
        `XOR:
        begin
            result = ALU_A ^ ALU_B;
        end
//        `XORI:
//        begin
//            result <= ALU_A ^ ALU_B;
//        end
        `NOR:
        begin
            result = ~(ALU_A | ALU_B);
        end
        `SLL:
        begin
            result = ALU_B << ALU_C;
        end
        `SRL:
        begin
            result = ALU_B >> ALU_C;
        end
        `SRA:
        begin
            result = ($signed(ALU_B)) >>> ALU_C;
        end
        `SLLV:
        begin
            result = ALU_B << ALU_A;
        end
        `SRLV:
        begin
            result = ALU_B >> ALU_A;
        end
        `SRAV:
        begin
            result = ($signed(ALU_B)) >>> ALU_A;
        end
        `X:
        begin
            
        end
        `LUI:
        begin
            result = ( IMM_EX<<16 ) & 32'b11111111111111110000000000000000;
        end
        `J:
        begin
            
        end
        `JAL:
        begin
        
        end
        endcase 
    end
    
endmodule
