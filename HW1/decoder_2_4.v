module decoder_2_4(E , In , Out);
input E;                            //宣告E為1bit的輸入埠
input [1:0] In;                     //宣告In為2bit的輸入埠
output [3:0]Out;                    //宣告Out為4bit的輸出埠
wire [3:0] Out;                     //宣告腳位資料型態  
assign Out = E ? 1'b1 << In : 4'h0; //如果E=1,Out = 0001 並左移In個位元
endmodule                           //如果E=0,不運作 Out全為0
