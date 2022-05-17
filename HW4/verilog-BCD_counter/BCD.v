module BCD(clk, reset);
input clk , reset;
output [3:0] Q1; // O Result
reg [3:0] Q1;

always@ (posedge clk or posedge reset)
 begin
 if (reset)
    Q1 = 0;
 else if (Q1 == 9)
    Q1 = 0;
 else
    Q1 = Q1 + 1;
 end
endmodule