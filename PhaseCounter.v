module PhaseCounter(
   input clock, reset, notUpdate,
   output [4:0] phase);

   reg [2:0] counter;
   reg [4:0] decode;

   initial begin
      counter = 3'b0;
      decode = 5'b0;
   end

   always @ (posedge clock) begin
      if (reset)
         counter = 3'b0;
      else if (!notUpdate)
         counter = (counter + 3'b1) % 3'd4;

      case (counter)
         3'b000 : decode = 5'b00001;
         3'b001 : decode = 5'b00010;
         3'b010 : decode = 5'b00100;
         3'b011 : decode = 5'b01000;
         default : decode = 5'b00000;
      endcase
   end

   assign phase = decode;
endmodule