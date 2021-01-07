`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/12 11:20:35
// Design Name: 
// Module Name: RF_sim
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


module RF_sim(

    );
    wire [31:0] RD1;
    wire [31:0] RD2;
    wire [15:0] IMM;
    wire [4:0] A3;
    wire [31:0] Wdata;
    reg [31:0] instruction;
    reg clock;
    reg [31:0] ALU_C;
    reg [31:0] DM_RD;
    reg [31:0] NPC_PC;
    reg [1:0] WRSel;
    reg RFWr;
    reg [1:0] WDSel;
    
    
    RF rrr(
    .RD1(RD1),
    .RD2(RD2),
//    .IMM(IMM),
    .A3(A3),
    .Wdata(Wdata),
    .instruction(instruction),
    .clock(clock),
    .ALU_C(ALU_C),
    .DM_RD(DM_RD),
    .NPC_PC(NPC_PC),
    .WRSel(WRSel),
    .RFWr(RFWr),
    .WDSel(WDSel)
    );
    
    initial
    begin
        instruction = 32'b0101010101010101;
        clock = 0;
        ALU_C = 32'b01;
        DM_RD = 32'b0110;
        NPC_PC = 32'b01111;
        WRSel = 2'b00;
        RFWr = 0;
        WDSel = 2'b00;
    end
    
    always
    begin
        #1 clock = ~clock;
        #40 instruction = instruction + 16;
        #100 WRSel = WRSel + 1;
        #150 WDSel = WDSel + 1;
             RFWr = 1;
    end
endmodule
