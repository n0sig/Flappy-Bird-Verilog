`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/14 17:50:45
// Design Name: 
// Module Name: Logic
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


module MainFSM(
    input OriginalClk,
    input VSync,
    input [4:0] InputWord,
    input [4:0] MEMSInput,
    input RequestGameOver,
    input RequestDie,
    output reg [3:0] State = 4'h2
    );
    
    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;
    parameter StateSetting  = 4'h6;

    reg [3:0] NextState = 0;

    always@(*)
    begin
        case(State)
                StateWelcome  : 
                    casex( {RequestGameOver, RequestDie, (InputWord[4:0]|MEMSInput[4:0])} )
                        7'bxxxxxx1  :   NextState <= StateRunning;
                        7'bxx1xxxx  :   NextState <= StateSetting;
                        default     :   NextState <= State;
                    endcase

                StateSetting  :
                    casex( {RequestGameOver, RequestDie, (InputWord[4:0]|MEMSInput[4:0])} )
                        7'bxxxxxx1  :   NextState <= StateWelcome;
                        default     :   NextState <= State;
                    endcase

                StateRunning  : 
                    casex( {RequestGameOver, RequestDie, InputWord[4:0]} )
                        7'b0000001  :   NextState <= StatePause;
                        7'bx1xxxxx  :   NextState <= StateFromRunningToGameOver;
                        default     :   NextState <= State;
                    endcase

                StatePause    : 
                    casex( {RequestGameOver, RequestDie, (InputWord[4:0]|MEMSInput[4:0])} )
                        7'bxxxxxx1  :   NextState <= StateRunning;
                        default     :   NextState <= State;
                    endcase

                StateFromRunningToGameOver  :
                    casex( {RequestGameOver, RequestDie, (InputWord[4:0]|MEMSInput[4:0])} )
                        7'b1xxxxxx  :   NextState <= StateGameOver;
                        default     :   NextState <= State;
                    endcase

                StateGameOver :
                    casex( {RequestGameOver, RequestDie, (InputWord[4:0]|MEMSInput[4:0])} )
                        7'bxxxxxx1  :   NextState <= StateWelcome;
                        default     :   NextState <= State;
                    endcase

                default       :
                                        NextState <= StateWelcome;
                    
        endcase
    end    

    always@(posedge VSync)
    begin
        State <= NextState;
    end
    
endmodule
