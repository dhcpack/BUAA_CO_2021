`include "constant.v"

module multdiv (
    input  wire clk, reset, start,
    input  wire [3:0] multdivop,
    input  wire [31:0] a, b,
    output wire busy,
    output reg [31:0] registerhi,
    output reg [31:0] registerlo
);
    
    reg [31:0] temphi, templo;
    initial begin
        temphi = 32'd0; templo <= 32'd0; registerhi <= 32'd0; registerlo <= 32'd0;
    end

    integer delay;

    assign busy = (delay != 0 && start != 1) ? 1'd1 : 1'd0;

    always @(posedge clk) begin
        if(reset) begin
            registerhi <= 32'd0;
            registerlo <= 32'd0;
        end
        else if(delay != 0) begin
            delay <= delay - 1;
            if(delay == 1) begin
                registerhi <= temphi;
                registerlo <= templo;
            end
        end
        else begin
            case(multdivop)
                `amthi : begin
                    registerhi <= a;
                end

                `amtlo : begin
                    registerlo <= a;
                end

                `amult : begin
                    {temphi, templo} <= $signed(a) * $signed(b);
                    delay <= 5;
                end

                `amultu : begin
                    {temphi, templo} <= a * b;
                    delay <= 5;
                end

                `adiv : begin
                    templo <= $signed(a) / $signed(b);
                    temphi <= $signed(a) % $signed(b);
                    delay <= 10;
                end

                `adivu : begin
                    templo <= a / b;
                    temphi <= a % b;
                    delay <= 10;
                end
					 
					 `amadd : begin
						  {temphi, templo} <= {registerhi, registerlo} + $signed($signed(64'd0) + $signed(a) * $signed(b));
						  //{temphi, templo} <= {registerhi, registerlo} + $signed(a) * $signed(b);
						  delay <= 5;
					 end
					 
					 `amaddu : begin
						  {temphi, templo} <= {registerhi, registerlo} + a * b;
						  delay <= 5;
					  end
					 
					 `amsub : begin
						  {temphi, templo} <= {registerhi, registerlo} - $signed($signed(64'd0) + $signed(a) * $signed(b));
						  delay <= 5;
					 end	
					 
					 `amsubu : begin
						  {temphi, templo} <= {registerhi, registerlo} - a * b;
						  delay <= 5;
					 end	
					 
                default begin
                    registerhi <= registerhi;
                    registerlo <= registerlo;
                    templo <= templo;
                    temphi <= temphi; 
                    delay <= 0;                   
                end
            endcase
        end  
    end

endmodule //multdiv