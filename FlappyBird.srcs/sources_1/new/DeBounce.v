`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/07 23:35:13
// Design Name: 
// Module Name: DeBounce
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


module DeBounce(
    input clk,
    input OriginButton,
    output reg AfterDebouncedButton
    );
    
    reg [19:0] count;
    parameter IsPressed = 650000;
    
    always@(posedge clk)
    begin
        
        if(OriginButton==0 && AfterDebouncedButton==1)
        begin
            count <= 0;
            AfterDebouncedButton <= 0;
        end
        
        if(OriginButton==1 && AfterDebouncedButton==0) count <= count+1;
        
        if(count>=IsPressed) AfterDebouncedButton <= 1;
    end
    
endmodule
