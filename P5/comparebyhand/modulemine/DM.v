module DM (
    input  wire clk,
    input  wire reset,
    input  wire dmwe_M,
    input  wire [31:0] dmAddr,
    input  wire [31:0] wd,
    input  wire [1:0] dmtype,
    input  wire [31:0] commandAddr_M,
    output wire [31:0] dmrd
);

    reg [31:0] datamemory [4095:0];

    integer i;
    initial begin
        for(i = 0;i < 4095;i = i + 1) begin
            datamemory[i] <= 0;
        end
    end
	// wd is the data from RF, rd is the data from IM
	// dmwd is the data write to DM, dmrd is the data to output
    wire [31:0] rd,dmwd;  //   wd-->dmwd  rd-->dmrd
    wire [1:0] byte;

    assign byte = dmAddr[1:0];
    assign rd = datamemory[dmAddr[13:2]];
    
    assign dmwd = (dmtype == 2'd0) ? wd : // sw
                
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
            for (i = 0;i < 4095;i = i + 1) begin
                datamemory[i] <= 0;
            end
        end
        else if(dmwe_M == 1) begin
            datamemory[dmAddr[13:2]] <= dmwd;
            $display("%d@%h: *%h <= %h", $time, commandAddr_M, dmAddr, dmwd);
        end
    end

    assign dmrd = (dmtype == 2'd0) ? rd :  // lw
                (dmtype == 2'd1) ?  // lh
                    (byte[1] == 0) ? {{16{rd[15]}},rd[15:0]} : {{16{rd[31]}},rd[31:16]} :
                (dmtype == 2'd2) ?  // lb
                    (byte == 2'd0) ? {{24{rd[7]}},rd[7:0]} :
                    (byte == 2'd1) ? {{24{rd[15]}},rd[15:8]} :
                    (byte == 2'd2) ? {{24{rd[23]}},rd[23:16]} :
                    {{24{rd[31]}},rd[31:24]} :
                32'hffff_ffff;

endmodule //DM