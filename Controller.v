module Controller(
	input clock, exec, reset,
	input [3:0] in,
	output [15:0] outResult, outDebug,
	output [3:0] outPhase);

	// registers
	reg running = 0;
	reg [15:0] registerFile [0:7];
	reg [15:0] BR, AR, DR, result, stopAfterCurrentPhase;

	integer i;
	initial begin
		for (i = 0; i < 8; i = i + 1) registerFile[i] <= 16'b0000_0000_0000_0000;
	end

	// PhaseCounter
	wire P1 = phase == 4'b0001;
	wire P2 = phase == 4'b0010;
	wire P3 = phase == 4'b0100;
	wire P4 = phase == 4'b1000;

	// ProgramCounter
	wire [15:0] PC;
	// dont update PC at first
	reg PCReset = 0, PCNotUpdate = 1, PCLoad = 0;
	ProgramCounter PCModule (.clock(P1), .counter(PC),
		.load(PCLoad), .address(DR), .reset(PCReset), .notUpdate(PCNotUpdate));

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
	wire [15:0] DMAddress = (P4 && (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01)) ? DR : 16'b0;
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
	InstructionRegister IRModule (.writeData(IMData), .loadData(IRData), .write(P1), .clock(clock));

	// ALU
	localparam IADD = 4'b0000;
	localparam ISUB = 4'b0001;
	localparam IAND = 4'b0010;
	localparam IOR = 4'b0011;
	localparam IXOR = 4'b0100;
	localparam ICMP = 4'b0101;
	localparam IMOV = 4'b0110;
	localparam IMUL = 4'b0111;
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
	wire [3:0] phase;
	reg phaseReset = 0;
	reg phaseNotUpdate = 1;
	PhaseCounter phaseCounterModule (.clock(clock), .phase(phase), .reset(phaseReset), .notUpdate(phaseNotUpdate));

	// Counter
	wire [31:0] counter;
	Counter counterModule (.clock(clock), .notUpdate(!running), .out(counter));

	always @ (posedge clock) begin
		phaseReset <= reset;
		PCReset <= reset;
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
			BR <= 0;
			AR <= 0;
			DR <= 0;
			result <= 0;
			S <= 0;
			Z <= 0;
			C <= 0;
			V <= 0;
			stopAfterCurrentPhase <= 0;
			PCLoad <= 0;
			PCNotUpdate <= 0;
			phaseNotUpdate <= 0;
		end else if (running || stopAfterCurrentPhase) begin
			if (P1) begin
				PCLoad <= 0;

				// calc, input, output
				if (IRData[15:14] == 2'b11)
					case (IRData[7:4])
						ICMP: ;
						IOUT: ;
						IHALT: ;
						default: registerFile[IRData[10:8]] <= DR;
					endcase
			end
			else if (P2) begin
				// calc, input, output
				if (IRData[15:14] == 2'b11) begin
					AR <= registerFile[IRData[10:8]];
					if (IRData[7:4] == ISLL || IRData[7:4] == ISLR ||
						IRData[7:4] == ISRL || IRData[7:4] == ISRA) BR <= {{8{IRData[7]}}, IRData[7:0]};
					else if (IRData[7:4] == IIDT) BR <= in;
					else BR <= registerFile[IRData[13:11]];
				end

				// load, store
				else if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
					AR <= registerFile[IRData[10:8]];
					BR <= {{8{IRData[7]}}, IRData[7:0]};
				end

				// load immidiate, branch
				else if (IRData[15:14] == 2'b10) begin
					// addi
					if (IRData[13:11] == 3'b001) begin
						AR <= registerFile[IRData[10:8]];
						BR <= {{8{IRData[7]}}, IRData[7:0]};
					end
					// branch
					else if (IRData[13:11] == 3'b100 || // B
						(IRData[13:11] == 3'b111 &&
							(IRData[10:8] == 3'b000) || // BE
							(IRData[10:8] == 3'b001) || // BLT
							(IRData[10:8] == 3'b010) || // BLE
							(IRData[10:8] == 3'b011) // BNE
						)
					) begin
						AR <= PC;
						BR <= {{8{IRData[7]}}, IRData[7:0]};
					end
				end
			end

			else if (P3) begin
				// calc, input, output
				if (IRData[15:14] == 2'b11) begin
					case (IRData[7:4])
						ICMP: DR <= ALUOut;
						IOUT: result <= AR;
						IHALT: begin
							PCNotUpdate <= 1;
							running <= 0;
							phaseNotUpdate <= 1;
						end
						default: DR <= ALUOut;
					endcase
				end

				// load, store
				else if (IRData[15:14] == 2'b00 || IRData[15:14] == 2'b01) begin
					DR <= ALUOut;
					// store
					if (IRData[15:14] == 2'b01) DMWren <= 1;
				end

				// load immidiate, branch
				else if (IRData[15:14] == 2'b10) DR <= ALUOut;
			end

			else if (P4) begin
				if (stopAfterCurrentPhase) begin
					stopAfterCurrentPhase <= 0;
					PCNotUpdate <= 1;
					phaseNotUpdate <= 1;
				end

				if (ALUFlagsWrite) begin
					S <= ALUFlags[3];
					Z <= ALUFlags[2];
					C <= ALUFlags[1];
					V <= ALUFlags[0];
				end

				// load
				if (IRData[15:14] == 2'b00) registerFile[IRData[13:11]] <= DMData;
				// store
				else if (IRData[15:14] == 2'b01) DMWren <= 0;
				// load immidiate, branch
				else if (IRData[15:14] == 2'b10) begin
					// load immidiate
					if (IRData[13:11] == 3'b000) registerFile[IRData[10:8]] <= {{8{IRData[7]}}, IRData[7:0]};
					// addi
					else if (IRData[13:11] == 3'b001) registerFile[IRData[10:8]] <= DR;
					else if (IRData[13:11] == 3'b100 || // B
							(IRData[13:11] == 3'b111 &&
								(IRData[10:8] == 3'b000 && Z) || // BE
								(IRData[10:8] == 3'b001 && S ^ V) || // BLT
								(IRData[10:8] == 3'b010 && (Z || (S ^ V))) || // BLE
								(IRData[10:8] == 3'b011 && !Z) // BNE
							)
						) PCLoad <= 1;
				end
			end
		end
	end

	assign outResult = result;
	assign outDebug = IRData;
//	assign outResult = counter[31:16];
//	assign outDebug = counter[15:0];
	assign outPhase = phase;
endmodule