module PhaseCounter(
   input clock, reset, notUpdate,
   output [3:0] phase);

   reg [2:0] counter;
   reg [3:0] decode;

   initial begin
      counter = 3'b0;
      decode = 4'b0;
   end

   always @ (posedge clock) begin
      if (reset)
         counter = 3'b0;
      else if (!notUpdate)
         counter = (counter + 3'b1) % 3'd4;

      case (counter)
         3'b000 : decode = 4'b0001;
         3'b001 : decode = 4'b0010;
         3'b010 : decode = 4'b0100;
         3'b011 : decode = 4'b1000;
         default : decode = 4'b0000;
      endcase
   end

   assign phase = decode;
endmodule