module InstructionRegister(
   input         clock,
   input [0:15]  writeData,
	output [0:15] loadData);

   reg [15:0]    out = 16'b0;

   always @ (posedge clock) begin
	   out = writeData;
   end

   assign loadData = out;
endmodule