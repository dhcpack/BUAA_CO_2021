
module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

    reg [7:0] temp_in;
	 reg [7:0] results;
    
    always @(posedge clk) begin
        temp_in <= in;
        results <= ~temp_in & in;
    end
	 
	 assign pedge = results;
    
endmodule
					