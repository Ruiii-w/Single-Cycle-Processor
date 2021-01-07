`timescale 1ns / 1ps
`include "para.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/08 13:41:30
// Design Name: 
// Module Name: CU
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
`define PC4 2'b00 

module CU(
    input [5:0] op,
    input [5:0] func,
    input Zero,
    output [1:0] NPCOp,
    output RFWr,
    output [4:0] ALUOp,
    output DMWr,
    output [1:0] WRSel,
    output [1:0] WDSel,
    output BSel,
    output ZeroG,
    output EXTOp
    //output M1
    );
    reg [1:0] NPCOp_reg;
    reg [4:0] ALUOp_reg;
    reg [1:0] WRSel_reg;
    reg RFWr_reg;
    reg DMWr_reg;
    reg [1:0] WDSel_reg;
    reg BSel_reg;
    reg ZeroG_reg;
    reg EXTOp_reg;
    assign NPCOp = NPCOp_reg;
    assign ALUOp = ALUOp_reg;
    assign WRSel = WRSel_reg;
    assign RFWr = RFWr_reg;
    assign DMWr = DMWr_reg;
    assign WDSel = WDSel_reg;
    assign BSel = BSel_reg;
    assign ZeroG = ZeroG_reg;
    assign EXTOp = EXTOp_reg;
    always@(*)
    begin
        if(op == 6'b0)
        begin
            case (func)
                6'b100000: 
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    ALUOp_reg <= `ADD;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                end
                6'b100001:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    ALUOp_reg <= `ADD;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                end
                6'b100010:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `SUB;
                end
                6'b100011:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `SUB;
                end
                6'b100100:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `AND;
                end 
                6'b100101:
                begin
                    EXTOp_reg <= 1'bX;
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `OR;
                end
                6'b100110:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `XOR;
                end
                6'b100111:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `NOR;
                end
                6'b101010:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 1;
                    ALUOp_reg <= `SUB;
                end
                6'b101011:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 1;
                    ALUOp_reg <= `SUB;
                end
                6'b000000:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `SLL;
                end
                6'b000010:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `SRL;
                end
                6'b000011:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `SRA;
                end
                6'b000100:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `SLLV;
                end
                6'b000110:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `SRLV;
                end
                6'b000111:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b01;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 0;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `SRAV;
                end
                6'b001000:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= 2'b10;
                    RFWr_reg <= 0;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'bXX;
                    WDSel_reg <= 2'bXX;
                    BSel_reg <= 1'bX;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `X;
                end
            endcase
        end
        
        else 
        begin
            case(op)
                6'b001000:
                begin
                    EXTOp_reg <= 1'b1;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b00;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b1;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `ADD;
                end
                6'b001001:
                begin
                    EXTOp_reg <= 1'b1;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b00;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b1;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `ADD;
                end
                6'b001100:
                begin
                    EXTOp_reg <= 1'b0;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b00;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b1;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `AND;
                end
                6'b001101:
                begin
                    EXTOp_reg <= 1'b0;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b00;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b1;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `OR;
                end
                6'b001110:
                begin
                    EXTOp_reg <= 1'b0;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b00;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b1;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `XOR;
                end
                6'b001011:
                begin
                    EXTOp_reg <= 1'b1;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b00;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b1;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `SLTI;
                end
                6'b001111:
                begin
                    EXTOp_reg <= 1'b1;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b00;
                    WDSel_reg <= 2'b00;
                    BSel_reg <= 1'b1;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `LUI;
                end
                6'b100011:
                begin
                    EXTOp_reg <= 1'b1;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b00;
                    WDSel_reg <= 2'b01;
                    BSel_reg <= 1'b1;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `ADD;
                end
                6'b101011:
                begin
                    EXTOp_reg <= 1'b1;
                    NPCOp_reg <= `PC4;
                    RFWr_reg <= 0;
                    DMWr_reg <= 1;
                    WRSel_reg <= 2'bxx;
                    WDSel_reg <= 2'bXX;
                    BSel_reg <= 1'b1;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `ADD;
                end
                6'b000100:
                begin
                    EXTOp_reg <= 1'b1;
                    if( Zero == 1)
                    begin
                        NPCOp_reg <= 2'b01;
                    end
                    else
                    begin
                        NPCOp_reg <= `PC4;
                    end
                    RFWr_reg <= 0;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'bXX;
                    WDSel_reg <= 2'bXX;
                    BSel_reg <= 1'b0;
                    ZeroG_reg <= 1; 
                    ALUOp_reg <= `SUB;
                end
                6'b000101:
                begin
                    EXTOp_reg <= 1'b1;
                    if( Zero == 0)
                    begin
                        NPCOp_reg <= 2'b01;
                    end
                    else
                    begin
                        NPCOp_reg <= `PC4;
                    end
                    
                    RFWr_reg <= 0;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'bXX;
                    WDSel_reg <= 2'bXX;
                    BSel_reg <= 1'b0;
                    ZeroG_reg <= 1;
                    ALUOp_reg <= `SUB;
                end
                6'b000101:
                begin
                    EXTOp_reg <= 1'b1;
                    if( Zero == 0 )
                    begin
                        NPCOp_reg <= 2'b01;
                    end
                    else
                    begin
                        NPCOp_reg <= `PC4;
                    end
                    RFWr_reg <= 0;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'bXX;
                    WDSel_reg <= 2'bXX;
                    BSel_reg <= 1'bX;
                    ZeroG_reg <= 1;
                    ALUOp_reg <= `BGTZ;
                end
                6'b000010:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= 2'b11;
                    RFWr_reg <= 0;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'bxx;
                    WDSel_reg <= 2'bXX;
                    BSel_reg <= 1'bX;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `J;  
                end
                6'b000011:
                begin
                    EXTOp_reg <= 1'bX;
                    NPCOp_reg <= 2'b11;
                    RFWr_reg <= 1;
                    DMWr_reg <= 0;
                    WRSel_reg <= 2'b10;
                    WDSel_reg <= 2'b10;
                    BSel_reg <= 1'bX;
                    ZeroG_reg <= 0;
                    ALUOp_reg <= `JAL;
                end    
            endcase
        end
    end
endmodule
