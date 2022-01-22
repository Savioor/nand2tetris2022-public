//init SP
@256
D = A
@SP
M = D
//init LCL
@256
D = A
@LCL
M = D
//init ARG
@256
D = A
@ARG
M = D
// call Sys.init 0
// get ip
@RET_ADDR0
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Sys.init
0; JMP
(RET_ADDR0)
// function Array.new 0
(f_Array.new)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// gt
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
D; JGT
@NOTTRUE2
0;JMP
(YGT02)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH2 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE2 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE2
0; JMP
//D HOLDS X
(BOTH2)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE2
D; JGT
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Array.new$IF_TRUE0
D; JNE
@Array.new$IF_FALSE0
0; JMP
(Array.new$IF_TRUE0)
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR2
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Sys.error
0; JMP
(RET_ADDR2)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Array.new$IF_FALSE0)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Memory.alloc 1
// get ip
@RET_ADDR3
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Memory.alloc
0; JMP
(RET_ADDR3)
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Array.dispose 0
(f_Array.dispose)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop pointer 0
@0
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push pointer 0
@0
D = A
@3
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Memory.deAlloc 1
// get ip
@RET_ADDR4
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Memory.deAlloc
0; JMP
(RET_ADDR4)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Main.main 2
(f_Main.main)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
M = 0
A = A + 1
@2
D = A
@SP
M = M + D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop local 1
@1
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Main.main$WHILE_EXP0)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
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
D; JGE
@TRUE6 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE6
0; JMP
//D HOLDS X
(BOTH6)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE6
D; JLT
@NOTTRUE6
0;JMP
(NOTTRUE6)
@SP
A = M -1
M = 0
@ENDTRUE6
0; JMP
(TRUE6)
@SP
A = M - 1
M = -1
(ENDTRUE6)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Main.main$WHILE_END0
D; JNE
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop local 1
@1
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Main.main$WHILE_EXP0
0; JMP
(Main.main$WHILE_END0)
// push constant 5000
@5000
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Memory.poke 2
// get ip
@RET_ADDR6
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Memory.poke
0; JMP
(RET_ADDR6)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Math.init 1
(f_Math.init)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
@1
D = A
@SP
M = M + D
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Array.new 1
// get ip
@RET_ADDR7
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Array.new
0; JMP
(RET_ADDR7)
// pop static 1
@Math.1
D = A
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Array.new 1
// get ip
@RET_ADDR8
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Array.new
0; JMP
(RET_ADDR8)
// pop static 0
@Math.0
D = A
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.init$WHILE_EXP0)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE010
D; JLE
@YGT010
D; JGT
(YLE010)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH10 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE10 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE10
0;JMP
(YGT010)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH10 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE10 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE10
0; JMP
//D HOLDS X
(BOTH10)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE10
D; JLT
@NOTTRUE10
0;JMP
(NOTTRUE10)
@SP
A = M -1
M = 0
@ENDTRUE10
0; JMP
(TRUE10)
@SP
A = M - 1
M = -1
(ENDTRUE10)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.init$WHILE_END0
D; JNE
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
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
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
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
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Math.init$WHILE_EXP0
0; JMP
(Math.init$WHILE_END0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Math.abs 0
(f_Math.abs)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE011
D; JLE
@YGT011
D; JGT
(YLE011)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH11 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE11 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE11
0;JMP
(YGT011)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH11 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE11 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE11
0; JMP
//D HOLDS X
(BOTH11)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE11
D; JLT
@NOTTRUE11
0;JMP
(NOTTRUE11)
@SP
A = M -1
M = 0
@ENDTRUE11
0; JMP
(TRUE11)
@SP
A = M - 1
M = -1
(ENDTRUE11)
@SP
AM = M - 1
D = M
@Math.abs$IF_TRUE0
D; JNE
@Math.abs$IF_FALSE0
0; JMP
(Math.abs$IF_TRUE0)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// neg
@SP
A = M - 1
M = - M
// pop argument 0
@0
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.abs$IF_FALSE0)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Math.multiply 5
(f_Math.multiply)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
@5
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE012
D; JLE
@YGT012
D; JGT
(YLE012)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH12 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE12 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE12
0;JMP
(YGT012)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH12 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE12 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE12
0; JMP
//D HOLDS X
(BOTH12)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE12
D; JLT
@NOTTRUE12
0;JMP
(NOTTRUE12)
@SP
A = M -1
M = 0
@ENDTRUE12
0; JMP
(TRUE12)
@SP
A = M - 1
M = -1
(ENDTRUE12)
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE013
D; JLE
@YGT013
D; JGT
(YLE013)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH13 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE13 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE13
0;JMP
(YGT013)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH13 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE13 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE13
0; JMP
//D HOLDS X
(BOTH13)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE13
D; JGT
@NOTTRUE13
0;JMP
(NOTTRUE13)
@SP
A = M -1
M = 0
@ENDTRUE13
0; JMP
(TRUE13)
@SP
A = M - 1
M = -1
(ENDTRUE13)
// and
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
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE014
D; JLE
@YGT014
D; JGT
(YLE014)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH14 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE14 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE14
0;JMP
(YGT014)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH14 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE14 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE14
0; JMP
//D HOLDS X
(BOTH14)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE14
D; JGT
@NOTTRUE14
0;JMP
(NOTTRUE14)
@SP
A = M -1
M = 0
@ENDTRUE14
0; JMP
(TRUE14)
@SP
A = M - 1
M = -1
(ENDTRUE14)
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE015
D; JLE
@YGT015
D; JGT
(YLE015)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH15 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE15 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE15
0;JMP
(YGT015)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH15 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE15 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE15
0; JMP
//D HOLDS X
(BOTH15)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE15
D; JLT
@NOTTRUE15
0;JMP
(NOTTRUE15)
@SP
A = M -1
M = 0
@ENDTRUE15
0; JMP
(TRUE15)
@SP
A = M - 1
M = -1
(ENDTRUE15)
// and
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
// or
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
// pop local 4
@4
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.abs 1
// get ip
@RET_ADDR15
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Math.abs
0; JMP
(RET_ADDR15)
// pop argument 0
@0
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.abs 1
// get ip
@RET_ADDR16
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Math.abs
0; JMP
(RET_ADDR16)
// pop argument 1
@1
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE018
D; JLE
@YGT018
D; JGT
(YLE018)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH18 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE18 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE18
0;JMP
(YGT018)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH18 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE18 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE18
0; JMP
//D HOLDS X
(BOTH18)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE18
D; JLT
@NOTTRUE18
0;JMP
(NOTTRUE18)
@SP
A = M -1
M = 0
@ENDTRUE18
0; JMP
(TRUE18)
@SP
A = M - 1
M = -1
(ENDTRUE18)
@SP
AM = M - 1
D = M
@Math.multiply$IF_TRUE0
D; JNE
@Math.multiply$IF_FALSE0
0; JMP
(Math.multiply$IF_TRUE0)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop local 1
@1
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop argument 0
@0
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop argument 1
@1
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.multiply$IF_FALSE0)
(Math.multiply$WHILE_EXP0)
// push local 2
@2
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE019
D; JLE
@YGT019
D; JGT
(YLE019)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH19 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE19 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE19
0;JMP
(YGT019)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH19 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE19 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE19
0; JMP
//D HOLDS X
(BOTH19)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE19
D; JLT
@NOTTRUE19
0;JMP
(NOTTRUE19)
@SP
A = M -1
M = 0
@ENDTRUE19
0; JMP
(TRUE19)
@SP
A = M - 1
M = -1
(ENDTRUE19)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.multiply$WHILE_END0
D; JNE
// push local 3
@3
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// and
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE020
D; JLE
@YGT020
D; JGT
(YLE020)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH20 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE20 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE20
0;JMP
(YGT020)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH20 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE20 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE20
0; JMP
//D HOLDS X
(BOTH20)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE20
D; JGT
@NOTTRUE20
0;JMP
(NOTTRUE20)
@SP
A = M -1
M = 0
@ENDTRUE20
0; JMP
(TRUE20)
@SP
A = M - 1
M = -1
(ENDTRUE20)
@SP
AM = M - 1
D = M
@Math.multiply$IF_TRUE1
D; JNE
@Math.multiply$IF_FALSE1
0; JMP
(Math.multiply$IF_TRUE1)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push local 2
@2
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 3
@3
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop local 2
@2
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.multiply$IF_FALSE1)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop argument 0
@0
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push local 3
@3
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop local 3
@3
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Math.multiply$WHILE_EXP0
0; JMP
(Math.multiply$WHILE_END0)
// push local 4
@4
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Math.multiply$IF_TRUE2
D; JNE
@Math.multiply$IF_FALSE2
0; JMP
(Math.multiply$IF_TRUE2)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// neg
@SP
A = M - 1
M = - M
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.multiply$IF_FALSE2)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Math.divide 4
(f_Math.divide)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
@4
D = A
@SP
M = M + D
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE021
D; JLE
@YGT021
D; JGT
(YLE021)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH21 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE21 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE21
0;JMP
(YGT021)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH21 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE21 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE21
0; JMP
//D HOLDS X
(BOTH21)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE21
D; JEQ
@NOTTRUE21
0;JMP
(NOTTRUE21)
@SP
A = M -1
M = 0
@ENDTRUE21
0; JMP
(TRUE21)
@SP
A = M - 1
M = -1
(ENDTRUE21)
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE0
D; JNE
@Math.divide$IF_FALSE0
0; JMP
(Math.divide$IF_TRUE0)
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR21
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Sys.error
0; JMP
(RET_ADDR21)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.divide$IF_FALSE0)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE023
D; JLE
@YGT023
D; JGT
(YLE023)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH23 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE23 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE23
0;JMP
(YGT023)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH23 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE23 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE23
0; JMP
//D HOLDS X
(BOTH23)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE23
D; JLT
@NOTTRUE23
0;JMP
(NOTTRUE23)
@SP
A = M -1
M = 0
@ENDTRUE23
0; JMP
(TRUE23)
@SP
A = M - 1
M = -1
(ENDTRUE23)
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE024
D; JLE
@YGT024
D; JGT
(YLE024)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH24 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE24 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE24
0;JMP
(YGT024)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH24 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE24 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE24
0; JMP
//D HOLDS X
(BOTH24)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE24
D; JGT
@NOTTRUE24
0;JMP
(NOTTRUE24)
@SP
A = M -1
M = 0
@ENDTRUE24
0; JMP
(TRUE24)
@SP
A = M - 1
M = -1
(ENDTRUE24)
// and
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
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE025
D; JLE
@YGT025
D; JGT
(YLE025)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH25 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE25 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE25
0;JMP
(YGT025)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH25 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE25 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE25
0; JMP
//D HOLDS X
(BOTH25)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE25
D; JGT
@NOTTRUE25
0;JMP
(NOTTRUE25)
@SP
A = M -1
M = 0
@ENDTRUE25
0; JMP
(TRUE25)
@SP
A = M - 1
M = -1
(ENDTRUE25)
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE026
D; JLE
@YGT026
D; JGT
(YLE026)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH26 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE26 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE26
0;JMP
(YGT026)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH26 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE26 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE26
0; JMP
//D HOLDS X
(BOTH26)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE26
D; JLT
@NOTTRUE26
0;JMP
(NOTTRUE26)
@SP
A = M -1
M = 0
@ENDTRUE26
0; JMP
(TRUE26)
@SP
A = M - 1
M = -1
(ENDTRUE26)
// and
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
// or
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
// pop local 2
@2
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Math.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.abs 1
// get ip
@RET_ADDR26
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Math.abs
0; JMP
(RET_ADDR26)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.abs 1
// get ip
@RET_ADDR27
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Math.abs
0; JMP
(RET_ADDR27)
// pop argument 0
@0
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.divide$WHILE_EXP0)
// push local 3
@3
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// not
@SP
A = M - 1
M = ! M
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.divide$WHILE_END0
D; JNE
// push constant 32767
@32767
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Math.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
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
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Math.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE029
D; JLE
@YGT029
D; JGT
(YLE029)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH29 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE29 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE29
0;JMP
(YGT029)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH29 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE29 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE29
0; JMP
//D HOLDS X
(BOTH29)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE29
D; JLT
@NOTTRUE29
0;JMP
(NOTTRUE29)
@SP
A = M -1
M = 0
@ENDTRUE29
0; JMP
(TRUE29)
@SP
A = M - 1
M = -1
(ENDTRUE29)
// pop local 3
@3
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push local 3
@3
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE1
D; JNE
@Math.divide$IF_FALSE1
0; JMP
(Math.divide$IF_TRUE1)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push static 1
@Math.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Math.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Math.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push static 1
@Math.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE030
D; JLE
@YGT030
D; JGT
(YLE030)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH30 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE30 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE30
0;JMP
(YGT030)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH30 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE30 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE30
0; JMP
//D HOLDS X
(BOTH30)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE30
D; JGT
@NOTTRUE30
0;JMP
(NOTTRUE30)
@SP
A = M -1
M = 0
@ENDTRUE30
0; JMP
(TRUE30)
@SP
A = M - 1
M = -1
(ENDTRUE30)
// pop local 3
@3
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push local 3
@3
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE2
D; JNE
@Math.divide$IF_FALSE2
0; JMP
(Math.divide$IF_TRUE2)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.divide$IF_FALSE2)
(Math.divide$IF_FALSE1)
@Math.divide$WHILE_EXP0
0; JMP
(Math.divide$WHILE_END0)
(Math.divide$WHILE_EXP1)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// neg
@SP
A = M - 1
M = - M
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE031
D; JLE
@YGT031
D; JGT
(YLE031)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH31 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE31 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE31
0;JMP
(YGT031)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH31 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE31 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE31
0; JMP
//D HOLDS X
(BOTH31)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE31
D; JGT
@NOTTRUE31
0;JMP
(NOTTRUE31)
@SP
A = M -1
M = 0
@ENDTRUE31
0; JMP
(TRUE31)
@SP
A = M - 1
M = -1
(ENDTRUE31)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.divide$WHILE_END1
D; JNE
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Math.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE032
D; JLE
@YGT032
D; JGT
(YLE032)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH32 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE32 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE32
0;JMP
(YGT032)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH32 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE32 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE32
0; JMP
//D HOLDS X
(BOTH32)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE32
D; JGT
@NOTTRUE32
0;JMP
(NOTTRUE32)
@SP
A = M -1
M = 0
@ENDTRUE32
0; JMP
(TRUE32)
@SP
A = M - 1
M = -1
(ENDTRUE32)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE3
D; JNE
@Math.divide$IF_FALSE3
0; JMP
(Math.divide$IF_TRUE3)
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop local 1
@1
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Math.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
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
// pop argument 0
@0
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.divide$IF_FALSE3)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
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
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Math.divide$WHILE_EXP1
0; JMP
(Math.divide$WHILE_END1)
// push local 2
@2
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Math.divide$IF_TRUE4
D; JNE
@Math.divide$IF_FALSE4
0; JMP
(Math.divide$IF_TRUE4)
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// neg
@SP
A = M - 1
M = - M
// pop local 1
@1
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.divide$IF_FALSE4)
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Math.sqrt 2
(f_Math.sqrt)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
M = 0
A = A + 1
@2
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE033
D; JLE
@YGT033
D; JGT
(YLE033)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH33 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE33 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE33
0;JMP
(YGT033)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH33 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE33 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE33
0; JMP
//D HOLDS X
(BOTH33)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE33
D; JLT
@NOTTRUE33
0;JMP
(NOTTRUE33)
@SP
A = M -1
M = 0
@ENDTRUE33
0; JMP
(TRUE33)
@SP
A = M - 1
M = -1
(ENDTRUE33)
@SP
AM = M - 1
D = M
@Math.sqrt$IF_TRUE0
D; JNE
@Math.sqrt$IF_FALSE0
0; JMP
(Math.sqrt$IF_TRUE0)
// push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR33
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Sys.error
0; JMP
(RET_ADDR33)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.sqrt$IF_FALSE0)
// push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.sqrt$WHILE_EXP0)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// neg
@SP
A = M - 1
M = - M
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE035
D; JLE
@YGT035
D; JGT
(YLE035)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH35 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE35 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE35
0;JMP
(YGT035)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH35 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE35 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE35
0; JMP
//D HOLDS X
(BOTH35)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE35
D; JGT
@NOTTRUE35
0;JMP
(NOTTRUE35)
@SP
A = M -1
M = 0
@ENDTRUE35
0; JMP
(TRUE35)
@SP
A = M - 1
M = -1
(ENDTRUE35)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.sqrt$WHILE_END0
D; JNE
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// call Math.multiply 2
// get ip
@RET_ADDR35
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Math.multiply
0; JMP
(RET_ADDR35)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE037
D; JLE
@YGT037
D; JGT
(YLE037)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH37 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE37 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE37
0;JMP
(YGT037)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH37 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE37 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE37
0; JMP
//D HOLDS X
(BOTH37)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE37
D; JGT
@NOTTRUE37
0;JMP
(NOTTRUE37)
@SP
A = M -1
M = 0
@ENDTRUE37
0; JMP
(TRUE37)
@SP
A = M - 1
M = -1
(ENDTRUE37)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.sqrt$IF_TRUE1
D; JNE
@Math.sqrt$IF_FALSE1
0; JMP
(Math.sqrt$IF_TRUE1)
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Math.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop local 1
@1
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.sqrt$IF_FALSE1)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
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
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Math.sqrt$WHILE_EXP0
0; JMP
(Math.sqrt$WHILE_END0)
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Math.max 0
(f_Math.max)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE038
D; JLE
@YGT038
D; JGT
(YLE038)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH38 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE38 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE38
0;JMP
(YGT038)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH38 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE38 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE38
0; JMP
//D HOLDS X
(BOTH38)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE38
D; JGT
@NOTTRUE38
0;JMP
(NOTTRUE38)
@SP
A = M -1
M = 0
@ENDTRUE38
0; JMP
(TRUE38)
@SP
A = M - 1
M = -1
(ENDTRUE38)
@SP
AM = M - 1
D = M
@Math.max$IF_TRUE0
D; JNE
@Math.max$IF_FALSE0
0; JMP
(Math.max$IF_TRUE0)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop argument 1
@1
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.max$IF_FALSE0)
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Math.min 0
(f_Math.min)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE039
D; JLE
@YGT039
D; JGT
(YLE039)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH39 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE39 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE39
0;JMP
(YGT039)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH39 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE39 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE39
0; JMP
//D HOLDS X
(BOTH39)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE39
D; JLT
@NOTTRUE39
0;JMP
(NOTTRUE39)
@SP
A = M -1
M = 0
@ENDTRUE39
0; JMP
(TRUE39)
@SP
A = M - 1
M = -1
(ENDTRUE39)
@SP
AM = M - 1
D = M
@Math.min$IF_TRUE0
D; JNE
@Math.min$IF_FALSE0
0; JMP
(Math.min$IF_TRUE0)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop argument 1
@1
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Math.min$IF_FALSE0)
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Memory.init 0
(f_Memory.init)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 0
@Memory.0
D = A
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 2048
@2048
D = A
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Memory.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 14334
@14334
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 2049
@2049
D = A
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Memory.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 2050
@2050
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Memory.peek 0
(f_Memory.peek)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Memory.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Memory.poke 0
(f_Memory.poke)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Memory.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push argument 1
@1
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Memory.alloc 2
(f_Memory.alloc)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
M = 0
A = A + 1
@2
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE040
D; JLE
@YGT040
D; JGT
(YLE040)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH40 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE40 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE40
0;JMP
(YGT040)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH40 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE40 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE40
0; JMP
//D HOLDS X
(BOTH40)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE40
D; JLT
@NOTTRUE40
0;JMP
(NOTTRUE40)
@SP
A = M -1
M = 0
@ENDTRUE40
0; JMP
(TRUE40)
@SP
A = M - 1
M = -1
(ENDTRUE40)
@SP
AM = M - 1
D = M
@Memory.alloc$IF_TRUE0
D; JNE
@Memory.alloc$IF_FALSE0
0; JMP
(Memory.alloc$IF_TRUE0)
// push constant 5
@5
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR40
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Sys.error
0; JMP
(RET_ADDR40)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Memory.alloc$IF_FALSE0)
// push constant 2048
@2048
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop local 1
@1
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Memory.alloc$WHILE_EXP0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE042
D; JLE
@YGT042
D; JGT
(YLE042)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH42 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE42 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE42
0;JMP
(YGT042)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH42 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE42 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE42
0; JMP
//D HOLDS X
(BOTH42)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE42
D; JLT
@NOTTRUE42
0;JMP
(NOTTRUE42)
@SP
A = M -1
M = 0
@ENDTRUE42
0; JMP
(TRUE42)
@SP
A = M - 1
M = -1
(ENDTRUE42)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Memory.alloc$WHILE_END0
D; JNE
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop local 1
@1
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Memory.alloc$WHILE_EXP0
0; JMP
(Memory.alloc$WHILE_END0)
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 16379
@16379
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE043
D; JLE
@YGT043
D; JGT
(YLE043)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH43 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE43 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE43
0;JMP
(YGT043)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH43 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE43 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE43
0; JMP
//D HOLDS X
(BOTH43)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE43
D; JGT
@NOTTRUE43
0;JMP
(NOTTRUE43)
@SP
A = M -1
M = 0
@ENDTRUE43
0; JMP
(TRUE43)
@SP
A = M - 1
M = -1
(ENDTRUE43)
@SP
AM = M - 1
D = M
@Memory.alloc$IF_TRUE1
D; JNE
@Memory.alloc$IF_FALSE1
0; JMP
(Memory.alloc$IF_TRUE1)
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR43
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Sys.error
0; JMP
(RET_ADDR43)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Memory.alloc$IF_FALSE1)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE045
D; JLE
@YGT045
D; JGT
(YLE045)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH45 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE45 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE45
0;JMP
(YGT045)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH45 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE45 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE45
0; JMP
//D HOLDS X
(BOTH45)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE45
D; JGT
@NOTTRUE45
0;JMP
(NOTTRUE45)
@SP
A = M -1
M = 0
@ENDTRUE45
0; JMP
(TRUE45)
@SP
A = M - 1
M = -1
(ENDTRUE45)
@SP
AM = M - 1
D = M
@Memory.alloc$IF_TRUE2
D; JNE
@Memory.alloc$IF_FALSE2
0; JMP
(Memory.alloc$IF_TRUE2)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE046
D; JLE
@YGT046
D; JGT
(YLE046)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH46 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE46 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE46
0;JMP
(YGT046)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH46 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE46 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE46
0; JMP
//D HOLDS X
(BOTH46)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE46
D; JEQ
@NOTTRUE46
0;JMP
(NOTTRUE46)
@SP
A = M -1
M = 0
@ENDTRUE46
0; JMP
(TRUE46)
@SP
A = M - 1
M = -1
(ENDTRUE46)
@SP
AM = M - 1
D = M
@Memory.alloc$IF_TRUE3
D; JNE
@Memory.alloc$IF_FALSE3
0; JMP
(Memory.alloc$IF_TRUE3)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Memory.alloc$IF_END3
0; JMP
(Memory.alloc$IF_FALSE3)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Memory.alloc$IF_END3)
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Memory.alloc$IF_FALSE2)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Memory.deAlloc 2
(f_Memory.deAlloc)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
M = 0
A = A + 1
@2
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 2
@2
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
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop local 1
@1
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE047
D; JLE
@YGT047
D; JGT
(YLE047)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH47 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE47 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE47
0;JMP
(YGT047)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH47 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE47 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE47
0; JMP
//D HOLDS X
(BOTH47)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE47
D; JEQ
@NOTTRUE47
0;JMP
(NOTTRUE47)
@SP
A = M -1
M = 0
@ENDTRUE47
0; JMP
(TRUE47)
@SP
A = M - 1
M = -1
(ENDTRUE47)
@SP
AM = M - 1
D = M
@Memory.deAlloc$IF_TRUE0
D; JNE
@Memory.deAlloc$IF_FALSE0
0; JMP
(Memory.deAlloc$IF_TRUE0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
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
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Memory.deAlloc$IF_END0
0; JMP
(Memory.deAlloc$IF_FALSE0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE048
D; JLE
@YGT048
D; JGT
(YLE048)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH48 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE48 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE48
0;JMP
(YGT048)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH48 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE48 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE48
0; JMP
//D HOLDS X
(BOTH48)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE48
D; JEQ
@NOTTRUE48
0;JMP
(NOTTRUE48)
@SP
A = M -1
M = 0
@ENDTRUE48
0; JMP
(TRUE48)
@SP
A = M - 1
M = -1
(ENDTRUE48)
@SP
AM = M - 1
D = M
@Memory.deAlloc$IF_TRUE1
D; JNE
@Memory.deAlloc$IF_FALSE1
0; JMP
(Memory.deAlloc$IF_TRUE1)
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Memory.deAlloc$IF_END1
0; JMP
(Memory.deAlloc$IF_FALSE1)
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// push local 1
@1
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// add
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
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push that 0
@0
D = A
@THAT
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// pop pointer 1
@1
D = A
@3
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push temp 0
@0
D = A
@5
A = A + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop that 0
@0
D = A
@THAT
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Memory.deAlloc$IF_END1)
(Memory.deAlloc$IF_END0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Sys.init 0
(f_Sys.init)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// call Memory.init 0
// get ip
@RET_ADDR48
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Memory.init
0; JMP
(RET_ADDR48)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// call Math.init 0
// get ip
@RET_ADDR49
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Math.init
0; JMP
(RET_ADDR49)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// call Main.main 0
// get ip
@RET_ADDR50
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Main.main
0; JMP
(RET_ADDR50)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Sys.init$WHILE_EXP0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// not
@SP
A = M - 1
M = ! M
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Sys.init$WHILE_END0
D; JNE
@Sys.init$WHILE_EXP0
0; JMP
(Sys.init$WHILE_END0)
// function Sys.halt 0
(f_Sys.halt)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
(Sys.halt$WHILE_EXP0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// not
@SP
A = M - 1
M = ! M
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Sys.halt$WHILE_END0
D; JNE
@Sys.halt$WHILE_EXP0
0; JMP
(Sys.halt$WHILE_END0)
// function Sys.wait 1
(f_Sys.wait)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
@1
D = A
@SP
M = M + D
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE052
D; JLE
@YGT052
D; JGT
(YLE052)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH52 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE52 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE52
0;JMP
(YGT052)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH52 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE52 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE52
0; JMP
//D HOLDS X
(BOTH52)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE52
D; JLT
@NOTTRUE52
0;JMP
(NOTTRUE52)
@SP
A = M -1
M = 0
@ENDTRUE52
0; JMP
(TRUE52)
@SP
A = M - 1
M = -1
(ENDTRUE52)
@SP
AM = M - 1
D = M
@Sys.wait$IF_TRUE0
D; JNE
@Sys.wait$IF_FALSE0
0; JMP
(Sys.wait$IF_TRUE0)
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR52
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Sys.error
0; JMP
(RET_ADDR52)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Sys.wait$IF_FALSE0)
(Sys.wait$WHILE_EXP0)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE054
D; JLE
@YGT054
D; JGT
(YLE054)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH54 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE54 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE54
0;JMP
(YGT054)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH54 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE54 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE54
0; JMP
//D HOLDS X
(BOTH54)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE54
D; JGT
@NOTTRUE54
0;JMP
(NOTTRUE54)
@SP
A = M -1
M = 0
@ENDTRUE54
0; JMP
(TRUE54)
@SP
A = M - 1
M = -1
(ENDTRUE54)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Sys.wait$WHILE_END0
D; JNE
// push constant 50
@50
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Sys.wait$WHILE_EXP1)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE055
D; JLE
@YGT055
D; JGT
(YLE055)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH55 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE55 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE55
0;JMP
(YGT055)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH55 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE55 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE55
0; JMP
//D HOLDS X
(BOTH55)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE55
D; JGT
@NOTTRUE55
0;JMP
(NOTTRUE55)
@SP
A = M -1
M = 0
@ENDTRUE55
0; JMP
(TRUE55)
@SP
A = M - 1
M = -1
(ENDTRUE55)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Sys.wait$WHILE_END1
D; JNE
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
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
// pop local 0
@0
D = A
@LCL
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Sys.wait$WHILE_EXP1
0; JMP
(Sys.wait$WHILE_END1)
// push argument 0
@0
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 1
@1
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
// pop argument 0
@0
D = A
@ARG
D = M + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Sys.wait$WHILE_EXP0
0; JMP
(Sys.wait$WHILE_END0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// return
@LCL // frame =  LCL
D = M
@R13 // R13 is frame
M = D
@5
A = D - A
D = M
@R14
M = D // sets retAddr to frame - 5
@SP
AM = M - 1
D = M
@ARG
A = M // *ARG = pop
M = D
@ARG
D = M
@SP
M = D + 1
@R13
M = M - 1
@R13
A = M
D = M
@THAT
M = D
@R13
M = M - 1
@R13
A = M
D = M
@THIS
M = D
@R13
M = M - 1
@R13
A = M
D = M
@ARG
M = D
@R13
M = M - 1
@R13
A = M
D = M
@LCL
M = D
@R14
A = M
0; JMP
// function Sys.error 0
(f_Sys.error)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
(Sys.error$WHILE_EXP0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// not
@SP
A = M - 1
M = ! M
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Sys.error$WHILE_END0
D; JNE
@Sys.error$WHILE_EXP0
0; JMP
(Sys.error$WHILE_END0)
