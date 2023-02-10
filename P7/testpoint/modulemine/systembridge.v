module systembridge (
    input  wire we_cpu,
    input  wire [31:0] addr_cpu,
    input  wire [31:0] data_dm, data_timer0, data_timer1,
    output wire we_dm, we_timer0, we_timer1,
    output wire [31:0] addr_dm, addr_timer0, addr_timer1,
    output wire [31:0] data_to_cpu
);

    wire isdm, istimer0, istimer1;

    assign isdm   =   (addr_cpu >= 32'h0000_0000 && addr_cpu <= 32'h0000_2fff) ? 1'd1 : 1'd0;
    assign istimer0 = (addr_cpu >= 32'h0000_7f00 && addr_cpu <= 32'h0000_7f0b) ? 1'd1 : 1'd0;
    assign istimer1 = (addr_cpu >= 32'h0000_7f10 && addr_cpu <= 32'h0000_7f1b) ? 1'd1 : 1'd0;

    assign we_dm = we_cpu && isdm;
    assign we_timer0 = we_cpu && istimer0;
    assign we_timer1 = we_cpu && istimer1;

    assign addr_dm = addr_cpu;
    assign addr_timer0 = addr_cpu;
    assign addr_timer1 = addr_cpu;

    assign data_to_cpu = (isdm == 1'd1) ? data_dm : 
                        (istimer0 == 1'd1) ? data_timer0 : 
                        (istimer1 == 1'd1) ? data_timer1 : 32'hffff_ffff;

endmodule //systembridge