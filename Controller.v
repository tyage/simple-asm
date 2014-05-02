module Controller(
	input clock,
	input in,
	output [15:0] outResult, outDebug,
	output [4:0] outPhase);

	// registers
	reg initialization = 1;
	reg [15:0] registerFile [0:7];
	reg [15:0] BR, AR, DR, MDR, result;

	integer i;
	initial begin
		for (i = 0; i < 8; i = i + 1) registerFile[i] <= 16'b0000_0000_0000_0000;
	end

	// ProgramCounter
	wire [15:0] PC;
	reg [15:0] PCLoad;
	// dont update PC at first
	reg PCNotUpdate = 1;
	reg PCReset = 0;
	ProgramCounter PCModule (.clk(phase == 5'b00001), .counter(PC),
		.load(PCLoad), .reset(PCReset), .notUpdate(PCNotUpdate));

	// Memory
	wire [15:0] memoryData;
	MemoryWrapper memoryModule (.phase(phase), .IRData(IRData), .writeData(registerFile[IRData[13:11]]),
		.PC(PC), .DR(DR), .clock(!clock), .memoryData(memoryData));

	// InstructionRegister
	wire [15:0] IRData;
	InstructionRegister IRModule (.writeData(memoryData), .loadData(IRData), .write(phase == 5'b00001), .clock(clock));

	//	ALU
	localparam IADD = 4'b0000;
	localparam ISUB = 4'b0001;
	localparam IAND = 4'b0010;
	localparam IOR = 4'b0011;
	localparam IXOR = 4'b0100;
	localparam ICMP = 4'b0101;
	localparam IMOV = 4'b0110;
	localparam ISLL = 4'b1000;
	localparam ISLR = 4'b1001;
	localparam ISRL = 4'b1010;
	localparam ISRA = 4'b1011;
	localparam IIDT = 4'b1100;
	localparam IOUT = 4'b1101;
	localparam IHALT = 4'b1111;
	wire [3:0] ALUFlags;
	wire [15:0] ALUOut;
	wire ALUFlagsWrite;
	reg S, Z, C, V;
	ALU ALUModule (
		.S_ALU(IRData[15:14] == 2'b11 ? IRData[7:4] : 4'b0),
		.DATA_A(AR),
		.DATA_B(BR),
		.FLAG_OUT(ALUFlags),
		.FLAG_WRITE(ALUFlagsWrite),
		.ALU_OUT(ALUOut)
	);

	// PhaseCounter
	wire [4:0] phase;
	reg phaseNotUpdate = 0;
	PhaseCounter phaseCounterModule (.clock(clock), .phase(phase), .notUpdate(phaseNotUpdate));

	always @ (posedge clock) begin
		// P1
		if (phase == 5'b00001) begin
			PCLoad <= 0;
			PCReset <= 0;
		end

		// P2
		if (phase == 5'b00010) begin
			// calc, input, output
			if (IRData[15:14] == 2'b11) begin
				AR <= registerFile[IRData[10:8]];
				if (IRData[7:4] == ISLL || IRData[7:4] == ISLR ||
					IRData[7:4] == ISRL || IRData[7:4] == ISRA) BR <= IRData[7:0];
				else if (IRData[7:4] == IIDT) BR <= in;
				else BR <= registerFile[IRData[13:11]];
			end

			// load, store
			else if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
				AR <= registerFile[IRData[10:8]];
				BR <= IRData[7:0];
			end

			// load immidiate, branch
			else if (IRData[15:14] == 2'b10) begin
				// branch
				if (IRData[13:11] == 3'b100 || // B
					(IRData[13:11] == 3'b111 &&
						(IRData[10:8] == 3'b000) || // BE
						(IRData[10:8] == 3'b001) || // BLT
						(IRData[10:8] == 3'b010) || // BLE
						(IRData[10:8] == 3'b011) // BNE
					)
				) begin
					AR <= PC;
					BR <= IRData[7:0];
				end
			end
		end

		// P3
		if (phase == 5'b00100) begin
			// calc, input, output
			if (IRData[15:14] == 2'b11) begin
				case (IRData[7:4])
					ICMP: DR <= ALUOut;
					IOUT: result <= AR;
					IHALT: PCNotUpdate <= 1;
					default: DR <= ALUOut;
				endcase
			end

			// load, store
			else if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) DR <= ALUOut;

			// load immidiate, branch
			else if (IRData[15:14] == 2'b10) DR <= ALUOut;
		end

		// P4
		if (phase == 5'b01000) begin
			// load
			if (IRData[15:14] == 2'b00) MDR <= memoryData;
		end

		// P5
		if (phase == 5'b10000) begin
			if (ALUFlagsWrite) begin
				S <= ALUFlags[0];
				Z <= ALUFlags[1];
				C <= ALUFlags[2];
				V <= ALUFlags[3];
			end

			// initialization finished
			if (initialization) begin
				initialization <= 0;
				PCNotUpdate <= 0;
				PCReset <= 1;
			end

			// calc, input, output
			if (IRData[15:14] == 2'b11)
				case (IRData[7:4])
					ICMP: ;
					IOUT: ;
					IHALT: ;
					default: registerFile[IRData[10:8]] <= DR;
				endcase

			// load (ignore if PC == 0)
			else if (IRData[15:14] == 2'b00 && !initialization) registerFile[IRData[13:11]] <= MDR;

			// load immidiate, branch
			else if (IRData[15:14] == 2'b10) begin
				// load immidiate
				if (IRData[13:11] == 3'b000) registerFile[IRData[10:8]] <= IRData[7:0];
				// branch
				else if (IRData[13:11] == 3'b100 || // B
					(IRData[13:11] == 3'b111 &&
						(IRData[10:8] == 3'b000 && Z) || // BE
						(IRData[10:8] == 3'b001 && S ^ V) || // BLT
						(IRData[10:8] == 3'b010 && (Z || (S ^ V))) || // BLE
						(IRData[10:8] == 3'b011 && !Z) // BNE
					)
				) begin
					PCLoad <= DR;
				end
			end
		end
	end

	assign outResult = result;
	assign outDebug = IRData;
	assign outPhase = phase;
endmodule