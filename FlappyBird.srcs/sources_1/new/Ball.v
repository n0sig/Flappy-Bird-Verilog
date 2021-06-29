`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/13 20:20:17
// Design Name: 
// Module Name: Bird
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


module Bird(
    input OriginalClk,
    input VSync,
    input [3:0] State,
    input [4:0] ControlWord,
    output reg [9:0] BirdXPosition = 79,
    output reg [9:0] BirdYPosition = 239,
    output reg RequestGameOver = 0
    );
    
    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;

    
    //定点小数，保留到小数点后6位。
    parameter Accelerate = 48'd100000000;   //Accelerate is 125 pixel per s^2.
    parameter Timebase = 48'd1666000;   //Timebase is 1.667000ms.
    
    reg [47:0] VerticalSpeed = 0;
    reg [47:0] TempObjectYPosition = 239000000;
    reg IsGoingDown = 0;

    
    always@(posedge VSync)
    begin
        case(State)
            StateWelcome    :
            begin
                BirdXPosition <= 10'd79;
                BirdYPosition <= 10'd239;
                VerticalSpeed <= 0;
                TempObjectYPosition <= 239000000;
                IsGoingDown <= 0;
                RequestGameOver <= 0;
            end

            StateRunning, StateFromRunningToGameOver    : 
            begin
                case(ControlWord)
                5'b01000 : if(BirdYPosition < 458 && State == StateRunning) begin VerticalSpeed <= 48'd2400000000; IsGoingDown <= 1'b0; end
                default  :     
                begin 
                    if(BirdYPosition >= 419)
                    begin
                        VerticalSpeed <= 0;
                        BirdYPosition <= BirdYPosition;
                        RequestGameOver <= 1;
                    end
                    else
                    begin
                        if(VerticalSpeed[47:0] != 48'd0)
                        begin
                            if(IsGoingDown) 
                                VerticalSpeed <= VerticalSpeed    + 48'd150000000;  //Accelerate     * Timebase / 48'd1000 / 48'd1000000;
                            else 
                                VerticalSpeed <= VerticalSpeed    - 48'd150000000;
                        end 
                        else
                        begin
                            IsGoingDown <= ~IsGoingDown;
                            VerticalSpeed <= VerticalSpeed    + 48'd150000000;  //Accelerate     * Timebase / 48'd1000 / 48'd1000000;
                        end
                        
                        if(IsGoingDown)
                            TempObjectYPosition <= TempObjectYPosition + VerticalSpeed * 48'd2000 /*Timebase / 48'd1000*/ / 48'd1000000 ;
                        else
                            TempObjectYPosition <= TempObjectYPosition - VerticalSpeed * 48'd2000 /*Timebase / 48'd1000*/ / 48'd1000000 ;

                        BirdYPosition <= (TempObjectYPosition / 1000000);
                    end
                end
                endcase
            end
            
            StatePause, StateGameOver  : begin BirdXPosition <= BirdXPosition; BirdYPosition <= BirdYPosition; end
            
            default     : 
                        begin
                            BirdXPosition <= 10'd79;
                            BirdYPosition <= 10'd239;
                            VerticalSpeed <= 0;
                            TempObjectYPosition <= 239000000;
                            IsGoingDown <= 0;
                        end
        endcase
    end
    
    
endmodule
