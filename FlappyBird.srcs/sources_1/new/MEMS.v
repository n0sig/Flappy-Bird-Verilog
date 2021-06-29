`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/21 23:42:06
// Design Name: 
// Module Name: top
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

module MEMS (
input clk, 
input uart_rxd, 
output button_up,
output button_down,
output button_left,
output button_right,
output button_shake,
output [7:0]data_out
);

reg sw_0 = 1;
//wire [7:0]data_out;
// 时钟频率
parameter CLK_HZ = 100000000;
parameter BIT_RATE =   115200;
parameter PAYLOAD_BITS = 8;

wire [PAYLOAD_BITS-1:0]  uart_rx_data;
wire        uart_rx_valid;
wire        uart_rx_break;
reg  [PAYLOAD_BITS-1:0]  data_out_reg;
assign      data_out = data_out_reg;
always @(posedge clk) begin
    if(!sw_0) begin
        data_out_reg <= 8'hF0;
    end else if(uart_rx_valid) begin
        data_out_reg <= uart_rx_data[7:0];
    end
end


uart_rx #(
.BIT_RATE(BIT_RATE),
.PAYLOAD_BITS(PAYLOAD_BITS),
.CLK_HZ(CLK_HZ)
) i_uart_rx(
.clk          (clk          ), // 顶层模块的时�?
.resetn       (sw_0         ), // 复位信号，此处置�?
.uart_rxd     (uart_rxd     ), // 接收端口
.uart_rx_en   (1'b1         ), // 接受数据使能信号
.uart_rx_break(uart_rx_break), // 中断信号
.uart_rx_valid(uart_rx_valid), // 收到了有效数�?
.uart_rx_data (uart_rx_data )  // 接收数据
);

data_processing data(uart_rx_valid, data_out, button_up,button_down,button_left,button_right,button_shake);

endmodule
