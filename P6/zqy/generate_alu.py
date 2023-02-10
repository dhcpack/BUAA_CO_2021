#!/bin/sh
import time
import random

inst_alu_rrr = ( # Reg <- Reg, Reg
    'add',
    'addu',
    'sub',
    'subu',
    'sllv',
    'srlv',
    'srav',
    'and',
    'or',
    'nor',
    'xor',
    'slt',
    'sltu'
)
inst_alu_rri = ( # Reg <- Reg, Imm
    'addi',
    'addiu',
    'slti',
    'sltiu'
)
inst_alu_rrui = ( # Reg <- Reg, UImm
    'andi',
    'ori',
    'xori'
)
inst_alu_rrs = ( # Reg <- Reg, SHAMT
    'sll',
    'srl',
    'sra'
)

def random_imm16(uns=False):
    number = random.randint(0, 65535)
    if uns: return number
    else:   return number - 32768
def random_shamt():
    return   random.randint(0, 31)

REGNUMS = [ i for i in range(32) ]
def random_regnum(prev_written=None, count=1):
    weight = [1] * 32
    if prev_written:
        for r in prev_written:
            weight[r] = 24
    return random.choices(REGNUMS, weight, k=count)

def generate_alu(f):
    random.seed(time.time())
    # FILL
    for i in range(32):
        number = random_imm16(True)
        print('lui $%-2d, %s' % (i, hex(number)), file=f)
    # RAND
    prev_written = []
    for i in range(1023 - 32 - 2):
        choice   = random.choice((inst_alu_rrr, inst_alu_rri, inst_alu_rrui, inst_alu_rrs))
        instname = random.choice(choice)
        if   choice is inst_alu_rrr:
            rd     = random_regnum(None)[0]
            rs, rt = random_regnum(prev_written, 2)
            prev_written.append(rd)
            print('%-5s $%-2d, $%-2d, $%-2d' % (instname, rd, rs, rt), file=f)
        elif choice is inst_alu_rri:
            rt  = random_regnum(None)[0]
            rs  = random_regnum(prev_written)[0]
            imm = random_imm16 ()
            prev_written.append(rt)
            print('%-5s $%-2d, $%-2d, %d' % (instname, rt, rs, imm), file=f)
        elif choice is inst_alu_rrui:
            rt  = random_regnum(None)[0]
            rs  = random_regnum(prev_written)[0]
            imm = random_imm16 (True)
            prev_written.append(rt)
            print('%-5s $%-2d, $%-2d, %d' % (instname, rt, rs, imm), file=f)
        elif choice is inst_alu_rrs:
            rd  = random_regnum(None)[0]
            rt  = random_regnum(prev_written)[0]
            shm = random_shamt()
            prev_written.append(rd)
            print('%-5s $%-2d, $%-2d, %d' % (instname, rd, rt, shm), file=f)
        prev_written = prev_written[-4:]
    print('end: beq $0, $0, end', file=f)
    print('nop', file=f)
