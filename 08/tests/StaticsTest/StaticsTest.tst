// This file is part of the materials accompanying the book
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press 2004. Book site: http://www.idc.ac.il/tecs
// File name: projects/08/FunctionCalls/StaticsTest/StaticsTest.tst.
// Version: beta 1.4.

load StaticsTest.asm,
output-file StaticsTest.out,
compare-to StaticsTest.cmp,
output-list RAM[0]%D1.6.1 RAM[261]%D1.6.1 RAM[262]%D1.6.1;

set RAM[0] 256,

repeat 2500 {
  ticktock;
}

output;
