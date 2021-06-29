`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/14 15:30:32
// Design Name: 
// Module Name: Pipe
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


module Pipe(
    input OriginalClk,
    input VSync,
    input [3:0] State,
    input [3:0] RollingSpeed,
    output reg [9:0] PipeXPosition = 767,
    output reg [99:0] PipeYPosition = {10'd227,10'd257,10'd217,10'd197,10'd167,10'd217,10'd227,10'd223,10'd178,10'd257}
    );
    
    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;

    
    always@(posedge VSync)
    begin
        case(State)
            StateWelcome : PipeXPosition <= 10'd767;
            StateRunning : 
            begin
                if(PipeXPosition < RollingSpeed)
                begin
                    PipeXPosition <= 128 + PipeXPosition - RollingSpeed;
                    PipeYPosition[99:10] <= PipeYPosition[89: 0];
                    PipeYPosition[ 9: 0] <= ( {PipeYPosition[4]^(PipeYPosition[3]^(PipeYPosition[2]^PipeYPosition[0])), 
                                            PipeYPosition[ 9: 1]} % 10'd280 ) + 10'd99;
                    /*PipeYPosition[ 9: 0] <= {$random%120} + 10'd240;*/
                end 
                else 
                begin 
                    PipeXPosition <= PipeXPosition - RollingSpeed;
                end
            end

            default       : PipeXPosition <= PipeXPosition;
        endcase
    end
    
endmodule
