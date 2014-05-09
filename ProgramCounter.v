module ProgramCounter (
   input         load, reset, notUpdate, clk,
   input [15:0]  address,
   output [15:0] counter);
   
   reg [15:0]    count = 16'b0;
   
   always @ (posedge clk or posedge load or posedge reset) begin
      if (reset)
         count = 16'b0;
      else if (load)
         count = address + 16'b1;
      else if (!notUpdate)
         count = count + 16'b1;
   end
   
   assign counter = count;
endmodule
