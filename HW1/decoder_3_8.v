module decode_3_8(E , In , Out);
input E;                                            //宣告E為1bit的輸入埠
input [2:0] In;                                     //宣告In為3bit的輸入埠
output [7:0] Out;                                   //宣告Out為8bit的輸出埠
wire E1 , G1 , G2;                                  //宣告三條接線E1,G1,G2                        
not u1(E1 , In[2]);                                 //定義E1 = IN[2]的反向
and a1(G1 , E , In[2]);                             //定義G1 = E & In[2]
and a2(G2 , E , E1);                                //定義G2 = E & E1
decoder_2_4 block1(G1 , In[1 : 0] , Out[7 : 4]);    //使用decoder_2_4 控制線為G1 輸入為In[1:0] 輸出為Out[7:4]
decoder_2_4 block2(G2 , In[1 : 0] , Out[3 : 0]);    //使用decoder_2_4 控制線為G2 輸入為In[1:0] 輸出為Out[3:0]
endmodule
