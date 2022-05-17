`timescale 1ns/1ps //設定時間參數

module voter_if_tb();

reg [3:0] I_tb;
wire [3:1] O_tb;

voter_if voter4P(.I(I_tb),.O(O_tb)); //呼叫 voter_if.v 的 module 

initial begin
    #0  I_tb = 4'b0000; //給定初始值 時間單位0
    #10 I_tb = 4'b0000; //時間單位10  =>  10ns
    #10 I_tb = 4'b0001;
    #10 I_tb = 4'b0010;
    #10 I_tb = 4'b0011;
    #10 I_tb = 4'b0100;
    #10 I_tb = 4'b0101;
    #10 I_tb = 4'b0110;
    #10 I_tb = 4'b0111;
    #10 I_tb = 4'b1000;
    #10 I_tb = 4'b1001;
    #10 I_tb = 4'b1010;
    #10 I_tb = 4'b1011;
    #10 I_tb = 4'b1100;
    #10 I_tb = 4'b1101;
    #10 I_tb = 4'b1110;
    #10 I_tb = 4'b1111;
    #10 $finish;
    end
initial
    begin
        $dumpfile("voter_if.vcd"); //指定vcd檔名為 voter_if.vcd
        $dumpvars(0,voter_if_tb);  //紀錄voter_if_tb 模組及所有訊號
    end


endmodule