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
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE1
D; JGT
@SP
A = M -1
A = A - 1
M = 0
@ENDTRUE1
0; JMP
(TRUE1)
@SP
A = M - 1
A = A - 1
M = -1
(ENDTRUE1)
@SP
M = M - 1
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
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE2
D; JGT
@SP
A = M -1
A = A - 1
M = 0
@ENDTRUE2
0; JMP
(TRUE2)
@SP
A = M - 1
A = A - 1
M = -1
(ENDTRUE2)
@SP
M = M - 1
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
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE3
D; JLT
@SP
A = M -1
A = A - 1
M = 0
@ENDTRUE3
0; JMP
(TRUE3)
@SP
A = M - 1
A = A - 1
M = -1
(ENDTRUE3)
@SP
M = M - 1
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
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE4
D; JLT
@SP
A = M -1
A = A - 1
M = 0
@ENDTRUE4
0; JMP
(TRUE4)
@SP
A = M - 1
A = A - 1
M = -1
(ENDTRUE4)
@SP
M = M - 1
