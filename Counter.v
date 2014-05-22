module Counter(
   input clock, notUpdate,
   output [31:0] out);

   reg [31:0] counter;

   initial begin
      counter = 32'b0;
   end

   always @ (posedge clock) begin
      if (!notUpdate)
         counter = counter + 32'b1;
   end

   assign out = counter;
endmodule