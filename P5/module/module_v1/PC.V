module PC (
    input  wire clk,
    input  wire reset,
    input  wire pcenable,
    input  wire [2:0] npcop,
    input  wire [31:0] pc_D_B,
    input  wire [31:0] pc_D_JJal,
    input  wire [31:0] pc_D_Jr,
    input  wire branch,
    output reg  [31:0] currentpc_F
);

    wire [31:0] pc4_F;
    assign pc4_F = currentpc_F + 4;

    initial begin
        currentpc_F = 32'h3000;
    end

    always @(posedge clk) begin
        if (reset == 1) begin
            currentpc_F <= 32'h3000;
        end
        else begin
            if(pcenable == 1)begin
                case(npcop)
                    2'd0 : begin
                        currentpc_F <= pc4_F;
                    end
                    2'd1 : begin
                        if(branch == 1)begin
                            currentpc_F <= pc_D_B;
                        end
                        else begin
                            currentpc_F <= pc4_F;
                        end
                    end
                    2'd2 : begin
                        currentpc_F <= pc_D_JJal;
                    end
                    2'd3 : begin
                        currentpc_F <= pc_D_Jr;
                    end
                    default begin
                        currentpc_F <= 32'h3000;
                    end
                endcase
            end
        end
            
    end


endmodule //PC