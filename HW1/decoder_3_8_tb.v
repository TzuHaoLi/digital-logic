module decoder_3_8_tb;
reg E_tb;
reg [2:0] In_tb;
wire [7:0] Out_tb;
decode_3_8 decoder_1(.E(E_tb), .In(In_tb), .Out(Out_tb));

initial begin
    #0 E_tb = 0; In_tb = 3'b000;
    #10 E_tb = 1; In_tb = 3'b000;
    #10 E_tb = 1; In_tb = 3'b001;
    #10 E_tb = 1; In_tb = 3'b010;
    #10 E_tb = 1; In_tb = 3'b011;
    #10 E_tb = 1; In_tb = 3'b100;
    #10 E_tb = 1; In_tb = 3'b101;
    #10 E_tb = 1; In_tb = 3'b110;
    #10 E_tb = 1; In_tb = 3'b111;
    #10 $finish;
    end
initial
    begin
        $dumpfile("decoder.vcd");
        $dumpvars(0, decoder_1);
    end
endmodule