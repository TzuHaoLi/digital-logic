`timescale 1ns/1ps //設定時間參數

module BCD_tb();

reg clk, reset;
wire [3:0]Q1;
parameter PERIOD = 20;
parameter real DUTY_CYCLE = 0.5;
parameter OFFSET = 0; //呼叫 voter_if.v 的 module 

initial
    begin   
        #OFFSET;
        forever
            begin
                clk = 1'b0;
                #(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b1;
                #(PERIOD*DUTY_CYCLE);
            end
        end
initial begin
    reset = 1'b1;
    #5 reset = 1'b0;
    #150 reset = 1'b1;
    #5 reset = 1'b0;
    #300 $finish;
end
initial
    begin
        $dumpfile("BCD.vcd"); //指定vcd檔名為 voter_if.vcd
        $dumpvars(0,BCD_tb);  //紀錄voter_if_tb 模組及所有訊號
    end
BCD BCD_tb(
    .clk(clk),
    .reset(reset)
);
endmodule