module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q);


reg [3:0] counter;

initial begin
    counter <= 0;
end

always @(posedge clk) begin
    if(reset) begin
        counter <= 0;
    end
    else begin
        if(counter == 4'd15)begin
            counter <= 4'd0;
        end
        else begin
            counter <= counter + 1;
        end
    end
end

assign q = counter;

endmodule