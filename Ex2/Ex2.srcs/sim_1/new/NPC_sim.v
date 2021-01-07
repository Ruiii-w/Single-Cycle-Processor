`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/12 10:24:13
// Design Name: 
// Module Name: NPC_sim
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


module NPC_sim();
    
    reg [31:0] PC;
    reg [25:0] IMM;
    reg [1:0] NPCOP;
    reg [31:0] RA;
    wire [31:0] PC4;
    wire [31:0] NPCtoPC;
    
    
    NPC nnn(
      .PC(PC),
      .IMM(IMM),
      .NPCOP(NPCOP),
      .RA(RA),
      .PC4(PC4),
      .NPCtoPC(NPCtoPC)
    );
    
    
    initial
    begin
      #100  PC = 32'b0;
      #100 IMM = 26'b011;
      #100  NPCOP = 2'b00;
      #100  RA = 32'b011111;
    end
    
    always 
    begin
          #50 PC = PC + 4;
          #100 NPCOP = NPCOP + 1;
    end
endmodule
