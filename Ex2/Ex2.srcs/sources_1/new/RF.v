`timescale 1ns / 1ps
`include "para.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/08 11:05:06
// Design Name: 
// Module Name: RF
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


module RF(
    output [31:0] RD1,
    output [31:0] RD2,
    //output [15:0] IMM,
    output [4:0] A3,
    output [31:0] Wdata,
    output [5:0] op,
    output [5:0] func,
    input [31:0] instruction,
    input clock,
    input [31:0] ALU_C,
    input [31:0] DM_RD,
    input [31:0] NPC_PC,
    input [1:0] WRSel,
    input RFWr,
    input [1:0] WDSel
    );
    
    wire [4:0] A1;
    wire [4:0] A2;
    reg [31:0] NPC_PC4;
    reg [31:0] regs[0:31];
    wire [31:0] WD ;
    wire [4:0]A3_wire;
    reg init = 0;
    //assign NPC_PC4 = NPC_PC + 4;
    assign op = instruction[31:26];
    assign func = instruction[5:0];
    assign Wdata = WD;
    assign A1 = instruction[25:21];
    assign A2 = instruction[20:16];
    assign A3_wire = (WRSel ==2'b00)? instruction[20:16]: ((WRSel == 2'b01)? instruction[15:11]: ((WRSel == 2'b10)?5'b11111:A3_wire));
    assign A3 = A3_wire;
    assign RD1 = regs[A1];
    assign RD2 = regs[A2];
    assign WD = RFWr? ((WDSel ==2'b00)? ALU_C : ((WDSel == 2'b01)? DM_RD: ((WDSel == 2'b10)? NPC_PC4:WD))) : WD;
    
    always@(*)
    begin
        if( init == 0 )
        begin
            regs[0] = 32'b0;
            regs[1] = 32'b0;
            regs[2] = 32'b0;
            regs[3] = 32'b0;
            regs[4] = 32'b0;
            regs[5] = 32'b0;
            regs[6] = 32'b0;
            regs[7] = 32'b0;
            regs[8] = 32'b0;
            regs[9] = 32'b0;
            regs[10] = 32'b0;
            regs[11] = 32'b0;
            regs[12] = 32'b0;
            regs[13] = 32'b0;
            regs[14] = 32'b0;
            regs[15] = 32'b0;
            regs[16] = 32'b0;
            regs[17] = 32'b0;
            regs[18] = 32'b0;
            regs[19] = 32'b0;
            regs[20] = 32'b0;
            regs[21] = 32'b0;
            regs[22] = 32'b0;
            regs[23] = 32'b0;
            regs[24] = 32'b0;
            regs[25] = 32'b0;
            regs[26] = 32'b0;
            regs[27] = 32'b0;
            regs[28] = 32'b0;
            regs[29] = 32'b0;
            regs[30] = 32'b0;
            regs[31] = 32'b0;
            init <= 1;
        end
    end
    
    always@(negedge clock)
    begin
        if( RFWr )
        begin
            if(WDSel == 2'b10)
                NPC_PC4 <= NPC_PC + 4; 

        end
        else
        begin
//            WD <= WD;
        end
    end

    always@(posedge clock)
    begin
        if( RFWr )
        begin
            regs[ A3 ] <= WD;
        end
        else
        begin
            
        end
    end
endmodule
