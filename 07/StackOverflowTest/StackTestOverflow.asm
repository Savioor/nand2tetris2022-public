// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 32767
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
// sub
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D - M
A = A - 1
M = D
@SP
M = M - 1
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE01
D; JLE
@YGT01
D; JGT
(YLE01)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH1 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE1 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE1
0;JMP
(YGT01)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH1 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE1 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE1
0; JMP
//D HOLDS X
(BOTH1)
@SP
A = M - 1 // A HOLDS Y
D = D - A
@TRUE1
D; JLT
@NOTTRUE1
0;JMP
(NOTTRUE1)
@SP
A = M -1
M = 0
@ENDTRUE1
0; JMP
(TRUE1)
@SP
A = M - 1
M = -1
(ENDTRUE1)
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 32767
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
// sub
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D - M
A = A - 1
M = D
@SP
M = M - 1
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE02
D; JLE
@YGT02
D; JGT
(YLE02)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH2 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE2 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE2
0;JMP
(YGT02)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH2 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE2 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE2
0; JMP
//D HOLDS X
(BOTH2)
@SP
A = M - 1 // A HOLDS Y
D = D - A
@TRUE2
D; JLT
@NOTTRUE2
0;JMP
(NOTTRUE2)
@SP
A = M -1
M = 0
@ENDTRUE2
0; JMP
(TRUE2)
@SP
A = M - 1
M = -1
(ENDTRUE2)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 32767
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
// sub
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D - M
A = A - 1
M = D
@SP
M = M - 1
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE03
D; JLE
@YGT03
D; JGT
(YLE03)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH3 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE3 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE3
0;JMP
(YGT03)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH3 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE3 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE3
0; JMP
//D HOLDS X
(BOTH3)
@SP
A = M - 1 // A HOLDS Y
D = D - A
@TRUE3
D; JGT
@NOTTRUE3
0;JMP
(NOTTRUE3)
@SP
A = M -1
M = 0
@ENDTRUE3
0; JMP
(TRUE3)
@SP
A = M - 1
M = -1
(ENDTRUE3)
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 32767
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
// sub
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D - M
A = A - 1
M = D
@SP
M = M - 1
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE04
D; JLE
@YGT04
D; JGT
(YLE04)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH4 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE4 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE4
0;JMP
(YGT04)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH4 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE4 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE4
0; JMP
//D HOLDS X
(BOTH4)
@SP
A = M - 1 // A HOLDS Y
D = D - A
@TRUE4
D; JGT
@NOTTRUE4
0;JMP
(NOTTRUE4)
@SP
A = M -1
M = 0
@ENDTRUE4
0; JMP
(TRUE4)
@SP
A = M - 1
M = -1
(ENDTRUE4)
