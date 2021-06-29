`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/12 14:54:34
// Design Name: 
// Module Name: DataGenerator
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


module BirdRenderer(
    input OriginalClk,
    input VSync,
    input [3:0] State,
    input [9:0] XPosition,
    input [9:0] YPosition,
    input [9:0] BirdXPosition,
    input [9:0] BirdYPosition,
    input [2:0] SkinSelect,
    output reg [15:0] LayerOutput = 0
    );
    
    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;

    wire [14:0] CurrentROMAddress;
    wire [15:0] BirdData;

    reg [9:0] PreviousBirdXPosition;
    reg [9:0] PreviousBirdYPosition;
    reg [1:0] DirectionSelect = 1;

    wire [14:0] XFetchPosition;
    wire [14:0] YFetchPosition;

    assign XFetchPosition = 14'd6  + {4'd0 ,(XPosition + 10'd34 - BirdXPosition)};
    assign YFetchPosition = 14'd13 + {4'd0, (YPosition + 10'd24 - BirdYPosition)};
    assign CurrentROMAddress = (XFetchPosition - 14'd1) + (YFetchPosition - 14'd1) * 15'd144 + {13'd0, DirectionSelect} * 48 + {12'd0 ,SkinSelect} * 15'd6912;

    BirdROM BirdROM(CurrentROMAddress, BirdData);

    always@(negedge VSync)
    begin
        PreviousBirdXPosition <= BirdXPosition;
        PreviousBirdYPosition <= BirdYPosition;
        if(BirdYPosition == PreviousBirdYPosition)      DirectionSelect <= 1;
        else if(BirdYPosition < PreviousBirdYPosition)  DirectionSelect <= 2;
    else                                                DirectionSelect <= 0;
    end

    always@(posedge OriginalClk)
    begin
        if( (BirdXPosition - XPosition < 34) && (BirdYPosition - YPosition < 24) )
            LayerOutput <= BirdData;
        else
            LayerOutput <= 16'b0000_0000_0000_0000;
    end
endmodule
