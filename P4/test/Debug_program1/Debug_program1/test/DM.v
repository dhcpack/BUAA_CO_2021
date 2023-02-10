`timescale 1ns/1ps

module DM (
    input  wire clk,
    input  wire reset,
    input  wire dmwe,
    input  wire [31:0] address,
    input  wire [31:0] wd,
    input  wire [1:0] dmtype,
    input  wire [31:0] pc,
    output wire [31:0] nrd
);

    reg [31:0] datamemory [1023:0];
    integer i;
    initial begin
        for(i = 0;i < 1024;i = i + 1) begin
            datamemory[i] <= 0;
        end
    end

    wire [31:0] rd,nwd;  // nwd为经过dmtype处理后的，写入到寄存器中的数值；rd为直接从寄存器中读出来的数值，经过处理变成nrd后输出  wd-->nwd  rd-->nrd
    wire [1:0] byte;

    assign byte = address[1:0];
    assign rd = datamemory[address[11:2]];
    
    assign nwd = (dmtype == 2'd0) ? wd : // sw
                
                (dmtype == 2'd1) ?   // sh
                    (byte[1] == 0) ? {rd[31:16],wd[15:0]} : {wd[15:0],rd[15:0]} :
                
                (dmtype == 2'd2) ?  // sb
                    (byte == 2'd0) ? {rd[31:8],wd[7:0]} :
                    (byte == 2'd1) ? {rd[31:16],wd[7:0],rd[7:0]} :
                    (byte == 2'd3) ? {rd[31:24],wd[7:0],rd[15:0]} :
                    {wd[7:0],rd[23:0]} :
                32'hffff_ffff;

    always @(posedge clk) begin
        if(reset == 1) begin
            for (i = 0;i < 1024;i = i + 1) begin
                datamemory[i] <= 0;
            end
        end
        else if(dmwe == 1) begin
            datamemory[address[11:2]] <= nwd;
            $display("@%h: *%h <= %h", pc, address, nwd);
        end
    end

    assign nrd = (dmtype == 2'd0) ? rd :  // lw
                (dmtype == 2'd1) ?  // lh
                    (byte[1] == 0) ? {{16{rd[15]}},rd[15:0]} : {{16{rd[31]}},rd[31:16]} :
                (dmtype == 2'd2) ?  // lb
                    (byte == 2'd0) ? {{24{rd[7]}},rd[7:0]} :
                    (byte == 2'd1) ? {{24{rd[15]}},rd[15:8]} :
                    (byte == 2'd2) ? {{24{rd[23]}},rd[23:16]} :
                    {{24{rd[31]}},rd[31:24]} :
                32'hffff_ffff;

endmodule //DM