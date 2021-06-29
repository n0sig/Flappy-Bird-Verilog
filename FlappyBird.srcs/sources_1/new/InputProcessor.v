`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/03 00:21:11
// Design Name: 
// Module Name: InputProcessor
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


module ButtonProcessor(
    input OriginalClk, 
    input VSync,
    input OriginalButtonUp, 
    input OriginalButtonDown, 
    input OriginalButtonLeft, 
    input OriginalButtonRight, 
    input OriginalButtonCentral, 
    output [4:0] ControlWord
    );

    wire ButtonUp, ButtonDown, ButtonLeft, ButtonRight, ButtonCentral;
    reg PreviousButtonUp = 0;
    reg PreviousButtonDown = 0;
    reg PreviousButtonLeft = 0;
    reg PreviousButtonRight = 0;
    reg PreviousButtonCentral = 0;

    DeBounce DeBounce0(OriginalClk, OriginalButtonUp,        ButtonUp       );
    DeBounce DeBounce1(OriginalClk, OriginalButtonDown,      ButtonDown     );
    DeBounce DeBounce2(OriginalClk, OriginalButtonLeft,      ButtonLeft     );
    DeBounce DeBounce3(OriginalClk, OriginalButtonRight,     ButtonRight    );
    DeBounce DeBounce4(OriginalClk, OriginalButtonCentral,   ButtonCentral  );

    always@(posedge VSync)
    begin
        PreviousButtonUp        <= ButtonUp;
        PreviousButtonDown      <= ButtonDown;
        PreviousButtonLeft      <= ButtonLeft;
        PreviousButtonRight     <= ButtonRight;
        PreviousButtonCentral   <= ButtonCentral;
    end

    assign ControlWord[4] = (ButtonUp       & (!PreviousButtonUp)       ) ? 1'b1 : 1'b0;
    assign ControlWord[3] = (ButtonDown     & (!PreviousButtonDown)     ) ? 1'b1 : 1'b0;
    assign ControlWord[2] = (ButtonLeft     & (!PreviousButtonLeft)     ) ? 1'b1 : 1'b0;
    assign ControlWord[1] = (ButtonRight    & (!PreviousButtonRight)    ) ? 1'b1 : 1'b0;
    assign ControlWord[0] = (ButtonCentral  & (!PreviousButtonCentral)  ) ? 1'b1 : 1'b0;

endmodule
