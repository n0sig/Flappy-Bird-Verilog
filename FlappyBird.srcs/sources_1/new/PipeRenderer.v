`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/14 15:58:22
// Design Name: 
// Module Name: PipeRenderer
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


module PipeRenderer(
    input OriginalClk,
    input VSync,
    input [3:0] State,
    input [9:0] XPosition,
    input [9:0] YPosition,
    input [9:0] PipeXPosition,
    input [99:0] PipeYPosition,
    output reg [15:0] LayerOutput
    );

    parameter StateRunning  = 4'h0;
    parameter StatePause    = 4'h1;
    parameter StateWelcome  = 4'h2;
    parameter StateGameOver = 4'h3;
    
    parameter StateFromWelcomeToRunning  = 4'h4;
    parameter StateFromRunningToGameOver = 4'h5;

    parameter Clearance = 10'd96;
    
    wire [13:0] Pipe0Address;
    wire [13:0] Pipe1Address;
    wire [13:0] Pipe2Address;
    wire [13:0] Pipe3Address;
    wire [13:0] Pipe4Address;
    wire [13:0] Pipe5Address;
    reg  [13:0] CurrentROMAddress = 0;
    wire [15:0] PipeGraphData;
    
    assign Pipe0Address = (PipeYPosition[99:90] > YPosition) ?
                          ({4'd0, (PipeXPosition - XPosition)} + {4'd0, (PipeYPosition[99:90] - YPosition - 10'd1 )} * 14'd26)
                        : ({4'd0, (PipeXPosition - XPosition)} + {4'd0, (YPosition - PipeYPosition[99:90] - Clearance - 10'd1)} * 14'd26);
    assign Pipe1Address = (PipeYPosition[89:80] > YPosition) ?
                          ({4'd0, (PipeXPosition + 10'd128 - XPosition)} + {4'd0, (PipeYPosition[89:80] - YPosition - 10'd1 )} * 14'd26)
                        : ({4'd0, (PipeXPosition + 10'd128 - XPosition)} + {4'd0, (YPosition - PipeYPosition[89:80] - Clearance - 10'd1)} * 14'd26);
    assign Pipe2Address = (PipeYPosition[79:70] > YPosition) ?
                          ({4'd0, (PipeXPosition + 10'd256 - XPosition)} + {4'd0, (PipeYPosition[79:70] - YPosition - 10'd1 )} * 14'd26)
                        : ({4'd0, (PipeXPosition + 10'd256 - XPosition)} + {4'd0, (YPosition - PipeYPosition[79:70] - Clearance - 10'd1)} * 14'd26);
    assign Pipe3Address = (PipeYPosition[69:60] > YPosition) ?
                          ({4'd0, (PipeXPosition + 10'd384 - XPosition)} + {4'd0, (PipeYPosition[69:60] - YPosition - 10'd1 )} * 14'd26)
                        : ({4'd0, (PipeXPosition + 10'd384 - XPosition)} + {4'd0, (YPosition - PipeYPosition[69:60] - Clearance - 10'd1)} * 14'd26);
    assign Pipe4Address = (PipeYPosition[59:50] > YPosition) ?
                          ({4'd0, (PipeXPosition + 10'd512 - XPosition)} + {4'd0, (PipeYPosition[59:50] - YPosition - 10'd1 )} * 14'd26)
                        : ({4'd0, (PipeXPosition + 10'd512 - XPosition)} + {4'd0, (YPosition - PipeYPosition[59:50] - Clearance - 10'd1)} * 14'd26);                                                        
    assign Pipe5Address = (PipeYPosition[49:40] > YPosition) ?
                          ({4'd0, (PipeXPosition + 10'd640 - XPosition)} + {4'd0, (PipeYPosition[49:40] - YPosition - 10'd1 )} * 14'd26)
                        : ({4'd0, (PipeXPosition + 10'd640 - XPosition)} + {4'd0, (YPosition - PipeYPosition[49:40] - Clearance - 10'd1)} * 14'd26);
    
    PipeROM PipeROM(CurrentROMAddress, PipeGraphData);
    
    wire RenderPipe0 = ({1'b0, PipeXPosition}       < {1'b0, XPosition} + 26)  &  (PipeXPosition       >= XPosition)  &  (  (YPosition < PipeYPosition[99:90])  |  (YPosition > PipeYPosition[99:90] + Clearance)  );
    wire RenderPipe1 = ({1'b0, PipeXPosition} + 128 < {1'b0, XPosition} + 26)  &  (PipeXPosition + 128 >= XPosition)  &  (  (YPosition < PipeYPosition[89:80])  |  (YPosition > PipeYPosition[89:80] + Clearance)  );
    wire RenderPipe2 = ({1'b0, PipeXPosition} + 256 < {1'b0, XPosition} + 26)  &  (PipeXPosition + 256 >= XPosition)  &  (  (YPosition < PipeYPosition[79:70])  |  (YPosition > PipeYPosition[79:70] + Clearance)  );
    wire RenderPipe3 = ({1'b0, PipeXPosition} + 384 < {1'b0, XPosition} + 26)  &  (PipeXPosition + 384 >= XPosition)  &  (  (YPosition < PipeYPosition[69:60])  |  (YPosition > PipeYPosition[69:60] + Clearance)  );
    wire RenderPipe4 = ({1'b0, PipeXPosition} + 512 < {1'b0, XPosition} + 26)  &  (PipeXPosition + 512 >= XPosition)  &  (  (YPosition < PipeYPosition[59:50])  |  (YPosition > PipeYPosition[59:50] + Clearance)  );
    wire RenderPipe5 = ({1'b0, PipeXPosition} + 640 < {1'b0, XPosition} + 26)  &  (PipeXPosition + 640 >= XPosition)  &  (  (YPosition < PipeYPosition[49:40])  |  (YPosition > PipeYPosition[49:40] + Clearance)  );
    
    always@(posedge OriginalClk)
    begin
        case( {RenderPipe0, RenderPipe1, RenderPipe2, RenderPipe3, RenderPipe4, RenderPipe5} )
            6'b100000 : CurrentROMAddress <= Pipe0Address;
            6'b010000 : CurrentROMAddress <= Pipe1Address;
            6'b001000 : CurrentROMAddress <= Pipe2Address;
            6'b000100 : CurrentROMAddress <= Pipe3Address;
            6'b000010 : CurrentROMAddress <= Pipe4Address;
            6'b000001 : CurrentROMAddress <= Pipe5Address;
            default   : CurrentROMAddress <= CurrentROMAddress;
        endcase
    end
    
    always@(posedge OriginalClk)
    begin
        case(State)
            StateRunning, StatePause, StateGameOver, StateFromRunningToGameOver :
            begin
            if( RenderPipe0 | RenderPipe1 | RenderPipe2 | RenderPipe3 | RenderPipe4 | RenderPipe5 )
                LayerOutput <= PipeGraphData;
            else
                LayerOutput <= 16'b0;
            end

            default : LayerOutput <= 16'b0;
        endcase
        
    end
endmodule
