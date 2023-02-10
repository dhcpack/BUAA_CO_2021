`include "constant.v"

module ALU (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [4:0] aluop,
    output wire overflow,
    output reg [31:0] res
);

    initial begin
        res = 32'd0;
    end

    always @(*) begin
		res = 32'd0;
        case(aluop)
            `uAaddB : begin     res = a + b;                                        end
			`uAsubB : begin     res = a - b;                                        end
            `AaddB  : begin     res = a + b;                                        end
			`AsubB  : begin     res = a - b;                                        end
            `AltB   : begin     res = ($signed(a) < $signed(b)) ? 32'd1 : 32'd0;    end				
            `uAltB  : begin     res = (a < b) ? 32'd1 : 32'd0;                      end
            `AandB  : begin     res = a & b;                                        end
            `AorB   : begin     res = a | b;                                        end
            `AnorB  : begin     res = ~(a | b);                                     end
            `AxorB  : begin     res = a ^ b;                                        end
            `BsllA  : begin     res = b << a[4:0];                                  end
            `BsrlA  : begin     res = b >> a[4:0];                                  end
            `BsraA  : begin     res = $signed($signed(b) >>> $signed(a[4:0]));      end
            `luiB   : begin     res = {b[15:0], 16'd0};                             end

            default : begin
                res = 32'hffff_ffff;
            end
        endcase
    end
    
    assign overflow = (((aluop == `AaddB) && (a[31] == b[31]) && (a[31] != res[31])) || ((aluop == `AsubB) && (a[31] != b[31]) && (a[31] != res[31]))) ? 1'd1 : 1'd0;


endmodule //ALU


