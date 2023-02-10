`timescale 1ns/1ps

`define  None    0
`define  AaddB   0
`define  AsubB   1
`define  AorB    2
`define  luiB    3
`define  A       4
`define  BsllA   5
`define  AltB    6

module ALU (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [4:0] aluop,
    output wire aequb,
	output wire agtb,
    output reg [31:0] res
);

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


    assign aequb = (a == b) ? 1'd1 : 1'd0;
	 assign agtb = ($signed(a) > $signed(b)) ? 1'd1 : 1'd0;

endmodule //ALU

/*    assign res = (aluop == 5'd0) ? (a + b) :  // aluop = 0  a+b
                (aluop == 5'd1) ? (a - b) :   // aluop = 1   a-b
                (aluop == 5'd2) ? (a | b) :   // aluop = 2   a|b
                (aluop == 5'd3) ? {b[15:0],16'b0} :  // aluop = 3  luib
                (aluop == 5'd4) ? a :  // aluop = 4  a
				(aluop == 5'd5) ? b << a[4:0] :  // aluop = 4  b << a 
				(aluop == 5'd6) ? ($signed(a) < $signed(b)) ? {31'd0,1'b1} : {32'b0} ://  aluop = 5  a less than b
                32'hffff_ffff;
*/