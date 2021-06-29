`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/17 14:06:20
// Design Name: 
// Module Name: clkdiv
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


module clkdiv(
input clk,
input reset,
output wire clk_op
    );
    reg clkop_reg;
    reg [28:0]count=0;
    always@(posedge clk)
   if(reset) begin
    count<=0; clkop_reg<=0;
    end
    else if(count<10000000)begin
    count<=count+1;
    end
    else begin
    count<=0;
    clkop_reg=~clkop_reg;
    end
    assign clk_op=clkop_reg;
endmodule
