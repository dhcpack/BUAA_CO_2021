module RF (
    input  wire clk,
    input  wire reset,
    input  wire [4:0] a1,
    input  wire [4:0] a2,
    input  wire [4:0] a3,
    input  wire rfwe,
    input  wire [31:0] rfwd,
    input  wire [31:0] pc_D,
    output wire [31:0] rfrd1,
    output wire [31:0] rfrd2
);

    reg [31:0] register [31:0];

    integer i;
    initial begin
        for(i = 0;i < 32;i = i + 1) begin
            register[i] = 0;
        end
    end

    always @(posedge clk) begin
        if(reset == 1) begin
            for(i = 0;i < 32;i = i + 1) begin
                register[i] <= 0;
            end
        end
        else begin
            if(rfwe == 1) begin
                if(a3 != 5'd0) begin
                    register[a3] <= rfwd;
                    $display("%d@%h: $%d <= %h", $time, pc_D, a3, rfwd);
                end
            end
        end
    end

    // RF的内部转发
    assign rfrd1 = (a1 == a3 && a3 != 5'd0 && rfwe == 1'd1) ? rfwd : register[a1];
    assign rfrd2 = (a2 == a3 && a3 != 5'd0 && rfwe == 1'd1) ? rfwd : register[a2];

endmodule //RF