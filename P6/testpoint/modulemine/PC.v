module PC (
    input  wire clk,
    input  wire reset,
    input  wire pcenable,
    input  wire [2:0] npcop,
    input  wire [31:0] pc_D_B,
    input  wire [31:0] pc_D_JJal,
    input  wire [31:0] pc_D_Jr,
    input  wire [31:0] pc_eret,
    input  wire branch,
    input  wire jumpto4180,
    output wire [31:0] currentpc_F
);

    wire [31:0] pc4_F;
    assign pc4_F = currentpc_F + 4;

    reg [31:0] currentpc_F_before;
    assign currentpc_F = (jumpto4180 == 1'd1) ? 32'h4180 : currentpc_F_before;

    initial begin
        currentpc_F_before = 32'h3000;
    end

    always @(posedge clk) begin
        //$display("%h",currentpc_F_before);
        if (reset == 1) begin
            currentpc_F_before <= 32'h3000;
        end
        else begin
            if(pcenable == 1)begin
                case(npcop)
                    3'd0 : begin
                        currentpc_F_before <= pc4_F;
                    end
                    3'd1 : begin
                        if(branch == 1)begin
                            currentpc_F_before <= pc_D_B;
                        end
                        else begin
                            currentpc_F_before <= pc4_F;
                        end
                    end
                    3'd2 : begin
                        currentpc_F_before <= pc_D_JJal;
                    end
                    3'd3 : begin
                        currentpc_F_before <= pc_D_Jr;
                    end
                    3'd4 : begin
                        currentpc_F_before <= pc_eret;
                    end
                    default begin
                        currentpc_F_before <= 32'h3000;
                    end
                endcase
            end
        end        
    end


endmodule //PC