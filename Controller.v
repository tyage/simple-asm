module Controller(
	input clock,
	input in,
	output [15:0] outResult, outDebug,
	output [4:0] outPhase);

	// registers
	reg [15:0] registerFile [0:7];
	reg [15:0] BR, AR, DR, MDR, result;

	integer i;
	initial begin
		for (i = 0; i < 8; i = i + 1) registerFile[i] <= 16'b0000_0000_0000_0000;
	end

	// Memory
	wire [15:0] memoryData;
	memoryWrapper memoryModule (.phase(phase), .IRData(IRData), .writeData(registerFile[IRData[13:11]]), .PC(PC), .DR(DR), .clock(!clock), .memoryData(memoryData));

	// InstructionRegister
	wire [15:0] IRData;
	InstructionRegister IRModule (.writeData(memoryData), .loadData(IRData), .write(phase == 5'b00001), .clock(clock));

	// ProgramCounter
	wire [15:0] PC;
	reg [15:0] PCLoad;
	reg PCNotUpdate = 0;
	ProgramCounter PCModule (.clk(phase == 5'b00001), .counter(PC), .load(PCLoad), .notUpdate(PCNotUpdate));

	//	ALU
	wire [3:0] ALUFlags;
	wire [15:0] ALUOut;
	wire S = ALUFlags[0];
	wire Z = ALUFlags[1];
	// C is unused
	// wire C = ALUFlags[2];
	wire V = ALUFlags[3];
	ALUWrapper ALUModule (.AR(AR), .BR(BR), .IRData(IRData), .flags(ALUFlags), .out(ALUOut));

	// PhaseCounter
	wire [4:0] phase;
	PhaseCounter phaseCounterModule (.clock(clock), .phase(phase));

	always @ (posedge clock) begin
		// P1
		if (phase == 5'b00000) begin
			PCLoad = 0;
		end

		// P2
		if (phase == 5'b00010) begin
			// calc, input, output
			if (IRData[15:14] == 2'b11) begin
				// P2
				BR <= registerFile[IRData[13:11]];
				AR <= registerFile[IRData[10:8]];
			end
			// load, store
			else if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
				BR <= IRData[7:0];
				AR <= registerFile[IRData[10:8]];
			end
		end

		// P3
		if (phase == 5'b00100) begin
			// calc, input, output
			if (IRData[15:14] == 2'b11) begin
				case (IRData[7:4])
					// CMP
					4'b0101: DR = ALUOut;
					// OUT
					4'b1101: result = BR;
					// HALT
					4'b1111: PCNotUpdate = 1;
					// others
					default: DR = ALUOut;
				endcase
			end

			// load, store
			else if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) DR = ALUOut;

			// load immidiate, branch
			else if (IRData[15:14] == 2'b10) ;
		end

		// P4
		if (phase == 5'b01000) begin
			// load
			if (IRData[15:14] == 2'b00) MDR = memoryData;
		end

		// P5
		if (phase == 5'b10000) begin
			// calc, input, output
			if (IRData[15:14] == 2'b11)
				case (IRData[7:4])
					// CMP
					4'b0101: ;
					// OUT
					4'b1101: ;
					// HALT
					4'b1111: ;
					// others
					default: registerFile[IRData[10:8]] = DR;
				endcase

			// load
			else if (IRData[15:14] == 2'b00) registerFile[IRData[13:11]] = MDR;

			// load immidiate, branch
			else if (IRData[15:14] == 2'b10)
				case (IRData[13:11])
					// load immidiate
					3'b000: registerFile[IRData[10:8]] = IRData[7:0];
					// branch
					3'b100: PCLoad = PC + IRData[7:0];
					3'b111:
						case (IRData[10:8])
							3'b000:
								if (Z) PCLoad = PC + IRData[7:0];
							3'b001:
								if (S ^ V) PCLoad = PC + IRData[7:0];
							3'b010:
								if (Z || (S ^ V)) PCLoad = PC + IRData[7:0];
							3'b011:
								if (!Z) PCLoad = PC + IRData[7:0];
						endcase
				endcase
		end
	end

	assign outResult = result;
	assign outDebug = registerFile[1];
	assign outPhase = phase;
endmodule