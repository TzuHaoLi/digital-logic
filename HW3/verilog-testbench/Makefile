VERILOG = iverilog
TARGET = voter_if.vcd
TEMP = temp.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): voter_if_tb.v voter_if.v
	$(VERILOG) -o $(TEMP) voter_if_tb.v  voter_if.v
clean:
	-del $(TARGET)
	-del $(TEMP)