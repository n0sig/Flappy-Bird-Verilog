`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/13 21:45:32
// Design Name: 
// Module Name: BackgroundGenerator
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


module BackgroundRenderer(
    input OriginalClk,
    input VSync,
    input [3:0] State,
    input [9:0] XPosition,
    input [9:0] YPosition,
    input [1:0] BackgroundSelect,
    input [3:0] RollingSpeed,
    output reg [15:0] LayerOutput
    );
    
    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;

    reg [9:0] BackgroundRoll = 0;
    
    always@(posedge VSync)
    begin
        if(BackgroundRoll + RollingSpeed < 640) BackgroundRoll <= BackgroundRoll + RollingSpeed;
        else                                    BackgroundRoll <= BackgroundRoll + RollingSpeed - 10'd640;
    end
    
    //ROM Read Begin. 
    wire [16:0] CurrentROMAddress;
    wire [15:0] BackgroundData;
    assign CurrentROMAddress = ((({8'b0,XPosition} + {8'b0,BackgroundRoll})<640) ? ({8'b0,XPosition} + {8'b0,BackgroundRoll}) : ({8'b0,XPosition} + {8'b0,BackgroundRoll} - 17'd640)) + ({8'b0,YPosition} - 17'd240) * 17'd640; 

    reg PrescaledClk = 0;
    always@(posedge OriginalClk)
    begin
        PrescaledClk <= PrescaledClk + 1;
    end
    BackgroundROM(PrescaledClk, CurrentROMAddress, BackgroundData);
    //ROM Read End.

    wire [15:0] CurrentNightROMAddress;
    wire [15:0] NightBackgroundData;
    assign CurrentNightROMAddress = ((({8'b0,XPosition} + {8'b0,BackgroundRoll})<640) ? ({8'b0,XPosition} + {8'b0,BackgroundRoll}) : ({8'b0,XPosition} + {8'b0,BackgroundRoll} - 17'd640)) + ({8'b0,YPosition} - 17'd250) * 17'd640; 
    BackgroundROMNight(CurrentNightROMAddress, NightBackgroundData);
    
    wire [1:0] RenderState;
    assign RenderState = (YPosition < 250) + (YPosition < 350);
    
    always@(posedge OriginalClk)
    begin
        case(RenderState)
            2'b00 : LayerOutput <= (BackgroundSelect == 0) ? 16'h5e7f : 16'h0a0f;
            2'b01 : LayerOutput <= (BackgroundSelect == 0) ? BackgroundData : NightBackgroundData;
            2'b10 : LayerOutput <= (BackgroundSelect == 0) ? 16'h4ccf : 16'h089f;
            default : LayerOutput <= 16'hffff;
        endcase
    end          
endmodule
