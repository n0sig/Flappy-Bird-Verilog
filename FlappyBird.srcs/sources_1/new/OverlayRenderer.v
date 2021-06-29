`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/03 15:03:53
// Design Name: 
// Module Name: OverlayRenderer
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


module OverlayRenderer(
    input OriginalClk,
    input VSync,
    input [3:0] State,
    input [9:0] XPosition,
    input [9:0] YPosition,
    input [7:0] Score,
    input [2:0] CurrentItem,
    output reg [15:0] LayerOutput
    );

    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;
    parameter StateSetting  = 4'h6;


    wire [13:0] CurrentLogoROMAddress;
    wire [15:0] LogoData;
    assign RenderLogo = (XPosition >= 230 & XPosition <= 409) & (YPosition >= 160 & YPosition <= 207);
    assign CurrentLogoROMAddress = {4'd0, (XPosition - 10'd230)} + {4'd0, (YPosition - 10'd160)} * 14'd180;
    LogoROM LogoROM(CurrentLogoROMAddress, LogoData);

    wire [15:0] CurrentSettingROMAddress;
    wire [15:0] SettingBoardData;
    assign RenderSetting = (XPosition >= 200 & XPosition < 440) & (YPosition >= 180 & YPosition < 300);
    assign CurrentSettingROMAddress = {6'd0, (XPosition - 10'd200)} + {6'd0, (YPosition - 10'd180)} * 16'd240;
    reg PrescaledClk = 0;
    always@(posedge OriginalClk)
    begin
        PrescaledClk <= PrescaledClk + 1;
    end
    SettingROM SettingROM(PrescaledClk, CurrentSettingROMAddress, SettingBoardData);
    reg [9:0] DotYPosition;
    reg [9:0] DotXPosition;
    always@(posedge VSync)
    begin
        DotYPosition <= 10'd180 + 10'd16 + CurrentItem * 10'd28;
        DotXPosition <= 10'd200 + 10'd45;
    end
    assign RenderDot = ((DotYPosition - YPosition) * (DotYPosition - YPosition) + (DotXPosition - XPosition) * (DotXPosition - XPosition)) <= 49;


    reg  [13:0] CurrentNumberRomAddress;
    wire [15:0] NumberData;
    assign RenderOneNumber      = (Score     <=         9) && (XPosition >=308 && XPosition < 332) && (YPosition >= 13 && YPosition <= 56);
    assign RenderFirstNumber    = (Score>=10 && Score<=99) && (XPosition >=295 && XPosition < 319) && (YPosition >= 13 && YPosition <= 56);
    assign RenderSecondNumber   = (Score>=10 && Score<=99) && (XPosition >=321 && XPosition < 345) && (YPosition >= 13 && YPosition <= 56);
    assign RenderOnesNumber     = (Score     >=       100) && (XPosition >=282 && XPosition < 306) && (YPosition >= 13 && YPosition <= 56);
    assign RenderTensNumber     = (Score     >=       100) && (XPosition >=308 && XPosition < 332) && (YPosition >= 13 && YPosition <= 56);
    assign RenderHundredsNumber = (Score     >=       100) && (XPosition >=334 && XPosition < 358) && (YPosition >= 13 && YPosition <= 56);
    always@(posedge OriginalClk)
    begin
        case( {RenderOneNumber, RenderFirstNumber, RenderSecondNumber, RenderOnesNumber, RenderTensNumber, RenderHundredsNumber} )
            6'b100000 : CurrentNumberRomAddress <= {4'd0, (XPosition - 10'd308)} + {4'd0, (YPosition - 10'd13)} * 14'd24 + 14'd1056 * {6'd0, Score};
            6'b010000 : CurrentNumberRomAddress <= {4'd0, (XPosition - 10'd295)} + {4'd0, (YPosition - 10'd13)} * 14'd24 + 14'd1056 * {6'd0, Score/8'd10};
            6'b001000 : CurrentNumberRomAddress <= {4'd0, (XPosition - 10'd321)} + {4'd0, (YPosition - 10'd13)} * 14'd24 + 14'd1056 * {6'd0, Score%8'd10};
            6'b000100 : CurrentNumberRomAddress <= {4'd0, (XPosition - 10'd334)} + {4'd0, (YPosition - 10'd13)} * 14'd24 + 14'd1056 * {6'd0, (Score%8'd10)};
            6'b000010 : CurrentNumberRomAddress <= {4'd0, (XPosition - 10'd308)} + {4'd0, (YPosition - 10'd13)} * 14'd24 + 14'd1056 * {6'd0, (Score/8'd10)%8'd10};
            6'b000001 : CurrentNumberRomAddress <= {4'd0, (XPosition - 10'd282)} + {4'd0, (YPosition - 10'd13)} * 14'd24 + 14'd1056 * {6'd0, (Score/8'd100)};
           default : CurrentNumberRomAddress <= 14'd0;
        endcase
    end
    NumberROM NumberROM(CurrentNumberRomAddress, NumberData);


    wire [14:0] CurrentScoreboardROMAddress;
    wire [15:0] ScoreboardData;
    assign RenderScoreboard = (XPosition >= 200 & XPosition <= 439) & (YPosition >= 180 & YPosition <= 299);
    assign CurrentScoreboardROMAddress = {5'd0, (XPosition - 10'd200)} + {5'd0, (YPosition - 10'd180)} * 15'd240;
    ScoreboardROM ScoreboardROM(CurrentScoreboardROMAddress, ScoreboardData);

    reg  [10:0] CurrentScoreNumberROMAddress;
    wire [15:0] ScoreNumberData;
    assign RenderHundredsScoreNumber = (Score     >=       100) && (XPosition >= 373 && XPosition < 385) && (YPosition >= 220 && YPosition <= 235);
    assign RenderTensScoreNumber     = (Score     >=        10) && (XPosition >= 385 && XPosition < 397) && (YPosition >= 220 && YPosition <= 235);
    assign RenderOnesScoreNumber     = (Score     >=         0) && (XPosition >= 397 && XPosition < 409) && (YPosition >= 220 && YPosition <= 235);
    always@(posedge OriginalClk)
    begin
        case( {RenderHundredsScoreNumber, RenderTensScoreNumber, RenderOnesScoreNumber} )
            3'b100 : CurrentScoreNumberROMAddress <= {1'd0, (XPosition - 10'd373)} + {1'd0, (YPosition - 10'd220)} * 11'd12 + 11'd192 * {3'd0, (Score/8'd100)};
            3'b010 : CurrentScoreNumberROMAddress <= {1'd0, (XPosition - 10'd385)} + {1'd0, (YPosition - 10'd220)} * 11'd12 + 11'd192 * {3'd0, (Score/8'd10)%8'd10};
            3'b001 : CurrentScoreNumberROMAddress <= {1'd0, (XPosition - 10'd397)} + {1'd0, (YPosition - 10'd220)} * 11'd12 + 11'd192 * {3'd0, (Score%8'd10)};
           default : CurrentScoreNumberROMAddress <= 11'd0;
        endcase
    end
    ScoreNumberROM ScoreNumberROM(CurrentScoreNumberROMAddress, ScoreNumberData);

    wire [15:0] ScoreboardOut;
    assign ScoreboardOut = (ScoreNumberData[0]!=0) ? ScoreNumberData : ScoreboardData;

    always@(posedge OriginalClk) 
    begin
        case(State)
            StateWelcome    :
            begin
                if(RenderLogo)
                    LayerOutput <= LogoData;
                else
                    LayerOutput <= 16'b0;
            end

            StateSetting:
            begin
                if(RenderDot)
                    LayerOutput <= 16'hffff;
                else if(RenderSetting)
                    LayerOutput <= SettingBoardData;
                else
                    LayerOutput <= 16'b0;
            end

            StateRunning, StateFromRunningToGameOver    :
            begin
                if(RenderOneNumber | RenderFirstNumber | RenderSecondNumber | RenderOnesNumber | RenderTensNumber | RenderHundredsNumber)
                    LayerOutput <= NumberData;
                else
                    LayerOutput <= 16'b0;
            end

            StateGameOver   :
            begin
                if(RenderScoreboard)
                    LayerOutput <= ScoreboardOut;
                else
                    LayerOutput <= 16'b0;

            end

            default : LayerOutput <= 16'b0;
        endcase
    end

endmodule
