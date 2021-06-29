`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/12 15:56:20
// Design Name: 
// Module Name: tb
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


module tb(
    
    );
    
    reg Clk;
    reg VSync;
    reg [3:0] State;
    reg [9:0] BirdXPosition;
    reg [9:0] BirdYPosition;
    reg [9:0] PipeXPosition;
    reg [9:0] PipeYPosition;
    wire Die;
    wire [7:0] Score;

    Bonus       Bonus       (Clk, VSync, State, RollingSpeed, PipeXPosition,  PipeYPosition, SpeedUpXPosition, SpeedUpYPosition, SpeedDownXPosition, SpeedDownYPosition);

    Scoring     Scoring     (Clk, VSync, State, BirdXPosition,      BirdYPosition,  
                                                PipeXPosition,      PipeYPosition[99:90], 
                                                SpeedUpXPosition,   SpeedUpYPosition,
                                                SppedDownXPosition, SpeedDownYPosition,
                                                RequestSpeedUp,     RequestSpeedDown, RequestDie, Score);

    Setting     Setting     (Clk, VSync, State, ButtonInput,   RequestSpeedUp, RequestSpeedDown, ControlSelect, RollingSpeed,  SkinSelect,    BackgroundSelect,     GameMode, CurrentItem);

    initial 
    begin
        Clk <= 0;
        State <= 0;
        VSync = 0;
        BirdXPosition <= 64;
        BirdYPosition <= 239;
        PipeXPosition <= 767;
        PipeYPosition <= 227; 
    end

    always
    begin
        #1
        PipeXPosition <= PipeXPosition - 1;
    end

    always
    begin
        #10
        Clk <= ~Clk;    
    end
    
endmodule
