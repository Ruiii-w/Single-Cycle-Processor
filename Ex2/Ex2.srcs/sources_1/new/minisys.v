`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/12 16:29:25
// Design Name: 
// Module Name: minisys
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


module minisys(
    input rst,
    input clk
    );
    
    wire clock ;
    wire [31:0] debug_wb_pc;
    wire        debug_wb_rf_wen;
    wire [4:0]  debug_wb_rf_wnum;
    wire [31:0] debug_wb_rf_wdata;
    
    wire [31:0] NPCtoPC;
    wire [31:0] imm_ex;
    wire [31:0] RF_RD1;
    wire [31:0] RF_RD2;
    wire [31:0] PC4;
    wire [31:0] Instruction;
    wire [31:0] read_data;
    wire [31:0] ALU_C;
    wire [4:0] ALUOp;
    wire [5:0] op;
    wire [5:0] func;
    wire [31:0] PC_COPY;
    
    //¿ØÖÆÐÅºÅ
    wire [1:0] NPCOP;
    wire EXTOp;
    wire [1:0] WRSel;
    wire [1:0] WDSel;
    wire DMWr;
    wire BSel;
    wire ZeroG;
    wire Zero;
    
    CLK u_clk(.clk_in1(clk),.clk_out1(clock));
    
    PC u_pc(.clk(~clock),.reset(rst),.DI(NPCtoPC),.DO(debug_wb_pc));
    
    NPC u_npc(
    .PC(debug_wb_pc),
    .IMM(Instruction[25:0]),
    .NPCOP(NPCOP),
    .RA(RF_RD1),
    .PC4(PC4),
    //.PC_COPY(PC_COPY),
    .NPCtoPC(NPCtoPC)
    );
    
    programrom u_rom(
    .PC(debug_wb_pc),
    .clock(clock),
    .Instruction(Instruction)
    );
    
    S_EXT u_ext(
    .IMM(Instruction[15:0]),
    .EXTOp(EXTOp),
    .IMM_EX(imm_ex)
    );
   
    RF u_rf(
    .RD1(RF_RD1),
    .RD2(RF_RD2),
    .A3(debug_wb_rf_wnum),
    .Wdata(debug_wb_rf_wdata),
    .op(op),
    .func(func),
    .instruction(Instruction),
    .clock(clock),
    .ALU_C(ALU_C),
    .DM_RD(read_data),
    .NPC_PC(debug_wb_pc),
    .WRSel(WRSel),
    .RFWr(debug_wb_rf_wen),
    .WDSel(WDSel)
    );
    
    dmemory32 u_ram(
    .read_data(read_data),
    .address(ALU_C),
    .write_data(RF_RD2),
    .Memwrite(DMWr),
    .clock(clock)
    );
    
    ALU u_alu(
    .ALUOp(ALUOp),
    .IMM_EX(imm_ex),
    .RF_RD2(RF_RD2),
    .RF_RD1(RF_RD1),
    .IM_D(Instruction[10:6]),
    .BSel(BSel),
    .ZeroG(ZeroG),
    .Zero(Zero),
    .result(ALU_C)
    );
    
    CU u_cu(
    .op(op),
    .func(func),
    .Zero(Zero),
    .NPCOp(NPCOP),
    .RFWr(debug_wb_rf_wen),
    .ALUOp(ALUOp),
    .DMWr(DMWr),
    .WRSel(WRSel),
    .WDSel(WDSel),
    .BSel(BSel),
    .ZeroG(ZeroG),
    .EXTOp(EXTOp)
    );
    
endmodule
