// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(INLOOP)
// set adrr to the scree address and i to 0
@SCREEN
D = A
@adrr
M = D - 1
@i
M = 0 // init i to 0

(OUTER-LOOP)
@i
D = M
@255
D = A - D // D = 255 - i
@OUTER-END
D; JLT // If (i > 255) { goto OUTER-END }.


D = 0
@j
M = D // init j to 0 every outer loop

(INNER-LOOP)


@j
D = M
@31
D = A - D
@INNER-END
D; JLT // if (j > 31) { goto INNER-END }


// creating the adrress

@adrr
M = M + 1

// inserting the adrress into the mem
@KBD
D = M
@BLACK
D; JNE
@adrr
D = M
A = D
D = 0
M = D
@WHITE
0; JMP
(BLACK)
@adrr
D = M
A = D
D = 0
M = !D
(WHITE)
// ending of inner loop
@j
M = M + 1
@INNER-LOOP
0;JMP
(INNER-END)

// ending of outer loop
@i
M = M + 1

@OUTER-LOOP
0; JMP
(OUTER-END)

@INLOOP
0;JMP
