`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/22 10:55:57
// Design Name: 
// Module Name: clkrim
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


module clkrim(
    input clk,
    input reset,
    output wire clkrim
    );
    reg clk_reg;
    reg [28:0]count=0;
    always@(posedge clk)
   if(reset) begin
    count<=0; clk_reg<=0;
    end
    else if(count<50)begin
    count<=count+1;
    end
    else begin
    count<=0;
    clk_reg=~clk_reg;
    end
    assign clkrim=clk_reg;
endmodule

