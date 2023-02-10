`include "constant.v"

module ALU (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [4:0] aluop,
    output reg [31:0] res
);

    initial begin
        res = 32'd0;
    end

    always @(*) begin
        case(aluop)
            `AaddB : begin
                res = a + b;
            end
				
            `AsubB : begin
                res = a - b;
            end

            `AltB : begin
                res = ($signed(a) < $signed(b)) ? 32'd1 : 32'd0;  //comparison between signed number
            end				
            
            `uAltB : begin
                res = (a < b) ? 32'd1 : 32'd0;
            end

            `AandB : begin
                res = a & b;
            end

            `AorB : begin
                res = a | b;
            end

            `AnorB : begin
                res = ~(a | b);
            end

            `AxorB : begin
                res = a ^ b;
            end

				
            `BsllA : begin
                res = b << a[4:0];
            end
            
            `BsrlA : begin
                res = b >> a[4:0];
            end

            `BsraA : begin
                res = $signed($signed(b) >>> $signed(a[4:0]));
            end

            `luiB : begin
                res = {b[15:0], 16'd0};
            end

				
            default : begin
                res = 32'hffff_ffff;
            end
        endcase
    end


endmodule //ALU


// ALU forѭ��ע�ⲻҪ�б���
// for(i=0; i<B[4:0]; i = i+1)//forѭ�����˱�������ʱTLE������ԭ��δ֪���������޷��ۺ�

// for(i=0; i<32; i = i+1)begin
// if(i<B[4:0])//�ѱ���������Ϳ�����
// ..
// else i = 32;
// end