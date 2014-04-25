module memoryWrapper (
	input [4:0] phase,
	input [15:0] IRData, writeData,
	input PC, DR, clock,
	output [15:0] memoryData);

	reg GND = 0;
	reg VCC = 1;

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

	Memory memoryModule (
		.address(memoryAddress(phase, IRData)),
		.data(memoryWriteData(phase, IRData, writeData)),
		.wren(memoryWriteEnable(phase, IRData)),
		.q(memoryData),
		.clock(!clock)
	);
endmodule