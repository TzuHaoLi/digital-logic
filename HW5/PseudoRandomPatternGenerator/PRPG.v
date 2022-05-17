module PRPG (Qout,clk,rst);
    input clk;
    input rst;
    output [2:0]Qout;
    reg [2:0]Qout;

    always@(posedge clk)begin
        if(rst)begin
            Qout <= 3'b110;
        end
        else begin
            Qout[0] <= Qout[2] ^ Qout[0];
            Qout[1] <= Qout[0];
            Qout[2] <= Qout[1];
        end
    end
endmodule

