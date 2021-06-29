`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/15 09:59:13
// Design Name: 
// Module Name: bgm
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


module bgm(
input reset,
input clk,
//input turn,
input SD,
output sd,
output beep
    );
    wire turn=1;
    reg [18:0]state=8'd0;
    wire clk_rim;
    wire clk_pai;
    reg [18:0]key=8'd0;
    reg [18:0]keyef=8'd0;
    wire sound;
    parameter L1=478;    parameter L2=3401;    parameter L3=3034;
    parameter L4=2864;    parameter L5=2551;    parameter L6=2723;
    parameter L7=2024;
    parameter M1=1911;    parameter M2=1703;    parameter M3=1517;
    parameter M4=1432;    parameter M5=1276;    parameter M6=1136;
    parameter M7=1012;
    parameter H1=956;    parameter H2=851;    parameter H3=758;
    parameter H4=716;    parameter H5=638;    parameter H6=568;
    parameter H7=506;    parameter N=1;
    assign sd=SD;
    clkdiv cl(.clk(clk),.reset(reset),.clk_op(clk_pai));
    clkrim fenpin(.clk(clk),.reset(reset),.clkrim(clk_rim));
    soundeffect bgm1(.key(key),.reset(reset),.clk(clk_rim),.sound(sound));
    jump(.sound(sound),.reset(reset),.clk(clk_rim),.keyef(keyef),.beep(beep));
    always@(posedge clk_pai or posedge reset)
    if(reset)begin
    state<=8'd0;
    end
    else if(state<144)
    begin
    state<=state+1;
    end
    else if(state>=144)
    begin
    state<=0;
    end
    always@(posedge clk_pai)
    begin 
    case(state)
    8'd0:key<=N;
    8'd1:key<=H3;
    8'd2:key<=N;
    8'd3:key<=H3;
    8'd4:key<=N;
    8'd5:key<=H3;
    8'd6:key<=N;
    8'd7:key<=H1;
    8'd8:key<=H3;
    8'd9:key<=N;
    8'd10:key<=N;
    8'd11:key<=H5;
    8'd12:key<=H5;
    8'd13:key<=N;
    8'd14:key<=N;
    8'd15:key<=M5;
    8'd16:key<=M5;
    8'd17:key<=N;
    8'd18:key<=N;
    8'd19:key<=H1;
    8'd20:key<=H1;
    8'd21:key<=N;
    8'd22:key<=N;
    8'd23:key<=M5;
    8'd24:key<=M5;
    8'd25:key<=N;
    8'd26:key<=N;
    8'd27:key<=M3;
    8'd28:key<=M3;
    8'd29:key<=N;
    8'd30:key<=N;
    8'd31:key<=M6;
    8'd32:key<=M6;
    8'd33:key<=M7;
    8'd34:key<=M7;
    8'd35:key<=M7;
    8'd36:key<=N;
    8'd37:key<=M6;
    8'd38:key<=M6;
    8'd39:key<=M5;
    8'd40:key<=M5;
    8'd41:key<=H3;
    8'd42:key<=H3;
    8'd43:key<=H5;
    8'd44:key<=H6;
    8'd45:key<=N;
    8'd46:key<=N;
    8'd47:key<=H4;
    8'd48:key<=H5;
    8'd49:key<=N;
    8'd50:key<=N;
    8'd51:key<=H3;
    8'd52:key<=N;
    8'd53:key<=H1;
    8'd54:key<=H2;
    8'd55:key<=M7;
    8'd56:key<=M7;
    8'd57:key<=N;
    8'd58:key<=N;
    8'd59:key<=H1;
    8'd60:key<=H1;
    8'd61:key<=N;
    8'd62:key<=N;
    8'd63:key<=M5;
    8'd64:key<=N;
    8'd65:key<=N;
    8'd66:key<=N;
    8'd67:key<=M3;
    8'd68:key<=N;
    8'd69:key<=M6;
    8'd70:key<=M6;
    8'd71:key<=M7;
    8'd72:key<=N;
    8'd73:key<=M7;
    8'd74:key<=M6;
    8'd75:key<=M6;
    8'd76:key<=N;
    8'd77:key<=N;
    8'd78:key<=M5;
    8'd79:key<=H3;
    8'd80:key<=H3;
    8'd81:key<=H5;
    8'd82:key<=H5;
    8'd83:key<=H6;
    8'd84:key<=H6;
    8'd85:key<=H4;
    8'd86:key<=H4;
    8'd87:key<=H5;
    8'd88:key<=N;
    8'd89:key<=H3;
    8'd90:key<=H3;
    8'd91:key<=H2;
    8'd92:key<=H1;
    8'd93:key<=M7;
    8'd94:key<=M7;
    8'd95:key<=M7;
    8'd96:key<=N;
    8'd97:key<=N;
    8'd98:key<=N;
    8'd99:key<=H5;
    8'd100:key<=H5;
    8'd101:key<=H4;
    8'd102:key<=H4;
    8'd103:key<=H3;
    8'd104:key<=N;
    8'd105:key<=H3;
    8'd106:key<=H3;
    8'd107:key<=M5;
    8'd108:key<=M6;
    8'd109:key<=M6;
    8'd110:key<=H1;
    8'd111:key<=H1;
    8'd112:key<=N;
    8'd113:key<=M6;
    8'd114:key<=H1;
    8'd115:key<=H2;
    8'd116:key<=H2;
    8'd117:key<=N;
    8'd118:key<=H5;
    8'd119:key<=H4;
    8'd120:key<=H4;
    8'd121:key<=H4;
    8'd122:key<=H3;
    8'd123:key<=H3;
    8'd124:key<=N;
    8'd125:key<=H3;
    8'd126:key<=H3;
    8'd127:key<=L1;
    8'd128:key<=L1;
    8'd130:key<=L1;
    8'd131:key<=L1;
    8'd132:key<=L1;
    8'd133:key<=N;
    8'd134:key<=N;
    8'd135:key<=N;
    8'd136:key<=N;
    8'd137:key<=N;
    8'd138:key<=H5;
    8'd139:key<=H4;
    8'd140:key<=H4;
    8'd141:key<=H3;
    8'd142:key<=H3;
    8'd143:key<=H3;
    8'd144:key<=N;
    8'd145:key<=N;
    8'd146:key<=N;
    8'd147:key<=N;
    8'd148:key<=N;
    endcase
    end
    always@(posedge clk_pai)
    begin
    if(turn) keyef<=H4;
    else keyef<=1;
    end
endmodule
