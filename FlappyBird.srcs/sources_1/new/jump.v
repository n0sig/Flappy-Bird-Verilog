`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/28 13:18:49
// Design Name: 
// Module Name: jump
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


module jump(
    input sound,
    input [18:0]keyef,
    input clk,
    input reset,
    output reg beep
    );
    reg [18:0]cnt=0;
    always@(posedge clk or posedge reset)
    begin
    if(sound) beep<=1;
    else if(keyef==1) beep<=0;
    else if(reset) begin cnt<=0; beep<=0;end
    else if(cnt<keyef)
    begin
    cnt<=cnt+1;
    beep<=0;
    end
    else if(cnt>=keyef)
    begin
    cnt<=0;
    beep<=~beep;
    end
    end
endmodule
