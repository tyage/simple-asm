module Controller(
	input clock,
	input in,
	output [15:0] out, out2,
	output [4:0] outPhase);

	// GND, VCC
	reg GND = 0;
	reg VCC = 1;

	// registers
	reg [15:0] registerFile [0:7];
	reg [15:0] BR, AR, DR, MDR, result;

	integer i;
	initial begin
		for (i = 0; i < 8; i = i + 1) registerFile[i] <= 16'b0000_0000_0000_0000;
		registerFile[0] = 16'b0000_0000_0000_0100;
		registerFile[1] = 16'b0000_0000_0000_0110;
	end

	// Memory
	wire [15:0] memoryData;
	memoryWrapper (.phase(phase), .IRData(IRData), .writeData(registerFile[AR]), .PC(PC), .DR(DR), .clock(!clock), .memoryData(memoryData));

	// InstructionRegister
	wire [15:0] IRData;
	InstructionRegister IRModule (.writeData(memoryData), .loadData(IRData), .write(phase == 5'b00001), .clock(clock));

	// ProgramCounter
	wire [15:0] PC;
	reg [15:0] PCLoad;
	ProgramCounter PCModule (.clk(phase == 5'b00001), .counter(PC), .load(PCLoad), .notUpdate(GND));

	//	ALU
	wire [3:0] ALUFlags;
	wire [15:0] ALUOut;
	wire S = ALUFlags[0];
	wire Z = ALUFlags[1];
	wire C = ALUFlags[2];
	wire V = ALUFlags[3];
	ALUWrapper (.AR(AR), .BR(BR), .IRData(IRData), .flags(ALUFlags), .out(ALUOut));

	// PhaseCounter
	wire [4:0] phase;
	PhaseCounter phaseCounterModule (.clock(clock), .phase(phase));

	always @ (posedge clock) begin
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
					4'b1111:
						$stop;
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
			if (IRData[15:14] == 2'b11) begin
				begin
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
				end
			end

			// load
			else if (IRData[15:14] == 2'b00) registerFile[IRData[13:11]] = MDR;
		end
	end

	assign out = IRData;
	assign out2 = registerFile[1];
	assign outPhase = phase;
endmodule