module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output start_shifting);
    
    reg [2:0] state;
    reg judge;
    initial begin
        state <= 3'd0;
        judge <= 0;
    end
    
    localparam s0 = 3'd0;
    localparam s1 = 3'd1;
    localparam s2 = 3'd2;
    localparam s3 = 3'd3;
    localparam s4 = 3'd4;
    
    
    always @(posedge clk) begin
        if(reset == 1) begin
            state <= 3'd0;
            judge <= 0;
        end
        else begin
            case(state)
                s0 : begin
                    if(data) state <= s1;
                    else begin
                        state <= s0;
                        judge <= 0;
                    end
                end
                s1 : begin
                    if(data) state <= s2;
                    else begin
                        state <= s0;
                        judge <= 0;
                    end
                end
                s2 : begin
                    if(data) state <= s2;
                    else begin
                        state <= s3;
                        judge <= 0;
                    end
                end
                s3 : begin
                    if(data) begin
                        state <= s4;
                        judge <= 1;
                    end
                    else begin
                        state <= s0;
                    	judge <= 0;
                    end
                end
                s4 : begin
                    if(data) begin
                        state <= s1;
                    end
                    else begin
                        state <= s0;
                        judge <= 0;
                    end
                end
            endcase
        end
    end
    
    assign start_shifting = judge;
                

endmodule