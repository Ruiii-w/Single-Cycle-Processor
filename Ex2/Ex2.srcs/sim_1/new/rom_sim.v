`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/08 11:24:29
// Design Name: 
// Module Name: rom_sim
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


module rom_sim(

    );
    reg clock = 1'b0; 
    wire [0:31] PC;
    wire [0:31] instruction;
    
    reg [0:31] PC_reg = 32'b0;
    assign PC = PC_reg;
    programrom Urom(.PC(PC),.Instruction(instruction));
    always 
    begin
        #50 clock = ~clock;
        #0  PC_reg = PC_reg + 32'b0100;
    end
endmodule
