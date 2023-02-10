module top_module (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z ); 
    integer i;
    reg [7:0] q;
    initial begin 
        q <= 0;
    end
    always @(posedge clk) begin
        if(enable) begin
            q <= {q[6:0], S};
        end
        
    end
    
    assign Z = q[{A,B,C}];

endmodule