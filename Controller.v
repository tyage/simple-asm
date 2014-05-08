module Controller(
	input clock, in, exec, reset,
	output [15:0] outResult, outDebug,
	output [4:0] outPhase);

	// registers
	reg running = 0;
	reg [15:0] registerFile [0:7];
	reg [15:0] BR, AR, DR, MDR, result, stopAfterCurrentPhase;

	integer i;
	initial begin
		for (i = 0; i < 8; i = i + 1) registerFile[i] <= 16'b0000_0000_0000_0000;
	end

	// ProgramCounter
	wire [15:0] PC;
	reg [15:0] PCLoad;
	reg PCReset;
	// dont update PC at first
	reg PCNotUpdate = 1;
	ProgramCounter PCModule (.clk(phase == 5'b00001), .counter(PC),
		.load(PCLoad), .reset(PCReset), .notUpdate(PCNotUpdate));

	// InstructionMemory
	wire [15:0] IMData;
	InstructionMemory IMModule (
		.address(PC),
		.q(IMData),
		.clock(!clock)
	);

	// DataMemory
	wire [15:0] DMData;
	// phase4 and load, store
	wire [15:0] DMAddress = (phase === 5'b01000 && (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01)) ? DR : 0;
	reg DMWren = 0;
	DataMemory DMModule (
		.address(DMAddress),
		.data(registerFile[IRData[13:11]]),
		.wren(DMWren),
		.q(DMData),
		.clock(!clock)
	);

	// InstructionRegister
	wire [15:0] IRData;
	InstructionRegister IRModule (.writeData(IMData), .loadData(IRData), .write(phase == 5'b00001), .clock(clock));

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
	reg phaseReset = 0;
	reg phaseNotUpdate = 1;
	PhaseCounter phaseCounterModule (.clock(clock), .phase(phase), .reset(phaseReset), .notUpdate(phaseNotUpdate));

	always @ (posedge clock) begin
		phaseReset <= 0;
		PCLoad <= 0;
		PCReset <= 0;
		// exec
		if (exec) begin
			if (running) begin
				stopAfterCurrentPhase <= 1;
			end else begin
				phaseNotUpdate <= 0;
				PCNotUpdate <= 0;
			end
			running <= !running;
		// reset
		end else if (reset) begin
			for (i = 0; i < 8; i = i + 1) registerFile[i] <= 16'b0000_0000_0000_0000;
			phaseReset <= 1;
			PCReset <= 1;
			BR <= 0;
			AR <= 0;
			DR <= 0;
			MDR <= 0;
			result <= 0;
			S <= 0;
			Z <= 0;
			C <= 0;
			V <= 0;
			stopAfterCurrentPhase <= 0;
			PCNotUpdate <= 0;
			phaseNotUpdate <= 0;
			// TODO: reset DM
		end else if (running || stopAfterCurrentPhase) begin
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
						IHALT: begin
							PCNotUpdate <= 1;
							running <= 0;
						end
						default: DR <= ALUOut;
					endcase
				end

				// load, store
				else if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
					DR <= ALUOut;
					// store
					if (IRData[15:14] == 2'b01) DMWren = 1;
				end

				// load immidiate, branch
				else if (IRData[15:14] == 2'b10) DR <= ALUOut;
			end

			// P4
			if (phase == 5'b01000) begin
				// load
				if (IRData[15:14] == 2'b00) MDR <= DMData;
				// store
				else if (IRData[15:14] == 2'b01) DMWren = 0;
			end

			// P5
			if (phase == 5'b10000) begin
				if (stopAfterCurrentPhase) begin
					stopAfterCurrentPhase <= 0;
					PCNotUpdate <= 1;
					phaseNotUpdate <= 1;
				end

				if (ALUFlagsWrite) begin
					S <= ALUFlags[0];
					Z <= ALUFlags[1];
					C <= ALUFlags[2];
					V <= ALUFlags[3];
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
				else if (IRData[15:14] == 2'b00) registerFile[IRData[13:11]] <= MDR;

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
	end

	assign outResult = result;
	assign outDebug = IRData;
	assign outPhase = phase;
endmodule