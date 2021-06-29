`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/22 23:35:13
// Design Name: 
// Module Name: ControlMux
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


module ControlMux(
    input [1:0] ControlSelect,
    input [4:0] ButtonInput,
    input MEMSButtonDown,
    output reg [4:0] ControlWord
    );

    always@(*)
    begin
        case(ControlSelect)
            2'b00 : ControlWord <= ButtonInput;
            2'b01 : ControlWord <= {ButtonInput[4], MEMSButtonDown, ButtonInput[2:0]};
            default : ControlWord <= ButtonInput;
        endcase
    end

endmodule
