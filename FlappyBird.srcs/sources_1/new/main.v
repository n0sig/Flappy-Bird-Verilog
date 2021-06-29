`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/12 14:55:03
// Design Name: 
// Module Name: main
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


module main(
    input Clk,      //The original clock provided by EGO1, 100MHz.
    output [3:0] R, //Red signal output.
    output [3:0] G, //Green signal output.
    output [3:0] B, //Blue signal output.
    output HSync,   //Horizontal synchronization signal output.
    output VSync,   //Vertical synchronization signal output.
    
    input OriginalButtonUp,
    input OriginalButtonDown,
    input OriginalButtonLeft,
    input OriginalButtonRight,
    input OriginalButtonCentral,

    output [7:0] ChipSelect,
    output [7:0] SegmentSelectRight,
    output [7:0] SegmentSelectLeft,

    input RxUART,
    output [7:0] DataOutLED,

    input reset,
    input clk,
    input SD,
    output sd,
    output beep
    );
    
    wire [9:0] XPosition;
    wire [9:0] YPosition;
    wire [9:0] BirdXPosition;
    wire [9:0] BirdYPosition;
    wire [9:0] PipeXPosition;
    wire [99:0] PipeYPosition;
    wire [9:0] SpeedUpXPosition;
    wire [9:0] SpeedUpYPosition;
    wire [9:0] HealthXPosition;
    wire [9:0] HealthYPosition;

    wire [15:0] Layer0;
    wire [15:0] Layer1;
    wire [15:0] Layer2;
    wire [15:0] Layer3;
    wire [15:0] Layer4;
    wire [11:0] MixedData;
    
    
    wire OriginalMEMSUp;
    wire OriginalMEMSDown;
    wire OriginalMEMSLeft;
    wire OriginalMEMSRight;
    wire OriginalMEMSShake;
    wire [4:0] MEMSInput;

    bgm bgm (1'b0, Clk, SD, sd, beep);
    MEMS MEMS(Clk, RxUART, OriginalMEMSUp, OriginalMEMSDown, OriginalMEMSLeft, OriginalMEMSRight, OriginalMEMSShake, DataOutLED);
    
    //Input Begin.
    wire [4:0] ButtonInput;
    ButtonProcessor ButtonProcessor(Clk, 
                                    VSync, 
                                    OriginalButtonUp, 
                                    OriginalButtonDown, 
                                    OriginalButtonLeft, 
                                    OriginalButtonRight, 
                                    OriginalButtonCentral, 
                                    ButtonInput  );

    ButtonProcessor MEMSProcessor   (Clk,
                                     VSync,
                                     OriginalMEMSUp,
                                     OriginalMEMSDown,
                                     OriginalMEMSLeft,
                                     OriginalMEMSRight,
                                     OriginalMEMSShake,
                                     MEMSInput   );
    //Input End.
    
    

    
    //Game Logic Begin.
    wire [1:0] ControlSelect;
    wire [2:0] RollingSpeed;
    wire [2:0] SkinSelect;
    wire [1:0] BackgroundSelect;
    wire [4:0] ControlWord;

    wire [3:0] State;
    wire [7:0] Score;
    wire [2:0] Health;
    wire RequestSpeedUp;
    wire RequestDie;
    wire RequestGameOver;
    wire [2:0] CurrentItem;

    ControlMux  ControlMux  (ControlSelect, ButtonInput, MEMSInput[0], ControlWord);
    Bird        Bird        (Clk, VSync, State, ControlWord,  BirdXPosition,  BirdYPosition, RequestGameOver);
    Pipe        Pipe        (Clk, VSync, State, RollingSpeed, PipeXPosition,  PipeYPosition);
    Bonus       Bonus       (Clk, VSync, State, RollingSpeed, PipeXPosition,  PipeYPosition, Health, RequestSpeedUp ,RequestHealth, SpeedUpXPosition, SpeedUpYPosition, HealthXPosition, HealthYPosition);

    Scoring     Scoring     (Clk, VSync, State, BirdXPosition,      BirdYPosition,  
                                                PipeXPosition,      PipeYPosition[99:90], 
                                                SpeedUpXPosition,   SpeedUpYPosition,
                                                HealthXPosition,    HealthYPosition,
                                                RequestSpeedUp,     RequestHealth,   RequestDie, Score, Health);

    Setting     Setting     (Clk, VSync, State, ButtonInput, MEMSInput[4], MEMSInput[3], MEMSInput[2], MEMSInput[1], MEMSInput[0], RequestSpeedUp,  ControlSelect, RollingSpeed,  SkinSelect,    BackgroundSelect,  CurrentItem);
    MainFSM     MainFSM     (Clk, VSync, ButtonInput, MEMSInput, RequestGameOver, RequestDie, State);

    //Game Logic End.
    
    
    //Render Begin.
    BackgroundRenderer  BackgroundRenderer  (Clk, VSync, State, XPosition, YPosition, BackgroundSelect, RollingSpeed, Layer0);
    BirdRenderer        BirdRenderer        (Clk, VSync, State, XPosition, YPosition, BirdXPosition, BirdYPosition, SkinSelect, Layer1);
    PipeRenderer        PipeRenderer        (Clk, VSync, State, XPosition, YPosition, PipeXPosition, PipeYPosition, Layer2);
    BonusRenderer       BonusRenderer       (Clk, VSync, State, XPosition, YPosition, SpeedUpXPosition, SpeedUpYPosition, HealthXPosition, HealthYPosition, Layer3);
    OverlayRenderer     OverlayRenderer     (Clk, VSync, State, XPosition, YPosition, Score, CurrentItem, Layer4);
    //Render End.
    
    
    //VGA Output Begin.
    LayerMixer LayerMixer(Layer4, Layer3, Layer1, Layer2, Layer0, MixedData);
    VGADisplay VGADisplay(Clk, MixedData, R, G, B, HSync, VSync, XPosition, YPosition);
    //VGA Output End.

    Display32Bit Display32Bit(Clk, {5'b0, Health}, ChipSelect, SegmentSelectLeft, SegmentSelectRight);
    
endmodule
