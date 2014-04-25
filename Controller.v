module Controller(
	input clock,
	input in,
	output [15:0] out,
	output [15:0] rf);

	// GND, VCC
	reg GND = 0;
	reg VCC = 1;

	// registers
	reg [15:0] registerFile [0:7];
	reg [15:0] BR;
	reg [15:0] AR;
	reg [15:0] DR;
	reg [15:0] MDR;
	reg [15:0] result;

	// DEBUG
	integer i;
	initial begin
		for (i = 0; i < 8; i = i + 1)
			registerFile[i] <= 16'b0000_0000_0000_0100;
		registerFile[1] <= 16'b0000_0000_0000_0100;
		registerFile[2] <= 16'b0000_0000_0000_0001;
	end

	// Memory
	function [15:0] memoryAddress(
		input [4:0] phase,
		input [15:0] IRData);
		case (phase)
			// Phase1
			5'b00001: memoryAddress = PC;
			// Phase4
			5'b01000: begin
				// load, store
				if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) memoryAddress = DR;
			end
		endcase
	endfunction
	function [15:0] memoryWriteData(
		input [4:0] phase,
		input [15:0] IRData, data);
		// Phase4 and store
		if (phase == 5'b01000 && IRData[15:14] == 2'b01) memoryWriteData = data;
	endfunction
	function [15:0] memoryWriteEnable(
		input [4:0] phase,
		input [15:0] IRData);
		// Phase4 and store
		if (phase == 5'b01000 && IRData[15:14] == 2'b01) memoryWriteEnable = VCC;
		else memoryWriteEnable = GND;
	endfunction
	wire [15:0] memoryData;
	Memory (
		.address(memoryAddress(phase, IRData)),
		.data(memoryWriteData(phase, IRData, registerFile[AR])),
		.wren(memoryWriteEnable(phase, IRData)),
		.q(memoryData),
		.clock(clock)
	);

	// InstructionRegister
	wire [15:0] IRData;
	InstructionRegister (.writeData(memoryData), .loadData(IRData), .write(phase == 5'b00001), .clock(clock));

	// ProgramCounter
	wire [15:0] PC;
	reg [15:0] PCLoad;
	ProgramCounter (.clk(phase == 5'b00001), .counter(PC), .load(PCLoad));

	//	ALU
	function [3:0] ALUType(input [3:0] format);
		case (format)
			2'b11: ALUType = IRData[7:4];
			2'b00: ALUType = 4'b0;
			2'b01: ALUType = 4'b0;
		endcase
	endfunction
	function [15:0] ALUDataA(input [3:0] format);
		case (format)
			2'b11: ALUDataA = AR;
			2'b00: ALUDataA = AR;
			2'b01: ALUDataA = AR;
		endcase
	endfunction
	function [15:0] ALUDataB(input [3:0] format);
		case (format)
			2'b11: ALUDataB = BR;
			2'b00: ALUDataB = BR;
			2'b01: ALUDataB = BR;
		endcase
	endfunction
	wire [3:0] ALUFlags;
	wire [15:0] ALUOut;
	wire S = ALUFlags[0];
	wire Z = ALUFlags[1];
	wire C = ALUFlags[2];
	wire V = ALUFlags[3];
	ALU (.S_ALU(ALUType(IRData[15:14])), .DATA_A(ALUDataA(IRData[15:14])), .DATA_B(ALUDataB(IRData[15:14])), .FLAG_OUT(ALUFlags), .ALU_OUT(ALUOut));

	// PhaseCounter
	wire [4:0] phase;
	PhaseCounter (.clock(clock), .phase(phase));

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
					4'b0101:
						DR <= ALUOut;
					// OUT
					4'b1101:
						result <= BR;
					// HALT
					4'b1111:
						$stop;
					// others
					default:
						DR <= ALUOut;
				endcase
			end

			// load, store
			else if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
				// P3
				DR <= ALUOut;
			end
		
			// load immidiate, branch
			else if (IRData[15:14] == 2'b10) ;
		end

		// P4
		if (phase == 5'b01000) begin
			// load
			if (IRData[15:14] == 2'b00) begin
				MDR <= memoryData;
			end
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
						default: begin
							// P5
							registerFile[IRData[10:8]] <= DR;
						end
					endcase
				end
			end

			// load
			else if (IRData[15:14] == 2'b00) begin
				registerFile[IRData[13:11]] <= MDR;
			end
		end
	end

	assign out = registerFile[1];
	assign rf = phase;
endmodule