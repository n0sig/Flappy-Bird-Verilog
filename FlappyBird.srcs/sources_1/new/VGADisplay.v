`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/12 12:50:30
// Design Name: 
// Module Name: VGADisplay
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


module VGADisplay(
    input OriginalClk,      //The original clock provided by EGO1, 100MHz.
    input [11:0] Data,      //Data in.
    output reg [3:0] R = 0, //Red signal output.
    output reg [3:0] G = 0, //Green signal output.
    output reg [3:0] B = 0, //Blue signal output.
    output reg HSync = 0,   //Horizontal synchronization signal output.
    output reg VSync = 0,   //Vertical synchronization signal output.
    output reg [9:0] XPosition = 0,
    output reg [9:0] YPosition = 0
    );
    
    
    //This is a Prescaler, divide 100MHz into 25MHz.
    //Prescaler Begin.
    reg [1:0] Prescaler = 0;
    wire Clk;
    always@(posedge OriginalClk)
    begin
        Prescaler <= Prescaler + 1;
    end
    
    assign Clk = Prescaler[1];
    //Prescaler End.
    
    
    //This is a
    reg [9:0] XCount = 0;
    reg [9:0] YCount = 0;
    
    always@(posedge Clk)
    begin
        if(XCount == 10'd799)       XCount <= 0;
        else                        XCount <= XCount + 1;
    end
    
    always@(posedge Clk) 
    begin
        if(YCount == 10'd524)       YCount <= 0;
        else if(XCount == 10'd799)  YCount <= YCount + 1;
    end
    
    always@(posedge Clk)
    begin
        if(XCount == 10'd95)        HSync <= 1;
        else if(XCount == 10'd799)  HSync <= 0;
    end
    
    always@(posedge Clk)
    begin
        if(YCount == 10'd1)         VSync <= 1;
        else if(YCount == 10'd524)  VSync <= 0;
    end
    //end
    
    
    wire IsInDisplayTime;
    assign IsInDisplayTime = (XCount >= 144) && (XCount <= 783) && (YCount >=35) && (YCount <= 514);
    
    always@(posedge Clk)
    begin
        if(IsInDisplayTime)         {R[3:0], G[3:0], B[3:0]} <= Data[11:0];
        else                        {R[3:0], G[3:0], B[3:0]} <= 0;
    end
    
    
    always@(*)
    begin
        XPosition <= XCount - 10'd144;
        YPosition <= YCount - 10'd35;
    end
    
endmodule
