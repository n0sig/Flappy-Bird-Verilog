`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/19 21:49:04
// Design Name: 
// Module Name: Display128Bit
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


module Display32Bit(
    input OriginalClk,
    input [31:0] Number,
    output [7:0] ChipSelect,
    output [7:0] SegmentSelectLeft,
    output [7:0] SegmentSelectRight
    );
    
    
    /*PreScaler Begin*/
    reg [17:0] PreScaler;
    wire clk;
    
    always@(posedge OriginalClk)
    begin
        PreScaler <= PreScaler + 1 ;
    end
    
    assign clk = PreScaler[17];
    /*PreScaler End*/
    
    
    /*Cycle Refresh Begin*/
    reg [1:0] InputSelect;
    
    always@(posedge clk)
    begin
        InputSelect <= InputSelect + 1 ;
    end
    
    Decoder DecoderLeft (InputSelect[1:0],Number[31:16],ChipSelect[3:0],SegmentSelectLeft[7:0]) ;
    Decoder DecoderRight(InputSelect[1:0],Number[15: 0],ChipSelect[7:4],SegmentSelectRight[7:0]);
    /*Cycle Refresh End*/
    
endmodule
