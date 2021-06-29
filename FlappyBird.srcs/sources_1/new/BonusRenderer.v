`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/26 22:17:05
// Design Name: 
// Module Name: BonusRenderer
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


module BonusRenderer(
    input OriginalClk, 
    input VSync, 
    input [3:0] State, 
    input [9:0] XPosition, 
    input [9:0] YPosition, 
    input [9:0] SpeedUpXPosition, 
    input [9:0] SpeedUpYPosition, 
    input [9:0] HealthXPosition,
    input [9:0] HealthYPosition,
    output reg [15:0] LayerOutput
    );

    wire RenderSpeedUp;
    assign RenderSpeedUp = (XPosition <= SpeedUpXPosition)   & (XPosition + 10'd16 > SpeedUpXPosition)   & (YPosition <= SpeedUpYPosition)   & (YPosition + 10'd16 > SpeedUpYPosition);
    wire [7:0] SpeedUpROMAddress;
    assign SpeedUpROMAddress   = (SpeedUpXPosition   - XPosition) + 8'd16*(SpeedUpYPosition - YPosition);
    wire [15:0] SpeedUpData;
    SpeedUpROM(SpeedUpROMAddress, SpeedUpData);

    wire RenderHealth;
    assign RenderHealth = (XPosition <= HealthXPosition)   & (XPosition + 10'd16 > HealthXPosition)   & (YPosition <= HealthYPosition)   & (YPosition + 10'd16 > HealthYPosition);
    wire [7:0] HealthROMAddress;
    assign HealthROMAddress   = (HealthXPosition   - XPosition) + 8'd16*(HealthYPosition - YPosition);
    wire [15:0] HealthData;
    HealthROM(HealthROMAddress, HealthData);

    always@(posedge OriginalClk)
    begin
        if(RenderSpeedUp)
            LayerOutput <= SpeedUpData;
        else if(RenderHealth)
            LayerOutput <= HealthData;
        else
            LayerOutput <= 16'b0;
    end
endmodule
