VERILOG = iverilog
TARGET = decoder.vcd
TEMP = decoder_3_8.vpp

$(TARGET) : decoder_3_8.vvp
	vvp decoder_3_8.vvp
decoder_3_8.vvp: decoder_3_8.v decoder_3_8_tb.v decoder_2_4.v
	$(VERILOG) -o decoder_3_8.vvp decoder_3_8_tb.v decoder_3_8.v decoder_2_4.v
clean:
	-del $(TARGET)
	-del $(TEMP)