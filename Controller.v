module Controller(
	input clock,
	input in,
	output [15:0] out);

	// P1
	wire [15:0] counter;
	wire [15:0] data;
   ProgramCounter (.clk(clock), .counter(counter));
	Memory (.address(counter), .data(data));
	InstructionRegister (.writeData(data));
	
	// P2 ~ P5
	reg S;
	reg Z;
	reg C;
	reg V;
	
	reg [15:0] registerFile [0:7];

	wire [15:0] IRData;
	reg [15:0] BR;
	reg [15:0] AR;
	wire [15:0] ALUOut;
	reg [15:0] DR;
	wire [3:0] flags;
	InstructionRegister (.loadData(IRData), .clock(clock));

	// FIX for debug
/*
	reg [15:0] IRData = 16'b11_001_000_0000_1111;
	integer i;
	initial begin
		for (i = 0; i < 8; i = i + 1)
			registerFile[i] = 16'b1111_1111_1111_1111;
		registerFile[0] = 16'b0000_0000_0010_0000;
		registerFile[1] = 16'b0000_0000_0010_0100;
	end
	
	assign out = registerFile[0];
*/
	
	ALU (.S_ALU(IRData[7:4]), .DATA_A(AR), .DATA_B(BR), .FLAG_OUT(flags), .ALU_OUT(ALUOut));

   always @ (posedge clock) begin
		// op1
		if (IRData[15:14] == 2'b11)
			// P2
			BR = registerFile[IRData[13:11]];
			AR = registerFile[IRData[10:8]];
			
			// P3
			S = flags[0];
			Z = flags[1];
			C = flags[2];
			V = flags[3];
			DR = ALUOut;
			
			case (IRData[7:4])
				// CMP
				4'b0101: ;
				// OUT
				4'b1101: ;
				// HALT
				4'b1111: ;
				// others
				default:
					// P5
					registerFile[IRData[10:8]] = ALUOut;
			endcase
	end

endmodule