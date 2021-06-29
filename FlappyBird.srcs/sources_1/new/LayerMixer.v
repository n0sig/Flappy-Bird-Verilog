`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/13 12:36:16
// Design Name: 
// Module Name: LayerMixer
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


module LayerMixer(
    input [15:0] Layer4,
    input [15:0] Layer3,
    input [15:0] Layer2,
    input [15:0] Layer1,
    input [15:0] Layer0,
    output[11:0] Data
    );
    
    assign Data[11:8] = Layer4[0]?Layer4[15:12]:Layer3[0]?Layer3[15:12]:Layer2[0]?Layer2[15:12]:Layer1[0]?Layer1[15:12]:Layer0[15:12];
    assign Data[7:4]  = Layer4[0]?Layer4[11: 8]:Layer3[0]?Layer3[11: 8]:Layer2[0]?Layer2[11: 8]:Layer1[0]?Layer1[11: 8]:Layer0[11: 8];
    assign Data[3:0]  = Layer4[0]?Layer4[ 7: 4]:Layer3[0]?Layer3[ 7: 4]:Layer2[0]?Layer2[ 7: 4]:Layer1[0]?Layer1[ 7: 4]:Layer0[ 7: 4];
    
endmodule
