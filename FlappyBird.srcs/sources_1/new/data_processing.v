`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/22 09:47:49
// Design Name: 
// Module Name: data_processing
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


module data_processing(
    input uart_rx_valid,
    input [7:0]data_out,
    output reg button_up,
    output reg button_down,
    output reg button_left,
    output reg button_right,
    output reg button_shake

    );
    reg [127:0]data=0;
    always@(posedge uart_rx_valid)
    begin
        data[127:8] <=data   [119:0];
        data[  7:0] <=data_out[  7:0];
    end
    
    wire signed [15:0] X, Y, Z;
    assign X = {data[87:80], data[95:88]};
    assign Y = {data[71:64], data[79:72]};
    assign Z = {data[55:48], data[63:56]};
    
    always@(posedge uart_rx_valid) begin
        if(data[127:96]==32'b01010101_01010101_00000011_00001100)
        begin
            if(X>15000||Y>15000||Z>25000)
                button_shake<=1;
            else
                button_shake<=0;
        end
        if(data[127:96]==32'b01010101_01010101_00000001_00000110) //55 55 01 06 xl xh yl yh zl zh   
        begin
            if(Y>8500)
                button_up<=1;
            else
                button_up<=0;
            if(Y+8500<0)
                button_down<=1;
            else
                button_down<=0;
            if(X>8500)
                button_right<=1;
            else
                button_right<=0;
            if(X+8500<0)
                button_left<=1;
            else
                button_left<=0;
        end
    end
endmodule
