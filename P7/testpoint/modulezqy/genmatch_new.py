#!/bin/env python3
import os
import sys

ISA_TXT = sys.argv[1]
CTL_IN  = sys.argv[2]
CTL_OUT = sys.argv[3]

with open(CTL_IN, 'r') as fp:
    control_original = fp.read()

with open(CTL_OUT, 'w') as fo:
    output = []
    with open(ISA_TXT, 'r') as fp:
        for line in filter(lambda s: len(s) > 0 and not s.startswith('#'),
                                map(lambda s: s.strip(), fp)):
            bits, name = line.split(':')
            bits = bits.replace(' ', '')
            name = name.replace(' ', '')
            bit_mask = bits.replace('0', '1').replace('x', '0')
            bit_patt = bits.replace('x', '0')
            output.append('''\
wire i_%-8s = (inst & 32\'b%s) == 32\'b%s;\n'''
            % (name, bit_mask, bit_patt))
    if len(output):
        # output.sort()
        content = ''.join([
            '// BEGIN MATCH <auto generated>\n',
            *output,
            '//   END MATCH'
        ])
        fo.write(control_original.replace('// MATCH REPLACE', content))
