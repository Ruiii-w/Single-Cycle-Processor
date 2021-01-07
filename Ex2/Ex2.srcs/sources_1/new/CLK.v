`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/05 14:48:24
// Design Name: 
// Module Name: CLK
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


module CLK(
    input clk_in1,
    output clk_out1
    );
    
    cpuclk cc(
    .clk_in1(clk_in1),
    .clk_out1(clk_out1)
    );
endmodule
