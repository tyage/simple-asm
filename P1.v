module P1(
	input clk);

	wire [15:0] counter;
	wire [15:0] data;
   ProgramCounter (.clk(clk), .counter(counter));
	Memory (.address(counter), .data(data));
	InstructionRegister(.writeData(data));
endmodule