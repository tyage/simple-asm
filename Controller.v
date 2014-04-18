module Controller(
	input clock,
	input in,
	output [15:0] out);

	// GND, VCC
	reg GND = 0;
	reg VCC = 1;
	
	// Memory
	reg [15:0] memoryAddress;
	reg [15:0] memoryData;
	reg memoryWriteEnable;
	Memory (.address(memoryAddress), .data(memoryData), .wren(memoryWriteEnable), .clock(clock));
	
	// InstructionRegister
	reg [15:0] IRWriteData;
	wire [15:0] IRData;
	InstructionRegister (.writeData(IRWriteData), .loadData(IRData), .clock(clock));
	
	// ProgramCounter
	wire [15:0] PC;
	reg [15:0] PCLoad;
	ProgramCounter (.clk(clock), .counter(PC), .load(PCLoad));
	
	//	ALU
	reg [3:0] ALUType;
	reg [15:0] ALUDataA;
	reg [15:0] ALUDataB;
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

	// P1
	initial begin
		PCLoad = GND;

		// load memory
		memoryAddress = PC;
		memoryWriteEnable = VCC;
		
		// write IR
		IRWriteData = memoryData;
	end

	// DEBUG
/*
	reg [15:0] IRData = 16'b11_001_000_0000_1111;
	integer i;
	initial begin
		for (i = 0; i < 8; i = i + 1)
			registerFile[i] = 16'b1111_1111_1111_1111;
		registerFile[0] = 16'b0000_0000_0000_1010;
		registerFile[1] = 16'b0000_0000_0000_0001;
	end
	
	result = registerFile[0];
*/

	always @ (posedge clock) begin
		// calc, input, output
		if (IRData[15:14] == 2'b11)
			// P2
			BR = registerFile[IRData[13:11]];
			AR = registerFile[IRData[10:8]];

			// P3
			ALUDataB = BR;
			ALUDataA = AR;
			ALUType = IRData[7:4];
			DR = ALUOut;
			
			case (IRData[7:4])
				// CMP (nothing to do)
				4'b0101: ;
				// OUT
				4'b1101:
					result = BR;
				// HALT
				4'b1111:
					$stop;
				// others
				default:
					// P5
					registerFile[IRData[10:8]] = DR;
			endcase

		// load, store
		if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
			// P2
			BR = IRData[7:0];
			AR = registerFile[IRData[10:8]];
			
			// P3
			ALUDataB = BR;
			ALUDataA = AR;
			ALUType = 4'b0;
			DR = ALUOut;

			if (IRData[15:14] == 2'b00) begin
				// load
				// P4
				memoryAddress = DR;
				MDR = memoryData;
				memoryWriteEnable = VCC;
				
				// P5
				registerFile[IRData[13:11]] = MDR;
			end else begin
				// store
				// P4
				memoryAddress = DR;
				memoryData = registerFile[AR];
				memoryWriteEnable = GND;
			end
		end
		
		// load immidiate, branch
		if (IRData[15:14] == 2'b10) ;
	end
	
	assign out = result;
endmodule