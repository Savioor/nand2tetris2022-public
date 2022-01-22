// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
// This is long multiplication

@power
M = 1
@sum
M = 0
@SKIP
0; JMP // Skip the first doubling

(MAIN_LOOP)

@R0
D = M // Double R0 as we move to the next digit
M = D + M

(SKIP)

@R1
D = M
@power
D = D - M; // Set D to R1 - power
@EXIT_LOOP
D; JLT // If R1 - power < 0 we are done so we exit
@power


D = M
M = D + M // shr power, have D hold the old power
@R1
D = D & M // D = R1 & power, to see if the current power is 1 or 0
@MAIN_LOOP
D; JEQ // If the power is 0 skip the adding to sum

@R0
D = M // Update sum
@sum
M = M + D

@MAIN_LOOP
0; JMP
(EXIT_LOOP)
@sum
D = M
@R2
M = D

