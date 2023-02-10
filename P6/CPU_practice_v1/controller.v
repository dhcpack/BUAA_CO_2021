`include "constant.v"
module controller (
    input  wire [31:0] command,
    output wire startmd_D,
	output wire [4:0] commandtype_D,
    output reg rfwe_D, dmwe_D,
    output reg [1:0] wrsel_D, wdsel_D, extop, asel_D, bsel_D,
    output reg [2:0] npcop, tuse_Drs, tuse_Drt, tnew_D, dmtype_D, 
    output reg [3:0] cmpop, multdivop_D,
    output reg [4:0] aluop_D	 
);

    // special command type  'jump and link' 'mult and div'
    assign commandtype_D =  (command[31:26] == `jal ||(command[31:26] == 0 && command[5:0] == `jalr)) ? `jumpandlink :
                            (command[31:26] == 0 && (command[5:0] == `mfhi || command[5:0] == `mflo)) ? `readmudv :
                            (command[31:26] == 0 && (command[5:0] == `mthi || command[5:0] == `mtlo)) ? `setmudv : 
                            (command[31:26] == 0 && (command[5:0] == `mult || command[5:0] == `multu || command[5:0] == `div || command[5:0] == `divu)) ? `calmudv :
                            (command[31:26] == 0 && (command[5:0] == `add || command[5:0] == `addu || command[5:0] == `sub || command[5:0] == `subu || command[5:0] == `slt || command[5:0] == `sltu || command[5:0] == `and || command[5:0] == `or || command[5:0] == `nor || command[5:0] == `xor || command[5:0] == `sllv || command[5:0] == `srlv || command[5:0] == `srav)) ? `caldoubleregister :
                            (command[31:26] == 0 && (command[5:0] == `sll || command[5:0] == `srl || command[5:0] == `sra)) ? `shift :
                            (command[31:26] == `addiu || command[31:26] == `sltiu || command[31:26] == `addi || command[31:26] == `slti) ? `calregisterimmsign : 
                            (command[31:26] == `andi || command[31:26] == `ori || command[31:26] == `xori || command[31:26] == `lui) ? `calregisterimmzero :
                            (command[31:26] == `sw || command[31:26] == `sh || command[31:26] == `sb) ? `save :
                            (command[31:26] == `lw || command[31:26] == `lh || command[31:26] == `lhu || command[31:26] == `lb || command[31:26] == `lbu) ? `load :
                            (command[31:26] == 6'b011100 && (command[5:0] == `madd || command[5:0] == `maddu || command[5:0] == `msub || command[5:0] == `msubu)) ? `mudvALU :
							`None;

    assign startmd_D = (commandtype_D == `calmudv || commandtype_D == `mudvALU) ? 1'd1 : 1'd0;

    initial begin
        npcop = 0;         wrsel_D = 0;
        wdsel_D = 0;       rfwe_D = 0;
        extop = 0;         cmpop = 0; 
        asel_D = 0;        bsel_D = 0;
        aluop_D = 0;       dmwe_D = 0;
        dmtype_D = 0;      tnew_D = 0;
        tuse_Drs = 5;      tuse_Drt = 5;
    end

    always @( * ) begin
        if(command == 0)begin  // nop
            npcop = 0;             wrsel_D = 0;
            wdsel_D = 0;           rfwe_D = 0;
            extop = 0;             cmpop = `None; 
            asel_D = 0;            bsel_D = 0;
            aluop_D = `None;       dmwe_D = 0;
            dmtype_D = `None;      tnew_D = 0;
            tuse_Drs = 5;          tuse_Drt = 5;
        end
        
        else if(command[31:26] == 6'd0) begin  // Rtype op == 0
            if(commandtype_D == `caldoubleregister)begin
                npcop = 0;             wrsel_D = 1;
                wdsel_D = 0;           rfwe_D = 1;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 0;
                dmwe_D = 0;            dmtype_D = `None;
                tnew_D = 2;            tuse_Drs = 1;
                tuse_Drt = 1;
                case(command[5:0])
                    `add : begin aluop_D = `AaddB; end     `addu : begin aluop_D = `AaddB; end
                    `sub : begin aluop_D = `AsubB; end     `subu : begin aluop_D = `AsubB; end
                    `slt : begin aluop_D = `AltB;  end     `sltu : begin aluop_D = `uAltB; end
                    `and : begin aluop_D = `AandB; end     `or   : begin aluop_D = `AorB;  end
                    `nor : begin aluop_D = `AnorB; end     `xor  : begin aluop_D = `AxorB; end
                    `sllv: begin aluop_D = `BsllA; end    `srlv :  begin aluop_D = `BsrlA; end
                    `srav: begin aluop_D = `BsraA; end    default :  begin aluop_D = 5'd0; end
                endcase
            end

			if(commandtype_D == `shift)begin
                npcop = 0;             wrsel_D = 1;
                wdsel_D = 0;           rfwe_D = 1;
                extop = 2;             cmpop = `None; 
                asel_D = 1;            bsel_D = 0;
                dmwe_D = 0;            dmtype_D = `None; 
                tnew_D = 2;            tuse_Drs = 5; 
                tuse_Drt = 1;
                case(command[5:0])
                    `sll : begin aluop_D = `BsllA; end     `srl  : begin aluop_D = `BsrlA; end
                    `sra : begin aluop_D = `BsraA; end     default : begin aluop_D = 5'd0; end
                endcase
            end

            if(commandtype_D == `readmudv)begin
                npcop = 0;             wrsel_D = 1;
                wdsel_D = 0;           rfwe_D = 1;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 0;
                aluop_D = `None;       dmwe_D = 0;
                dmtype_D = `None;      tnew_D = 2;
                tuse_Drs = 5;          tuse_Drt = 5;
            end

            if(commandtype_D == `setmudv)begin
                npcop = 0;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 0;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 0;
                aluop_D = `None;       dmwe_D = 0;
                dmtype_D = `None;      tnew_D = 0;
                tuse_Drs = 1;          tuse_Drt = 5;
            end

            if(commandtype_D == `calmudv)begin
                npcop = 0;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 0;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 0;
                aluop_D = `None;       dmwe_D = 0;
                dmtype_D = `None;      tnew_D = 0;
                tuse_Drs = 1;          tuse_Drt = 1;
            end

            if(command[5:0] == `jr)begin
                npcop = 3;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 0;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 0;
                aluop_D = `None;       dmwe_D = 0;
                dmtype_D = `None;      tnew_D = 0;
                tuse_Drs = 0;          tuse_Drt = 5;
            end
				
			if(command[5:0] == `jalr)begin
                npcop = 3;             wrsel_D = 1;
                wdsel_D = 2;           rfwe_D = 1;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 0;
                aluop_D = `None;       dmwe_D = 0;
                dmtype_D = `None;      tnew_D = 2;
                tuse_Drs = 0;          tuse_Drt = 5;
            end
        end
    // ===========================================================

        else if(command[31:26] != 6'd0) begin   // Jtype and Itype  op != 0
            if(commandtype_D == `calregisterimmsign)begin
                npcop = 0;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 1;
                extop = 1;             cmpop = `None; 
                asel_D = 0;            bsel_D = 1;
                dmwe_D = 0;            dmtype_D = `None; 
                tnew_D = 2;            tuse_Drs = 1;  
                tuse_Drt = 5;
                case(command[31:26])
                    `addi  : begin aluop_D = `AaddB; end      `slti  : begin aluop_D = `AltB;  end
                    `addiu : begin aluop_D = `AaddB; end      `sltiu : begin aluop_D = `uAltB; end
                    default : begin aluop_D = 5'd0; end
                endcase
            end
            
            if(commandtype_D == `calregisterimmzero)begin
                npcop = 0;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 1;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 1;
                dmwe_D = 0;            dmtype_D = `None; 
                tnew_D = 2;            tuse_Drs = 1;  
                tuse_Drt = 5;
                case(command[31:26])
                    `andi  : begin aluop_D = `AandB; end     `ori   : begin aluop_D = `AorB;  end
                    `xori  : begin aluop_D = `AxorB; end     `lui   : begin aluop_D = `luiB;  end
                    default : begin aluop_D = 5'd0; end 
                endcase
            end

            if(commandtype_D == `save)begin
                npcop = 0;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 0;
                extop = 1;             cmpop = `None; 
                asel_D = 0;            bsel_D = 1;
                aluop_D = `AaddB;      dmwe_D = 1;
                tnew_D = 0;            tuse_Drs = 1;          
                tuse_Drt = 2;
                case(command[31:26])
                    `sw  : begin dmtype_D = `word; end     `sh   : begin dmtype_D = `half;  end
                    `sb  : begin dmtype_D = `byte; end     default : begin dmtype_D = 3'd0; end
                endcase
            end

            if(commandtype_D == `load)begin
                npcop = 0;             wrsel_D = 0;
                wdsel_D = 1;           rfwe_D = 1;
                extop = 1;             cmpop = `None; 
                asel_D = 0;            bsel_D = 1;
                aluop_D = `AaddB;      dmwe_D = 0;
                tnew_D = 3;            tuse_Drs = 1;          
                tuse_Drt = 5;
                case(command[31:26])
                    `lw  : begin dmtype_D = `word;  end     `lh   : begin dmtype_D = `half;  end
                    `lhu : begin dmtype_D = `uhalf; end     `lb   : begin dmtype_D = `byte;  end     
                    `lbu : begin dmtype_D = `ubyte; end     default : begin dmtype_D = 3'd0; end
                endcase
            end  

            if(command[31:26] == `beq || command[31:26] == `bne)begin
                npcop = 1;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 0;
                extop = 1;             asel_D = 0;  
                bsel_D = 0;            aluop_D = `None; 
                dmwe_D = 0;            dmtype_D = `None;
                tnew_D = 0;            tuse_Drs = 0;
                tuse_Drt = 0;
                case(command[31:26])
                    `beq  : begin cmpop = `aequb; end       `bne  : begin cmpop = `aneqb; end 
                    default : begin cmpop = 4'd0; end
                endcase
            end

			if(command[31:26] == 6'b000001)begin  // bgez bltz
                npcop = 1;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 0;
                extop = 1;             asel_D = 0; 
                bsel_D = 0;            aluop_D = `None;
                dmwe_D = 0;            dmtype_D = `None; 
                tnew_D = 0;            tuse_Drs = 0; 
                tuse_Drt = 5;
                case(command[20:16])
                    `bgez  : begin cmpop = `agez; end       `bltz  : begin cmpop = `altz; end 
                    default : begin cmpop = 4'd0; end
                endcase
            end

            if(command[31:26] == `bgtz || command[31:26] == `blez)begin
                npcop = 1;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 0;
                extop = 1;             asel_D = 0; 
                bsel_D = 0;            aluop_D = `None;
                dmwe_D = 0;            dmtype_D = `None; 
                tnew_D = 0;            tuse_Drs = 0; 
                tuse_Drt = 5;
                case(command[31:26])
                    `bgtz  : begin cmpop = `agtz; end       `blez  : begin cmpop = `alez; end 
                    default : begin cmpop = 4'd0; end
                endcase
            end

            if(command[31:26] == `j)begin
                npcop = 2;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 0;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 0;
                aluop_D = `None;       dmwe_D = 0;
                dmtype_D = `None;      tnew_D = 0;
                tuse_Drs = 5;          tuse_Drt = 5;
            end

            if(command[31:26] == `jal)begin
                npcop = 2;             wrsel_D = 2;
                wdsel_D = 2;           rfwe_D = 1;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 0;
                aluop_D = `None;       dmwe_D = 0;
                dmtype_D = `None;      tnew_D = 2;
                tuse_Drs = 5;          tuse_Drt = 5;
			end
				
            if(commandtype_D == `mudvALU)begin
                npcop = 0;             wrsel_D = 0;
                wdsel_D = 0;           rfwe_D = 0;
                extop = 0;             cmpop = `None; 
                asel_D = 0;            bsel_D = 0;
                aluop_D = `None;       dmwe_D = 0;
                dmtype_D = `None;      tnew_D = 0;
                tuse_Drs = 1;          tuse_Drt = 1;			
            end
				
        end

        else begin
            npcop = 0;         wrsel_D = 0;
            wdsel_D = 0;       rfwe_D = 0;
            extop = 0;         cmpop = 0; 
            asel_D = 0;        bsel_D = 0;
            aluop_D = 0;       dmwe_D = 0;
            dmtype_D = `None;  tnew_D = 0;
            tuse_Drs = 5;      tuse_Drt = 5;
        end
    
        // for mult and div
        if(commandtype_D == `calmudv || commandtype_D == `setmudv || commandtype_D == `mudvALU)begin
			if(command[5:0] == `mthi)begin
                multdivop_D = `amthi;
            end
            
            if(command[5:0] == `mtlo)begin
                multdivop_D = `amtlo;
            end

            if(command[5:0] == `mult)begin
                multdivop_D = `amult;
            end

            if(command[5:0] == `multu)begin
                multdivop_D = `amultu;
            end

            if(command[5:0] == `div)begin
                multdivop_D = `adiv;
            end

            if(command[5:0] == `divu)begin
                multdivop_D = `adivu;
            end
				
            if(command[5:0] == `madd)begin
                multdivop_D = `amadd;
            end
            
            if(command[5:0] == `maddu)begin
                multdivop_D = `amaddu;
            end

            if(command[5:0] == `msub)begin
                multdivop_D = `amsub;
            end
            
            if(command[5:0] == `msubu)begin
                multdivop_D = `amsubu;
            end
				

        end
        else begin
            multdivop_D = `None;
        end
    end

endmodule //controller