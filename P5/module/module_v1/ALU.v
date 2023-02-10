`include "constant.v"

module ALU (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [4:0] aluop,
    output reg [31:0] res
);

    initial begin
        res = 32'd0;
    end

    always @(*) begin
        case(aluop)
            `AaddB : begin
                res = a + b;
            end
				
            `AsubB : begin
                res = a - b;
            end
				
            `AorB : begin
                res = a | b;
            end
				
            `luiB : begin
                res = {b[15:0],16'b0};
            end
				
            `A : begin
                res = a;
            end
				
            `BsllA : begin
                res = b << a[4:0];
            end
				
            `AltB : begin
                res = ($signed(a) < $signed(b)) ? {31'd0,1'b1} : {32'b0};
            end
				
            default : begin
                res = 32'hffff_ffff;
            end
        endcase
    end


endmodule //ALU
