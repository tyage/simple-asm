module ALUWrapper (
	input [15:0] AR, BR, IRData,
	output [3:0] flags,
	output [15:0] out);

	function [3:0] ALUType(input [1:0] instruction);
		ALUType = 0;
		case (instruction)
			2'b11: ALUType = IRData[7:4];
			2'b00: ALUType = 4'b0;
			2'b01: ALUType = 4'b0;
			default: ;
		endcase
	endfunction
	function [15:0] ALUDataA(input [1:0] instruction);
		ALUDataA = 0;
		case (instruction)
			2'b11: ALUDataA = AR;
			2'b00: ALUDataA = AR;
			2'b01: ALUDataA = AR;
			default: ;
		endcase
	endfunction
	function [15:0] ALUDataB(input [1:0] instruction);
		ALUDataB = 0;
		case (instruction)
			2'b11: ALUDataB = BR;
			2'b00: ALUDataB = BR;
			2'b01: ALUDataB = BR;
			default: ;
		endcase
	endfunction
	wire [1:0] instruction = IRData[15:14];
	ALU ALUModule (.S_ALU(ALUType(instruction)), .DATA_A(ALUDataA(instruction)), .DATA_B(ALUDataB(instruction)), .FLAG_OUT(flags), .ALU_OUT(out));
endmodule