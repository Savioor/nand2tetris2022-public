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
// function Board.new 3
(f_Board.new)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
@3
D = A
@SP
M = M + D
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Memory.alloc 1
// get ip
@RET_ADDR5
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
(RET_ADDR5)
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
// push constant 9
@9
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 0
@Board.0
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
// push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 0
@Board.0
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
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 1
@Board.1
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
// push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 2
@Board.2
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
// push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 3
@Board.3
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
// push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 4
@Board.4
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
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 7
@Board.7
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
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 7
@Board.7
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
// pop this 1
@1
D = A
@THIS
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
// pop this 2
@2
D = A
@THIS
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
// push static 0
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Array.new 1
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
(RET_ADDR6)
// pop this 0
@0
D = A
@THIS
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
(Board.new$WHILE_EXP0)
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
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
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
D; JLT
@NOTTRUE8
0;JMP
(YGT08)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH8 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE8 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE8
0; JMP
//D HOLDS X
(BOTH8)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE8
D; JLT
@NOTTRUE8
0;JMP
(NOTTRUE8)
@SP
A = M -1
M = 0
@ENDTRUE8
0; JMP
(TRUE8)
@SP
A = M - 1
M = -1
(ENDTRUE8)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.new$WHILE_END0
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
// push this 0
@0
D = A
@THIS
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
// push static 0
@Board.0
D = M
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
// push this 0
@0
D = A
@THIS
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
(Board.new$WHILE_EXP1)
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
// push static 0
@Board.0
D = M
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
@Board.new$WHILE_END1
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
// push static 7
@Board.7
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
@Board.new$WHILE_EXP1
0; JMP
(Board.new$WHILE_END1)
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
@Board.new$WHILE_EXP0
0; JMP
(Board.new$WHILE_END0)
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
// function Board.setCell 1
(f_Board.setCell)
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
// push this 0
@0
D = A
@THIS
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
// push argument 2
@2
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
// push static 6
@Board.6
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
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
D; JEQ
@NOTTRUE11
0;JMP
(YGT011)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH11 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE11 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE11
0; JMP
//D HOLDS X
(BOTH11)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE11
D; JEQ
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.setCell$IF_TRUE0
D; JNE
@Board.setCell$IF_FALSE0
0; JMP
(Board.setCell$IF_TRUE0)
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
// call Screen.setColor 1
// get ip
@RET_ADDR11
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
@f_Screen.setColor
0; JMP
(RET_ADDR11)
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
// push static 2
@Board.2
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR12
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
(RET_ADDR12)
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
@Board.1
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
// call Math.divide 2
// get ip
@RET_ADDR13
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
@f_Math.divide
0; JMP
(RET_ADDR13)
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
// push static 3
@Board.3
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
// push static 1
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR14
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
(RET_ADDR14)
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
@Board.1
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
// call Math.divide 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Math.divide
0; JMP
(RET_ADDR15)
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
// push static 4
@Board.4
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Screen.drawCircle 3
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawCircle
0; JMP
(RET_ADDR16)
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
(Board.setCell$IF_FALSE0)
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 5
@Board.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
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
D; JEQ
@NOTTRUE18
0;JMP
(YGT018)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH18 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE18 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE18
0; JMP
//D HOLDS X
(BOTH18)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE18
D; JEQ
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
@Board.setCell$IF_TRUE1
D; JNE
@Board.setCell$IF_FALSE1
0; JMP
(Board.setCell$IF_TRUE1)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.setColor 1
// get ip
@RET_ADDR18
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
@f_Screen.setColor
0; JMP
(RET_ADDR18)
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
// push static 2
@Board.2
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR19
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
(RET_ADDR19)
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
@Board.1
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
// call Math.divide 2
// get ip
@RET_ADDR20
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
@f_Math.divide
0; JMP
(RET_ADDR20)
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
// push static 3
@Board.3
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
// push static 1
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
(RET_ADDR21)
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
@Board.1
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
// call Math.divide 2
// get ip
@RET_ADDR22
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
@f_Math.divide
0; JMP
(RET_ADDR22)
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
// push static 4
@Board.4
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
// call Screen.drawCircle 3
// get ip
@RET_ADDR23
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawCircle
0; JMP
(RET_ADDR23)
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
(Board.setCell$IF_FALSE1)
// push argument 2
@2
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
// push argument 3
@3
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
// function Board.initGrid 4
(f_Board.initGrid)
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
// push static 0
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR24
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
(RET_ADDR24)
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
// push static 0
@Board.0
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
// push static 0
@Board.0
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
// call Math.divide 2
// get ip
@RET_ADDR25
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
@f_Math.divide
0; JMP
(RET_ADDR25)
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
// call Screen.setColor 1
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
@f_Screen.setColor
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
(Board.initGrid$WHILE_EXP0)
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE028
D; JLE
@YGT028
D; JGT
(YLE028)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH28 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE28 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE28
0;JMP
(YGT028)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH28 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE28 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE28
0; JMP
//D HOLDS X
(BOTH28)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE28
D; JLT
@NOTTRUE28
0;JMP
(NOTTRUE28)
@SP
A = M -1
M = 0
@ENDTRUE28
0; JMP
(TRUE28)
@SP
A = M - 1
M = -1
(ENDTRUE28)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.initGrid$WHILE_END0
D; JNE
// push static 2
@Board.2
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 3
@Board.3
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
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR28
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
(RET_ADDR28)
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
// push static 2
@Board.2
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
// push static 3
@Board.3
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
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR29
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
(RET_ADDR29)
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
// call Screen.drawLine 4
// get ip
@RET_ADDR30
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR30)
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
// push static 2
@Board.2
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
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR31
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
(RET_ADDR31)
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
// push static 3
@Board.3
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 2
@Board.2
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
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR32
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
(RET_ADDR32)
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
// push static 3
@Board.3
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
// call Screen.drawLine 4
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
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
@Board.initGrid$WHILE_EXP0
0; JMP
(Board.initGrid$WHILE_END0)
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
// push static 5
@Board.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
// get ip
@RET_ADDR34
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
0; JMP
(RET_ADDR34)
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
// push static 6
@Board.6
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
0; JMP
(RET_ADDR35)
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
// push static 6
@Board.6
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
// get ip
@RET_ADDR36
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
0; JMP
(RET_ADDR36)
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
// push static 5
@Board.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
// get ip
@RET_ADDR37
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
0; JMP
(RET_ADDR37)
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
// call Board.drawSelected 2
// get ip
@RET_ADDR38
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
@f_Board.drawSelected
0; JMP
(RET_ADDR38)
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
@SP
AM = M - 1
D = M
@Board.initGrid$IF_TRUE0
D; JNE
@Board.initGrid$IF_FALSE0
0; JMP
(Board.initGrid$IF_TRUE0)
// push static 0
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR39
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
(RET_ADDR39)
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
// push static 0
@Board.0
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
// push static 0
@Board.0
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
// call Math.divide 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Math.divide
0; JMP
(RET_ADDR40)
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
// call Screen.setColor 1
// get ip
@RET_ADDR41
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
@f_Screen.setColor
0; JMP
(RET_ADDR41)
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
(Board.initGrid$WHILE_EXP1)
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
// lt
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
D; JLT
@NOTTRUE43
0;JMP
(YGT043)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH43 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE43 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE43
0; JMP
//D HOLDS X
(BOTH43)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE43
D; JLT
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.initGrid$WHILE_END1
D; JNE
// push static 2
@Board.2
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 3
@Board.3
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
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
(RET_ADDR43)
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
// push static 2
@Board.2
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
// push static 3
@Board.3
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
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR44
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
(RET_ADDR44)
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
// call Screen.drawLine 4
// get ip
@RET_ADDR45
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR45)
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
// push static 2
@Board.2
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
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR46
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
(RET_ADDR46)
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
// push static 3
@Board.3
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 2
@Board.2
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
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR47
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
(RET_ADDR47)
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
// push static 3
@Board.3
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
// call Screen.drawLine 4
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
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
@Board.initGrid$WHILE_EXP1
0; JMP
(Board.initGrid$WHILE_END1)
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
// push static 5
@Board.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
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
// push static 6
@Board.6
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
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
// push static 6
@Board.6
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
// get ip
@RET_ADDR51
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
0; JMP
(RET_ADDR51)
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
// push static 5
@Board.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
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
// call Board.drawSelected 2
// get ip
@RET_ADDR53
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
@f_Board.drawSelected
0; JMP
(RET_ADDR53)
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
(Board.initGrid$IF_FALSE0)
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
// function Board.getSelectedRow 0
(f_Board.getSelectedRow)
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
// push this 1
@1
D = A
@THIS
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
// function Board.getSelectedCol 0
(f_Board.getSelectedCol)
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
// push this 2
@2
D = A
@THIS
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
// function Board.isEmpty 1
(f_Board.isEmpty)
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
// push argument 2
@2
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
// push static 7
@Board.7
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
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
D; JEQ
@NOTTRUE55
0;JMP
(YGT055)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH55 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE55 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE55
0; JMP
//D HOLDS X
(BOTH55)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE55
D; JEQ
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
// function Board.setConsts 0
(f_Board.setConsts)
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
// pop static 5
@Board.5
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop static 6
@Board.6
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
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop static 8
@Board.8
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
// push argument 4
@4
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop static 9
@Board.9
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
// push argument 5
@5
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop static 11
@Board.11
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
// push argument 6
@6
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop static 10
@Board.10
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
// function Board.reverseDir 7
(f_Board.reverseDir)
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
M = 0
A = A + 1
M = 0
A = A + 1
@7
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
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
// not
@SP
A = M - 1
M = ! M
// pop local 5
@5
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
(Board.reverseDir$WHILE_EXP0)
// push local 5
@5
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
@Board.reverseDir$WHILE_END0
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
// push argument 6
@6
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
// push argument 5
@5
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
@YLE056
D; JLE
@YGT056
D; JGT
(YLE056)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH56 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE56 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE56
0;JMP
(YGT056)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH56 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE56 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE56
0; JMP
//D HOLDS X
(BOTH56)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE56
D; JLT
@NOTTRUE56
0;JMP
(NOTTRUE56)
@SP
A = M -1
M = 0
@ENDTRUE56
0; JMP
(TRUE56)
@SP
A = M - 1
M = -1
(ENDTRUE56)
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
// push static 0
@Board.0
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE057
D; JLE
@YGT057
D; JGT
(YLE057)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH57 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE57 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE57
0;JMP
(YGT057)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH57 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE57 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE57
0; JMP
//D HOLDS X
(BOTH57)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE57
D; JGT
@NOTTRUE57
0;JMP
(NOTTRUE57)
@SP
A = M -1
M = 0
@ENDTRUE57
0; JMP
(TRUE57)
@SP
A = M - 1
M = -1
(ENDTRUE57)
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
@YLE058
D; JLE
@YGT058
D; JGT
(YLE058)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH58 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE58 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE58
0;JMP
(YGT058)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH58 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE58 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE58
0; JMP
//D HOLDS X
(BOTH58)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE58
D; JLT
@NOTTRUE58
0;JMP
(NOTTRUE58)
@SP
A = M -1
M = 0
@ENDTRUE58
0; JMP
(TRUE58)
@SP
A = M - 1
M = -1
(ENDTRUE58)
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
// push static 0
@Board.0
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE059
D; JLE
@YGT059
D; JGT
(YLE059)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH59 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE59 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE59
0;JMP
(YGT059)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH59 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE59 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE59
0; JMP
//D HOLDS X
(BOTH59)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE59
D; JGT
@NOTTRUE59
0;JMP
(NOTTRUE59)
@SP
A = M -1
M = 0
@ENDTRUE59
0; JMP
(TRUE59)
@SP
A = M - 1
M = -1
(ENDTRUE59)
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
@SP
AM = M - 1
D = M
@Board.reverseDir$IF_TRUE0
D; JNE
@Board.reverseDir$IF_FALSE0
0; JMP
(Board.reverseDir$IF_TRUE0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop local 5
@5
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
@Board.reverseDir$IF_END0
0; JMP
(Board.reverseDir$IF_FALSE0)
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
// push this 0
@0
D = A
@THIS
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
// pop local 6
@6
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
// push local 6
@6
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
// push static 7
@Board.7
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE060
D; JLE
@YGT060
D; JGT
(YLE060)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH60 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE60 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE60
0;JMP
(YGT060)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH60 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE60 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE60
0; JMP
//D HOLDS X
(BOTH60)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE60
D; JEQ
@NOTTRUE60
0;JMP
(NOTTRUE60)
@SP
A = M -1
M = 0
@ENDTRUE60
0; JMP
(TRUE60)
@SP
A = M - 1
M = -1
(ENDTRUE60)
@SP
AM = M - 1
D = M
@Board.reverseDir$IF_TRUE1
D; JNE
@Board.reverseDir$IF_FALSE1
0; JMP
(Board.reverseDir$IF_TRUE1)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop local 5
@5
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
@Board.reverseDir$IF_END1
0; JMP
(Board.reverseDir$IF_FALSE1)
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
// push local 6
@6
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
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE061
D; JLE
@YGT061
D; JGT
(YLE061)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH61 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE61 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE61
0;JMP
(YGT061)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH61 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE61 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE61
0; JMP
//D HOLDS X
(BOTH61)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE61
D; JEQ
@NOTTRUE61
0;JMP
(NOTTRUE61)
@SP
A = M -1
M = 0
@ENDTRUE61
0; JMP
(TRUE61)
@SP
A = M - 1
M = -1
(ENDTRUE61)
@SP
AM = M - 1
D = M
@Board.reverseDir$IF_TRUE2
D; JNE
@Board.reverseDir$IF_FALSE2
0; JMP
(Board.reverseDir$IF_TRUE2)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop local 5
@5
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
@Board.reverseDir$IF_END2
0; JMP
(Board.reverseDir$IF_FALSE2)
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
(Board.reverseDir$IF_END2)
(Board.reverseDir$IF_END1)
(Board.reverseDir$IF_END0)
@Board.reverseDir$WHILE_EXP0
0; JMP
(Board.reverseDir$WHILE_END0)
// push argument 4
@4
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
@YLE062
D; JLE
@YGT062
D; JGT
(YLE062)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH62 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE62 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE62
0;JMP
(YGT062)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH62 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE62 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE62
0; JMP
//D HOLDS X
(BOTH62)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE62
D; JGT
@NOTTRUE62
0;JMP
(NOTTRUE62)
@SP
A = M -1
M = 0
@ENDTRUE62
0; JMP
(TRUE62)
@SP
A = M - 1
M = -1
(ENDTRUE62)
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
@SP
AM = M - 1
D = M
@Board.reverseDir$IF_TRUE3
D; JNE
@Board.reverseDir$IF_FALSE3
0; JMP
(Board.reverseDir$IF_TRUE3)
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
// push argument 6
@6
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 5
@5
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
(Board.reverseDir$WHILE_EXP1)
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE063
D; JLE
@YGT063
D; JGT
(YLE063)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH63 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE63 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE63
0;JMP
(YGT063)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH63 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE63 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE63
0; JMP
//D HOLDS X
(BOTH63)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE63
D; JEQ
@NOTTRUE63
0;JMP
(NOTTRUE63)
@SP
A = M -1
M = 0
@ENDTRUE63
0; JMP
(TRUE63)
@SP
A = M - 1
M = -1
(ENDTRUE63)
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE064
D; JLE
@YGT064
D; JGT
(YLE064)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH64 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE64 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE64
0;JMP
(YGT064)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH64 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE64 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE64
0; JMP
//D HOLDS X
(BOTH64)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE64
D; JEQ
@NOTTRUE64
0;JMP
(NOTTRUE64)
@SP
A = M -1
M = 0
@ENDTRUE64
0; JMP
(TRUE64)
@SP
A = M - 1
M = -1
(ENDTRUE64)
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
@Board.reverseDir$WHILE_END1
D; JNE
// push constant 150
@150
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR64
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
@f_Sys.wait
0; JMP
(RET_ADDR64)
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
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
// get ip
@RET_ADDR65
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
0; JMP
(RET_ADDR65)
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
// push argument 6
@6
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
// push argument 5
@5
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
@Board.reverseDir$WHILE_EXP1
0; JMP
(Board.reverseDir$WHILE_END1)
(Board.reverseDir$IF_FALSE3)
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
// function Board.reverse 2
(f_Board.reverse)
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
// push this 0
@0
D = A
@THIS
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
// push argument 2
@2
D = A
@ARG
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
// push static 7
@Board.7
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE067
D; JLE
@YGT067
D; JGT
(YLE067)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH67 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE67 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE67
0;JMP
(YGT067)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH67 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE67 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE67
0; JMP
//D HOLDS X
(BOTH67)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE67
D; JEQ
@NOTTRUE67
0;JMP
(NOTTRUE67)
@SP
A = M -1
M = 0
@ENDTRUE67
0; JMP
(TRUE67)
@SP
A = M - 1
M = -1
(ENDTRUE67)
@SP
AM = M - 1
D = M
@Board.reverse$IF_TRUE0
D; JNE
@Board.reverse$IF_FALSE0
0; JMP
(Board.reverse$IF_TRUE0)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// call Board.reverseDir 7
// get ip
@RET_ADDR67
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR67)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// call Board.reverseDir 7
// get ip
@RET_ADDR68
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR68)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR69
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR69)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR70
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR70)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR71
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR71)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// neg
@SP
A = M - 1
M = - M
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR72
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR72)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// neg
@SP
A = M - 1
M = - M
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR73
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR73)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// neg
@SP
A = M - 1
M = - M
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
// call Board.reverseDir 7
// get ip
@RET_ADDR74
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR74)
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Board.reverse$IF_TRUE1
D; JNE
@Board.reverse$IF_FALSE1
0; JMP
(Board.reverse$IF_TRUE1)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// call Board.reverseDir 7
// get ip
@RET_ADDR75
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR75)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// call Board.reverseDir 7
// get ip
@RET_ADDR76
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR76)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR77
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR77)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR78
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR78)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR79
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR79)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// neg
@SP
A = M - 1
M = - M
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR80
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR80)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// neg
@SP
A = M - 1
M = - M
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.reverseDir 7
// get ip
@RET_ADDR81
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR81)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 4
@4
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
// neg
@SP
A = M - 1
M = - M
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
// call Board.reverseDir 7
// get ip
@RET_ADDR82
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverseDir
0; JMP
(RET_ADDR82)
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
(Board.reverse$IF_FALSE1)
// push argument 4
@4
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
@YLE084
D; JLE
@YGT084
D; JGT
(YLE084)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH84 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE84 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE84
0;JMP
(YGT084)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH84 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE84 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE84
0; JMP
//D HOLDS X
(BOTH84)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE84
D; JGT
@NOTTRUE84
0;JMP
(NOTTRUE84)
@SP
A = M -1
M = 0
@ENDTRUE84
0; JMP
(TRUE84)
@SP
A = M - 1
M = -1
(ENDTRUE84)
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
@SP
AM = M - 1
D = M
@Board.reverse$IF_TRUE2
D; JNE
@Board.reverse$IF_FALSE2
0; JMP
(Board.reverse$IF_TRUE2)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setCell 4
// get ip
@RET_ADDR84
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setCell
0; JMP
(RET_ADDR84)
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
(Board.reverse$IF_FALSE2)
@Board.reverse$IF_END0
0; JMP
(Board.reverse$IF_FALSE0)
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
(Board.reverse$IF_END0)
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
// function Board.isGameOver 4
(f_Board.isGameOver)
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
// not
@SP
A = M - 1
M = ! M
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
(Board.isGameOver$WHILE_EXP0)
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
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE086
D; JLE
@YGT086
D; JGT
(YLE086)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH86 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE86 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE86
0;JMP
(YGT086)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH86 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE86 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE86
0; JMP
//D HOLDS X
(BOTH86)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE86
D; JLT
@NOTTRUE86
0;JMP
(NOTTRUE86)
@SP
A = M -1
M = 0
@ENDTRUE86
0; JMP
(TRUE86)
@SP
A = M - 1
M = -1
(ENDTRUE86)
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.isGameOver$WHILE_END0
D; JNE
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
(Board.isGameOver$WHILE_EXP1)
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
// push static 0
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE087
D; JLE
@YGT087
D; JGT
(YLE087)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH87 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE87 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE87
0;JMP
(YGT087)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH87 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE87 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE87
0; JMP
//D HOLDS X
(BOTH87)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE87
D; JLT
@NOTTRUE87
0;JMP
(NOTTRUE87)
@SP
A = M -1
M = 0
@ENDTRUE87
0; JMP
(TRUE87)
@SP
A = M - 1
M = -1
(ENDTRUE87)
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.isGameOver$WHILE_END1
D; JNE
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
// call Board.reverse 5
// get ip
@RET_ADDR87
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
@10
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverse
0; JMP
(RET_ADDR87)
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
@YLE089
D; JLE
@YGT089
D; JGT
(YLE089)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH89 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE89 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE89
0;JMP
(YGT089)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH89 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE89 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE89
0; JMP
//D HOLDS X
(BOTH89)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE89
D; JGT
@NOTTRUE89
0;JMP
(NOTTRUE89)
@SP
A = M -1
M = 0
@ENDTRUE89
0; JMP
(TRUE89)
@SP
A = M - 1
M = -1
(ENDTRUE89)
@SP
AM = M - 1
D = M
@Board.isGameOver$IF_TRUE0
D; JNE
@Board.isGameOver$IF_FALSE0
0; JMP
(Board.isGameOver$IF_TRUE0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
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
(Board.isGameOver$IF_FALSE0)
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
@Board.isGameOver$WHILE_EXP1
0; JMP
(Board.isGameOver$WHILE_END1)
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
@Board.isGameOver$WHILE_EXP0
0; JMP
(Board.isGameOver$WHILE_END0)
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
// function Board.getWinner 6
(f_Board.getWinner)
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
M = 0
A = A + 1
@6
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
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
// push static 7
@Board.7
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(Board.getWinner$WHILE_EXP0)
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
// push static 0
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE090
D; JLE
@YGT090
D; JGT
(YLE090)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH90 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE90 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE90
0;JMP
(YGT090)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH90 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE90 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE90
0; JMP
//D HOLDS X
(BOTH90)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE90
D; JLT
@NOTTRUE90
0;JMP
(NOTTRUE90)
@SP
A = M -1
M = 0
@ENDTRUE90
0; JMP
(TRUE90)
@SP
A = M - 1
M = -1
(ENDTRUE90)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.getWinner$WHILE_END0
D; JNE
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
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
// push this 0
@0
D = A
@THIS
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
// pop local 5
@5
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
(Board.getWinner$WHILE_EXP1)
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
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE091
D; JLE
@YGT091
D; JGT
(YLE091)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH91 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE91 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE91
0;JMP
(YGT091)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH91 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE91 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE91
0; JMP
//D HOLDS X
(BOTH91)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE91
D; JLT
@NOTTRUE91
0;JMP
(NOTTRUE91)
@SP
A = M -1
M = 0
@ENDTRUE91
0; JMP
(TRUE91)
@SP
A = M - 1
M = -1
(ENDTRUE91)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.getWinner$WHILE_END1
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
// push local 5
@5
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
// push static 5
@Board.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE092
D; JLE
@YGT092
D; JGT
(YLE092)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH92 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE92 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE92
0;JMP
(YGT092)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH92 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE92 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE92
0; JMP
//D HOLDS X
(BOTH92)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE92
D; JEQ
@NOTTRUE92
0;JMP
(NOTTRUE92)
@SP
A = M -1
M = 0
@ENDTRUE92
0; JMP
(TRUE92)
@SP
A = M - 1
M = -1
(ENDTRUE92)
@SP
AM = M - 1
D = M
@Board.getWinner$IF_TRUE0
D; JNE
@Board.getWinner$IF_FALSE0
0; JMP
(Board.getWinner$IF_TRUE0)
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
@Board.getWinner$IF_END0
0; JMP
(Board.getWinner$IF_FALSE0)
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
// push local 5
@5
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
// push static 6
@Board.6
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE093
D; JLE
@YGT093
D; JGT
(YLE093)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH93 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE93 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE93
0;JMP
(YGT093)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH93 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE93 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE93
0; JMP
//D HOLDS X
(BOTH93)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE93
D; JEQ
@NOTTRUE93
0;JMP
(NOTTRUE93)
@SP
A = M -1
M = 0
@ENDTRUE93
0; JMP
(TRUE93)
@SP
A = M - 1
M = -1
(ENDTRUE93)
@SP
AM = M - 1
D = M
@Board.getWinner$IF_TRUE1
D; JNE
@Board.getWinner$IF_FALSE1
0; JMP
(Board.getWinner$IF_TRUE1)
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
(Board.getWinner$IF_FALSE1)
(Board.getWinner$IF_END0)
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
// push constant 7
@7
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
// push constant 7
@7
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
@Board.getWinner$WHILE_EXP1
0; JMP
(Board.getWinner$WHILE_END1)
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
@Board.getWinner$WHILE_EXP0
0; JMP
(Board.getWinner$WHILE_END0)
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE094
D; JLE
@YGT094
D; JGT
(YLE094)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH94 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE94 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE94
0;JMP
(YGT094)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH94 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE94 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE94
0; JMP
//D HOLDS X
(BOTH94)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE94
D; JGT
@NOTTRUE94
0;JMP
(NOTTRUE94)
@SP
A = M -1
M = 0
@ENDTRUE94
0; JMP
(TRUE94)
@SP
A = M - 1
M = -1
(ENDTRUE94)
@SP
AM = M - 1
D = M
@Board.getWinner$IF_TRUE2
D; JNE
@Board.getWinner$IF_FALSE2
0; JMP
(Board.getWinner$IF_TRUE2)
// push static 5
@Board.5
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@Board.getWinner$IF_END2
0; JMP
(Board.getWinner$IF_FALSE2)
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE095
D; JLE
@YGT095
D; JGT
(YLE095)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH95 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE95 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE95
0;JMP
(YGT095)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH95 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE95 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE95
0; JMP
//D HOLDS X
(BOTH95)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE95
D; JLT
@NOTTRUE95
0;JMP
(NOTTRUE95)
@SP
A = M -1
M = 0
@ENDTRUE95
0; JMP
(TRUE95)
@SP
A = M - 1
M = -1
(ENDTRUE95)
@SP
AM = M - 1
D = M
@Board.getWinner$IF_TRUE3
D; JNE
@Board.getWinner$IF_FALSE3
0; JMP
(Board.getWinner$IF_TRUE3)
// push static 6
@Board.6
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(Board.getWinner$IF_FALSE3)
(Board.getWinner$IF_END2)
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
// function Board.drawSelected 3
(f_Board.drawSelected)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
@3
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
// push static 2
@Board.2
D = M
@SP
M = M + 1
A = M - 1
M = D
// push this 2
@2
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR95
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
(RET_ADDR95)
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
// push static 3
@Board.3
D = M
@SP
M = M + 1
A = M - 1
M = D
// push this 1
@1
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR96
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
(RET_ADDR96)
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
// push static 1
@Board.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 4
@4
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
// call Screen.setColor 1
// get ip
@RET_ADDR97
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
@f_Screen.setColor
0; JMP
(RET_ADDR97)
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
// push constant 5
@5
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
// push constant 5
@5
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
// call Screen.drawLine 4
// get ip
@RET_ADDR98
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR98)
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
// call Screen.drawLine 4
// get ip
@RET_ADDR99
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR99)
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
// call Screen.drawLine 4
// get ip
@RET_ADDR100
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR100)
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
// call Screen.drawLine 4
// get ip
@RET_ADDR101
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR101)
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
// function Board.moveSelected 0
(f_Board.moveSelected)
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.drawSelected 2
// get ip
@RET_ADDR102
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
@f_Board.drawSelected
0; JMP
(RET_ADDR102)
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
// push static 8
@Board.8
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0104
D; JLE
@YGT0104
D; JGT
(YLE0104)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH104 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE104 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE104
0;JMP
(YGT0104)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH104 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE104 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE104
0; JMP
//D HOLDS X
(BOTH104)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE104
D; JEQ
@NOTTRUE104
0;JMP
(NOTTRUE104)
@SP
A = M -1
M = 0
@ENDTRUE104
0; JMP
(TRUE104)
@SP
A = M - 1
M = -1
(ENDTRUE104)
// push this 1
@1
D = A
@THIS
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
@YLE0105
D; JLE
@YGT0105
D; JGT
(YLE0105)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH105 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE105 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE105
0;JMP
(YGT0105)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH105 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE105 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE105
0; JMP
//D HOLDS X
(BOTH105)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE105
D; JGT
@NOTTRUE105
0;JMP
(NOTTRUE105)
@SP
A = M -1
M = 0
@ENDTRUE105
0; JMP
(TRUE105)
@SP
A = M - 1
M = -1
(ENDTRUE105)
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
@SP
AM = M - 1
D = M
@Board.moveSelected$IF_TRUE0
D; JNE
@Board.moveSelected$IF_FALSE0
0; JMP
(Board.moveSelected$IF_TRUE0)
// push this 1
@1
D = A
@THIS
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
// pop this 1
@1
D = A
@THIS
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
(Board.moveSelected$IF_FALSE0)
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
// push static 9
@Board.9
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0106
D; JLE
@YGT0106
D; JGT
(YLE0106)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH106 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE106 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE106
0;JMP
(YGT0106)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH106 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE106 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE106
0; JMP
//D HOLDS X
(BOTH106)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE106
D; JEQ
@NOTTRUE106
0;JMP
(NOTTRUE106)
@SP
A = M -1
M = 0
@ENDTRUE106
0; JMP
(TRUE106)
@SP
A = M - 1
M = -1
(ENDTRUE106)
// push this 1
@1
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Board.0
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0107
D; JLE
@YGT0107
D; JGT
(YLE0107)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH107 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE107 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE107
0;JMP
(YGT0107)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH107 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE107 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE107
0; JMP
//D HOLDS X
(BOTH107)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE107
D; JLT
@NOTTRUE107
0;JMP
(NOTTRUE107)
@SP
A = M -1
M = 0
@ENDTRUE107
0; JMP
(TRUE107)
@SP
A = M - 1
M = -1
(ENDTRUE107)
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
@SP
AM = M - 1
D = M
@Board.moveSelected$IF_TRUE1
D; JNE
@Board.moveSelected$IF_FALSE1
0; JMP
(Board.moveSelected$IF_TRUE1)
// push this 1
@1
D = A
@THIS
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
// pop this 1
@1
D = A
@THIS
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
(Board.moveSelected$IF_FALSE1)
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
// push static 10
@Board.10
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0108
D; JLE
@YGT0108
D; JGT
(YLE0108)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH108 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE108 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE108
0;JMP
(YGT0108)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH108 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE108 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE108
0; JMP
//D HOLDS X
(BOTH108)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE108
D; JEQ
@NOTTRUE108
0;JMP
(NOTTRUE108)
@SP
A = M -1
M = 0
@ENDTRUE108
0; JMP
(TRUE108)
@SP
A = M - 1
M = -1
(ENDTRUE108)
// push this 2
@2
D = A
@THIS
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
@YLE0109
D; JLE
@YGT0109
D; JGT
(YLE0109)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH109 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE109 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE109
0;JMP
(YGT0109)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH109 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE109 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE109
0; JMP
//D HOLDS X
(BOTH109)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE109
D; JGT
@NOTTRUE109
0;JMP
(NOTTRUE109)
@SP
A = M -1
M = 0
@ENDTRUE109
0; JMP
(TRUE109)
@SP
A = M - 1
M = -1
(ENDTRUE109)
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
@SP
AM = M - 1
D = M
@Board.moveSelected$IF_TRUE2
D; JNE
@Board.moveSelected$IF_FALSE2
0; JMP
(Board.moveSelected$IF_TRUE2)
// push this 2
@2
D = A
@THIS
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
// pop this 2
@2
D = A
@THIS
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
(Board.moveSelected$IF_FALSE2)
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
// push static 11
@Board.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0110
D; JLE
@YGT0110
D; JGT
(YLE0110)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH110 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE110 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE110
0;JMP
(YGT0110)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH110 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE110 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE110
0; JMP
//D HOLDS X
(BOTH110)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE110
D; JEQ
@NOTTRUE110
0;JMP
(NOTTRUE110)
@SP
A = M -1
M = 0
@ENDTRUE110
0; JMP
(TRUE110)
@SP
A = M - 1
M = -1
(ENDTRUE110)
// push this 2
@2
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Board.0
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0111
D; JLE
@YGT0111
D; JGT
(YLE0111)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH111 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE111 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE111
0;JMP
(YGT0111)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH111 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE111 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE111
0; JMP
//D HOLDS X
(BOTH111)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE111
D; JLT
@NOTTRUE111
0;JMP
(NOTTRUE111)
@SP
A = M -1
M = 0
@ENDTRUE111
0; JMP
(TRUE111)
@SP
A = M - 1
M = -1
(ENDTRUE111)
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
@SP
AM = M - 1
D = M
@Board.moveSelected$IF_TRUE3
D; JNE
@Board.moveSelected$IF_FALSE3
0; JMP
(Board.moveSelected$IF_TRUE3)
// push this 2
@2
D = A
@THIS
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
// pop this 2
@2
D = A
@THIS
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
(Board.moveSelected$IF_FALSE3)
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
// call Board.drawSelected 2
// get ip
@RET_ADDR111
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
@f_Board.drawSelected
0; JMP
(RET_ADDR111)
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
// function Board.computerMove 6
(f_Board.computerMove)
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
M = 0
A = A + 1
@6
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop local 5
@5
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
(Board.computerMove$WHILE_EXP0)
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
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0113
D; JLE
@YGT0113
D; JGT
(YLE0113)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH113 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE113 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE113
0;JMP
(YGT0113)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH113 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE113 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE113
0; JMP
//D HOLDS X
(BOTH113)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE113
D; JLT
@NOTTRUE113
0;JMP
(NOTTRUE113)
@SP
A = M -1
M = 0
@ENDTRUE113
0; JMP
(TRUE113)
@SP
A = M - 1
M = -1
(ENDTRUE113)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.computerMove$WHILE_END0
D; JNE
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
(Board.computerMove$WHILE_EXP1)
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
// push static 0
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0114
D; JLE
@YGT0114
D; JGT
(YLE0114)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH114 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE114 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE114
0;JMP
(YGT0114)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH114 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE114 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE114
0; JMP
//D HOLDS X
(BOTH114)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE114
D; JLT
@NOTTRUE114
0;JMP
(NOTTRUE114)
@SP
A = M -1
M = 0
@ENDTRUE114
0; JMP
(TRUE114)
@SP
A = M - 1
M = -1
(ENDTRUE114)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.computerMove$WHILE_END1
D; JNE
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
// push static 6
@Board.6
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
// call Board.reverse 5
// get ip
@RET_ADDR114
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
@10
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverse
0; JMP
(RET_ADDR114)
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
// push local 5
@5
D = A
@LCL
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
@YLE0116
D; JLE
@YGT0116
D; JGT
(YLE0116)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH116 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE116 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE116
0;JMP
(YGT0116)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH116 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE116 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE116
0; JMP
//D HOLDS X
(BOTH116)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE116
D; JGT
@NOTTRUE116
0;JMP
(NOTTRUE116)
@SP
A = M -1
M = 0
@ENDTRUE116
0; JMP
(TRUE116)
@SP
A = M - 1
M = -1
(ENDTRUE116)
@SP
AM = M - 1
D = M
@Board.computerMove$IF_TRUE0
D; JNE
@Board.computerMove$IF_FALSE0
0; JMP
(Board.computerMove$IF_TRUE0)
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
// pop local 5
@5
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
(Board.computerMove$IF_FALSE0)
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
@Board.computerMove$WHILE_EXP1
0; JMP
(Board.computerMove$WHILE_END1)
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
@Board.computerMove$WHILE_EXP0
0; JMP
(Board.computerMove$WHILE_END0)
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
// push static 6
@Board.6
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
// not
@SP
A = M - 1
M = ! M
// call Board.reverse 5
// get ip
@RET_ADDR116
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
@10
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverse
0; JMP
(RET_ADDR116)
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
// function Board.dispose 2
(f_Board.dispose)
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
(Board.dispose$WHILE_EXP0)
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
@Board.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0118
D; JLE
@YGT0118
D; JGT
(YLE0118)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH118 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE118 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE118
0;JMP
(YGT0118)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH118 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE118 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE118
0; JMP
//D HOLDS X
(BOTH118)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE118
D; JLT
@NOTTRUE118
0;JMP
(NOTTRUE118)
@SP
A = M -1
M = 0
@ENDTRUE118
0; JMP
(TRUE118)
@SP
A = M - 1
M = -1
(ENDTRUE118)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.dispose$WHILE_END0
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
// push this 0
@0
D = A
@THIS
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
// call Array.dispose 1
// get ip
@RET_ADDR118
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
@f_Array.dispose
0; JMP
(RET_ADDR118)
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
@Board.dispose$WHILE_EXP0
0; JMP
(Board.dispose$WHILE_END0)
// push this 0
@0
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Array.dispose 1
// get ip
@RET_ADDR119
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
@f_Array.dispose
0; JMP
(RET_ADDR119)
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
@RET_ADDR120
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
(RET_ADDR120)
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
// function Board.drwCl 2
(f_Board.drwCl)
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
@YLE0122
D; JLE
@YGT0122
D; JGT
(YLE0122)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH122 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE122 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE122
0;JMP
(YGT0122)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH122 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE122 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE122
0; JMP
//D HOLDS X
(BOTH122)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE122
D; JGT
@NOTTRUE122
0;JMP
(NOTTRUE122)
@SP
A = M -1
M = 0
@ENDTRUE122
0; JMP
(TRUE122)
@SP
A = M - 1
M = -1
(ENDTRUE122)
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0123
D; JLE
@YGT0123
D; JGT
(YLE0123)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH123 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE123 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE123
0;JMP
(YGT0123)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH123 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE123 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE123
0; JMP
//D HOLDS X
(BOTH123)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE123
D; JLT
@NOTTRUE123
0;JMP
(NOTTRUE123)
@SP
A = M -1
M = 0
@ENDTRUE123
0; JMP
(TRUE123)
@SP
A = M - 1
M = -1
(ENDTRUE123)
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
// push argument 2
@2
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
// neg
@SP
A = M - 1
M = - M
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0124
D; JLE
@YGT0124
D; JGT
(YLE0124)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH124 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE124 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE124
0;JMP
(YGT0124)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH124 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE124 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE124
0; JMP
//D HOLDS X
(BOTH124)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE124
D; JGT
@NOTTRUE124
0;JMP
(NOTTRUE124)
@SP
A = M -1
M = 0
@ENDTRUE124
0; JMP
(TRUE124)
@SP
A = M - 1
M = -1
(ENDTRUE124)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0125
D; JLE
@YGT0125
D; JGT
(YLE0125)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH125 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE125 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE125
0;JMP
(YGT0125)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH125 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE125 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE125
0; JMP
//D HOLDS X
(BOTH125)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE125
D; JLT
@NOTTRUE125
0;JMP
(NOTTRUE125)
@SP
A = M -1
M = 0
@ENDTRUE125
0; JMP
(TRUE125)
@SP
A = M - 1
M = -1
(ENDTRUE125)
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
@SP
AM = M - 1
D = M
@Board.drwCl$IF_TRUE0
D; JNE
@Board.drwCl$IF_FALSE0
0; JMP
(Board.drwCl$IF_TRUE0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.setColor 1
// get ip
@RET_ADDR125
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
@f_Screen.setColor
0; JMP
(RET_ADDR125)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR126
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
(RET_ADDR126)
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR127
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
(RET_ADDR127)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR128
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
(RET_ADDR128)
// push constant 15
@15
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR129
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
(RET_ADDR129)
// push constant 14
@14
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
// call Screen.drawRectangle 4
// get ip
@RET_ADDR130
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawRectangle
0; JMP
(RET_ADDR130)
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
// not
@SP
A = M - 1
M = ! M
// call Screen.setColor 1
// get ip
@RET_ADDR131
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
@f_Screen.setColor
0; JMP
(RET_ADDR131)
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0133
D; JLE
@YGT0133
D; JGT
(YLE0133)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH133 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE133 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE133
0;JMP
(YGT0133)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH133 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE133 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE133
0; JMP
//D HOLDS X
(BOTH133)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE133
D; JEQ
@NOTTRUE133
0;JMP
(NOTTRUE133)
@SP
A = M -1
M = 0
@ENDTRUE133
0; JMP
(TRUE133)
@SP
A = M - 1
M = -1
(ENDTRUE133)
@SP
AM = M - 1
D = M
@Board.drwCl$IF_TRUE1
D; JNE
@Board.drwCl$IF_FALSE1
0; JMP
(Board.drwCl$IF_TRUE1)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR133
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
(RET_ADDR133)
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR134
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
(RET_ADDR134)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR135
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR135)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR136
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
(RET_ADDR136)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR137
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
(RET_ADDR137)
// push constant 5
@5
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR138
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR138)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR139
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
(RET_ADDR139)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR140
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
(RET_ADDR140)
// push constant 6
@6
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR141
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR141)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR142
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
(RET_ADDR142)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR143
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
(RET_ADDR143)
// push constant 6
@6
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR144
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR144)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR145
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
(RET_ADDR145)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR146
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
(RET_ADDR146)
// push constant 5
@5
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR147
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR147)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR148
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
(RET_ADDR148)
// push constant 5
@5
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR149
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
(RET_ADDR149)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR150
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR150)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR151
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
(RET_ADDR151)
// push constant 6
@6
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR152
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
(RET_ADDR152)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR153
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR153)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR154
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
(RET_ADDR154)
// push constant 7
@7
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR155
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
(RET_ADDR155)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR156
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR156)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR157
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
(RET_ADDR157)
// push constant 8
@8
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR158
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
(RET_ADDR158)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR159
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR159)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR160
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
(RET_ADDR160)
// push constant 9
@9
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR161
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
(RET_ADDR161)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR162
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR162)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR163
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
(RET_ADDR163)
// push constant 10
@10
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR164
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
(RET_ADDR164)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR165
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR165)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR166
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
(RET_ADDR166)
// push constant 11
@11
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR167
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
(RET_ADDR167)
// push constant 5
@5
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR168
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR168)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR169
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
(RET_ADDR169)
// push constant 12
@12
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR170
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
(RET_ADDR170)
// push constant 6
@6
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR171
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR171)
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
(Board.drwCl$IF_FALSE1)
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0173
D; JLE
@YGT0173
D; JGT
(YLE0173)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH173 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE173 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE173
0;JMP
(YGT0173)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH173 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE173 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE173
0; JMP
//D HOLDS X
(BOTH173)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE173
D; JEQ
@NOTTRUE173
0;JMP
(NOTTRUE173)
@SP
A = M -1
M = 0
@ENDTRUE173
0; JMP
(TRUE173)
@SP
A = M - 1
M = -1
(ENDTRUE173)
@SP
AM = M - 1
D = M
@Board.drwCl$IF_TRUE2
D; JNE
@Board.drwCl$IF_FALSE2
0; JMP
(Board.drwCl$IF_TRUE2)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR173
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
(RET_ADDR173)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR174
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
(RET_ADDR174)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR175
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
(RET_ADDR175)
// push constant 12
@12
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR176
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
(RET_ADDR176)
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
// call Screen.drawLine 4
// get ip
@RET_ADDR177
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR177)
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
(Board.drwCl$IF_FALSE2)
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
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0179
D; JLE
@YGT0179
D; JGT
(YLE0179)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH179 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE179 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE179
0;JMP
(YGT0179)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH179 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE179 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE179
0; JMP
//D HOLDS X
(BOTH179)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE179
D; JEQ
@NOTTRUE179
0;JMP
(NOTTRUE179)
@SP
A = M -1
M = 0
@ENDTRUE179
0; JMP
(TRUE179)
@SP
A = M - 1
M = -1
(ENDTRUE179)
@SP
AM = M - 1
D = M
@Board.drwCl$IF_TRUE3
D; JNE
@Board.drwCl$IF_FALSE3
0; JMP
(Board.drwCl$IF_TRUE3)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR179
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
(RET_ADDR179)
// push constant 6
@6
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR180
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
(RET_ADDR180)
// push constant 6
@6
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR181
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR181)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR182
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
(RET_ADDR182)
// push constant 5
@5
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR183
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
(RET_ADDR183)
// push constant 7
@7
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR184
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR184)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR185
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
(RET_ADDR185)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR186
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
(RET_ADDR186)
// push constant 7
@7
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR187
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR187)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR188
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
(RET_ADDR188)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR189
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
(RET_ADDR189)
// push constant 6
@6
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR190
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR190)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR191
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
(RET_ADDR191)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR192
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
(RET_ADDR192)
// push constant 5
@5
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR193
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR193)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR194
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
(RET_ADDR194)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR195
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
(RET_ADDR195)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR196
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR196)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR197
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
(RET_ADDR197)
// push constant 5
@5
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR198
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
(RET_ADDR198)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR199
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR199)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR200
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
(RET_ADDR200)
// push constant 6
@6
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR201
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
(RET_ADDR201)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR202
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR202)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR203
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
(RET_ADDR203)
// push constant 7
@7
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR204
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
(RET_ADDR204)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR205
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR205)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR206
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
(RET_ADDR206)
// push constant 8
@8
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR207
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
(RET_ADDR207)
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR208
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR208)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR209
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
(RET_ADDR209)
// push constant 9
@9
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR210
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
(RET_ADDR210)
// push constant 5
@5
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR211
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR211)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR212
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
(RET_ADDR212)
// push constant 10
@10
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR213
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
(RET_ADDR213)
// push constant 6
@6
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR214
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR214)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR215
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
(RET_ADDR215)
// push constant 9
@9
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR216
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
(RET_ADDR216)
// push constant 7
@7
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR217
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR217)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR218
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
(RET_ADDR218)
// push constant 8
@8
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR219
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
(RET_ADDR219)
// push constant 7
@7
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
// call Screen.drawPixel 2
// get ip
@RET_ADDR220
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
@f_Screen.drawPixel
0; JMP
(RET_ADDR220)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR221
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
(RET_ADDR221)
// push constant 7
@7
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR222
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
(RET_ADDR222)
// push constant 14
@14
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR223
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
(RET_ADDR223)
// push constant 7
@7
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR224
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
(RET_ADDR224)
// push constant 5
@5
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
// call Screen.drawLine 4
// get ip
@RET_ADDR225
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR225)
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
(Board.drwCl$IF_FALSE3)
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
// push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0227
D; JLE
@YGT0227
D; JGT
(YLE0227)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH227 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE227 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE227
0;JMP
(YGT0227)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH227 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE227 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE227
0; JMP
//D HOLDS X
(BOTH227)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE227
D; JEQ
@NOTTRUE227
0;JMP
(NOTTRUE227)
@SP
A = M -1
M = 0
@ENDTRUE227
0; JMP
(TRUE227)
@SP
A = M - 1
M = -1
(ENDTRUE227)
@SP
AM = M - 1
D = M
@Board.drwCl$IF_TRUE4
D; JNE
@Board.drwCl$IF_FALSE4
0; JMP
(Board.drwCl$IF_TRUE4)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR227
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
(RET_ADDR227)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR228
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
(RET_ADDR228)
// push constant 14
@14
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR229
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
(RET_ADDR229)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR230
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
(RET_ADDR230)
// push constant 7
@7
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
// call Screen.drawLine 4
// get ip
@RET_ADDR231
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR231)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR232
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
(RET_ADDR232)
// push constant 14
@14
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR233
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
(RET_ADDR233)
// push constant 14
@14
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR234
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
(RET_ADDR234)
// push constant 14
@14
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR235
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
(RET_ADDR235)
// push constant 7
@7
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
// call Screen.drawLine 4
// get ip
@RET_ADDR236
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR236)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR237
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
(RET_ADDR237)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR238
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
(RET_ADDR238)
// push constant 14
@14
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR239
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
(RET_ADDR239)
// push constant 14
@14
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR240
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
(RET_ADDR240)
// push constant 14
@14
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
// call Screen.drawLine 4
// get ip
@RET_ADDR241
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR241)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR242
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
(RET_ADDR242)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR243
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
(RET_ADDR243)
// push constant 7
@7
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR244
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
(RET_ADDR244)
// push constant 14
@14
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR245
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
(RET_ADDR245)
// push constant 7
@7
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
// call Screen.drawLine 4
// get ip
@RET_ADDR246
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR246)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR247
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
(RET_ADDR247)
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR248
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
(RET_ADDR248)
// push constant 7
@7
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR249
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
(RET_ADDR249)
// push constant 7
@7
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR250
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
(RET_ADDR250)
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
// call Screen.drawLine 4
// get ip
@RET_ADDR251
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR251)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR252
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
(RET_ADDR252)
// push constant 14
@14
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR253
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
(RET_ADDR253)
// push constant 7
@7
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR254
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
(RET_ADDR254)
// push constant 8
@8
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
// push argument 2
@2
D = A
@ARG
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
// call Math.multiply 2
// get ip
@RET_ADDR255
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
(RET_ADDR255)
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
// call Screen.drawLine 4
// get ip
@RET_ADDR256
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR256)
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
(Board.drwCl$IF_FALSE4)
(Board.drwCl$IF_FALSE0)
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
// function Board.drawSn 3
(f_Board.drawSn)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
@3
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
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
(Board.drawSn$WHILE_EXP0)
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0258
D; JLE
@YGT0258
D; JGT
(YLE0258)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH258 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE258 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE258
0;JMP
(YGT0258)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH258 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE258 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE258
0; JMP
//D HOLDS X
(BOTH258)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE258
D; JLT
@NOTTRUE258
0;JMP
(NOTTRUE258)
@SP
A = M -1
M = 0
@ENDTRUE258
0; JMP
(TRUE258)
@SP
A = M - 1
M = -1
(ENDTRUE258)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.drawSn$WHILE_END0
D; JNE
(Board.drawSn$WHILE_EXP1)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0259
D; JLE
@YGT0259
D; JGT
(YLE0259)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH259 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE259 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE259
0;JMP
(YGT0259)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH259 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE259 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE259
0; JMP
//D HOLDS X
(BOTH259)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE259
D; JLT
@NOTTRUE259
0;JMP
(NOTTRUE259)
@SP
A = M -1
M = 0
@ENDTRUE259
0; JMP
(TRUE259)
@SP
A = M - 1
M = -1
(ENDTRUE259)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Board.drawSn$WHILE_END1
D; JNE
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
@Board.drawSn$WHILE_EXP1
0; JMP
(Board.drawSn$WHILE_END1)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
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
@Board.drawSn$WHILE_EXP0
0; JMP
(Board.drawSn$WHILE_END0)
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
// function Keyboard.init 0
(f_Keyboard.init)
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
// function Keyboard.keyPressed 0
(f_Keyboard.keyPressed)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 24576
@24576
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Memory.peek 1
// get ip
@RET_ADDR259
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
@f_Memory.peek
0; JMP
(RET_ADDR259)
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
// function Keyboard.readChar 2
(f_Keyboard.readChar)
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
// call Output.printChar 1
// get ip
@RET_ADDR260
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
@f_Output.printChar
0; JMP
(RET_ADDR260)
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
(Keyboard.readChar$WHILE_EXP0)
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
@YLE0262
D; JLE
@YGT0262
D; JGT
(YLE0262)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH262 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE262 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE262
0;JMP
(YGT0262)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH262 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE262 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE262
0; JMP
//D HOLDS X
(BOTH262)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE262
D; JEQ
@NOTTRUE262
0;JMP
(NOTTRUE262)
@SP
A = M -1
M = 0
@ENDTRUE262
0; JMP
(TRUE262)
@SP
A = M - 1
M = -1
(ENDTRUE262)
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
@YLE0263
D; JLE
@YGT0263
D; JGT
(YLE0263)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH263 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE263 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE263
0;JMP
(YGT0263)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH263 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE263 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE263
0; JMP
//D HOLDS X
(BOTH263)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE263
D; JGT
@NOTTRUE263
0;JMP
(NOTTRUE263)
@SP
A = M -1
M = 0
@ENDTRUE263
0; JMP
(TRUE263)
@SP
A = M - 1
M = -1
(ENDTRUE263)
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Keyboard.readChar$WHILE_END0
D; JNE
// call Keyboard.keyPressed 0
// get ip
@RET_ADDR263
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
@f_Keyboard.keyPressed
0; JMP
(RET_ADDR263)
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
@YLE0265
D; JLE
@YGT0265
D; JGT
(YLE0265)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH265 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE265 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE265
0;JMP
(YGT0265)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH265 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE265 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE265
0; JMP
//D HOLDS X
(BOTH265)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE265
D; JGT
@NOTTRUE265
0;JMP
(NOTTRUE265)
@SP
A = M -1
M = 0
@ENDTRUE265
0; JMP
(TRUE265)
@SP
A = M - 1
M = -1
(ENDTRUE265)
@SP
AM = M - 1
D = M
@Keyboard.readChar$IF_TRUE0
D; JNE
@Keyboard.readChar$IF_FALSE0
0; JMP
(Keyboard.readChar$IF_TRUE0)
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
(Keyboard.readChar$IF_FALSE0)
@Keyboard.readChar$WHILE_EXP0
0; JMP
(Keyboard.readChar$WHILE_END0)
// call String.backSpace 0
// get ip
@RET_ADDR265
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
@f_String.backSpace
0; JMP
(RET_ADDR265)
// call Output.printChar 1
// get ip
@RET_ADDR266
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
@f_Output.printChar
0; JMP
(RET_ADDR266)
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
// call Output.printChar 1
// get ip
@RET_ADDR267
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
@f_Output.printChar
0; JMP
(RET_ADDR267)
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
// function Keyboard.readLine 5
(f_Keyboard.readLine)
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
// push constant 80
@80
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR268
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
@f_String.new
0; JMP
(RET_ADDR268)
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
// call Output.printString 1
// get ip
@RET_ADDR269
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
@f_Output.printString
0; JMP
(RET_ADDR269)
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
// call String.newLine 0
// get ip
@RET_ADDR270
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
@f_String.newLine
0; JMP
(RET_ADDR270)
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
// call String.backSpace 0
// get ip
@RET_ADDR271
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
@f_String.backSpace
0; JMP
(RET_ADDR271)
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
(Keyboard.readLine$WHILE_EXP0)
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
@Keyboard.readLine$WHILE_END0
D; JNE
// call Keyboard.readChar 0
// get ip
@RET_ADDR272
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
@f_Keyboard.readChar
0; JMP
(RET_ADDR272)
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0274
D; JLE
@YGT0274
D; JGT
(YLE0274)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH274 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE274 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE274
0;JMP
(YGT0274)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH274 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE274 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE274
0; JMP
//D HOLDS X
(BOTH274)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE274
D; JEQ
@NOTTRUE274
0;JMP
(NOTTRUE274)
@SP
A = M -1
M = 0
@ENDTRUE274
0; JMP
(TRUE274)
@SP
A = M - 1
M = -1
(ENDTRUE274)
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Keyboard.readLine$IF_TRUE0
D; JNE
@Keyboard.readLine$IF_FALSE0
0; JMP
(Keyboard.readLine$IF_TRUE0)
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0275
D; JLE
@YGT0275
D; JGT
(YLE0275)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH275 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE275 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE275
0;JMP
(YGT0275)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH275 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE275 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE275
0; JMP
//D HOLDS X
(BOTH275)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE275
D; JEQ
@NOTTRUE275
0;JMP
(NOTTRUE275)
@SP
A = M -1
M = 0
@ENDTRUE275
0; JMP
(TRUE275)
@SP
A = M - 1
M = -1
(ENDTRUE275)
@SP
AM = M - 1
D = M
@Keyboard.readLine$IF_TRUE1
D; JNE
@Keyboard.readLine$IF_FALSE1
0; JMP
(Keyboard.readLine$IF_TRUE1)
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
// call String.eraseLastChar 1
// get ip
@RET_ADDR275
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
@f_String.eraseLastChar
0; JMP
(RET_ADDR275)
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
@Keyboard.readLine$IF_END1
0; JMP
(Keyboard.readLine$IF_FALSE1)
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
// call String.appendChar 2
// get ip
@RET_ADDR276
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
@f_String.appendChar
0; JMP
(RET_ADDR276)
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
(Keyboard.readLine$IF_END1)
(Keyboard.readLine$IF_FALSE0)
@Keyboard.readLine$WHILE_EXP0
0; JMP
(Keyboard.readLine$WHILE_END0)
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
// function Keyboard.readInt 2
(f_Keyboard.readInt)
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
// call Keyboard.readLine 1
// get ip
@RET_ADDR277
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
@f_Keyboard.readLine
0; JMP
(RET_ADDR277)
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
// call String.intValue 1
// get ip
@RET_ADDR278
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
@f_String.intValue
0; JMP
(RET_ADDR278)
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
// call String.dispose 1
// get ip
@RET_ADDR279
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
@f_String.dispose
0; JMP
(RET_ADDR279)
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
// function Main.main 1
(f_Main.main)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
@1
D = A
@SP
M = M + D
// push constant 1
@1
D = A
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
// pop static 0
@Main.0
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
// push constant 1
@1
D = A
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
// pop static 0
@Main.0
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
// pop static 5
@Main.5
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 6
@Main.6
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
// push constant 10
@10
D = A
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// pop static 1
@Main.1
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
// push constant 10
@10
D = A
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// pop static 2
@Main.2
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
// push constant 10
@10
D = A
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// pop static 4
@Main.4
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
// push constant 10
@10
D = A
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// pop static 3
@Main.3
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
// push constant 23
@23
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR280
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
@f_String.new
0; JMP
(RET_ADDR280)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR281
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
@f_String.appendChar
0; JMP
(RET_ADDR281)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR282
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
@f_String.appendChar
0; JMP
(RET_ADDR282)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR283
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
@f_String.appendChar
0; JMP
(RET_ADDR283)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR284
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
@f_String.appendChar
0; JMP
(RET_ADDR284)
// push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR285
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
@f_String.appendChar
0; JMP
(RET_ADDR285)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR286
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
@f_String.appendChar
0; JMP
(RET_ADDR286)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR287
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
@f_String.appendChar
0; JMP
(RET_ADDR287)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR288
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
@f_String.appendChar
0; JMP
(RET_ADDR288)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR289
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
@f_String.appendChar
0; JMP
(RET_ADDR289)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR290
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
@f_String.appendChar
0; JMP
(RET_ADDR290)
// push constant 118
@118
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR291
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
@f_String.appendChar
0; JMP
(RET_ADDR291)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR292
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
@f_String.appendChar
0; JMP
(RET_ADDR292)
// push constant 44
@44
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR293
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
@f_String.appendChar
0; JMP
(RET_ADDR293)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR294
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
@f_String.appendChar
0; JMP
(RET_ADDR294)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR295
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
@f_String.appendChar
0; JMP
(RET_ADDR295)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR296
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
@f_String.appendChar
0; JMP
(RET_ADDR296)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR297
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
@f_String.appendChar
0; JMP
(RET_ADDR297)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR298
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
@f_String.appendChar
0; JMP
(RET_ADDR298)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR299
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
@f_String.appendChar
0; JMP
(RET_ADDR299)
// push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR300
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
@f_String.appendChar
0; JMP
(RET_ADDR300)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR301
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
@f_String.appendChar
0; JMP
(RET_ADDR301)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR302
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
@f_String.appendChar
0; JMP
(RET_ADDR302)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR303
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
@f_String.appendChar
0; JMP
(RET_ADDR303)
// pop static 7
@Main.7
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
// push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR304
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
@f_String.new
0; JMP
(RET_ADDR304)
// push constant 89
@89
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR305
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
@f_String.appendChar
0; JMP
(RET_ADDR305)
// push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR306
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
@f_String.appendChar
0; JMP
(RET_ADDR306)
// push constant 85
@85
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR307
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
@f_String.appendChar
0; JMP
(RET_ADDR307)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR308
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
@f_String.appendChar
0; JMP
(RET_ADDR308)
// push constant 87
@87
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR309
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
@f_String.appendChar
0; JMP
(RET_ADDR309)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR310
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
@f_String.appendChar
0; JMP
(RET_ADDR310)
// push constant 78
@78
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR311
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
@f_String.appendChar
0; JMP
(RET_ADDR311)
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR312
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
@f_String.appendChar
0; JMP
(RET_ADDR312)
// pop static 8
@Main.8
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
// push constant 9
@9
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR313
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
@f_String.new
0; JMP
(RET_ADDR313)
// push constant 89
@89
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR314
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
@f_String.appendChar
0; JMP
(RET_ADDR314)
// push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR315
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
@f_String.appendChar
0; JMP
(RET_ADDR315)
// push constant 85
@85
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR316
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
@f_String.appendChar
0; JMP
(RET_ADDR316)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR317
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
@f_String.appendChar
0; JMP
(RET_ADDR317)
// push constant 76
@76
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR318
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
@f_String.appendChar
0; JMP
(RET_ADDR318)
// push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR319
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
@f_String.appendChar
0; JMP
(RET_ADDR319)
// push constant 83
@83
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR320
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
@f_String.appendChar
0; JMP
(RET_ADDR320)
// push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR321
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
@f_String.appendChar
0; JMP
(RET_ADDR321)
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR322
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
@f_String.appendChar
0; JMP
(RET_ADDR322)
// pop static 9
@Main.9
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
// push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR323
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
@f_String.new
0; JMP
(RET_ADDR323)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR324
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
@f_String.appendChar
0; JMP
(RET_ADDR324)
// push constant 84
@84
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR325
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
@f_String.appendChar
0; JMP
(RET_ADDR325)
// push constant 39
@39
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR326
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
@f_String.appendChar
0; JMP
(RET_ADDR326)
// push constant 83
@83
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR327
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
@f_String.appendChar
0; JMP
(RET_ADDR327)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR328
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
@f_String.appendChar
0; JMP
(RET_ADDR328)
// push constant 65
@65
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR329
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
@f_String.appendChar
0; JMP
(RET_ADDR329)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR330
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
@f_String.appendChar
0; JMP
(RET_ADDR330)
// push constant 84
@84
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR331
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
@f_String.appendChar
0; JMP
(RET_ADDR331)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR332
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
@f_String.appendChar
0; JMP
(RET_ADDR332)
// push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR333
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
@f_String.appendChar
0; JMP
(RET_ADDR333)
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR334
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
@f_String.appendChar
0; JMP
(RET_ADDR334)
// pop static 10
@Main.10
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
// push constant 1
@1
D = A
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
// pop static 0
@Main.0
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
// push constant 128
@128
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 0
@Main.0
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
// call Board.new 0
// get ip
@RET_ADDR335
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
@f_Board.new
0; JMP
(RET_ADDR335)
// pop static 11
@Main.11
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
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 5
@Main.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 6
@Main.6
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Main.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 2
@Main.2
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 3
@Main.3
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 4
@Main.4
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setConsts 7
// get ip
@RET_ADDR336
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setConsts
0; JMP
(RET_ADDR336)
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
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.initGrid 1
// get ip
@RET_ADDR337
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
@f_Board.initGrid
0; JMP
(RET_ADDR337)
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
// push static 5
@Main.5
D = M
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
(Main.main$WHILE_EXP0)
// push static 11
@Main.11
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
// call Board.isGameOver 2
// get ip
@RET_ADDR338
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
@f_Board.isGameOver
0; JMP
(RET_ADDR338)
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
// push static 5
@Main.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0340
D; JLE
@YGT0340
D; JGT
(YLE0340)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH340 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE340 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE340
0;JMP
(YGT0340)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH340 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE340 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE340
0; JMP
//D HOLDS X
(BOTH340)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE340
D; JEQ
@NOTTRUE340
0;JMP
(NOTTRUE340)
@SP
A = M -1
M = 0
@ENDTRUE340
0; JMP
(TRUE340)
@SP
A = M - 1
M = -1
(ENDTRUE340)
@SP
AM = M - 1
D = M
@Main.main$IF_TRUE0
D; JNE
@Main.main$IF_FALSE0
0; JMP
(Main.main$IF_TRUE0)
// call Main.playerMove 0
// get ip
@RET_ADDR340
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
@f_Main.playerMove
0; JMP
(RET_ADDR340)
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
@Main.main$IF_END0
0; JMP
(Main.main$IF_FALSE0)
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.computerMove 1
// get ip
@RET_ADDR341
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
@f_Board.computerMove
0; JMP
(RET_ADDR341)
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
(Main.main$IF_END0)
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
@Main.main$WHILE_EXP0
0; JMP
(Main.main$WHILE_END0)
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.getWinner 1
// get ip
@RET_ADDR342
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
@f_Board.getWinner
0; JMP
(RET_ADDR342)
// call Main.printGameOver 1
// get ip
@RET_ADDR343
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
@f_Main.printGameOver
0; JMP
(RET_ADDR343)
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
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.dispose 1
// get ip
@RET_ADDR344
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
@f_Board.dispose
0; JMP
(RET_ADDR344)
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
// push static 7
@Main.7
D = M
@SP
M = M + 1
A = M - 1
M = D
// call String.dispose 1
// get ip
@RET_ADDR345
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
@f_String.dispose
0; JMP
(RET_ADDR345)
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
// push static 8
@Main.8
D = M
@SP
M = M + 1
A = M - 1
M = D
// call String.dispose 1
// get ip
@RET_ADDR346
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
@f_String.dispose
0; JMP
(RET_ADDR346)
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
// push static 9
@Main.9
D = M
@SP
M = M + 1
A = M - 1
M = D
// call String.dispose 1
// get ip
@RET_ADDR347
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
@f_String.dispose
0; JMP
(RET_ADDR347)
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
// push static 10
@Main.10
D = M
@SP
M = M + 1
A = M - 1
M = D
// call String.dispose 1
// get ip
@RET_ADDR348
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
@f_String.dispose
0; JMP
(RET_ADDR348)
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
// function Main.playerMove 5
(f_Main.playerMove)
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
// not
@SP
A = M - 1
M = ! M
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
// not
@SP
A = M - 1
M = ! M
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
(Main.playerMove$WHILE_EXP0)
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Main.playerMove$WHILE_END0
D; JNE
// call Keyboard.keyPressed 0
// get ip
@RET_ADDR349
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
@f_Keyboard.keyPressed
0; JMP
(RET_ADDR349)
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
// push static 0
@Main.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0351
D; JLE
@YGT0351
D; JGT
(YLE0351)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH351 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE351 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE351
0;JMP
(YGT0351)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH351 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE351 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE351
0; JMP
//D HOLDS X
(BOTH351)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE351
D; JEQ
@NOTTRUE351
0;JMP
(NOTTRUE351)
@SP
A = M -1
M = 0
@ENDTRUE351
0; JMP
(TRUE351)
@SP
A = M - 1
M = -1
(ENDTRUE351)
@SP
AM = M - 1
D = M
@Main.playerMove$IF_TRUE0
D; JNE
@Main.playerMove$IF_FALSE0
0; JMP
(Main.playerMove$IF_TRUE0)
// push constant 10
@10
D = A
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
// push constant 5
@5
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR351
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
(RET_ADDR351)
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
// push constant 5
@5
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR352
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
(RET_ADDR352)
// call Sys.wait 1
// get ip
@RET_ADDR353
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
@f_Sys.wait
0; JMP
(RET_ADDR353)
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
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.getSelectedRow 1
// get ip
@RET_ADDR354
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
@f_Board.getSelectedRow
0; JMP
(RET_ADDR354)
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
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.getSelectedCol 1
// get ip
@RET_ADDR355
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
@f_Board.getSelectedCol
0; JMP
(RET_ADDR355)
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
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
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
// push static 5
@Main.5
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
// not
@SP
A = M - 1
M = ! M
// call Board.reverse 5
// get ip
@RET_ADDR356
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
@10
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.reverse
0; JMP
(RET_ADDR356)
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
@YLE0358
D; JLE
@YGT0358
D; JGT
(YLE0358)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH358 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE358 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE358
0;JMP
(YGT0358)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH358 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE358 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE358
0; JMP
//D HOLDS X
(BOTH358)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE358
D; JGT
@NOTTRUE358
0;JMP
(NOTTRUE358)
@SP
A = M -1
M = 0
@ENDTRUE358
0; JMP
(TRUE358)
@SP
A = M - 1
M = -1
(ENDTRUE358)
@SP
AM = M - 1
D = M
@Main.playerMove$IF_TRUE1
D; JNE
@Main.playerMove$IF_FALSE1
0; JMP
(Main.playerMove$IF_TRUE1)
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
@Main.playerMove$IF_END1
0; JMP
(Main.playerMove$IF_FALSE1)
// push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 36
@36
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.moveCursor 2
// get ip
@RET_ADDR358
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
@f_Output.moveCursor
0; JMP
(RET_ADDR358)
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
// push static 7
@Main.7
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Output.printString 1
// get ip
@RET_ADDR359
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
@f_Output.printString
0; JMP
(RET_ADDR359)
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
(Main.playerMove$IF_END1)
@Main.playerMove$IF_END0
0; JMP
(Main.playerMove$IF_FALSE0)
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
// push static 1
@Main.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0361
D; JLE
@YGT0361
D; JGT
(YLE0361)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH361 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE361 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE361
0;JMP
(YGT0361)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH361 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE361 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE361
0; JMP
//D HOLDS X
(BOTH361)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE361
D; JEQ
@NOTTRUE361
0;JMP
(NOTTRUE361)
@SP
A = M -1
M = 0
@ENDTRUE361
0; JMP
(TRUE361)
@SP
A = M - 1
M = -1
(ENDTRUE361)
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
// push static 2
@Main.2
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0362
D; JLE
@YGT0362
D; JGT
(YLE0362)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH362 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE362 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE362
0;JMP
(YGT0362)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH362 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE362 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE362
0; JMP
//D HOLDS X
(BOTH362)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE362
D; JEQ
@NOTTRUE362
0;JMP
(NOTTRUE362)
@SP
A = M -1
M = 0
@ENDTRUE362
0; JMP
(TRUE362)
@SP
A = M - 1
M = -1
(ENDTRUE362)
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
// push static 3
@Main.3
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0363
D; JLE
@YGT0363
D; JGT
(YLE0363)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH363 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE363 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE363
0;JMP
(YGT0363)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH363 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE363 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE363
0; JMP
//D HOLDS X
(BOTH363)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE363
D; JEQ
@NOTTRUE363
0;JMP
(NOTTRUE363)
@SP
A = M -1
M = 0
@ENDTRUE363
0; JMP
(TRUE363)
@SP
A = M - 1
M = -1
(ENDTRUE363)
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
// push static 4
@Main.4
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0364
D; JLE
@YGT0364
D; JGT
(YLE0364)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH364 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE364 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE364
0;JMP
(YGT0364)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH364 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE364 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE364
0; JMP
//D HOLDS X
(BOTH364)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE364
D; JEQ
@NOTTRUE364
0;JMP
(NOTTRUE364)
@SP
A = M -1
M = 0
@ENDTRUE364
0; JMP
(TRUE364)
@SP
A = M - 1
M = -1
(ENDTRUE364)
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
@SP
AM = M - 1
D = M
@Main.playerMove$IF_TRUE2
D; JNE
@Main.playerMove$IF_FALSE2
0; JMP
(Main.playerMove$IF_TRUE2)
// push constant 7
@7
D = A
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
// call Math.multiply 2
// get ip
@RET_ADDR364
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
(RET_ADDR364)
// push constant 30
@30
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
// call Sys.wait 1
// get ip
@RET_ADDR365
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
@f_Sys.wait
0; JMP
(RET_ADDR365)
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
// push static 11
@Main.11
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
// call Board.moveSelected 2
// get ip
@RET_ADDR366
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
@f_Board.moveSelected
0; JMP
(RET_ADDR366)
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
(Main.playerMove$IF_FALSE2)
(Main.playerMove$IF_END0)
@Main.playerMove$WHILE_EXP0
0; JMP
(Main.playerMove$WHILE_END0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.setColor 1
// get ip
@RET_ADDR367
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
@f_Screen.setColor
0; JMP
(RET_ADDR367)
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
// push constant 288
@288
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 490
@490
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 125
@125
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.drawRectangle 4
// get ip
@RET_ADDR368
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawRectangle
0; JMP
(RET_ADDR368)
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
// function Main.printGameOver 1
(f_Main.printGameOver)
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
// push static 5
@Main.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0370
D; JLE
@YGT0370
D; JGT
(YLE0370)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH370 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE370 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE370
0;JMP
(YGT0370)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH370 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE370 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE370
0; JMP
//D HOLDS X
(BOTH370)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE370
D; JEQ
@NOTTRUE370
0;JMP
(NOTTRUE370)
@SP
A = M -1
M = 0
@ENDTRUE370
0; JMP
(TRUE370)
@SP
A = M - 1
M = -1
(ENDTRUE370)
@SP
AM = M - 1
D = M
@Main.printGameOver$IF_TRUE0
D; JNE
@Main.printGameOver$IF_FALSE0
0; JMP
(Main.printGameOver$IF_TRUE0)
// push static 8
@Main.8
D = M
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
@Main.printGameOver$IF_END0
0; JMP
(Main.printGameOver$IF_FALSE0)
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
// push static 6
@Main.6
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0371
D; JLE
@YGT0371
D; JGT
(YLE0371)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH371 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE371 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE371
0;JMP
(YGT0371)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH371 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE371 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE371
0; JMP
//D HOLDS X
(BOTH371)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE371
D; JEQ
@NOTTRUE371
0;JMP
(NOTTRUE371)
@SP
A = M -1
M = 0
@ENDTRUE371
0; JMP
(TRUE371)
@SP
A = M - 1
M = -1
(ENDTRUE371)
@SP
AM = M - 1
D = M
@Main.printGameOver$IF_TRUE1
D; JNE
@Main.printGameOver$IF_FALSE1
0; JMP
(Main.printGameOver$IF_TRUE1)
// push static 9
@Main.9
D = M
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
@Main.printGameOver$IF_END1
0; JMP
(Main.printGameOver$IF_FALSE1)
// push static 10
@Main.10
D = M
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
(Main.printGameOver$IF_END1)
(Main.printGameOver$IF_END0)
// push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 42
@42
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.moveCursor 2
// get ip
@RET_ADDR371
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
@f_Output.moveCursor
0; JMP
(RET_ADDR371)
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
// call Output.printString 1
// get ip
@RET_ADDR372
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
@f_Output.printString
0; JMP
(RET_ADDR372)
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
@SP
AM = M - 1
D = M
@Main.printGameOver$IF_TRUE2
D; JNE
@Main.printGameOver$IF_FALSE2
0; JMP
(Main.printGameOver$IF_TRUE2)
// push constant 1900
@1900
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.sqrt 1
// get ip
@RET_ADDR373
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
@f_Math.sqrt
0; JMP
(RET_ADDR373)
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
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Memory.peek 1
// get ip
@RET_ADDR374
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
@f_Memory.peek
0; JMP
(RET_ADDR374)
// pop static 0
@Main.0
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
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Main.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Memory.poke 2
// get ip
@RET_ADDR375
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
(RET_ADDR375)
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
// push constant 1
@1
D = A
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
// pop static 0
@Main.0
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
// push constant 1
@1
D = A
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
// pop static 0
@Main.0
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
// pop static 5
@Main.5
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 6
@Main.6
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
// push constant 10
@10
D = A
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// pop static 1
@Main.1
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
// push constant 10
@10
D = A
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// pop static 2
@Main.2
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
// push constant 10
@10
D = A
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// pop static 4
@Main.4
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
// push constant 10
@10
D = A
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// push constant 10
@10
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
// pop static 3
@Main.3
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
// push constant 23
@23
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR376
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
@f_String.new
0; JMP
(RET_ADDR376)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR377
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
@f_String.appendChar
0; JMP
(RET_ADDR377)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR378
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
@f_String.appendChar
0; JMP
(RET_ADDR378)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR379
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
@f_String.appendChar
0; JMP
(RET_ADDR379)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR380
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
@f_String.appendChar
0; JMP
(RET_ADDR380)
// push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR381
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
@f_String.appendChar
0; JMP
(RET_ADDR381)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR382
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
@f_String.appendChar
0; JMP
(RET_ADDR382)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR383
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
@f_String.appendChar
0; JMP
(RET_ADDR383)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR384
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
@f_String.appendChar
0; JMP
(RET_ADDR384)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR385
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
@f_String.appendChar
0; JMP
(RET_ADDR385)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR386
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
@f_String.appendChar
0; JMP
(RET_ADDR386)
// push constant 118
@118
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR387
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
@f_String.appendChar
0; JMP
(RET_ADDR387)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR388
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
@f_String.appendChar
0; JMP
(RET_ADDR388)
// push constant 44
@44
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR389
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
@f_String.appendChar
0; JMP
(RET_ADDR389)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR390
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
@f_String.appendChar
0; JMP
(RET_ADDR390)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR391
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
@f_String.appendChar
0; JMP
(RET_ADDR391)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR392
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
@f_String.appendChar
0; JMP
(RET_ADDR392)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR393
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
@f_String.appendChar
0; JMP
(RET_ADDR393)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR394
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
@f_String.appendChar
0; JMP
(RET_ADDR394)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR395
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
@f_String.appendChar
0; JMP
(RET_ADDR395)
// push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR396
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
@f_String.appendChar
0; JMP
(RET_ADDR396)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR397
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
@f_String.appendChar
0; JMP
(RET_ADDR397)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR398
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
@f_String.appendChar
0; JMP
(RET_ADDR398)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR399
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
@f_String.appendChar
0; JMP
(RET_ADDR399)
// pop static 7
@Main.7
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
// push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR400
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
@f_String.new
0; JMP
(RET_ADDR400)
// push constant 89
@89
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR401
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
@f_String.appendChar
0; JMP
(RET_ADDR401)
// push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR402
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
@f_String.appendChar
0; JMP
(RET_ADDR402)
// push constant 85
@85
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR403
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
@f_String.appendChar
0; JMP
(RET_ADDR403)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR404
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
@f_String.appendChar
0; JMP
(RET_ADDR404)
// push constant 87
@87
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR405
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
@f_String.appendChar
0; JMP
(RET_ADDR405)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR406
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
@f_String.appendChar
0; JMP
(RET_ADDR406)
// push constant 78
@78
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR407
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
@f_String.appendChar
0; JMP
(RET_ADDR407)
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR408
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
@f_String.appendChar
0; JMP
(RET_ADDR408)
// pop static 8
@Main.8
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
// push constant 9
@9
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR409
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
@f_String.new
0; JMP
(RET_ADDR409)
// push constant 89
@89
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR410
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
@f_String.appendChar
0; JMP
(RET_ADDR410)
// push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR411
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
@f_String.appendChar
0; JMP
(RET_ADDR411)
// push constant 85
@85
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR412
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
@f_String.appendChar
0; JMP
(RET_ADDR412)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR413
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
@f_String.appendChar
0; JMP
(RET_ADDR413)
// push constant 76
@76
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR414
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
@f_String.appendChar
0; JMP
(RET_ADDR414)
// push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR415
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
@f_String.appendChar
0; JMP
(RET_ADDR415)
// push constant 83
@83
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR416
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
@f_String.appendChar
0; JMP
(RET_ADDR416)
// push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR417
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
@f_String.appendChar
0; JMP
(RET_ADDR417)
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR418
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
@f_String.appendChar
0; JMP
(RET_ADDR418)
// pop static 9
@Main.9
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
// push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR419
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
@f_String.new
0; JMP
(RET_ADDR419)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR420
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
@f_String.appendChar
0; JMP
(RET_ADDR420)
// push constant 84
@84
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR421
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
@f_String.appendChar
0; JMP
(RET_ADDR421)
// push constant 39
@39
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR422
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
@f_String.appendChar
0; JMP
(RET_ADDR422)
// push constant 83
@83
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR423
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
@f_String.appendChar
0; JMP
(RET_ADDR423)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR424
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
@f_String.appendChar
0; JMP
(RET_ADDR424)
// push constant 65
@65
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR425
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
@f_String.appendChar
0; JMP
(RET_ADDR425)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR426
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
@f_String.appendChar
0; JMP
(RET_ADDR426)
// push constant 84
@84
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR427
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
@f_String.appendChar
0; JMP
(RET_ADDR427)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR428
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
@f_String.appendChar
0; JMP
(RET_ADDR428)
// push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR429
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
@f_String.appendChar
0; JMP
(RET_ADDR429)
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR430
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
@f_String.appendChar
0; JMP
(RET_ADDR430)
// pop static 10
@Main.10
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
// push constant 1
@1
D = A
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
// pop static 0
@Main.0
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
// push constant 128
@128
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 0
@Main.0
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
// call Board.new 0
// get ip
@RET_ADDR431
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
@f_Board.new
0; JMP
(RET_ADDR431)
// pop static 11
@Main.11
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
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 5
@Main.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 6
@Main.6
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 1
@Main.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 2
@Main.2
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 3
@Main.3
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 4
@Main.4
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.setConsts 7
// get ip
@RET_ADDR432
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
@12
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.setConsts
0; JMP
(RET_ADDR432)
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
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.initGrid 1
// get ip
@RET_ADDR433
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
@f_Board.initGrid
0; JMP
(RET_ADDR433)
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
(Main.printGameOver$WHILE_EXP0)
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Board.isGameOver 2
// get ip
@RET_ADDR434
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
@f_Board.isGameOver
0; JMP
(RET_ADDR434)
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
@Main.printGameOver$WHILE_END0
D; JNE
// push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
// push static 5
@Main.5
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0436
D; JLE
@YGT0436
D; JGT
(YLE0436)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH436 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE436 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE436
0;JMP
(YGT0436)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH436 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE436 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE436
0; JMP
//D HOLDS X
(BOTH436)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE436
D; JEQ
@NOTTRUE436
0;JMP
(NOTTRUE436)
@SP
A = M -1
M = 0
@ENDTRUE436
0; JMP
(TRUE436)
@SP
A = M - 1
M = -1
(ENDTRUE436)
@SP
AM = M - 1
D = M
@Main.printGameOver$IF_TRUE3
D; JNE
@Main.printGameOver$IF_FALSE3
0; JMP
(Main.printGameOver$IF_TRUE3)
// call Main.playerMove 0
// get ip
@RET_ADDR436
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
@f_Main.playerMove
0; JMP
(RET_ADDR436)
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
@Main.printGameOver$IF_END3
0; JMP
(Main.printGameOver$IF_FALSE3)
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.computerMove 1
// get ip
@RET_ADDR437
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
@f_Board.computerMove
0; JMP
(RET_ADDR437)
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
(Main.printGameOver$IF_END3)
@Main.printGameOver$WHILE_EXP0
0; JMP
(Main.printGameOver$WHILE_END0)
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.getWinner 1
// get ip
@RET_ADDR438
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
@f_Board.getWinner
0; JMP
(RET_ADDR438)
// call Main.printGameOver 1
// get ip
@RET_ADDR439
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
@f_Main.printGameOver
0; JMP
(RET_ADDR439)
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
// push static 11
@Main.11
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Board.dispose 1
// get ip
@RET_ADDR440
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
@f_Board.dispose
0; JMP
(RET_ADDR440)
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
// push static 7
@Main.7
D = M
@SP
M = M + 1
A = M - 1
M = D
// call String.dispose 1
// get ip
@RET_ADDR441
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
@f_String.dispose
0; JMP
(RET_ADDR441)
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
// push static 8
@Main.8
D = M
@SP
M = M + 1
A = M - 1
M = D
// call String.dispose 1
// get ip
@RET_ADDR442
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
@f_String.dispose
0; JMP
(RET_ADDR442)
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
// push static 9
@Main.9
D = M
@SP
M = M + 1
A = M - 1
M = D
// call String.dispose 1
// get ip
@RET_ADDR443
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
@f_String.dispose
0; JMP
(RET_ADDR443)
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
// push static 10
@Main.10
D = M
@SP
M = M + 1
A = M - 1
M = D
// call String.dispose 1
// get ip
@RET_ADDR444
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
@f_String.dispose
0; JMP
(RET_ADDR444)
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
(Main.printGameOver$IF_FALSE2)
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
@RET_ADDR445
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
(RET_ADDR445)
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
@RET_ADDR446
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
(RET_ADDR446)
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
@YLE0448
D; JLE
@YGT0448
D; JGT
(YLE0448)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH448 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE448 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE448
0;JMP
(YGT0448)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH448 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE448 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE448
0; JMP
//D HOLDS X
(BOTH448)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE448
D; JLT
@NOTTRUE448
0;JMP
(NOTTRUE448)
@SP
A = M -1
M = 0
@ENDTRUE448
0; JMP
(TRUE448)
@SP
A = M - 1
M = -1
(ENDTRUE448)
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
@YLE0449
D; JLE
@YGT0449
D; JGT
(YLE0449)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH449 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE449 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE449
0;JMP
(YGT0449)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH449 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE449 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE449
0; JMP
//D HOLDS X
(BOTH449)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE449
D; JLT
@NOTTRUE449
0;JMP
(NOTTRUE449)
@SP
A = M -1
M = 0
@ENDTRUE449
0; JMP
(TRUE449)
@SP
A = M - 1
M = -1
(ENDTRUE449)
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
@YLE0450
D; JLE
@YGT0450
D; JGT
(YLE0450)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH450 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE450 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE450
0;JMP
(YGT0450)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH450 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE450 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE450
0; JMP
//D HOLDS X
(BOTH450)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE450
D; JLT
@NOTTRUE450
0;JMP
(NOTTRUE450)
@SP
A = M -1
M = 0
@ENDTRUE450
0; JMP
(TRUE450)
@SP
A = M - 1
M = -1
(ENDTRUE450)
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
@YLE0451
D; JLE
@YGT0451
D; JGT
(YLE0451)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH451 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE451 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE451
0;JMP
(YGT0451)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH451 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE451 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE451
0; JMP
//D HOLDS X
(BOTH451)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE451
D; JGT
@NOTTRUE451
0;JMP
(NOTTRUE451)
@SP
A = M -1
M = 0
@ENDTRUE451
0; JMP
(TRUE451)
@SP
A = M - 1
M = -1
(ENDTRUE451)
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
@YLE0452
D; JLE
@YGT0452
D; JGT
(YLE0452)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH452 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE452 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE452
0;JMP
(YGT0452)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH452 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE452 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE452
0; JMP
//D HOLDS X
(BOTH452)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE452
D; JGT
@NOTTRUE452
0;JMP
(NOTTRUE452)
@SP
A = M -1
M = 0
@ENDTRUE452
0; JMP
(TRUE452)
@SP
A = M - 1
M = -1
(ENDTRUE452)
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
@YLE0453
D; JLE
@YGT0453
D; JGT
(YLE0453)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH453 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE453 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE453
0;JMP
(YGT0453)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH453 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE453 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE453
0; JMP
//D HOLDS X
(BOTH453)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE453
D; JLT
@NOTTRUE453
0;JMP
(NOTTRUE453)
@SP
A = M -1
M = 0
@ENDTRUE453
0; JMP
(TRUE453)
@SP
A = M - 1
M = -1
(ENDTRUE453)
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
@RET_ADDR453
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
(RET_ADDR453)
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
@RET_ADDR454
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
(RET_ADDR454)
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
@YLE0456
D; JLE
@YGT0456
D; JGT
(YLE0456)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH456 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE456 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE456
0;JMP
(YGT0456)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH456 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE456 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE456
0; JMP
//D HOLDS X
(BOTH456)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE456
D; JLT
@NOTTRUE456
0;JMP
(NOTTRUE456)
@SP
A = M -1
M = 0
@ENDTRUE456
0; JMP
(TRUE456)
@SP
A = M - 1
M = -1
(ENDTRUE456)
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
@YLE0457
D; JLE
@YGT0457
D; JGT
(YLE0457)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH457 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE457 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE457
0;JMP
(YGT0457)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH457 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE457 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE457
0; JMP
//D HOLDS X
(BOTH457)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE457
D; JLT
@NOTTRUE457
0;JMP
(NOTTRUE457)
@SP
A = M -1
M = 0
@ENDTRUE457
0; JMP
(TRUE457)
@SP
A = M - 1
M = -1
(ENDTRUE457)
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
@YLE0458
D; JLE
@YGT0458
D; JGT
(YLE0458)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH458 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE458 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE458
0;JMP
(YGT0458)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH458 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE458 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE458
0; JMP
//D HOLDS X
(BOTH458)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE458
D; JGT
@NOTTRUE458
0;JMP
(NOTTRUE458)
@SP
A = M -1
M = 0
@ENDTRUE458
0; JMP
(TRUE458)
@SP
A = M - 1
M = -1
(ENDTRUE458)
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
@YLE0459
D; JLE
@YGT0459
D; JGT
(YLE0459)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH459 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE459 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE459
0;JMP
(YGT0459)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH459 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE459 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE459
0; JMP
//D HOLDS X
(BOTH459)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE459
D; JEQ
@NOTTRUE459
0;JMP
(NOTTRUE459)
@SP
A = M -1
M = 0
@ENDTRUE459
0; JMP
(TRUE459)
@SP
A = M - 1
M = -1
(ENDTRUE459)
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
@RET_ADDR459
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
(RET_ADDR459)
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
@YLE0461
D; JLE
@YGT0461
D; JGT
(YLE0461)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH461 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE461 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE461
0;JMP
(YGT0461)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH461 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE461 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE461
0; JMP
//D HOLDS X
(BOTH461)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE461
D; JLT
@NOTTRUE461
0;JMP
(NOTTRUE461)
@SP
A = M -1
M = 0
@ENDTRUE461
0; JMP
(TRUE461)
@SP
A = M - 1
M = -1
(ENDTRUE461)
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
@YLE0462
D; JLE
@YGT0462
D; JGT
(YLE0462)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH462 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE462 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE462
0;JMP
(YGT0462)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH462 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE462 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE462
0; JMP
//D HOLDS X
(BOTH462)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE462
D; JGT
@NOTTRUE462
0;JMP
(NOTTRUE462)
@SP
A = M -1
M = 0
@ENDTRUE462
0; JMP
(TRUE462)
@SP
A = M - 1
M = -1
(ENDTRUE462)
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
@YLE0463
D; JLE
@YGT0463
D; JGT
(YLE0463)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH463 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE463 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE463
0;JMP
(YGT0463)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH463 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE463 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE463
0; JMP
//D HOLDS X
(BOTH463)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE463
D; JGT
@NOTTRUE463
0;JMP
(NOTTRUE463)
@SP
A = M -1
M = 0
@ENDTRUE463
0; JMP
(TRUE463)
@SP
A = M - 1
M = -1
(ENDTRUE463)
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
@YLE0464
D; JLE
@YGT0464
D; JGT
(YLE0464)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH464 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE464 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE464
0;JMP
(YGT0464)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH464 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE464 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE464
0; JMP
//D HOLDS X
(BOTH464)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE464
D; JLT
@NOTTRUE464
0;JMP
(NOTTRUE464)
@SP
A = M -1
M = 0
@ENDTRUE464
0; JMP
(TRUE464)
@SP
A = M - 1
M = -1
(ENDTRUE464)
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
@RET_ADDR464
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
(RET_ADDR464)
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
@RET_ADDR465
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
(RET_ADDR465)
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
@YLE0467
D; JLE
@YGT0467
D; JGT
(YLE0467)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH467 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE467 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE467
0;JMP
(YGT0467)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH467 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE467 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE467
0; JMP
//D HOLDS X
(BOTH467)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE467
D; JLT
@NOTTRUE467
0;JMP
(NOTTRUE467)
@SP
A = M -1
M = 0
@ENDTRUE467
0; JMP
(TRUE467)
@SP
A = M - 1
M = -1
(ENDTRUE467)
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
@YLE0468
D; JLE
@YGT0468
D; JGT
(YLE0468)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH468 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE468 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE468
0;JMP
(YGT0468)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH468 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE468 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE468
0; JMP
//D HOLDS X
(BOTH468)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE468
D; JGT
@NOTTRUE468
0;JMP
(NOTTRUE468)
@SP
A = M -1
M = 0
@ENDTRUE468
0; JMP
(TRUE468)
@SP
A = M - 1
M = -1
(ENDTRUE468)
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
@YLE0469
D; JLE
@YGT0469
D; JGT
(YLE0469)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH469 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE469 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE469
0;JMP
(YGT0469)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH469 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE469 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE469
0; JMP
//D HOLDS X
(BOTH469)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE469
D; JGT
@NOTTRUE469
0;JMP
(NOTTRUE469)
@SP
A = M -1
M = 0
@ENDTRUE469
0; JMP
(TRUE469)
@SP
A = M - 1
M = -1
(ENDTRUE469)
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
@YLE0470
D; JLE
@YGT0470
D; JGT
(YLE0470)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH470 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE470 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE470
0;JMP
(YGT0470)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH470 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE470 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE470
0; JMP
//D HOLDS X
(BOTH470)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE470
D; JGT
@NOTTRUE470
0;JMP
(NOTTRUE470)
@SP
A = M -1
M = 0
@ENDTRUE470
0; JMP
(TRUE470)
@SP
A = M - 1
M = -1
(ENDTRUE470)
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
// function Math.sqrt 4
(f_Math.sqrt)
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
@YLE0471
D; JLE
@YGT0471
D; JGT
(YLE0471)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH471 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE471 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE471
0;JMP
(YGT0471)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH471 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE471 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE471
0; JMP
//D HOLDS X
(BOTH471)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE471
D; JLT
@NOTTRUE471
0;JMP
(NOTTRUE471)
@SP
A = M -1
M = 0
@ENDTRUE471
0; JMP
(TRUE471)
@SP
A = M - 1
M = -1
(ENDTRUE471)
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
@RET_ADDR471
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
(RET_ADDR471)
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
@YLE0473
D; JLE
@YGT0473
D; JGT
(YLE0473)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH473 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE473 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE473
0;JMP
(YGT0473)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH473 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE473 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE473
0; JMP
//D HOLDS X
(BOTH473)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE473
D; JGT
@NOTTRUE473
0;JMP
(NOTTRUE473)
@SP
A = M -1
M = 0
@ENDTRUE473
0; JMP
(TRUE473)
@SP
A = M - 1
M = -1
(ENDTRUE473)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Math.sqrt$WHILE_END0
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
// call Math.multiply 2
// get ip
@RET_ADDR473
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
(RET_ADDR473)
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
@YLE0475
D; JLE
@YGT0475
D; JGT
(YLE0475)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH475 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE475 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE475
0;JMP
(YGT0475)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH475 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE475 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE475
0; JMP
//D HOLDS X
(BOTH475)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE475
D; JGT
@NOTTRUE475
0;JMP
(NOTTRUE475)
@SP
A = M -1
M = 0
@ENDTRUE475
0; JMP
(TRUE475)
@SP
A = M - 1
M = -1
(ENDTRUE475)
// not
@SP
A = M - 1
M = ! M
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
@YLE0476
D; JLE
@YGT0476
D; JGT
(YLE0476)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH476 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE476 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE476
0;JMP
(YGT0476)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH476 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE476 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE476
0; JMP
//D HOLDS X
(BOTH476)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE476
D; JLT
@NOTTRUE476
0;JMP
(NOTTRUE476)
@SP
A = M -1
M = 0
@ENDTRUE476
0; JMP
(TRUE476)
@SP
A = M - 1
M = -1
(ENDTRUE476)
// not
@SP
A = M - 1
M = ! M
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
@YLE0477
D; JLE
@YGT0477
D; JGT
(YLE0477)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH477 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE477 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE477
0;JMP
(YGT0477)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH477 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE477 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE477
0; JMP
//D HOLDS X
(BOTH477)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE477
D; JGT
@NOTTRUE477
0;JMP
(NOTTRUE477)
@SP
A = M -1
M = 0
@ENDTRUE477
0; JMP
(TRUE477)
@SP
A = M - 1
M = -1
(ENDTRUE477)
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
@YLE0478
D; JLE
@YGT0478
D; JGT
(YLE0478)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH478 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE478 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE478
0;JMP
(YGT0478)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH478 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE478 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE478
0; JMP
//D HOLDS X
(BOTH478)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE478
D; JLT
@NOTTRUE478
0;JMP
(NOTTRUE478)
@SP
A = M -1
M = 0
@ENDTRUE478
0; JMP
(TRUE478)
@SP
A = M - 1
M = -1
(ENDTRUE478)
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
// function Memory.alloc 1
(f_Memory.alloc)
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
@YLE0479
D; JLE
@YGT0479
D; JGT
(YLE0479)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH479 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE479 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE479
0;JMP
(YGT0479)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH479 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE479 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE479
0; JMP
//D HOLDS X
(BOTH479)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE479
D; JLT
@NOTTRUE479
0;JMP
(NOTTRUE479)
@SP
A = M -1
M = 0
@ENDTRUE479
0; JMP
(TRUE479)
@SP
A = M - 1
M = -1
(ENDTRUE479)
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
@RET_ADDR479
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
(RET_ADDR479)
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
(Memory.alloc$WHILE_EXP0)
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
@YLE0481
D; JLE
@YGT0481
D; JGT
(YLE0481)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH481 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE481 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE481
0;JMP
(YGT0481)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH481 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE481 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE481
0; JMP
//D HOLDS X
(BOTH481)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE481
D; JLT
@NOTTRUE481
0;JMP
(NOTTRUE481)
@SP
A = M -1
M = 0
@ENDTRUE481
0; JMP
(TRUE481)
@SP
A = M - 1
M = -1
(ENDTRUE481)
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
@Memory.alloc$WHILE_EXP0
0; JMP
(Memory.alloc$WHILE_END0)
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
@YLE0482
D; JLE
@YGT0482
D; JGT
(YLE0482)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH482 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE482 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE482
0;JMP
(YGT0482)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH482 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE482 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE482
0; JMP
//D HOLDS X
(BOTH482)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE482
D; JGT
@NOTTRUE482
0;JMP
(NOTTRUE482)
@SP
A = M -1
M = 0
@ENDTRUE482
0; JMP
(TRUE482)
@SP
A = M - 1
M = -1
(ENDTRUE482)
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
@RET_ADDR482
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
(RET_ADDR482)
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
@YLE0484
D; JLE
@YGT0484
D; JGT
(YLE0484)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH484 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE484 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE484
0;JMP
(YGT0484)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH484 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE484 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE484
0; JMP
//D HOLDS X
(BOTH484)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE484
D; JGT
@NOTTRUE484
0;JMP
(NOTTRUE484)
@SP
A = M -1
M = 0
@ENDTRUE484
0; JMP
(TRUE484)
@SP
A = M - 1
M = -1
(ENDTRUE484)
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
@YLE0485
D; JLE
@YGT0485
D; JGT
(YLE0485)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH485 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE485 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE485
0;JMP
(YGT0485)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH485 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE485 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE485
0; JMP
//D HOLDS X
(BOTH485)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE485
D; JEQ
@NOTTRUE485
0;JMP
(NOTTRUE485)
@SP
A = M -1
M = 0
@ENDTRUE485
0; JMP
(TRUE485)
@SP
A = M - 1
M = -1
(ENDTRUE485)
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
@YLE0486
D; JLE
@YGT0486
D; JGT
(YLE0486)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH486 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE486 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE486
0;JMP
(YGT0486)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH486 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE486 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE486
0; JMP
//D HOLDS X
(BOTH486)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE486
D; JEQ
@NOTTRUE486
0;JMP
(NOTTRUE486)
@SP
A = M -1
M = 0
@ENDTRUE486
0; JMP
(TRUE486)
@SP
A = M - 1
M = -1
(ENDTRUE486)
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
@YLE0487
D; JLE
@YGT0487
D; JGT
(YLE0487)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH487 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE487 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE487
0;JMP
(YGT0487)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH487 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE487 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE487
0; JMP
//D HOLDS X
(BOTH487)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE487
D; JEQ
@NOTTRUE487
0;JMP
(NOTTRUE487)
@SP
A = M -1
M = 0
@ENDTRUE487
0; JMP
(TRUE487)
@SP
A = M - 1
M = -1
(ENDTRUE487)
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
// function MovingObject.new 0
(f_MovingObject.new)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Memory.alloc 1
// get ip
@RET_ADDR487
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
(RET_ADDR487)
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
// pop this 0
@0
D = A
@THIS
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
// pop this 2
@2
D = A
@THIS
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop this 6
@6
D = A
@THIS
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
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop this 3
@3
D = A
@THIS
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
// push this 2
@2
D = A
@THIS
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
// pop this 5
@5
D = A
@THIS
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
// pop this 4
@4
D = A
@THIS
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
// push argument 4
@4
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop this 1
@1
D = A
@THIS
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
// function MovingObject.draw 1
(f_MovingObject.draw)
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
(MovingObject.draw$WHILE_EXP0)
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
// push this 2
@2
D = A
@THIS
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
@YLE0489
D; JLE
@YGT0489
D; JGT
(YLE0489)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH489 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE489 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE489
0;JMP
(YGT0489)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH489 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE489 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE489
0; JMP
//D HOLDS X
(BOTH489)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE489
D; JLT
@NOTTRUE489
0;JMP
(NOTTRUE489)
@SP
A = M -1
M = 0
@ENDTRUE489
0; JMP
(TRUE489)
@SP
A = M - 1
M = -1
(ENDTRUE489)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@MovingObject.draw$WHILE_END0
D; JNE
// push this 5
@5
D = A
@THIS
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
@YLE0490
D; JLE
@YGT0490
D; JGT
(YLE0490)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH490 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE490 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE490
0;JMP
(YGT0490)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH490 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE490 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE490
0; JMP
//D HOLDS X
(BOTH490)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE490
D; JGT
@NOTTRUE490
0;JMP
(NOTTRUE490)
@SP
A = M -1
M = 0
@ENDTRUE490
0; JMP
(TRUE490)
@SP
A = M - 1
M = -1
(ENDTRUE490)
// push this 5
@5
D = A
@THIS
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0491
D; JLE
@YGT0491
D; JGT
(YLE0491)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH491 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE491 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE491
0;JMP
(YGT0491)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH491 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE491 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE491
0; JMP
//D HOLDS X
(BOTH491)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE491
D; JLT
@NOTTRUE491
0;JMP
(NOTTRUE491)
@SP
A = M -1
M = 0
@ENDTRUE491
0; JMP
(TRUE491)
@SP
A = M - 1
M = -1
(ENDTRUE491)
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
@SP
AM = M - 1
D = M
@MovingObject.draw$IF_TRUE0
D; JNE
@MovingObject.draw$IF_FALSE0
0; JMP
(MovingObject.draw$IF_TRUE0)
// push this 0
@0
D = A
@THIS
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
@YLE0492
D; JLE
@YGT0492
D; JGT
(YLE0492)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH492 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE492 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE492
0;JMP
(YGT0492)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH492 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE492 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE492
0; JMP
//D HOLDS X
(BOTH492)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE492
D; JEQ
@NOTTRUE492
0;JMP
(NOTTRUE492)
@SP
A = M -1
M = 0
@ENDTRUE492
0; JMP
(TRUE492)
@SP
A = M - 1
M = -1
(ENDTRUE492)
@SP
AM = M - 1
D = M
@MovingObject.draw$IF_TRUE1
D; JNE
@MovingObject.draw$IF_FALSE1
0; JMP
(MovingObject.draw$IF_TRUE1)
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR492
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
(RET_ADDR492)
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR493
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
(RET_ADDR493)
// push constant 7
@7
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
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR494
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
(RET_ADDR494)
// push constant 13
@13
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR495
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
(RET_ADDR495)
// push constant 11
@11
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
// call Screen.drawRectangle 4
// get ip
@RET_ADDR496
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawRectangle
0; JMP
(RET_ADDR496)
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
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR497
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
(RET_ADDR497)
// push constant 7
@7
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR498
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
(RET_ADDR498)
// push constant 12
@12
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
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.drawCircle 3
// get ip
@RET_ADDR499
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawCircle
0; JMP
(RET_ADDR499)
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
(MovingObject.draw$IF_FALSE1)
// push this 0
@0
D = A
@THIS
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0501
D; JLE
@YGT0501
D; JGT
(YLE0501)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH501 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE501 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE501
0;JMP
(YGT0501)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH501 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE501 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE501
0; JMP
//D HOLDS X
(BOTH501)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE501
D; JEQ
@NOTTRUE501
0;JMP
(NOTTRUE501)
@SP
A = M -1
M = 0
@ENDTRUE501
0; JMP
(TRUE501)
@SP
A = M - 1
M = -1
(ENDTRUE501)
@SP
AM = M - 1
D = M
@MovingObject.draw$IF_TRUE2
D; JNE
@MovingObject.draw$IF_FALSE2
0; JMP
(MovingObject.draw$IF_TRUE2)
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR501
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
(RET_ADDR501)
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR502
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
(RET_ADDR502)
// push constant 6
@6
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
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR503
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
(RET_ADDR503)
// push constant 5
@5
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR504
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
(RET_ADDR504)
// push constant 12
@12
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
// call Screen.drawLine 4
// get ip
@RET_ADDR505
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR505)
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
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR506
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
(RET_ADDR506)
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR507
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
(RET_ADDR507)
// push constant 6
@6
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
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR508
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
(RET_ADDR508)
// push constant 8
@8
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR509
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
(RET_ADDR509)
// push constant 12
@12
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
// call Screen.drawLine 4
// get ip
@RET_ADDR510
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR510)
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
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR511
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
(RET_ADDR511)
// push constant 6
@6
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR512
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
(RET_ADDR512)
// push constant 6
@6
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
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR513
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
(RET_ADDR513)
// push constant 11
@11
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR514
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
(RET_ADDR514)
// push constant 12
@12
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
// call Screen.drawLine 4
// get ip
@RET_ADDR515
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR515)
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
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR516
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
(RET_ADDR516)
// push constant 9
@9
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR517
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
(RET_ADDR517)
// push constant 6
@6
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
// push this 5
@5
D = A
@THIS
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR518
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
(RET_ADDR518)
// push constant 14
@14
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
// push this 6
@6
D = A
@THIS
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
// call Math.multiply 2
// get ip
@RET_ADDR519
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
(RET_ADDR519)
// push constant 12
@12
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
// call Screen.drawLine 4
// get ip
@RET_ADDR520
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawLine
0; JMP
(RET_ADDR520)
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
(MovingObject.draw$IF_FALSE2)
(MovingObject.draw$IF_FALSE0)
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
@MovingObject.draw$WHILE_EXP0
0; JMP
(MovingObject.draw$WHILE_END0)
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
// function MovingObject.isTurn 0
(f_MovingObject.isTurn)
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
// push this 4
@4
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push this 3
@3
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0522
D; JLE
@YGT0522
D; JGT
(YLE0522)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH522 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE522 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE522
0;JMP
(YGT0522)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH522 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE522 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE522
0; JMP
//D HOLDS X
(BOTH522)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE522
D; JEQ
@NOTTRUE522
0;JMP
(NOTTRUE522)
@SP
A = M -1
M = 0
@ENDTRUE522
0; JMP
(TRUE522)
@SP
A = M - 1
M = -1
(ENDTRUE522)
@SP
AM = M - 1
D = M
@MovingObject.isTurn$IF_TRUE0
D; JNE
@MovingObject.isTurn$IF_FALSE0
0; JMP
(MovingObject.isTurn$IF_TRUE0)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop this 4
@4
D = A
@THIS
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
// not
@SP
A = M - 1
M = ! M
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
(MovingObject.isTurn$IF_FALSE0)
// push this 4
@4
D = A
@THIS
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
// pop this 4
@4
D = A
@THIS
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
// function MovingObject.reset 0
(f_MovingObject.reset)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop this 1
@1
D = A
@THIS
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
// pop this 2
@2
D = A
@THIS
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
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// pop this 3
@3
D = A
@THIS
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
// push this 1
@1
D = A
@THIS
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0523
D; JLE
@YGT0523
D; JGT
(YLE0523)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH523 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE523 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE523
0;JMP
(YGT0523)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH523 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE523 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE523
0; JMP
//D HOLDS X
(BOTH523)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE523
D; JEQ
@NOTTRUE523
0;JMP
(NOTTRUE523)
@SP
A = M -1
M = 0
@ENDTRUE523
0; JMP
(TRUE523)
@SP
A = M - 1
M = -1
(ENDTRUE523)
@SP
AM = M - 1
D = M
@MovingObject.reset$IF_TRUE0
D; JNE
@MovingObject.reset$IF_FALSE0
0; JMP
(MovingObject.reset$IF_TRUE0)
// push this 2
@2
D = A
@THIS
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
// pop this 5
@5
D = A
@THIS
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
(MovingObject.reset$IF_FALSE0)
// push this 1
@1
D = A
@THIS
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0524
D; JLE
@YGT0524
D; JGT
(YLE0524)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH524 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE524 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE524
0;JMP
(YGT0524)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH524 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE524 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE524
0; JMP
//D HOLDS X
(BOTH524)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE524
D; JEQ
@NOTTRUE524
0;JMP
(NOTTRUE524)
@SP
A = M -1
M = 0
@ENDTRUE524
0; JMP
(TRUE524)
@SP
A = M - 1
M = -1
(ENDTRUE524)
@SP
AM = M - 1
D = M
@MovingObject.reset$IF_TRUE1
D; JNE
@MovingObject.reset$IF_FALSE1
0; JMP
(MovingObject.reset$IF_TRUE1)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop this 5
@5
D = A
@THIS
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
(MovingObject.reset$IF_FALSE1)
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
// function MovingObject.advance 0
(f_MovingObject.advance)
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
// push this 5
@5
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push this 1
@1
D = A
@THIS
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
// pop this 5
@5
D = A
@THIS
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
// push this 1
@1
D = A
@THIS
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0525
D; JLE
@YGT0525
D; JGT
(YLE0525)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH525 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE525 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE525
0;JMP
(YGT0525)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH525 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE525 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE525
0; JMP
//D HOLDS X
(BOTH525)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE525
D; JEQ
@NOTTRUE525
0;JMP
(NOTTRUE525)
@SP
A = M -1
M = 0
@ENDTRUE525
0; JMP
(TRUE525)
@SP
A = M - 1
M = -1
(ENDTRUE525)
@SP
AM = M - 1
D = M
@MovingObject.advance$IF_TRUE0
D; JNE
@MovingObject.advance$IF_FALSE0
0; JMP
(MovingObject.advance$IF_TRUE0)
// push this 5
@5
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0526
D; JLE
@YGT0526
D; JGT
(YLE0526)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH526 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE526 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE526
0;JMP
(YGT0526)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH526 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE526 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE526
0; JMP
//D HOLDS X
(BOTH526)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE526
D; JGT
@NOTTRUE526
0;JMP
(NOTTRUE526)
@SP
A = M -1
M = 0
@ENDTRUE526
0; JMP
(TRUE526)
@SP
A = M - 1
M = -1
(ENDTRUE526)
@SP
AM = M - 1
D = M
@MovingObject.advance$IF_TRUE1
D; JNE
@MovingObject.advance$IF_FALSE1
0; JMP
(MovingObject.advance$IF_TRUE1)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call MovingObject.reset 4
// get ip
@RET_ADDR526
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_MovingObject.reset
0; JMP
(RET_ADDR526)
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
(MovingObject.advance$IF_FALSE1)
(MovingObject.advance$IF_FALSE0)
// push this 1
@1
D = A
@THIS
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0528
D; JLE
@YGT0528
D; JGT
(YLE0528)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH528 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE528 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE528
0;JMP
(YGT0528)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH528 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE528 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE528
0; JMP
//D HOLDS X
(BOTH528)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE528
D; JEQ
@NOTTRUE528
0;JMP
(NOTTRUE528)
@SP
A = M -1
M = 0
@ENDTRUE528
0; JMP
(TRUE528)
@SP
A = M - 1
M = -1
(ENDTRUE528)
@SP
AM = M - 1
D = M
@MovingObject.advance$IF_TRUE2
D; JNE
@MovingObject.advance$IF_FALSE2
0; JMP
(MovingObject.advance$IF_TRUE2)
// push this 5
@5
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push this 2
@2
D = A
@THIS
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0529
D; JLE
@YGT0529
D; JGT
(YLE0529)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH529 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE529 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE529
0;JMP
(YGT0529)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH529 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE529 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE529
0; JMP
//D HOLDS X
(BOTH529)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE529
D; JLT
@NOTTRUE529
0;JMP
(NOTTRUE529)
@SP
A = M -1
M = 0
@ENDTRUE529
0; JMP
(TRUE529)
@SP
A = M - 1
M = -1
(ENDTRUE529)
@SP
AM = M - 1
D = M
@MovingObject.advance$IF_TRUE3
D; JNE
@MovingObject.advance$IF_FALSE3
0; JMP
(MovingObject.advance$IF_TRUE3)
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
// push argument 2
@2
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push argument 3
@3
D = A
@ARG
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call MovingObject.reset 4
// get ip
@RET_ADDR529
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_MovingObject.reset
0; JMP
(RET_ADDR529)
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
(MovingObject.advance$IF_FALSE3)
(MovingObject.advance$IF_FALSE2)
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
// function MovingObject.tailX 0
(f_MovingObject.tailX)
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
// push this 5
@5
D = A
@THIS
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
// function MovingObject.tailY 0
(f_MovingObject.tailY)
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
// push this 6
@6
D = A
@THIS
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
// function MovingObject.getLength 0
(f_MovingObject.getLength)
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
// push this 2
@2
D = A
@THIS
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
// function MovingObject.getDirection 0
(f_MovingObject.getDirection)
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
// push this 1
@1
D = A
@THIS
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
// function MovingObject.dispose 0
(f_MovingObject.dispose)
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
@RET_ADDR530
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
(RET_ADDR530)
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
// function Output.init 0
(f_Output.init)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 16384
@16384
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 4
@Output.4
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
// not
@SP
A = M - 1
M = ! M
// pop static 2
@Output.2
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 1
@Output.1
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
// pop static 0
@Output.0
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
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR531
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
@f_String.new
0; JMP
(RET_ADDR531)
// pop static 3
@Output.3
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
// call Output.initMap 0
// get ip
@RET_ADDR532
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
@f_Output.initMap
0; JMP
(RET_ADDR532)
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
// call Output.createShiftedMap 0
// get ip
@RET_ADDR533
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
@f_Output.createShiftedMap
0; JMP
(RET_ADDR533)
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
// function Output.initMap 0
(f_Output.initMap)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 127
@127
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Array.new 1
// get ip
@RET_ADDR534
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
(RET_ADDR534)
// pop static 5
@Output.5
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
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR535
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR535)
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
// push constant 32
@32
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// call Output.create 12
// get ip
@RET_ADDR536
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR536)
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
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR537
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR537)
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
// push constant 34
@34
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 20
@20
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR538
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR538)
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
// push constant 35
@35
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
// push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 18
@18
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR539
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR539)
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
// push constant 36
@36
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
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
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// call Output.create 12
// get ip
@RET_ADDR540
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR540)
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
// push constant 37
@37
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 49
@49
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR541
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR541)
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
// push constant 38
@38
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR542
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR542)
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
// push constant 39
@39
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR543
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR543)
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
// push constant 40
@40
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR544
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR544)
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
// push constant 41
@41
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR545
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR545)
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
// push constant 42
@42
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
// push constant 0
@0
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
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
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
// call Output.create 12
// get ip
@RET_ADDR546
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR546)
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
// push constant 43
@43
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
// push constant 0
@0
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
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
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
// call Output.create 12
// get ip
@RET_ADDR547
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR547)
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
// push constant 44
@44
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
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
// call Output.create 12
// get ip
@RET_ADDR548
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR548)
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
// push constant 45
@45
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 63
@63
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
// push constant 0
@0
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
// push constant 0
@0
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
// call Output.create 12
// get ip
@RET_ADDR549
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR549)
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
// push constant 46
@46
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR550
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR550)
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
// push constant 47
@47
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
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
// push constant 1
@1
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR551
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR551)
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
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR552
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR552)
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
// push constant 49
@49
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 14
@14
D = A
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
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR553
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR553)
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
// push constant 50
@50
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
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
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR554
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR554)
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
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR555
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR555)
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
// push constant 52
@52
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 26
@26
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 25
@25
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 60
@60
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR556
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR556)
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
// push constant 53
@53
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
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
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR557
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR557)
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
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
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
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR558
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR558)
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
// push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 49
@49
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR559
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR559)
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
// push constant 56
@56
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR560
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR560)
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
// push constant 57
@57
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 62
@62
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 14
@14
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR561
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR561)
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
// push constant 58
@58
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
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
// call Output.create 12
// get ip
@RET_ADDR562
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR562)
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
// push constant 59
@59
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR563
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR563)
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
// push constant 60
@60
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
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
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR564
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR564)
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
// push constant 61
@61
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
// push constant 0
@0
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
// push constant 63
@63
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
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
// push constant 0
@0
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR565
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR565)
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
// push constant 62
@62
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
// push constant 0
@0
D = A
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
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
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
// push constant 0
@0
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
// call Output.create 12
// get ip
@RET_ADDR566
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR566)
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
// push constant 64
@64
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
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
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR567
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR567)
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
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR568
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR568)
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
// push constant 65
@65
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR569
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR569)
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
// push constant 66
@66
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR570
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR570)
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
// push constant 67
@67
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 35
@35
D = A
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
// push constant 3
@3
D = A
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
// push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR571
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR571)
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
// push constant 68
@68
D = A
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
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
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
// push constant 0
@0
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
// call Output.create 12
// get ip
@RET_ADDR572
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR572)
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
// push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 11
@11
D = A
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
// push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR573
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR573)
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
// push constant 70
@70
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 11
@11
D = A
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
// push constant 11
@11
D = A
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
// push constant 3
@3
D = A
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
// push constant 0
@0
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
// call Output.create 12
// get ip
@RET_ADDR574
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR574)
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
// push constant 71
@71
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 35
@35
D = A
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
// push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 44
@44
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR575
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR575)
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
// push constant 72
@72
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR576
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR576)
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
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR577
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR577)
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
// push constant 74
@74
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 60
@60
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 14
@14
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR578
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR578)
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
// push constant 75
@75
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
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
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR579
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR579)
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
// push constant 76
@76
D = A
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
// push constant 3
@3
D = A
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
// push constant 3
@3
D = A
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
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR580
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR580)
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
// push constant 77
@77
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR581
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR581)
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
// push constant 78
@78
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR582
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR582)
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
// push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR583
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR583)
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
// push constant 80
@80
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
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
// push constant 3
@3
D = A
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
// push constant 3
@3
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR584
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR584)
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
// push constant 81
@81
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
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
// call Output.create 12
// get ip
@RET_ADDR585
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR585)
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
// push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR586
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR586)
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
// push constant 83
@83
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR587
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR587)
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
// push constant 84
@84
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 45
@45
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR588
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR588)
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
// push constant 85
@85
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR589
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR589)
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
// push constant 86
@86
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR590
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR590)
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
// push constant 87
@87
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 18
@18
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR591
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR591)
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
// push constant 88
@88
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR592
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR592)
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
// push constant 89
@89
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR593
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR593)
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
// push constant 90
@90
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 49
@49
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 35
@35
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR594
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR594)
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
// push constant 91
@91
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR595
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR595)
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
// push constant 92
@92
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
// push constant 0
@0
D = A
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
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 32
@32
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR596
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR596)
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
// push constant 93
@93
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR597
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR597)
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
// push constant 94
@94
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR598
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR598)
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
// push constant 95
@95
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 63
@63
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
// call Output.create 12
// get ip
@RET_ADDR599
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR599)
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
// push constant 96
@96
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR600
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR600)
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
// push constant 97
@97
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
// push constant 0
@0
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
// push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR601
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR601)
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
// push constant 98
@98
D = A
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
// push constant 3
@3
D = A
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
// push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR602
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR602)
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
// push constant 99
@99
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
// push constant 0
@0
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
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
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
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR603
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR603)
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
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 60
@60
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR604
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR604)
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
// push constant 101
@101
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
// push constant 0
@0
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
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
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
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR605
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR605)
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
// push constant 102
@102
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 38
@38
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
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
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
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
// push constant 0
@0
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
// call Output.create 12
// get ip
@RET_ADDR606
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR606)
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
// push constant 103
@103
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 62
@62
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// call Output.create 12
// get ip
@RET_ADDR607
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR607)
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
// push constant 104
@104
D = A
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
// push constant 3
@3
D = A
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
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR608
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR608)
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
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR609
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR609)
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
// push constant 106
@106
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
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
// push constant 56
@56
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// call Output.create 12
// get ip
@RET_ADDR610
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR610)
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
// push constant 107
@107
D = A
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
// push constant 3
@3
D = A
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
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
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
// push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR611
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR611)
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
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR612
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR612)
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
// push constant 109
@109
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
// push constant 0
@0
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
// push constant 29
@29
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 43
@43
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 43
@43
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 43
@43
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 43
@43
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR613
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR613)
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
// push constant 110
@110
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
// push constant 0
@0
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
// push constant 29
@29
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR614
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR614)
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
// push constant 111
@111
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
// push constant 0
@0
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
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR615
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR615)
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
// push constant 112
@112
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
// push constant 0
@0
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
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 31
@31
D = A
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
// push constant 3
@3
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
// call Output.create 12
// get ip
@RET_ADDR616
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR616)
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
// push constant 113
@113
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
// push constant 0
@0
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
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 62
@62
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
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
// call Output.create 12
// get ip
@RET_ADDR617
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR617)
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
// push constant 114
@114
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
// push constant 0
@0
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
// push constant 29
@29
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 55
@55
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
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
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 7
@7
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR618
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR618)
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
// push constant 115
@115
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
// push constant 0
@0
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
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR619
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR619)
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
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
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
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 28
@28
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR620
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR620)
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
// push constant 117
@117
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
// push constant 0
@0
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
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 54
@54
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR621
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR621)
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
// push constant 118
@118
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
// push constant 0
@0
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
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR622
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR622)
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
// push constant 119
@119
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
// push constant 0
@0
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
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 18
@18
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR623
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR623)
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
// push constant 120
@120
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
// push constant 0
@0
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
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 30
@30
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR624
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR624)
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
// push constant 121
@121
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
// push constant 0
@0
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
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 62
@62
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 24
@24
D = A
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR625
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR625)
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
// push constant 122
@122
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
// push constant 0
@0
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
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 51
@51
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 63
@63
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR626
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR626)
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
// push constant 123
@123
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 56
@56
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 56
@56
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR627
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR627)
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
// push constant 124
@124
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR628
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR628)
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
// push constant 125
@125
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 56
@56
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 7
@7
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR629
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR629)
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
// push constant 126
@126
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 38
@38
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 45
@45
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 25
@25
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.create 12
// get ip
@RET_ADDR630
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
@17
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.create
0; JMP
(RET_ADDR630)
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
// function Output.create 1
(f_Output.create)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
@1
D = A
@SP
M = M + D
// push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Array.new 1
// get ip
@RET_ADDR631
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
(RET_ADDR631)
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
// push static 5
@Output.5
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
// push argument 2
@2
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
// push constant 2
@2
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
// push argument 3
@3
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
// push constant 3
@3
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
// push argument 4
@4
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
// push constant 4
@4
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
// push argument 5
@5
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
// push constant 5
@5
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
// push argument 6
@6
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
// push constant 6
@6
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
// push argument 7
@7
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
// push constant 7
@7
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
// push argument 8
@8
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
// push constant 8
@8
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
// push argument 9
@9
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
// push constant 9
@9
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
// push argument 10
@10
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
// push constant 10
@10
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
// push argument 11
@11
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
// function Output.createShiftedMap 4
(f_Output.createShiftedMap)
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
// push constant 127
@127
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Array.new 1
// get ip
@RET_ADDR632
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
(RET_ADDR632)
// pop static 6
@Output.6
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
(Output.createShiftedMap$WHILE_EXP0)
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
// push constant 127
@127
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0634
D; JLE
@YGT0634
D; JGT
(YLE0634)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH634 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE634 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE634
0;JMP
(YGT0634)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH634 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE634 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE634
0; JMP
//D HOLDS X
(BOTH634)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE634
D; JLT
@NOTTRUE634
0;JMP
(NOTTRUE634)
@SP
A = M -1
M = 0
@ENDTRUE634
0; JMP
(TRUE634)
@SP
A = M - 1
M = -1
(ENDTRUE634)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Output.createShiftedMap$WHILE_END0
D; JNE
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
// push static 5
@Output.5
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
// push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Array.new 1
// get ip
@RET_ADDR634
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
(RET_ADDR634)
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
// push static 6
@Output.6
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
(Output.createShiftedMap$WHILE_EXP1)
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
// push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0636
D; JLE
@YGT0636
D; JGT
(YLE0636)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH636 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE636 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE636
0;JMP
(YGT0636)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH636 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE636 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE636
0; JMP
//D HOLDS X
(BOTH636)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE636
D; JLT
@NOTTRUE636
0;JMP
(NOTTRUE636)
@SP
A = M -1
M = 0
@ENDTRUE636
0; JMP
(TRUE636)
@SP
A = M - 1
M = -1
(ENDTRUE636)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Output.createShiftedMap$WHILE_END1
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
// push constant 256
@256
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR636
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
(RET_ADDR636)
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
@Output.createShiftedMap$WHILE_EXP1
0; JMP
(Output.createShiftedMap$WHILE_END1)
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
@YLE0638
D; JLE
@YGT0638
D; JGT
(YLE0638)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH638 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE638 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE638
0;JMP
(YGT0638)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH638 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE638 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE638
0; JMP
//D HOLDS X
(BOTH638)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE638
D; JEQ
@NOTTRUE638
0;JMP
(NOTTRUE638)
@SP
A = M -1
M = 0
@ENDTRUE638
0; JMP
(TRUE638)
@SP
A = M - 1
M = -1
(ENDTRUE638)
@SP
AM = M - 1
D = M
@Output.createShiftedMap$IF_TRUE0
D; JNE
@Output.createShiftedMap$IF_FALSE0
0; JMP
(Output.createShiftedMap$IF_TRUE0)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
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
@Output.createShiftedMap$IF_END0
0; JMP
(Output.createShiftedMap$IF_FALSE0)
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
(Output.createShiftedMap$IF_END0)
@Output.createShiftedMap$WHILE_EXP0
0; JMP
(Output.createShiftedMap$WHILE_END0)
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
// function Output.getMap 1
(f_Output.getMap)
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0639
D; JLE
@YGT0639
D; JGT
(YLE0639)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH639 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE639 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE639
0;JMP
(YGT0639)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH639 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE639 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE639
0; JMP
//D HOLDS X
(BOTH639)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE639
D; JLT
@NOTTRUE639
0;JMP
(NOTTRUE639)
@SP
A = M -1
M = 0
@ENDTRUE639
0; JMP
(TRUE639)
@SP
A = M - 1
M = -1
(ENDTRUE639)
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
// push constant 126
@126
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0640
D; JLE
@YGT0640
D; JGT
(YLE0640)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH640 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE640 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE640
0;JMP
(YGT0640)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH640 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE640 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE640
0; JMP
//D HOLDS X
(BOTH640)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE640
D; JGT
@NOTTRUE640
0;JMP
(NOTTRUE640)
@SP
A = M -1
M = 0
@ENDTRUE640
0; JMP
(TRUE640)
@SP
A = M - 1
M = -1
(ENDTRUE640)
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
@SP
AM = M - 1
D = M
@Output.getMap$IF_TRUE0
D; JNE
@Output.getMap$IF_FALSE0
0; JMP
(Output.getMap$IF_TRUE0)
// push constant 0
@0
D = A
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
(Output.getMap$IF_FALSE0)
// push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Output.getMap$IF_TRUE1
D; JNE
@Output.getMap$IF_FALSE1
0; JMP
(Output.getMap$IF_TRUE1)
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
// push static 5
@Output.5
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
@Output.getMap$IF_END1
0; JMP
(Output.getMap$IF_FALSE1)
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
// push static 6
@Output.6
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
(Output.getMap$IF_END1)
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
// function Output.drawChar 4
(f_Output.drawChar)
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
// call Output.getMap 1
// get ip
@RET_ADDR640
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
@f_Output.getMap
0; JMP
(RET_ADDR640)
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
// push static 1
@Output.1
D = M
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
(Output.drawChar$WHILE_EXP0)
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
// push constant 11
@11
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0642
D; JLE
@YGT0642
D; JGT
(YLE0642)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH642 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE642 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE642
0;JMP
(YGT0642)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH642 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE642 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE642
0; JMP
//D HOLDS X
(BOTH642)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE642
D; JLT
@NOTTRUE642
0;JMP
(NOTTRUE642)
@SP
A = M -1
M = 0
@ENDTRUE642
0; JMP
(TRUE642)
@SP
A = M - 1
M = -1
(ENDTRUE642)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Output.drawChar$WHILE_END0
D; JNE
// push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Output.drawChar$IF_TRUE0
D; JNE
@Output.drawChar$IF_FALSE0
0; JMP
(Output.drawChar$IF_TRUE0)
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
// push static 4
@Output.4
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
// push constant 256
@256
D = A
@SP
M = M + 1
A = M - 1
M = D
// neg
@SP
A = M - 1
M = - M
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
@Output.drawChar$IF_END0
0; JMP
(Output.drawChar$IF_FALSE0)
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
// push static 4
@Output.4
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
// push constant 255
@255
D = A
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
(Output.drawChar$IF_END0)
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
// push static 4
@Output.4
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
// push constant 32
@32
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
@Output.drawChar$WHILE_EXP0
0; JMP
(Output.drawChar$WHILE_END0)
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
// function Output.moveCursor 0
(f_Output.moveCursor)
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
@YLE0643
D; JLE
@YGT0643
D; JGT
(YLE0643)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH643 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE643 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE643
0;JMP
(YGT0643)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH643 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE643 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE643
0; JMP
//D HOLDS X
(BOTH643)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE643
D; JLT
@NOTTRUE643
0;JMP
(NOTTRUE643)
@SP
A = M -1
M = 0
@ENDTRUE643
0; JMP
(TRUE643)
@SP
A = M - 1
M = -1
(ENDTRUE643)
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
// push constant 22
@22
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0644
D; JLE
@YGT0644
D; JGT
(YLE0644)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH644 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE644 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE644
0;JMP
(YGT0644)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH644 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE644 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE644
0; JMP
//D HOLDS X
(BOTH644)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE644
D; JGT
@NOTTRUE644
0;JMP
(NOTTRUE644)
@SP
A = M -1
M = 0
@ENDTRUE644
0; JMP
(TRUE644)
@SP
A = M - 1
M = -1
(ENDTRUE644)
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
@YLE0645
D; JLE
@YGT0645
D; JGT
(YLE0645)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH645 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE645 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE645
0;JMP
(YGT0645)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH645 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE645 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE645
0; JMP
//D HOLDS X
(BOTH645)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE645
D; JLT
@NOTTRUE645
0;JMP
(NOTTRUE645)
@SP
A = M -1
M = 0
@ENDTRUE645
0; JMP
(TRUE645)
@SP
A = M - 1
M = -1
(ENDTRUE645)
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
// push constant 63
@63
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0646
D; JLE
@YGT0646
D; JGT
(YLE0646)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH646 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE646 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE646
0;JMP
(YGT0646)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH646 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE646 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE646
0; JMP
//D HOLDS X
(BOTH646)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE646
D; JGT
@NOTTRUE646
0;JMP
(NOTTRUE646)
@SP
A = M -1
M = 0
@ENDTRUE646
0; JMP
(TRUE646)
@SP
A = M - 1
M = -1
(ENDTRUE646)
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
@SP
AM = M - 1
D = M
@Output.moveCursor$IF_TRUE0
D; JNE
@Output.moveCursor$IF_FALSE0
0; JMP
(Output.moveCursor$IF_TRUE0)
// push constant 20
@20
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR646
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
(RET_ADDR646)
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
(Output.moveCursor$IF_FALSE0)
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
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.divide 2
// get ip
@RET_ADDR647
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
@f_Math.divide
0; JMP
(RET_ADDR647)
// pop static 0
@Output.0
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
// push constant 32
@32
D = A
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
// push constant 352
@352
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR648
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
(RET_ADDR648)
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
// push static 0
@Output.0
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
// pop static 1
@Output.1
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
// push static 0
@Output.0
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
// call Math.multiply 2
// get ip
@RET_ADDR649
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
(RET_ADDR649)
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0651
D; JLE
@YGT0651
D; JGT
(YLE0651)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH651 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE651 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE651
0;JMP
(YGT0651)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH651 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE651 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE651
0; JMP
//D HOLDS X
(BOTH651)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE651
D; JEQ
@NOTTRUE651
0;JMP
(NOTTRUE651)
@SP
A = M -1
M = 0
@ENDTRUE651
0; JMP
(TRUE651)
@SP
A = M - 1
M = -1
(ENDTRUE651)
// pop static 2
@Output.2
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.drawChar 1
// get ip
@RET_ADDR651
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
@f_Output.drawChar
0; JMP
(RET_ADDR651)
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
// function Output.printChar 0
(f_Output.printChar)
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
// call String.newLine 0
// get ip
@RET_ADDR652
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
@f_String.newLine
0; JMP
(RET_ADDR652)
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0654
D; JLE
@YGT0654
D; JGT
(YLE0654)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH654 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE654 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE654
0;JMP
(YGT0654)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH654 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE654 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE654
0; JMP
//D HOLDS X
(BOTH654)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE654
D; JEQ
@NOTTRUE654
0;JMP
(NOTTRUE654)
@SP
A = M -1
M = 0
@ENDTRUE654
0; JMP
(TRUE654)
@SP
A = M - 1
M = -1
(ENDTRUE654)
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE0
D; JNE
@Output.printChar$IF_FALSE0
0; JMP
(Output.printChar$IF_TRUE0)
// call Output.println 0
// get ip
@RET_ADDR654
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
@f_Output.println
0; JMP
(RET_ADDR654)
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
@Output.printChar$IF_END0
0; JMP
(Output.printChar$IF_FALSE0)
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
// call String.backSpace 0
// get ip
@RET_ADDR655
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
@f_String.backSpace
0; JMP
(RET_ADDR655)
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0657
D; JLE
@YGT0657
D; JGT
(YLE0657)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH657 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE657 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE657
0;JMP
(YGT0657)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH657 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE657 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE657
0; JMP
//D HOLDS X
(BOTH657)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE657
D; JEQ
@NOTTRUE657
0;JMP
(NOTTRUE657)
@SP
A = M -1
M = 0
@ENDTRUE657
0; JMP
(TRUE657)
@SP
A = M - 1
M = -1
(ENDTRUE657)
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE1
D; JNE
@Output.printChar$IF_FALSE1
0; JMP
(Output.printChar$IF_TRUE1)
// call Output.backSpace 0
// get ip
@RET_ADDR657
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
@f_Output.backSpace
0; JMP
(RET_ADDR657)
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
@Output.printChar$IF_END1
0; JMP
(Output.printChar$IF_FALSE1)
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
// call Output.drawChar 1
// get ip
@RET_ADDR658
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
@f_Output.drawChar
0; JMP
(RET_ADDR658)
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
// push static 2
@Output.2
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
@Output.printChar$IF_TRUE2
D; JNE
@Output.printChar$IF_FALSE2
0; JMP
(Output.printChar$IF_TRUE2)
// push static 0
@Output.0
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
// pop static 0
@Output.0
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
// push static 1
@Output.1
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
// pop static 1
@Output.1
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
(Output.printChar$IF_FALSE2)
// push static 0
@Output.0
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0660
D; JLE
@YGT0660
D; JGT
(YLE0660)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH660 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE660 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE660
0;JMP
(YGT0660)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH660 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE660 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE660
0; JMP
//D HOLDS X
(BOTH660)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE660
D; JEQ
@NOTTRUE660
0;JMP
(NOTTRUE660)
@SP
A = M -1
M = 0
@ENDTRUE660
0; JMP
(TRUE660)
@SP
A = M - 1
M = -1
(ENDTRUE660)
@SP
AM = M - 1
D = M
@Output.printChar$IF_TRUE3
D; JNE
@Output.printChar$IF_FALSE3
0; JMP
(Output.printChar$IF_TRUE3)
// call Output.println 0
// get ip
@RET_ADDR660
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
@f_Output.println
0; JMP
(RET_ADDR660)
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
@Output.printChar$IF_END3
0; JMP
(Output.printChar$IF_FALSE3)
// push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
// not
@SP
A = M - 1
M = ! M
// pop static 2
@Output.2
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
(Output.printChar$IF_END3)
(Output.printChar$IF_END1)
(Output.printChar$IF_END0)
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
// function Output.printString 2
(f_Output.printString)
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
// call String.length 1
// get ip
@RET_ADDR661
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
@f_String.length
0; JMP
(RET_ADDR661)
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
(Output.printString$WHILE_EXP0)
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0663
D; JLE
@YGT0663
D; JGT
(YLE0663)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH663 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE663 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE663
0;JMP
(YGT0663)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH663 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE663 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE663
0; JMP
//D HOLDS X
(BOTH663)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE663
D; JLT
@NOTTRUE663
0;JMP
(NOTTRUE663)
@SP
A = M -1
M = 0
@ENDTRUE663
0; JMP
(TRUE663)
@SP
A = M - 1
M = -1
(ENDTRUE663)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Output.printString$WHILE_END0
D; JNE
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
// call String.charAt 2
// get ip
@RET_ADDR663
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
@f_String.charAt
0; JMP
(RET_ADDR663)
// call Output.printChar 1
// get ip
@RET_ADDR664
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
@f_Output.printChar
0; JMP
(RET_ADDR664)
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
@Output.printString$WHILE_EXP0
0; JMP
(Output.printString$WHILE_END0)
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
// function Output.printInt 0
(f_Output.printInt)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push static 3
@Output.3
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
// call String.setInt 2
// get ip
@RET_ADDR665
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
@f_String.setInt
0; JMP
(RET_ADDR665)
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
// push static 3
@Output.3
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Output.printString 1
// get ip
@RET_ADDR666
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
@f_Output.printString
0; JMP
(RET_ADDR666)
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
// function Output.println 0
(f_Output.println)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 352
@352
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
// push static 0
@Output.0
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
// pop static 1
@Output.1
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
// pop static 0
@Output.0
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
// not
@SP
A = M - 1
M = ! M
// pop static 2
@Output.2
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
// push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 8128
@8128
D = A
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0668
D; JLE
@YGT0668
D; JGT
(YLE0668)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH668 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE668 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE668
0;JMP
(YGT0668)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH668 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE668 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE668
0; JMP
//D HOLDS X
(BOTH668)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE668
D; JEQ
@NOTTRUE668
0;JMP
(NOTTRUE668)
@SP
A = M -1
M = 0
@ENDTRUE668
0; JMP
(TRUE668)
@SP
A = M - 1
M = -1
(ENDTRUE668)
@SP
AM = M - 1
D = M
@Output.println$IF_TRUE0
D; JNE
@Output.println$IF_FALSE0
0; JMP
(Output.println$IF_TRUE0)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 1
@Output.1
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
(Output.println$IF_FALSE0)
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
// function Output.backSpace 0
(f_Output.backSpace)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push static 2
@Output.2
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Output.backSpace$IF_TRUE0
D; JNE
@Output.backSpace$IF_FALSE0
0; JMP
(Output.backSpace$IF_TRUE0)
// push static 0
@Output.0
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
@YLE0669
D; JLE
@YGT0669
D; JGT
(YLE0669)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH669 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE669 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE669
0;JMP
(YGT0669)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH669 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE669 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE669
0; JMP
//D HOLDS X
(BOTH669)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE669
D; JGT
@NOTTRUE669
0;JMP
(NOTTRUE669)
@SP
A = M -1
M = 0
@ENDTRUE669
0; JMP
(TRUE669)
@SP
A = M - 1
M = -1
(ENDTRUE669)
@SP
AM = M - 1
D = M
@Output.backSpace$IF_TRUE1
D; JNE
@Output.backSpace$IF_FALSE1
0; JMP
(Output.backSpace$IF_TRUE1)
// push static 0
@Output.0
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
// pop static 0
@Output.0
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
// push static 1
@Output.1
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
// pop static 1
@Output.1
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
@Output.backSpace$IF_END1
0; JMP
(Output.backSpace$IF_FALSE1)
// push constant 31
@31
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 0
@Output.0
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
// push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0670
D; JLE
@YGT0670
D; JGT
(YLE0670)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH670 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE670 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE670
0;JMP
(YGT0670)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH670 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE670 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE670
0; JMP
//D HOLDS X
(BOTH670)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE670
D; JEQ
@NOTTRUE670
0;JMP
(NOTTRUE670)
@SP
A = M -1
M = 0
@ENDTRUE670
0; JMP
(TRUE670)
@SP
A = M - 1
M = -1
(ENDTRUE670)
@SP
AM = M - 1
D = M
@Output.backSpace$IF_TRUE2
D; JNE
@Output.backSpace$IF_FALSE2
0; JMP
(Output.backSpace$IF_TRUE2)
// push constant 8128
@8128
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 1
@Output.1
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
(Output.backSpace$IF_FALSE2)
// push static 1
@Output.1
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 321
@321
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
// pop static 1
@Output.1
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
(Output.backSpace$IF_END1)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 2
@Output.2
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
@Output.backSpace$IF_END0
0; JMP
(Output.backSpace$IF_FALSE0)
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
// pop static 2
@Output.2
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
(Output.backSpace$IF_END0)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.drawChar 1
// get ip
@RET_ADDR670
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
@f_Output.drawChar
0; JMP
(RET_ADDR670)
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
// function Scenes.intro 1
(f_Scenes.intro)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
@1
D = A
@SP
M = M + D
// call Screen.clearScreen 0
// get ip
@RET_ADDR671
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
@f_Screen.clearScreen
0; JMP
(RET_ADDR671)
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
// call Output.printString 1
// get ip
@RET_ADDR672
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
@f_Output.printString
0; JMP
(RET_ADDR672)
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
// push constant 26
@26
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR673
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
@f_String.new
0; JMP
(RET_ADDR673)
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR674
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
@f_String.appendChar
0; JMP
(RET_ADDR674)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR675
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
@f_String.appendChar
0; JMP
(RET_ADDR675)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR676
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
@f_String.appendChar
0; JMP
(RET_ADDR676)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR677
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
@f_String.appendChar
0; JMP
(RET_ADDR677)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR678
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
@f_String.appendChar
0; JMP
(RET_ADDR678)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR679
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
@f_String.appendChar
0; JMP
(RET_ADDR679)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR680
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
@f_String.appendChar
0; JMP
(RET_ADDR680)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR681
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
@f_String.appendChar
0; JMP
(RET_ADDR681)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR682
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
@f_String.appendChar
0; JMP
(RET_ADDR682)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR683
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
@f_String.appendChar
0; JMP
(RET_ADDR683)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR684
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
@f_String.appendChar
0; JMP
(RET_ADDR684)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR685
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
@f_String.appendChar
0; JMP
(RET_ADDR685)
// push constant 119
@119
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR686
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
@f_String.appendChar
0; JMP
(RET_ADDR686)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR687
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
@f_String.appendChar
0; JMP
(RET_ADDR687)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR688
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
@f_String.appendChar
0; JMP
(RET_ADDR688)
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR689
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
@f_String.appendChar
0; JMP
(RET_ADDR689)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR690
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
@f_String.appendChar
0; JMP
(RET_ADDR690)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR691
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
@f_String.appendChar
0; JMP
(RET_ADDR691)
// push constant 102
@102
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR692
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
@f_String.appendChar
0; JMP
(RET_ADDR692)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR693
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
@f_String.appendChar
0; JMP
(RET_ADDR693)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR694
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
@f_String.appendChar
0; JMP
(RET_ADDR694)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR695
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
@f_String.appendChar
0; JMP
(RET_ADDR695)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR696
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
@f_String.appendChar
0; JMP
(RET_ADDR696)
// push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR697
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
@f_String.appendChar
0; JMP
(RET_ADDR697)
// push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR698
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
@f_String.appendChar
0; JMP
(RET_ADDR698)
// push constant 33
@33
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR699
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
@f_String.appendChar
0; JMP
(RET_ADDR699)
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
// call Output.printString 1
// get ip
@RET_ADDR700
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
@f_Output.printString
0; JMP
(RET_ADDR700)
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
// call String.dispose 1
// get ip
@RET_ADDR701
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
@f_String.dispose
0; JMP
(RET_ADDR701)
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
// push constant 2000
@2000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR702
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
@f_Sys.wait
0; JMP
(RET_ADDR702)
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
// push constant 23
@23
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR703
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
@f_String.new
0; JMP
(RET_ADDR703)
// push constant 76
@76
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR704
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
@f_String.appendChar
0; JMP
(RET_ADDR704)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR705
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
@f_String.appendChar
0; JMP
(RET_ADDR705)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR706
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
@f_String.appendChar
0; JMP
(RET_ADDR706)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR707
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
@f_String.appendChar
0; JMP
(RET_ADDR707)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR708
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
@f_String.appendChar
0; JMP
(RET_ADDR708)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR709
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
@f_String.appendChar
0; JMP
(RET_ADDR709)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR710
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
@f_String.appendChar
0; JMP
(RET_ADDR710)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR711
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
@f_String.appendChar
0; JMP
(RET_ADDR711)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR712
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
@f_String.appendChar
0; JMP
(RET_ADDR712)
// push constant 112
@112
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR713
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
@f_String.appendChar
0; JMP
(RET_ADDR713)
// push constant 104
@104
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR714
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
@f_String.appendChar
0; JMP
(RET_ADDR714)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR715
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
@f_String.appendChar
0; JMP
(RET_ADDR715)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR716
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
@f_String.appendChar
0; JMP
(RET_ADDR716)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR717
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
@f_String.appendChar
0; JMP
(RET_ADDR717)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR718
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
@f_String.appendChar
0; JMP
(RET_ADDR718)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR719
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
@f_String.appendChar
0; JMP
(RET_ADDR719)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR720
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
@f_String.appendChar
0; JMP
(RET_ADDR720)
// push constant 104
@104
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR721
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
@f_String.appendChar
0; JMP
(RET_ADDR721)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR722
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
@f_String.appendChar
0; JMP
(RET_ADDR722)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR723
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
@f_String.appendChar
0; JMP
(RET_ADDR723)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR724
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
@f_String.appendChar
0; JMP
(RET_ADDR724)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR725
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
@f_String.appendChar
0; JMP
(RET_ADDR725)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR726
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
@f_String.appendChar
0; JMP
(RET_ADDR726)
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
// call Output.println 0
// get ip
@RET_ADDR727
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
@f_Output.println
0; JMP
(RET_ADDR727)
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
// call Output.printString 1
// get ip
@RET_ADDR728
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
@f_Output.printString
0; JMP
(RET_ADDR728)
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
// push constant 3000
@3000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR729
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
@f_Sys.wait
0; JMP
(RET_ADDR729)
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
// call String.dispose 1
// get ip
@RET_ADDR730
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
@f_String.dispose
0; JMP
(RET_ADDR730)
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
// call Screen.clearScreen 0
// get ip
@RET_ADDR731
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
@f_Screen.clearScreen
0; JMP
(RET_ADDR731)
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR732
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
@f_String.new
0; JMP
(RET_ADDR732)
// push constant 87
@87
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR733
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
@f_String.appendChar
0; JMP
(RET_ADDR733)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR734
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
@f_String.appendChar
0; JMP
(RET_ADDR734)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR735
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
@f_String.appendChar
0; JMP
(RET_ADDR735)
// push constant 99
@99
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR736
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
@f_String.appendChar
0; JMP
(RET_ADDR736)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR737
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
@f_String.appendChar
0; JMP
(RET_ADDR737)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR738
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
@f_String.appendChar
0; JMP
(RET_ADDR738)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR739
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
@f_String.appendChar
0; JMP
(RET_ADDR739)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR740
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
@f_String.appendChar
0; JMP
(RET_ADDR740)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR741
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
@f_String.appendChar
0; JMP
(RET_ADDR741)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR742
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
@f_String.appendChar
0; JMP
(RET_ADDR742)
// push constant 58
@58
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR743
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
@f_String.appendChar
0; JMP
(RET_ADDR743)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR744
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
@f_String.appendChar
0; JMP
(RET_ADDR744)
// push constant 102
@102
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR745
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
@f_String.appendChar
0; JMP
(RET_ADDR745)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR746
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
@f_String.appendChar
0; JMP
(RET_ADDR746)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR747
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
@f_String.appendChar
0; JMP
(RET_ADDR747)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR748
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
@f_String.appendChar
0; JMP
(RET_ADDR748)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR749
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
@f_String.appendChar
0; JMP
(RET_ADDR749)
// push constant 78
@78
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR750
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
@f_String.appendChar
0; JMP
(RET_ADDR750)
// push constant 65
@65
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR751
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
@f_String.appendChar
0; JMP
(RET_ADDR751)
// push constant 78
@78
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR752
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
@f_String.appendChar
0; JMP
(RET_ADDR752)
// push constant 68
@68
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR753
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
@f_String.appendChar
0; JMP
(RET_ADDR753)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR754
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
@f_String.appendChar
0; JMP
(RET_ADDR754)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR755
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
@f_String.appendChar
0; JMP
(RET_ADDR755)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR756
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
@f_String.appendChar
0; JMP
(RET_ADDR756)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR757
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
@f_String.appendChar
0; JMP
(RET_ADDR757)
// push constant 70
@70
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR758
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
@f_String.appendChar
0; JMP
(RET_ADDR758)
// push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR759
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
@f_String.appendChar
0; JMP
(RET_ADDR759)
// push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR760
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
@f_String.appendChar
0; JMP
(RET_ADDR760)
// push constant 71
@71
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR761
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
@f_String.appendChar
0; JMP
(RET_ADDR761)
// push constant 71
@71
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR762
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
@f_String.appendChar
0; JMP
(RET_ADDR762)
// push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR763
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
@f_String.appendChar
0; JMP
(RET_ADDR763)
// push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR764
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
@f_String.appendChar
0; JMP
(RET_ADDR764)
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
// call Output.println 0
// get ip
@RET_ADDR765
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
@f_Output.println
0; JMP
(RET_ADDR765)
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
// call Output.println 0
// get ip
@RET_ADDR766
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
@f_Output.println
0; JMP
(RET_ADDR766)
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
// call Output.printString 1
// get ip
@RET_ADDR767
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
@f_Output.printString
0; JMP
(RET_ADDR767)
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
// push constant 2000
@2000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR768
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
@f_Sys.wait
0; JMP
(RET_ADDR768)
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
// call String.dispose 1
// get ip
@RET_ADDR769
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
@f_String.dispose
0; JMP
(RET_ADDR769)
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
// call Output.println 0
// get ip
@RET_ADDR770
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
@f_Output.println
0; JMP
(RET_ADDR770)
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
// push constant 48
@48
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR771
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
@f_String.new
0; JMP
(RET_ADDR771)
// push constant 85
@85
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR772
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
@f_String.appendChar
0; JMP
(RET_ADDR772)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR773
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
@f_String.appendChar
0; JMP
(RET_ADDR773)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR774
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
@f_String.appendChar
0; JMP
(RET_ADDR774)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR775
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
@f_String.appendChar
0; JMP
(RET_ADDR775)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR776
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
@f_String.appendChar
0; JMP
(RET_ADDR776)
// push constant 104
@104
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR777
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
@f_String.appendChar
0; JMP
(RET_ADDR777)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR778
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
@f_String.appendChar
0; JMP
(RET_ADDR778)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR779
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
@f_String.appendChar
0; JMP
(RET_ADDR779)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR780
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
@f_String.appendChar
0; JMP
(RET_ADDR780)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR781
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
@f_String.appendChar
0; JMP
(RET_ADDR781)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR782
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
@f_String.appendChar
0; JMP
(RET_ADDR782)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR783
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
@f_String.appendChar
0; JMP
(RET_ADDR783)
// push constant 119
@119
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR784
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
@f_String.appendChar
0; JMP
(RET_ADDR784)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR785
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
@f_String.appendChar
0; JMP
(RET_ADDR785)
// push constant 107
@107
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR786
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
@f_String.appendChar
0; JMP
(RET_ADDR786)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR787
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
@f_String.appendChar
0; JMP
(RET_ADDR787)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR788
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
@f_String.appendChar
0; JMP
(RET_ADDR788)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR789
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
@f_String.appendChar
0; JMP
(RET_ADDR789)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR790
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
@f_String.appendChar
0; JMP
(RET_ADDR790)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR791
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
@f_String.appendChar
0; JMP
(RET_ADDR791)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR792
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
@f_String.appendChar
0; JMP
(RET_ADDR792)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR793
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
@f_String.appendChar
0; JMP
(RET_ADDR793)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR794
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
@f_String.appendChar
0; JMP
(RET_ADDR794)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR795
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
@f_String.appendChar
0; JMP
(RET_ADDR795)
// push constant 118
@118
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR796
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
@f_String.appendChar
0; JMP
(RET_ADDR796)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR797
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
@f_String.appendChar
0; JMP
(RET_ADDR797)
// push constant 44
@44
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR798
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
@f_String.appendChar
0; JMP
(RET_ADDR798)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR799
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
@f_String.appendChar
0; JMP
(RET_ADDR799)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR800
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
@f_String.appendChar
0; JMP
(RET_ADDR800)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR801
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
@f_String.appendChar
0; JMP
(RET_ADDR801)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR802
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
@f_String.appendChar
0; JMP
(RET_ADDR802)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR803
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
@f_String.appendChar
0; JMP
(RET_ADDR803)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR804
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
@f_String.appendChar
0; JMP
(RET_ADDR804)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR805
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
@f_String.appendChar
0; JMP
(RET_ADDR805)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR806
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
@f_String.appendChar
0; JMP
(RET_ADDR806)
// push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR807
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
@f_String.appendChar
0; JMP
(RET_ADDR807)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR808
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
@f_String.appendChar
0; JMP
(RET_ADDR808)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR809
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
@f_String.appendChar
0; JMP
(RET_ADDR809)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR810
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
@f_String.appendChar
0; JMP
(RET_ADDR810)
// push constant 54
@54
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR811
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
@f_String.appendChar
0; JMP
(RET_ADDR811)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR812
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
@f_String.appendChar
0; JMP
(RET_ADDR812)
// push constant 112
@112
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR813
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
@f_String.appendChar
0; JMP
(RET_ADDR813)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR814
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
@f_String.appendChar
0; JMP
(RET_ADDR814)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR815
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
@f_String.appendChar
0; JMP
(RET_ADDR815)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR816
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
@f_String.appendChar
0; JMP
(RET_ADDR816)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR817
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
@f_String.appendChar
0; JMP
(RET_ADDR817)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR818
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
@f_String.appendChar
0; JMP
(RET_ADDR818)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR819
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
@f_String.appendChar
0; JMP
(RET_ADDR819)
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
// call Output.printString 1
// get ip
@RET_ADDR820
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
@f_Output.printString
0; JMP
(RET_ADDR820)
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
// push constant 1000
@1000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR821
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
@f_Sys.wait
0; JMP
(RET_ADDR821)
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
// call String.dispose 1
// get ip
@RET_ADDR822
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
@f_String.dispose
0; JMP
(RET_ADDR822)
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
// call Output.println 0
// get ip
@RET_ADDR823
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
@f_Output.println
0; JMP
(RET_ADDR823)
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR824
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
@f_String.new
0; JMP
(RET_ADDR824)
// push constant 68
@68
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR825
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
@f_String.appendChar
0; JMP
(RET_ADDR825)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR826
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
@f_String.appendChar
0; JMP
(RET_ADDR826)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR827
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
@f_String.appendChar
0; JMP
(RET_ADDR827)
// push constant 39
@39
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR828
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
@f_String.appendChar
0; JMP
(RET_ADDR828)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR829
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
@f_String.appendChar
0; JMP
(RET_ADDR829)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR830
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
@f_String.appendChar
0; JMP
(RET_ADDR830)
// push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR831
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
@f_String.appendChar
0; JMP
(RET_ADDR831)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR832
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
@f_String.appendChar
0; JMP
(RET_ADDR832)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR833
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
@f_String.appendChar
0; JMP
(RET_ADDR833)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR834
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
@f_String.appendChar
0; JMP
(RET_ADDR834)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR835
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
@f_String.appendChar
0; JMP
(RET_ADDR835)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR836
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
@f_String.appendChar
0; JMP
(RET_ADDR836)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR837
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
@f_String.appendChar
0; JMP
(RET_ADDR837)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR838
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
@f_String.appendChar
0; JMP
(RET_ADDR838)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR839
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
@f_String.appendChar
0; JMP
(RET_ADDR839)
// push constant 118
@118
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR840
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
@f_String.appendChar
0; JMP
(RET_ADDR840)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR841
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
@f_String.appendChar
0; JMP
(RET_ADDR841)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR842
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
@f_String.appendChar
0; JMP
(RET_ADDR842)
// push constant 44
@44
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR843
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
@f_String.appendChar
0; JMP
(RET_ADDR843)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR844
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
@f_String.appendChar
0; JMP
(RET_ADDR844)
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR845
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
@f_String.appendChar
0; JMP
(RET_ADDR845)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR846
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
@f_String.appendChar
0; JMP
(RET_ADDR846)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR847
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
@f_String.appendChar
0; JMP
(RET_ADDR847)
// push constant 39
@39
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR848
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
@f_String.appendChar
0; JMP
(RET_ADDR848)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR849
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
@f_String.appendChar
0; JMP
(RET_ADDR849)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR850
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
@f_String.appendChar
0; JMP
(RET_ADDR850)
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR851
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
@f_String.appendChar
0; JMP
(RET_ADDR851)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR852
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
@f_String.appendChar
0; JMP
(RET_ADDR852)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR853
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
@f_String.appendChar
0; JMP
(RET_ADDR853)
// push constant 119
@119
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR854
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
@f_String.appendChar
0; JMP
(RET_ADDR854)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR855
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
@f_String.appendChar
0; JMP
(RET_ADDR855)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR856
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
@f_String.appendChar
0; JMP
(RET_ADDR856)
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
// call Output.printString 1
// get ip
@RET_ADDR857
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
@f_Output.printString
0; JMP
(RET_ADDR857)
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
// push constant 1000
@1000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR858
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
@f_Sys.wait
0; JMP
(RET_ADDR858)
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
// call String.dispose 1
// get ip
@RET_ADDR859
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
@f_String.dispose
0; JMP
(RET_ADDR859)
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
// call Output.println 0
// get ip
@RET_ADDR860
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
@f_Output.println
0; JMP
(RET_ADDR860)
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
// push constant 59
@59
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR861
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
@f_String.new
0; JMP
(RET_ADDR861)
// push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR862
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
@f_String.appendChar
0; JMP
(RET_ADDR862)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR863
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
@f_String.appendChar
0; JMP
(RET_ADDR863)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR864
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
@f_String.appendChar
0; JMP
(RET_ADDR864)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR865
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
@f_String.appendChar
0; JMP
(RET_ADDR865)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR866
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
@f_String.appendChar
0; JMP
(RET_ADDR866)
// push constant 98
@98
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR867
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
@f_String.appendChar
0; JMP
(RET_ADDR867)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR868
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
@f_String.appendChar
0; JMP
(RET_ADDR868)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR869
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
@f_String.appendChar
0; JMP
(RET_ADDR869)
// push constant 58
@58
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR870
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
@f_String.appendChar
0; JMP
(RET_ADDR870)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR871
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
@f_String.appendChar
0; JMP
(RET_ADDR871)
// push constant 102
@102
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR872
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
@f_String.appendChar
0; JMP
(RET_ADDR872)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR873
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
@f_String.appendChar
0; JMP
(RET_ADDR873)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR874
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
@f_String.appendChar
0; JMP
(RET_ADDR874)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR875
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
@f_String.appendChar
0; JMP
(RET_ADDR875)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR876
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
@f_String.appendChar
0; JMP
(RET_ADDR876)
// push constant 102
@102
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR877
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
@f_String.appendChar
0; JMP
(RET_ADDR877)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR878
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
@f_String.appendChar
0; JMP
(RET_ADDR878)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR879
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
@f_String.appendChar
0; JMP
(RET_ADDR879)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR880
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
@f_String.appendChar
0; JMP
(RET_ADDR880)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR881
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
@f_String.appendChar
0; JMP
(RET_ADDR881)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR882
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
@f_String.appendChar
0; JMP
(RET_ADDR882)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR883
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
@f_String.appendChar
0; JMP
(RET_ADDR883)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR884
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
@f_String.appendChar
0; JMP
(RET_ADDR884)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR885
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
@f_String.appendChar
0; JMP
(RET_ADDR885)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR886
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
@f_String.appendChar
0; JMP
(RET_ADDR886)
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR887
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
@f_String.appendChar
0; JMP
(RET_ADDR887)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR888
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
@f_String.appendChar
0; JMP
(RET_ADDR888)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR889
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
@f_String.appendChar
0; JMP
(RET_ADDR889)
// push constant 39
@39
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR890
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
@f_String.appendChar
0; JMP
(RET_ADDR890)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR891
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
@f_String.appendChar
0; JMP
(RET_ADDR891)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR892
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
@f_String.appendChar
0; JMP
(RET_ADDR892)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR893
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
@f_String.appendChar
0; JMP
(RET_ADDR893)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR894
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
@f_String.appendChar
0; JMP
(RET_ADDR894)
// push constant 99
@99
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR895
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
@f_String.appendChar
0; JMP
(RET_ADDR895)
// push constant 99
@99
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR896
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
@f_String.appendChar
0; JMP
(RET_ADDR896)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR897
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
@f_String.appendChar
0; JMP
(RET_ADDR897)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR898
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
@f_String.appendChar
0; JMP
(RET_ADDR898)
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR899
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
@f_String.appendChar
0; JMP
(RET_ADDR899)
// push constant 44
@44
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR900
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
@f_String.appendChar
0; JMP
(RET_ADDR900)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR901
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
@f_String.appendChar
0; JMP
(RET_ADDR901)
// push constant 98
@98
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR902
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
@f_String.appendChar
0; JMP
(RET_ADDR902)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR903
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
@f_String.appendChar
0; JMP
(RET_ADDR903)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR904
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
@f_String.appendChar
0; JMP
(RET_ADDR904)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR905
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
@f_String.appendChar
0; JMP
(RET_ADDR905)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR906
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
@f_String.appendChar
0; JMP
(RET_ADDR906)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR907
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
@f_String.appendChar
0; JMP
(RET_ADDR907)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR908
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
@f_String.appendChar
0; JMP
(RET_ADDR908)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR909
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
@f_String.appendChar
0; JMP
(RET_ADDR909)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR910
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
@f_String.appendChar
0; JMP
(RET_ADDR910)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR911
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
@f_String.appendChar
0; JMP
(RET_ADDR911)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR912
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
@f_String.appendChar
0; JMP
(RET_ADDR912)
// push constant 112
@112
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR913
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
@f_String.appendChar
0; JMP
(RET_ADDR913)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR914
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
@f_String.appendChar
0; JMP
(RET_ADDR914)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR915
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
@f_String.appendChar
0; JMP
(RET_ADDR915)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR916
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
@f_String.appendChar
0; JMP
(RET_ADDR916)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR917
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
@f_String.appendChar
0; JMP
(RET_ADDR917)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR918
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
@f_String.appendChar
0; JMP
(RET_ADDR918)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR919
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
@f_String.appendChar
0; JMP
(RET_ADDR919)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR920
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
@f_String.appendChar
0; JMP
(RET_ADDR920)
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
// call Output.printString 1
// get ip
@RET_ADDR921
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
@f_Output.printString
0; JMP
(RET_ADDR921)
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
// push constant 1000
@1000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR922
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
@f_Sys.wait
0; JMP
(RET_ADDR922)
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
// call String.dispose 1
// get ip
@RET_ADDR923
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
@f_String.dispose
0; JMP
(RET_ADDR923)
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
// call Output.println 0
// get ip
@RET_ADDR924
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
@f_Output.println
0; JMP
(RET_ADDR924)
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
// call Output.println 0
// get ip
@RET_ADDR925
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
@f_Output.println
0; JMP
(RET_ADDR925)
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
// push constant 27
@27
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR926
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
@f_String.new
0; JMP
(RET_ADDR926)
// push constant 112
@112
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR927
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
@f_String.appendChar
0; JMP
(RET_ADDR927)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR928
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
@f_String.appendChar
0; JMP
(RET_ADDR928)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR929
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
@f_String.appendChar
0; JMP
(RET_ADDR929)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR930
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
@f_String.appendChar
0; JMP
(RET_ADDR930)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR931
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
@f_String.appendChar
0; JMP
(RET_ADDR931)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR932
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
@f_String.appendChar
0; JMP
(RET_ADDR932)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR933
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
@f_String.appendChar
0; JMP
(RET_ADDR933)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR934
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
@f_String.appendChar
0; JMP
(RET_ADDR934)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR935
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
@f_String.appendChar
0; JMP
(RET_ADDR935)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR936
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
@f_String.appendChar
0; JMP
(RET_ADDR936)
// push constant 107
@107
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR937
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
@f_String.appendChar
0; JMP
(RET_ADDR937)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR938
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
@f_String.appendChar
0; JMP
(RET_ADDR938)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR939
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
@f_String.appendChar
0; JMP
(RET_ADDR939)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR940
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
@f_String.appendChar
0; JMP
(RET_ADDR940)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR941
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
@f_String.appendChar
0; JMP
(RET_ADDR941)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR942
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
@f_String.appendChar
0; JMP
(RET_ADDR942)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR943
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
@f_String.appendChar
0; JMP
(RET_ADDR943)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR944
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
@f_String.appendChar
0; JMP
(RET_ADDR944)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR945
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
@f_String.appendChar
0; JMP
(RET_ADDR945)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR946
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
@f_String.appendChar
0; JMP
(RET_ADDR946)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR947
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
@f_String.appendChar
0; JMP
(RET_ADDR947)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR948
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
@f_String.appendChar
0; JMP
(RET_ADDR948)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR949
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
@f_String.appendChar
0; JMP
(RET_ADDR949)
// push constant 103
@103
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR950
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
@f_String.appendChar
0; JMP
(RET_ADDR950)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR951
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
@f_String.appendChar
0; JMP
(RET_ADDR951)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR952
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
@f_String.appendChar
0; JMP
(RET_ADDR952)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR953
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
@f_String.appendChar
0; JMP
(RET_ADDR953)
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
// call Output.printString 1
// get ip
@RET_ADDR954
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
@f_Output.printString
0; JMP
(RET_ADDR954)
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
// push constant 1000
@1000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR955
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
@f_Sys.wait
0; JMP
(RET_ADDR955)
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
// call String.dispose 1
// get ip
@RET_ADDR956
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
@f_String.dispose
0; JMP
(RET_ADDR956)
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
// call Output.println 0
// get ip
@RET_ADDR957
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
@f_Output.println
0; JMP
(RET_ADDR957)
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
(Scenes.intro$WHILE_EXP0)
// call Keyboard.keyPressed 0
// get ip
@RET_ADDR958
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
@f_Keyboard.keyPressed
0; JMP
(RET_ADDR958)
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
@YLE0960
D; JLE
@YGT0960
D; JGT
(YLE0960)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH960 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE960 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE960
0;JMP
(YGT0960)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH960 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE960 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE960
0; JMP
//D HOLDS X
(BOTH960)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE960
D; JEQ
@NOTTRUE960
0;JMP
(NOTTRUE960)
@SP
A = M -1
M = 0
@ENDTRUE960
0; JMP
(TRUE960)
@SP
A = M - 1
M = -1
(ENDTRUE960)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Scenes.intro$WHILE_END0
D; JNE
@Scenes.intro$WHILE_EXP0
0; JMP
(Scenes.intro$WHILE_END0)
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
// function Scenes.failed 1
(f_Scenes.failed)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
@1
D = A
@SP
M = M + D
// call Screen.clearScreen 0
// get ip
@RET_ADDR960
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
@f_Screen.clearScreen
0; JMP
(RET_ADDR960)
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
// call Output.printString 1
// get ip
@RET_ADDR961
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
@f_Output.printString
0; JMP
(RET_ADDR961)
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
// push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR962
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
@f_String.new
0; JMP
(RET_ADDR962)
// push constant 44
@44
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR963
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
@f_String.appendChar
0; JMP
(RET_ADDR963)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR964
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
@f_String.appendChar
0; JMP
(RET_ADDR964)
// push constant 89
@89
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR965
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
@f_String.appendChar
0; JMP
(RET_ADDR965)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR966
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
@f_String.appendChar
0; JMP
(RET_ADDR966)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR967
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
@f_String.appendChar
0; JMP
(RET_ADDR967)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR968
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
@f_String.appendChar
0; JMP
(RET_ADDR968)
// push constant 102
@102
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR969
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
@f_String.appendChar
0; JMP
(RET_ADDR969)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR970
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
@f_String.appendChar
0; JMP
(RET_ADDR970)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR971
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
@f_String.appendChar
0; JMP
(RET_ADDR971)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR972
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
@f_String.appendChar
0; JMP
(RET_ADDR972)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR973
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
@f_String.appendChar
0; JMP
(RET_ADDR973)
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR974
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
@f_String.appendChar
0; JMP
(RET_ADDR974)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR975
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
@f_String.appendChar
0; JMP
(RET_ADDR975)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR976
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
@f_String.appendChar
0; JMP
(RET_ADDR976)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR977
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
@f_String.appendChar
0; JMP
(RET_ADDR977)
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
// call Output.printString 1
// get ip
@RET_ADDR978
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
@f_Output.printString
0; JMP
(RET_ADDR978)
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
// call String.dispose 1
// get ip
@RET_ADDR979
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
@f_String.dispose
0; JMP
(RET_ADDR979)
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
// push constant 3000
@3000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR980
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
@f_Sys.wait
0; JMP
(RET_ADDR980)
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
// push constant 29
@29
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR981
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
@f_String.new
0; JMP
(RET_ADDR981)
// push constant 66
@66
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR982
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
@f_String.appendChar
0; JMP
(RET_ADDR982)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR983
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
@f_String.appendChar
0; JMP
(RET_ADDR983)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR984
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
@f_String.appendChar
0; JMP
(RET_ADDR984)
// push constant 44
@44
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR985
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
@f_String.appendChar
0; JMP
(RET_ADDR985)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR986
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
@f_String.appendChar
0; JMP
(RET_ADDR986)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR987
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
@f_String.appendChar
0; JMP
(RET_ADDR987)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR988
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
@f_String.appendChar
0; JMP
(RET_ADDR988)
// push constant 98
@98
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR989
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
@f_String.appendChar
0; JMP
(RET_ADDR989)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR990
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
@f_String.appendChar
0; JMP
(RET_ADDR990)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR991
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
@f_String.appendChar
0; JMP
(RET_ADDR991)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR992
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
@f_String.appendChar
0; JMP
(RET_ADDR992)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR993
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
@f_String.appendChar
0; JMP
(RET_ADDR993)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR994
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
@f_String.appendChar
0; JMP
(RET_ADDR994)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR995
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
@f_String.appendChar
0; JMP
(RET_ADDR995)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR996
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
@f_String.appendChar
0; JMP
(RET_ADDR996)
// push constant 102
@102
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR997
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
@f_String.appendChar
0; JMP
(RET_ADDR997)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR998
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
@f_String.appendChar
0; JMP
(RET_ADDR998)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR999
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
@f_String.appendChar
0; JMP
(RET_ADDR999)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1000
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
@f_String.appendChar
0; JMP
(RET_ADDR1000)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1001
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
@f_String.appendChar
0; JMP
(RET_ADDR1001)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1002
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
@f_String.appendChar
0; JMP
(RET_ADDR1002)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1003
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
@f_String.appendChar
0; JMP
(RET_ADDR1003)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1004
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
@f_String.appendChar
0; JMP
(RET_ADDR1004)
// push constant 112
@112
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1005
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
@f_String.appendChar
0; JMP
(RET_ADDR1005)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1006
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
@f_String.appendChar
0; JMP
(RET_ADDR1006)
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1007
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
@f_String.appendChar
0; JMP
(RET_ADDR1007)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1008
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
@f_String.appendChar
0; JMP
(RET_ADDR1008)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1009
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
@f_String.appendChar
0; JMP
(RET_ADDR1009)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1010
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
@f_String.appendChar
0; JMP
(RET_ADDR1010)
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
// call Output.println 0
// get ip
@RET_ADDR1011
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
@f_Output.println
0; JMP
(RET_ADDR1011)
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
// call Output.printString 1
// get ip
@RET_ADDR1012
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
@f_Output.printString
0; JMP
(RET_ADDR1012)
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
// push constant 3000
@3000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR1013
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
@f_Sys.wait
0; JMP
(RET_ADDR1013)
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
// call String.dispose 1
// get ip
@RET_ADDR1014
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
@f_String.dispose
0; JMP
(RET_ADDR1014)
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
// push constant 50
@50
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR1015
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
@f_String.new
0; JMP
(RET_ADDR1015)
// push constant 78
@78
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1016
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
@f_String.appendChar
0; JMP
(RET_ADDR1016)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1017
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
@f_String.appendChar
0; JMP
(RET_ADDR1017)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1018
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
@f_String.appendChar
0; JMP
(RET_ADDR1018)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1019
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
@f_String.appendChar
0; JMP
(RET_ADDR1019)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1020
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
@f_String.appendChar
0; JMP
(RET_ADDR1020)
// push constant 99
@99
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1021
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
@f_String.appendChar
0; JMP
(RET_ADDR1021)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1022
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
@f_String.appendChar
0; JMP
(RET_ADDR1022)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1023
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
@f_String.appendChar
0; JMP
(RET_ADDR1023)
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1024
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
@f_String.appendChar
0; JMP
(RET_ADDR1024)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1025
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
@f_String.appendChar
0; JMP
(RET_ADDR1025)
// push constant 99
@99
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1026
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
@f_String.appendChar
0; JMP
(RET_ADDR1026)
// push constant 104
@104
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1027
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
@f_String.appendChar
0; JMP
(RET_ADDR1027)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1028
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
@f_String.appendChar
0; JMP
(RET_ADDR1028)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1029
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
@f_String.appendChar
0; JMP
(RET_ADDR1029)
// push constant 99
@99
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1030
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
@f_String.appendChar
0; JMP
(RET_ADDR1030)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1031
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
@f_String.appendChar
0; JMP
(RET_ADDR1031)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1032
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
@f_String.appendChar
0; JMP
(RET_ADDR1032)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1033
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
@f_String.appendChar
0; JMP
(RET_ADDR1033)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1034
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
@f_String.appendChar
0; JMP
(RET_ADDR1034)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1035
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
@f_String.appendChar
0; JMP
(RET_ADDR1035)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1036
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
@f_String.appendChar
0; JMP
(RET_ADDR1036)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1037
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
@f_String.appendChar
0; JMP
(RET_ADDR1037)
// push constant 104
@104
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1038
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
@f_String.appendChar
0; JMP
(RET_ADDR1038)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1039
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
@f_String.appendChar
0; JMP
(RET_ADDR1039)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1040
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
@f_String.appendChar
0; JMP
(RET_ADDR1040)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1041
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
@f_String.appendChar
0; JMP
(RET_ADDR1041)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1042
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
@f_String.appendChar
0; JMP
(RET_ADDR1042)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1043
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
@f_String.appendChar
0; JMP
(RET_ADDR1043)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1044
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
@f_String.appendChar
0; JMP
(RET_ADDR1044)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1045
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
@f_String.appendChar
0; JMP
(RET_ADDR1045)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1046
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
@f_String.appendChar
0; JMP
(RET_ADDR1046)
// push constant 73
@73
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1047
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
@f_String.appendChar
0; JMP
(RET_ADDR1047)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1048
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
@f_String.appendChar
0; JMP
(RET_ADDR1048)
// push constant 98
@98
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1049
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
@f_String.appendChar
0; JMP
(RET_ADDR1049)
// push constant 105
@105
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1050
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
@f_String.appendChar
0; JMP
(RET_ADDR1050)
// push constant 100
@100
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1051
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
@f_String.appendChar
0; JMP
(RET_ADDR1051)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1052
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
@f_String.appendChar
0; JMP
(RET_ADDR1052)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1053
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
@f_String.appendChar
0; JMP
(RET_ADDR1053)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1054
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
@f_String.appendChar
0; JMP
(RET_ADDR1054)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1055
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
@f_String.appendChar
0; JMP
(RET_ADDR1055)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1056
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
@f_String.appendChar
0; JMP
(RET_ADDR1056)
// push constant 102
@102
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1057
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
@f_String.appendChar
0; JMP
(RET_ADDR1057)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1058
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
@f_String.appendChar
0; JMP
(RET_ADDR1058)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1059
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
@f_String.appendChar
0; JMP
(RET_ADDR1059)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1060
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
@f_String.appendChar
0; JMP
(RET_ADDR1060)
// push constant 119
@119
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1061
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
@f_String.appendChar
0; JMP
(RET_ADDR1061)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1062
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
@f_String.appendChar
0; JMP
(RET_ADDR1062)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1063
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
@f_String.appendChar
0; JMP
(RET_ADDR1063)
// push constant 108
@108
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1064
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
@f_String.appendChar
0; JMP
(RET_ADDR1064)
// push constant 46
@46
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1065
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
@f_String.appendChar
0; JMP
(RET_ADDR1065)
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
// call Output.println 0
// get ip
@RET_ADDR1066
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
@f_Output.println
0; JMP
(RET_ADDR1066)
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
// call Output.printString 1
// get ip
@RET_ADDR1067
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
@f_Output.printString
0; JMP
(RET_ADDR1067)
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
// push constant 2000
@2000
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.wait 1
// get ip
@RET_ADDR1068
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
@f_Sys.wait
0; JMP
(RET_ADDR1068)
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
// call String.dispose 1
// get ip
@RET_ADDR1069
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
@f_String.dispose
0; JMP
(RET_ADDR1069)
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
// call Output.println 0
// get ip
@RET_ADDR1070
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
@f_Output.println
0; JMP
(RET_ADDR1070)
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
// push constant 53
@53
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
// get ip
@RET_ADDR1071
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
@f_String.new
0; JMP
(RET_ADDR1071)
// push constant 72
@72
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1072
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
@f_String.appendChar
0; JMP
(RET_ADDR1072)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1073
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
@f_String.appendChar
0; JMP
(RET_ADDR1073)
// push constant 112
@112
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1074
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
@f_String.appendChar
0; JMP
(RET_ADDR1074)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1075
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
@f_String.appendChar
0; JMP
(RET_ADDR1075)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1076
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
@f_String.appendChar
0; JMP
(RET_ADDR1076)
// push constant 116
@116
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1077
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
@f_String.appendChar
0; JMP
(RET_ADDR1077)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1078
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
@f_String.appendChar
0; JMP
(RET_ADDR1078)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1079
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
@f_String.appendChar
0; JMP
(RET_ADDR1079)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1080
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
@f_String.appendChar
0; JMP
(RET_ADDR1080)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1081
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
@f_String.appendChar
0; JMP
(RET_ADDR1081)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1082
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
@f_String.appendChar
0; JMP
(RET_ADDR1082)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1083
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
@f_String.appendChar
0; JMP
(RET_ADDR1083)
// push constant 121
@121
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1084
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
@f_String.appendChar
0; JMP
(RET_ADDR1084)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1085
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
@f_String.appendChar
0; JMP
(RET_ADDR1085)
// push constant 117
@117
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1086
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
@f_String.appendChar
0; JMP
(RET_ADDR1086)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1087
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
@f_String.appendChar
0; JMP
(RET_ADDR1087)
// push constant 115
@115
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1088
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
@f_String.appendChar
0; JMP
(RET_ADDR1088)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1089
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
@f_String.appendChar
0; JMP
(RET_ADDR1089)
// push constant 111
@111
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1090
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
@f_String.appendChar
0; JMP
(RET_ADDR1090)
// push constant 110
@110
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1091
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
@f_String.appendChar
0; JMP
(RET_ADDR1091)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR1092
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
@f_String.appendChar
0; JMP
(RET_ADDR1092)
// push constant 105