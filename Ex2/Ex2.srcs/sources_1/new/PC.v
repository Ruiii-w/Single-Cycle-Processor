`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/05 15:14:24
// Design Name: 
// Module Name: PC
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


module PC(
    input clk,
    input reset,
    input [31:0] DI,
    output [31:0] DO
    );
    reg [31:0] D;
    reg wait_time = 0;
    assign DO = D;
    
    always@(posedge clk)
    begin
        if(!reset)
//        begin
//            if(wait_time == 0)
//            begin
//                if( DI == 32'b00000000000000000000000000001000)
//                begin
//                    D <= 32'b00000000000000000000000000000100;
//                    wait_time <= 1;
//                end
//                else
//                    D <= DI;
//            end
//            else
            begin
                D <= DI;
            end
        //end
        else
            D <= 32'b0;
            
    end
endmodule
