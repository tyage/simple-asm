module ALUWrapper (
	input [15:0] AR, BR, IRData,
	output [3:0] flags,
	output [15:0] out);

	function [3:0] ALUType(input [3:0] instruction);
		case (instruction)
			2'b11: ALUType = IRData[7:4];
			2'b00: ALUType = 4'b0;
			2'b01: ALUType = 4'b0;
		endcase
	endfunction
	function [15:0] ALUDataA(input [3:0] instruction);
		case (instruction)
			2'b11: ALUDataA = AR;
			2'b00: ALUDataA = AR;
			2'b01: ALUDataA = AR;
		endcase
	endfunction
	function [15:0] ALUDataB(input [3:0] instruction);
		case (instruction)
			2'b11: ALUDataB = BR;
			2'b00: ALUDataB = BR;
			2'b01: ALUDataB = BR;
		endcase
	endfunction
	wire instruction = IRData[15:14];
	ALU (.S_ALU(ALUType(instruction)), .DATA_A(ALUDataA(instruction)), .DATA_B(ALUDataB(instruction)), .FLAG_OUT(flags), .ALU_OUT(out));
endmodule