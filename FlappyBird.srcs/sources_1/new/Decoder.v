`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/19 22:08:43
// Design Name: 
// Module Name: Display16Bit
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


module Decoder(
    input [1:0] InputSelect,
    input [15:0] Number,
    output reg [3:0] ChipSelect,
    output reg [7:0] SegmentSelect
    );
    
    reg [3:0] NumberToShow;
    always@(*)
    begin
        case(InputSelect)
            2'b00 : begin ChipSelect = 4'b0001; NumberToShow[3:0] <= Number[3 : 0] ; end
            2'b01 : begin ChipSelect = 4'b0010; NumberToShow[3:0] <= Number[7 : 4] ; end
            2'b10 : begin ChipSelect = 4'b0100; NumberToShow[3:0] <= Number[11: 8] ; end
            2'b11 : begin ChipSelect = 4'b1000; NumberToShow[3:0] <= Number[15:12] ; end
        endcase
        case(NumberToShow)
            4'b0000 : SegmentSelect <= 8'b11111100;
            4'b0001 : SegmentSelect <= 8'b01100000;
            4'b0010 : SegmentSelect <= 8'b11011010;
            4'b0011 : SegmentSelect <= 8'b11110010;
            4'b0100 : SegmentSelect <= 8'b01100110;
            4'b0101 : SegmentSelect <= 8'b10110110;
            4'b0110 : SegmentSelect <= 8'b10111110;
            4'b0111 : SegmentSelect <= 8'b11100000;
            4'b1000 : SegmentSelect <= 8'b11111110;
            4'b1001 : SegmentSelect <= 8'b11110110;
            4'b1010 : SegmentSelect <= 8'b00000000;
            4'b1011 : SegmentSelect <= 8'b00000000;
            4'b1100 : SegmentSelect <= 8'b00000000;
            4'b1101 : SegmentSelect <= 8'b00000000;
            4'b1110 : SegmentSelect <= 8'b00010000;
            4'b1111 : SegmentSelect <= 8'b00000000;
        endcase
    end
endmodule
