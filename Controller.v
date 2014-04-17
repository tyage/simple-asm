module Controller(
	input clock,
	input in,
	output out);

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
	reg [15:0] IRData;
	reg [15:0] BR;
	reg [15:0] AR;
	reg [3:0] flags;
	reg [15:0] ALUOut;
	reg [15:0] DR;
	InstructionRegister (.loadData(IRData));

   always @ (posedge clock) begin
		// op1
		if (IRData[15:14] == 2'b11)
			// P2
			BR = registerFile[IRData[13:11]];
			AR = registerFile[IRData[10:8]];
			
			// P3
			ALU (.S_ALU(IRData[7:4]), .DATA_A(AR), .DATA_B(BR), .FLAG_OUT(flags), .ALU_OUT(ALUOut));
			S = flags[0];
			Z = flags[1];
			C = flags[2];
			V = flags[3];
			DR = ALUOut;
			
			case (IRData[7:4])
				4'b1101: ;
				4'b1101: ;
				4'b1101: ;
			endcase
			if ( == 4'b0101)
				// CMP
			else if (IRData[7:4] == )
				// OUT
				out = ALUOut;
			else if (IRData[7:4] == 4'b1111)
				// HALT
			else 
				// P5
				registerFile[IRData[10:8]] = ALUOut;
			
	end

endmodule