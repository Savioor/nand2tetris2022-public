// This file is part of nand2tetris, as taught in The Hebrew University,
// and was written by Aviv Yaish, and is published under the Creative 
// Common Attribution-NonCommercial-ShareAlike 3.0 Unported License 
// https://creativecommons.org/licenses/by-nc-sa/3.0/

// An implementation of a sorting algorithm. 
// An array is given in R14 and R15, where R14 contains the start address of the 
// array, and R15 contains the length of the array. 
// You are not allowed to change R14, R15.
// The program should sort the array in-place and in descending order - 
// the largest number at the head of the array.
// You can assume that each array value x is between -16384 < x < 16384.
// You can assume that the address in R14 is at least >= 2048, and that 
// R14 + R15 <= 16383. 
// No other assumptions can be made about the length of the array.
// You can implement any sorting algorithm as long as its runtime complexity is 
// at most C*O(N^2), like bubble-sort. 

// Put your code here.
@i
M = 0

(OUTER-LOOP)
@i
D = M
@R15
D = M - D
@OUTER-END
D; JLE // condition of outer loop



@R14
D = M
@cur
M = D
@swapped
M = 0



(INNER-LOOP)
@R15
D = M
@R14
D = M + D
D = D -1
@cur
D = D - M

@INNER-END
D; JLE // condition of inner loop



// creating the address
@cur
A = M
D = M	//loading the vlaue in the cur address
A = A + 1
D = D - M
@SWAP
D; JLT
@END-SWAP
0; JMP

(SWAP)
@cur
A = M 
D = M	//loading the vlaue in the cur address
@tmp
M = D
@cur
A = M 
A = A + 1 // moving to the next word
D = M	//loading the vlaue in the cur address
A = A - 1
M = D // inserting j+1 into j
@tmp
D = M
@cur
A = M
A = A + 1
M = D

@swapped
M = 1
(END-SWAP)


// inserting the address into the mem




// ending of inner loop
@cur
M = M + 1
@INNER-LOOP
0;JMP
(INNER-END)

// ending of outer loop
@i
M = M + 1

@swapped
D = M
@OUTER-END
D; JEQ

@OUTER-LOOP
0; JMP
(OUTER-END)