module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q); 
    
	 initial begin
			q <= 0;
	 end
	 integer i;    
    always @(posedge clk or posedge areset) begin
        if(areset) begin
            q <= 0;
        end
        else if(load) begin
            q <= data;
        end
        else if(ena) begin

            for(i=0; i<=2; i=i+1) begin
                q[i] <= q[i+1];
            end
            q[3] <= 0;
        end
    end
    

endmodule