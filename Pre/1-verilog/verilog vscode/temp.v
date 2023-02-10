`default_nettype none 

module test_default_nettype(
input wire a1,
input wire a2,
output wire c1
);

assign cl=a1&a2;
endmodule

`default_nettype reg
module practice1(input [3:0] temp);
    wire [3:0] a;
    assign a=4'b1000;
    initial begin
		b<=a;
		end
	assign temp=b;
endmodule