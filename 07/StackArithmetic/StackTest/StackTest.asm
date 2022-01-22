<<<<<<< HEAD
// push constant 17
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 17
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// eq
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
D; JEQ
@NOTTRUE1
0;JMP
(YGT01)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH1 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE1 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE1
0; JMP
//D HOLDS X
(BOTH1)
@SP
A = M // A HOLDS Y
A = M
D = D - A
@TRUE1
D; JEQ
@NOTTRUE1
0;JMP
(NOTTRUE1)
@SP
A = M -1
=======
@SP
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE1
D; JEQ
@SP
A = M -1
A = A - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
M = 0
@ENDTRUE1
0; JMP
(TRUE1)
@SP
A = M - 1
<<<<<<< HEAD
M = -1
(ENDTRUE1)
// push constant 17
=======
A = A - 1
M = -1
(ENDTRUE1)
@SP
M = M - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 16
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// eq
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
D; JEQ
@NOTTRUE2
0;JMP
(YGT02)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH2 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE2 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE2
0; JMP
//D HOLDS X
(BOTH2)
@SP
A = M // A HOLDS Y
A = M
D = D - A
@TRUE2
D; JEQ
@NOTTRUE2
0;JMP
(NOTTRUE2)
@SP
A = M -1
=======
@SP
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE2
D; JEQ
@SP
A = M -1
A = A - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
M = 0
@ENDTRUE2
0; JMP
(TRUE2)
@SP
A = M - 1
<<<<<<< HEAD
M = -1
(ENDTRUE2)
// push constant 16
=======
A = A - 1
M = -1
(ENDTRUE2)
@SP
M = M - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 17
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// eq
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
D; JEQ
@NOTTRUE3
0;JMP
(YGT03)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH3 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE3 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE3
0; JMP
//D HOLDS X
(BOTH3)
@SP
A = M // A HOLDS Y
A = M
D = D - A
@TRUE3
D; JEQ
@NOTTRUE3
0;JMP
(NOTTRUE3)
@SP
A = M -1
=======
@SP
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE3
D; JEQ
@SP
A = M -1
A = A - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
M = 0
@ENDTRUE3
0; JMP
(TRUE3)
@SP
A = M - 1
<<<<<<< HEAD
M = -1
(ENDTRUE3)
// push constant 892
=======
A = A - 1
M = -1
(ENDTRUE3)
@SP
M = M - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@892
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 891
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@891
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// lt
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
D; JLT
@NOTTRUE4
0;JMP
(YGT04)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH4 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE4 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE4
0; JMP
//D HOLDS X
(BOTH4)
@SP
A = M // A HOLDS Y
A = M
D = D - A
@TRUE4
D; JLT
@NOTTRUE4
0;JMP
(NOTTRUE4)
@SP
A = M -1
=======
@SP
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE4
D; JGT
@SP
A = M -1
A = A - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
M = 0
@ENDTRUE4
0; JMP
(TRUE4)
@SP
A = M - 1
<<<<<<< HEAD
M = -1
(ENDTRUE4)
// push constant 891
=======
A = A - 1
M = -1
(ENDTRUE4)
@SP
M = M - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@891
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 892
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@892
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE05
D; JLE
@YGT05
D; JGT
(YLE05)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH5 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE5 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE5
0;JMP
(YGT05)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH5 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE5 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE5
0; JMP
//D HOLDS X
(BOTH5)
@SP
A = M // A HOLDS Y
A = M
D = D - A
@TRUE5
D; JLT
@NOTTRUE5
0;JMP
(NOTTRUE5)
@SP
A = M -1
=======
@SP
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE5
D; JGT
@SP
A = M -1
A = A - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
M = 0
@ENDTRUE5
0; JMP
(TRUE5)
@SP
A = M - 1
<<<<<<< HEAD
M = -1
(ENDTRUE5)
// push constant 891
=======
A = A - 1
M = -1
(ENDTRUE5)
@SP
M = M - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@891
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 891
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@891
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE06
D; JLE
@YGT06
D; JGT
(YLE06)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH6 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE6 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE6
0;JMP
(YGT06)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH6 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE6 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE6
0; JMP
//D HOLDS X
(BOTH6)
@SP
A = M // A HOLDS Y
A = M
D = D - A
@TRUE6
D; JLT
@NOTTRUE6
0;JMP
(NOTTRUE6)
@SP
A = M -1
=======
@SP
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE6
D; JGT
@SP
A = M -1
A = A - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
M = 0
@ENDTRUE6
0; JMP
(TRUE6)
@SP
A = M - 1
<<<<<<< HEAD
M = -1
(ENDTRUE6)
// push constant 32767
=======
A = A - 1
M = -1
(ENDTRUE6)
@SP
M = M - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 32766
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@32766
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE07
D; JLE
@YGT07
D; JGT
(YLE07)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH7 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE7 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE7
0;JMP
(YGT07)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH7 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE7 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE7
0; JMP
//D HOLDS X
(BOTH7)
@SP
A = M // A HOLDS Y
A = M
D = D - A
@TRUE7
D; JGT
@NOTTRUE7
0;JMP
(NOTTRUE7)
@SP
A = M -1
=======
@SP
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE7
D; JLT
@SP
A = M -1
A = A - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
M = 0
@ENDTRUE7
0; JMP
(TRUE7)
@SP
A = M - 1
<<<<<<< HEAD
M = -1
(ENDTRUE7)
// push constant 32766
=======
A = A - 1
M = -1
(ENDTRUE7)
@SP
M = M - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@32766
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 32767
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE08
D; JLE
@YGT08
D; JGT
(YLE08)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH8 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE8 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE8
0;JMP
(YGT08)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH8 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE8 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE8
0; JMP
//D HOLDS X
(BOTH8)
@SP
A = M // A HOLDS Y
A = M
D = D - A
@TRUE8
D; JGT
@NOTTRUE8
0;JMP
(NOTTRUE8)
@SP
A = M -1
=======
@SP
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE8
D; JLT
@SP
A = M -1
A = A - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
M = 0
@ENDTRUE8
0; JMP
(TRUE8)
@SP
A = M - 1
<<<<<<< HEAD
M = -1
(ENDTRUE8)
// push constant 32766
=======
A = A - 1
M = -1
(ENDTRUE8)
@SP
M = M - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@32766
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 32766
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@32766
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE09
D; JLE
@YGT09
D; JGT
(YLE09)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH9 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE9 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE9
0;JMP
(YGT09)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH9 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGT
@TRUE9 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE9
0; JMP
//D HOLDS X
(BOTH9)
@SP
A = M // A HOLDS Y
A = M
D = D - A
@TRUE9
D; JGT
@NOTTRUE9
0;JMP
(NOTTRUE9)
@SP
A = M -1
=======
@SP
A = M - 1
D = M
A = A - 1
D = D - M
@TRUE9
D; JLT
@SP
A = M -1
A = A - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
M = 0
@ENDTRUE9
0; JMP
(TRUE9)
@SP
A = M - 1
<<<<<<< HEAD
M = -1
(ENDTRUE9)
// push constant 57
=======
A = A - 1
M = -1
(ENDTRUE9)
@SP
M = M - 1
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@57
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 31
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// push constant 53
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@53
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// add
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
<<<<<<< HEAD
// push constant 112
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@112
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// sub
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
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
<<<<<<< HEAD
// neg
@SP
A = M - 1
M = - M
// and
=======
@SP
A = M - 1
M = - M
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D & M
A = A - 1
M = D
@SP
M = M - 1
<<<<<<< HEAD
// push constant 82
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
<<<<<<< HEAD
// or
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D | M
A = A - 1
M = D
@SP
M = M - 1
<<<<<<< HEAD
// not
=======
>>>>>>> ac5dba338cd9f57c222366d9fe7873a54e52ec6a
@SP
A = M - 1
M = ! M
