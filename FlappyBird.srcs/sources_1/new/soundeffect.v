`timescale 1ns / 1ps
module soundeffect(
    input [18:0]key,
    input reset,
    input clk,
    output wire sound
);
    reg beep_reg;
    parameter L1=3823;    parameter L2=3401;    parameter L3=3034;
    parameter L4=2864;    parameter L5=2551;    parameter L6=2723;
    parameter L7=2024;
    parameter M1=1911;    parameter M2=1703;    parameter M3=1517;
    parameter M4=1432;    parameter M5=1276;    parameter M6=1136;
    parameter M7=1012;
    parameter H1=956;    parameter H2=851;    parameter H3=758;
    parameter H4=716;    parameter H5=638;    parameter H6=568;
    parameter H7=506;    parameter None=1000000;
    reg [18:0] cnt=0;
    reg [18:0] cntef=0;
    always@(posedge clk or posedge reset)
    if(reset)
    begin 
    cnt<=0; beep_reg<=0;
    end
    else if(key==1) 
    begin
    beep_reg<=0; 
    end
    else if(cnt<key)
    begin
    cnt<=cnt+1;
    beep_reg<=0; 
    end
    else
    begin 
    cnt<=0;
    beep_reg<=~beep_reg;
    end
    assign sound=beep_reg;
    endmodule