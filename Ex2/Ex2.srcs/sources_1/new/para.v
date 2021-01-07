`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/08 10:23:02
// Design Name: 
// Module Name: para
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
//`define+name+²ÎÊý ¡¡
`define  ADD  5'b00000 
`define  SUB  5'b00001 
`define  AND 5'b00011 
`define  OR  5'b00100 
`define  XOR  5'b00101 
`define  NOR  5'b00110 
`define  SLL  5'b00111 
`define  SRL  5'b01000 
`define  SRA  5'b01001 
`define  SLLV  5'b01010 
`define  SRLV 5'b01011 
`define  SRAV  5'b01100 
`define  X  5'b01101 
`define  ADDI 5'b01110 
`define  ANDI 5'b01111 
`define  ORI 5'b10000
`define XORI 5'b10001 
`define SLTI 5'b10010 
`define LUI 5'b10011 
`define LW 5'b10100
`define SW 5'b10101 
`define BEQ 5'b10110 
`define BNE 5'b10111 
`define BGTZ 5'b11000 
`define J 5'b11001 
`define JAL 5'b11010  
`define test 0
// `SLL:
//        begin
//            result_reg <= ALU_B << ALU_C;
//        end
//        `SRL:
//        begin
//            result_reg <= ALU_B >> ALU_C;
//        end
//        `SRA:
//        begin
//            result_reg <= ($signed(ALU_B)) >>> ALU_C;
//        end
//        `SLLV:
//        begin
//            result_reg <= ALU_B << ALU_A;
//        end
//        `SRLV:
//        begin
//            result_reg <= ALU_B >> ALU_A;
//        end
//        `SRAV:
//        begin
//            result_reg <= ($signed(ALU_B)) >>> ALU_A;
//        end
//        `X:
//        begin
            
//        end
//        `LUI:
//        begin
//            result_reg <= ( IMM_EX<<16 ) & 32'b11111111111111110000000000000000;
//        end
//        `J:
//        begin
            
//        end
//        `JAL:
//        begin
        
//        end
//        endcase 
//    end
module para(

    );
endmodule
