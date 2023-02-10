`timescale 1ns/1ps


module mips (
    input  wire clk,
    input  wire reset
);
// ===========================================================================================================================
//  lines
    wire [31:0] currentCommandAddr, nextCommandAddr, command, bimm, alures, dmres, extendres, pc4, ra, rd1, rd2, sllshamt;
    wire [25:0] jimm;
    wire [15:0] immoffsetToExtend;
    wire [4:0] aluop;
    wire [1:0] npcop, wrsel, wdsel, extop, asel, bsel, dmtype;
    wire zero, rfwe, dmwe;
// ============================================================================================================================

    assign immoffsetToExtend = command[15:0];
    assign jimm = command[25:0];
    assign bimm = extendres << 2;
    assign ra = rd1;
	 assign sllshamt = extendres;

    controller maincontroller(
        .command(command),
        .npcop(npcop),
        .wrsel(wrsel),
        .wdsel(wdsel),
        .rfwe(rfwe),
        .extop(extop),
        .asel(asel),
        .bsel(bsel),
        .aluop(aluop),
        .dmwe(dmwe),
        .dmtype(dmtype)
    );

    PC mainpc(
        .clk(clk),
        .reset(reset),
        .address_in(nextCommandAddr),
        .address_out(currentCommandAddr)
    );

    NPC mainnpc(
        .pc(currentCommandAddr),
        .bimm(bimm),
        .zero(zero),
        .jimm(jimm),
        .ra(ra),
        .npcop(npcop),
        .pc4(pc4),
        .npc(nextCommandAddr)
    );

    IM mainim(
        .address(currentCommandAddr),
        .command(command)
    );

    RF mainrf(
        .clk(clk),
        .reset(reset),
        .a1(command[25:21]),
        .a2(command[20:16]),
        .a3((wrsel == 2'd0) ? command[20:16] : (wrsel == 2'd1) ? command[15:11] : (wrsel == 2'd2) ? 5'd31 : 5'd0),
        .rfwe(rfwe),
        .pc(currentCommandAddr),
        .wd((wdsel == 2'd0) ? alures : (wdsel == 2'd1) ? dmres : (wdsel == 2'd2) ? pc4 : 32'd0),
        .rd1(rd1),
        .rd2(rd2)
    );

    ALU mainalu(
        .a((asel == 2'd0) ? rd1 : (asel == 2'd1) ? sllshamt : 32'd0),
        .b((bsel == 2'd0) ? rd2 : (bsel == 2'd1) ? extendres : 32'd0),
        .aluop(aluop),
        .zero(zero),
        .res(alures)
    );

    DM maindm(
        .clk(clk),
        .reset(reset),
        .dmwe(dmwe),
        .address(alures),
        .wd(rd2),
        .dmtype(dmtype),
        .pc(currentCommandAddr),
        .nrd(dmres)
    );

    EXT mainext(
        .immoffset(immoffsetToExtend),
        .extop(extop),
        .out(extendres)
    );

endmodule //mips