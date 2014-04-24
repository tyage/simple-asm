module Controller(
	input clock,
	input in,
	output [15:0] out,
	output [15:0] rf);

	// GND, VCC
	reg GND = 0;
	reg VCC = 1;
	reg P1Clock;
	
	// Memory
	reg [15:0] memoryAddress;
	reg [15:0] memoryWriteData;
	reg memoryWriteEnable;
	wire [15:0] memoryData;
	Memory (.address(memoryAddress), .data(memoryWriteData), .wren(memoryWriteEnable), .q(memoryData), .clock(clock));
	
	// InstructionRegister
	reg [15:0] IRWriteData;
	wire [15:0] IRData;
	InstructionRegister (.writeData(IRWriteData), .loadData(IRData), .clock(P1Clock));
	
	// ProgramCounter
	wire [15:0] PC;
	reg [15:0] PCLoad;
	ProgramCounter (.clk(P1Clock), .counter(PC), .load(PCLoad));

	//	ALU
	wire [3:0] ALUType = IRData[7:4];
	wire [15:0] ALUDataA = AR;
	wire [15:0] ALUDataB = BR;
	wire [3:0] ALUFlags;
	wire [15:0] ALUOut;
	wire S = ALUFlags[0];
	wire Z = ALUFlags[1];
	wire C = ALUFlags[2];
	wire V = ALUFlags[3];
	ALU (.S_ALU(ALUType), .DATA_A(ALUDataA), .DATA_B(ALUDataB), .FLAG_OUT(ALUFlags), .ALU_OUT(ALUOut));
	
	// other registers
	reg [15:0] registerFile [0:7];
	reg [15:0] BR;
	reg [15:0] AR;
	reg [15:0] DR;
	reg [15:0] MDR;
	reg [15:0] result;

	// PhaseCounter
	wire [4:0] phase;
	PhaseCounter (.clock(clock), .phase(phase));
	
	// DEBUG
	integer i;
	initial begin
		for (i = 0; i < 8; i = i + 1)
			registerFile[i] <= 16'b0000_0000_0000_0100;
		registerFile[1] <= 16'b0000_0000_0000_0100;
		registerFile[2] <= 16'b0000_0000_0000_0001;
	end

	always @ (posedge clock) begin
		// P1
		P1Clock = phase == 5'b00001;
		if (phase == 5'b00001) begin
			begin
				PCLoad <= GND;
			end

			// load memory
			begin
				memoryAddress <= PC;
				memoryWriteEnable <= GND;
			end
		
			// write IR
			begin
				IRWriteData <= memoryData;
			end
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
			if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
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

/*
			// load, store
			if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
				// P3
				begin
					ALUDataB <= BR;
					ALUDataA <= AR;
					ALUType <= 4'b0;
				end
				begin
					DR <= ALUOut;
				end
			end
		
			// load immidiate, branch
			if (IRData[15:14] == 2'b10) ;
*/
		end

		// P4
		if (phase == 5'b01000) begin
/*
			// load, store
			if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
				if (IRData[15:14] == 2'b00) begin
					// load
					// P4
					begin
						memoryAddress <= DR;
						memoryWriteEnable <= GND;
					end
					begin
						MDR <= memoryData;
					end
					
					// P5
					begin
						registerFile[IRData[13:11]] <= MDR;
					end
				end else begin
					// store
					// P4
					memoryAddress <= DR;
					memoryWriteData <= registerFile[AR];
					memoryWriteEnable <= VCC;
				end
			end
*/
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

/*
			// load, store
			if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
				if (IRData[15:14] == 2'b00) begin
					// P5
					begin
						registerFile[IRData[13:11]] <= MDR;
					end
				end
			end
*/
		end
	end
	
	assign out = PC;
	assign rf = registerFile[1];
endmodule