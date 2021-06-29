`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/03 22:09:41
// Design Name: 
// Module Name: Score
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


module Scoring(
    input OriginalClk,
    input VSync,
    input [3:0] State,
    input [9:0] BirdXPosition,
    input [9:0] BirdYPosition,
    input [9:0] PipeXPosition,
    input [9:0] PipeYPosition,
    input [9:0] SpeedUpXPosition,
    input [9:0] SpeedUpYPosition,
    input [9:0] HealthXPosition,
    input [9:0] HealthYPosition,
    output RequestSpeedUp,
    output RequestHealth,
    output reg RequestDie,
    output reg [7:0] Score = 0,
    output reg [2:0] Health = 1
    );

    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;

    wire [9:0] XDistance = (PipeXPosition < BirdXPosition) ? (BirdXPosition - PipeXPosition) : (PipeXPosition - BirdXPosition);

    wire FakeRequestDie;
    assign FakeRequestDie = (State==StateRunning) & 
                            ((XDistance < 24) & ((PipeYPosition >= BirdYPosition)
                            |(BirdYPosition > 96 + PipeYPosition) | (BirdYPosition < 24 + PipeYPosition)));
    

    reg [9:0] PreviousPipeXPosition = 128;
    reg [9:0] PreviousSpeedUpXPosition = 128;
    reg [9:0] PreviousHealthXPosition = 128;
    reg PreviousFakeRequestDie;
    always@(posedge VSync)
    begin
        PreviousPipeXPosition <= PipeXPosition;
        PreviousSpeedUpXPosition <= SpeedUpXPosition;
        PreviousHealthXPosition <= HealthXPosition;
        PreviousFakeRequestDie <= FakeRequestDie;
    end

    wire [9:0] YDistanceToSpeedUp;
    assign YDistanceToSpeedUp = (BirdYPosition >= SpeedUpYPosition) ? (BirdYPosition - SpeedUpYPosition) : (SpeedUpYPosition - BirdYPosition);
    assign RequestSpeedUp = (State == StateRunning) & (SpeedUpXPosition <= BirdXPosition) & (PreviousSpeedUpXPosition > BirdXPosition) & (YDistanceToSpeedUp < 24);

    wire [9:0] YDistanceToHealth;
    assign YDistanceToHealth = (BirdYPosition >= HealthYPosition) ? (BirdYPosition - HealthYPosition) : (HealthYPosition - BirdYPosition);
    assign RequestHealth = (State == StateRunning) & (HealthXPosition <= BirdXPosition) & (PreviousHealthXPosition > BirdXPosition) & (YDistanceToHealth < 24);

    always@(posedge VSync)
    begin
        case(State)
                StateRunning                :   
                begin
                    if(PipeXPosition <= BirdXPosition && PreviousPipeXPosition > BirdXPosition)    
                                                Score <= Score + 1;
                    else                        Score <= Score;

                    if(FakeRequestDie && (!PreviousFakeRequestDie))
                                                Health <= Health - 1;
                    else if(RequestHealth)
                                                Health <= Health + 1;
                    
                    if(Health == 0 | (BirdYPosition >= 419))
                                                RequestDie <= 1;
                    
                end
                
                StatePause, StateGameOver   :
                                                Score <= Score;

                StateWelcome :                  
                begin                           
                                                Score <= 0;
                                                Health <= 1; 
                                                RequestDie <= 0;
                end

                default                     :   
                begin
                                                Score <= Score;
                                                RequestDie <= 0;
                end
        endcase
    end


endmodule
