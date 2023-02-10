module IM (
    input  wire [31:0] address,
    output wire [31:0] command
);

    reg [31:0] command_momery [0:4095];

    integer i;
    initial begin
        for(i = 0;i < 4096;i = i + 1) begin
            command_momery[i] = 0;
        end
        $readmemh("code.txt",command_momery);
    end

    assign command = command_momery[address[13:2]];


endmodule //IM