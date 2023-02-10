module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);

reg [3:0] ones;
reg [3:0] tens;
reg [3:0] hundreds;
reg [3:0] thousands;
reg add1;
reg add2;
reg add3;

initial begin
    ones <= 0;
    tens <= 0;
    hundreds <= 0;
    thousands <= 0;
    add1 <= 0;
	 add2 <= 0;
	 add3 <= 0;
end
always @(posedge clk) begin
    if(reset)begin
        ones <= 0;
        tens <= 0;
        hundreds <= 0;
        thousands <= 0;
        add1 <= 0;
		  add2 <= 0;
		  add3 <= 0;
    end
    else begin
        if(ones == 4'd9) begin
            add1 <= 1;
            if(tens == 4'd9)begin
                add2 <= 1;
                if(hundreds == 4'd9)begin
                    add3 <= 1;
                    thousands <= thousands + 1;
                    hundreds <= 4'd0;
                end
                else begin
                    hundreds <= hundreds + 1;
                    add3 <= 0;
                end
                tens <= 4'd0;
            end
            else begin
                tens <= tens + 1;
                add2 <= 0;
            end
            ones <= 4'd0;
        end
        else begin
            ones <= ones + 1;
            add1 <= 0;
        end
    end
end

assign q = {thousands,hundreds,tens,ones};
assign ena = {add3, add2, add1};
endmodule