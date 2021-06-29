`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/22 21:40:57
// Design Name: 
// Module Name: Profile
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


module Setting(
    input Clk,
    input VSync,
    input [3:0] State,
    input [4:0] ButtonInput,
    
    input MEMSButtonUp,
    input MEMSButtonDown,
    input MEMSButtonLeft,
    input MEMSButtonRight,
    input MEMSButtonShake,

    input RequestSpeedUp,

    output reg [1:0] ControlSelect = 0,
    output reg [2:0] RollingSpeed = 2,
    output reg [2:0] SkinSelect = 0,
    output reg [1:0] BackgroundSelect = 0,

    output reg [2:0] CurrentItem = 0
    );

    parameter MaxItem = 3;

    parameter ITEM_CTRLSELECT   = 0;
    parameter ITEM_ROLLINGSPEED = 1;
    parameter ITEM_SKINSELECT   = 2;
    parameter ITEM_BGSELECT     = 3;
    parameter ITEM_GAMEMODE     = 4;

    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;
    parameter StateSetting  = 4'h6;

    reg [2:0] PresetRollingSpeed = 2;

    always@(posedge VSync)
    begin
        case(State)
            StateSetting    :
                case(ButtonInput | {MEMSButtonUp, MEMSButtonDown, MEMSButtonLeft, MEMSButtonRight, MEMSButtonShake})
                    5'b10000 :
                    begin
                        if(CurrentItem > 0)
                            CurrentItem <= CurrentItem - 1;
                        else
                            CurrentItem <= CurrentItem;
                    end

                    5'b01000 :
                    begin
                        if(CurrentItem < MaxItem)
                            CurrentItem <= CurrentItem + 1;
                        else
                            CurrentItem <= CurrentItem;
                    end

                    5'b00100 :
                    begin
                        case(CurrentItem)
                            ITEM_CTRLSELECT   :
                                if(ControlSelect >0) ControlSelect <= ControlSelect - 1;
                            
                            ITEM_ROLLINGSPEED :
                                if(PresetRollingSpeed > 1) PresetRollingSpeed  <= PresetRollingSpeed - 1;

                            ITEM_SKINSELECT   :
                                if(SkinSelect   > 0) SkinSelect    <= SkinSelect   - 1;

                            ITEM_BGSELECT     :
                                if(BackgroundSelect > 0) BackgroundSelect <= BackgroundSelect - 1;
                        endcase
                    end

                    5'b00010 :
                    begin
                        case(CurrentItem)
                            ITEM_CTRLSELECT   :
                                if(ControlSelect      < 1) ControlSelect      <= ControlSelect + 1;

                            ITEM_ROLLINGSPEED :
                                if(PresetRollingSpeed < 7) PresetRollingSpeed <= PresetRollingSpeed + 1;

                            ITEM_SKINSELECT   :
                                if(SkinSelect         < 2) SkinSelect         <= SkinSelect   + 1;

                            ITEM_BGSELECT     :
                                if(BackgroundSelect   < 1) BackgroundSelect   <= BackgroundSelect + 1;
                        endcase
                    end
                endcase

            default         : 
                    begin
                        CurrentItem <= 0;
                    end
        endcase
    end

    always@(posedge VSync)
    begin
        case(State)
            StateRunning :
                begin
                    if(RequestSpeedUp) RollingSpeed <= RollingSpeed + 1;
                    else RollingSpeed <= RollingSpeed;
                end

            StateWelcome, StateSetting :
                begin
                    RollingSpeed <= PresetRollingSpeed;
                end

            default : 
                begin
                    RollingSpeed <= RollingSpeed;
                end

        endcase
    end

endmodule
