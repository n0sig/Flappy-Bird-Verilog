`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/26 21:35:11
// Design Name: 
// Module Name: Bonus
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


module Bonus(
    input OriginalClk, 
    input VSync, 
    input [3:0] State, 
    input [2:0] RollingSpeed, 
    input [9:0] PipeXPosition, 
    input [99:0] PipeYPosition, 
    input [2:0] Health,
    input RequestSpeedUp,
    input RequestHealth,
    
    output reg [9:0] SpeedUpXPosition, 
    output reg [9:0] SpeedUpYPosition,

    output reg [9:0] HealthXPosition = 10'd1023,
    output reg [9:0] HealthYPosition = 10'd240
    );

    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;
    parameter StateSetting  = 4'h6;

    reg [15:0] SpeedUpRandomizer = 16'b1011000111000011;
    reg [15:0] HealthRandomizer  = 16'b1111000110001010;
    
    always@(posedge VSync)
    begin
        case(State)
            StateRunning    :
            begin
                if(RequestSpeedUp)
                begin
                    SpeedUpXPosition <= 0;
                end
                else if(SpeedUpXPosition    >= RollingSpeed)
                begin
                    SpeedUpXPosition   <= SpeedUpXPosition - RollingSpeed;
                    SpeedUpYPosition   <= SpeedUpYPosition;
                end
                else if(SpeedUpXPosition == 0 && RollingSpeed <= 5)
                begin
                    SpeedUpRandomizer[14:0] <= SpeedUpRandomizer[15:1];
                    SpeedUpRandomizer[15]   <= SpeedUpRandomizer[13]^(SpeedUpRandomizer[7]^SpeedUpRandomizer[6]);
                    if(SpeedUpRandomizer % 100 == 35)
                    begin
                        SpeedUpXPosition <= 10'd1023;
                        SpeedUpYPosition <= SpeedUpRandomizer%111 + PipeYPosition[9:0] + 10'd16;
                    end
                end
                else    SpeedUpXPosition   <= 0;

                if(RequestHealth)
                begin
                    HealthXPosition <= 0;
                end
                else if(HealthXPosition    >= RollingSpeed)
                begin
                    HealthXPosition   <= HealthXPosition - RollingSpeed;
                    HealthYPosition   <= HealthYPosition;
                end
                else if(HealthXPosition == 0 && Health <= 4)
                begin
                    HealthRandomizer[14:0] <= HealthRandomizer[15:1];
                    HealthRandomizer[15]   <= HealthRandomizer[13]^(HealthRandomizer[7]^HealthRandomizer[6]);
                    if(HealthRandomizer % 100 == 73)
                    begin
                        HealthXPosition <= 10'd1023;
                        HealthYPosition <= HealthRandomizer%111 + PipeYPosition[9:0] + 10'd16;
                    end
                end
                else    HealthXPosition   <= 0;


            end

            StateWelcome    :
            begin
                HealthXPosition <= 10'd1023;
                SpeedUpXPosition <= 10'd1023;
            end
        endcase
    end

endmodule
