`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/05 14:52:01
// Design Name: 
// Module Name: cpuclk_sim
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


module cpuclk_sim( );
    // INPUT
    reg pclk = 0;
    //output
    wire clock;
    CLK UCLK(
        .clk_in1(pclk), 
        .clk_out1(clock)
    );
    always #5 pclk = ~pclk;
endmodule