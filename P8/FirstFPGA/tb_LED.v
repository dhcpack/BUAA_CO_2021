`timescale 1ns/1ps

module tb_LED;

    reg clk_in;
    reg sys_rstn;
    wire [31:0] led_light;

    SimpleLED uut (
        .clk_in(clk_in),
        .sys_rstn(sys_rstn),
        .led_light(led_light)
    );

    initial begin
        clk_in = 0;
        sys_rstn = 0;
        #40 sys_rstn = 1;
    end

    always #20 clk_in = ~clk_in; // period is 40ns

endmodule