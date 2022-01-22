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
// function Main.main 0
(f_Main.main)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// call Stata.init 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Stata.init
0; JMP
(RET_ADDR5)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// call Statb.init 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Statb.init
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
// push constant 5
@5
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Main.f 1
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
@f_Main.f
0; JMP
(RET_ADDR7)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Main.f 0
(f_Main.f)
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
// call Main.dump 1
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
@f_Main.dump
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
// call Stata.setVal 1
// get ip
@RET_ADDR9
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_Stata.setVal
0; JMP
(RET_ADDR9)
// pop temp 0
@0
D = A
@5
D = A + D
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
// call Statb.setVal 1
// get ip
@RET_ADDR10
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_Statb.setVal
0; JMP
(RET_ADDR10)
// pop temp 0
@0
D = A
@5
D = A + D
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
// call Main.dump 1
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
@f_Main.dump
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
// function Main.dump 3
(f_Main.dump)
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
// call Stata.getVal 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Stata.getVal
0; JMP
(RET_ADDR12)
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
// call Statb.getVal 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Statb.getVal
0; JMP
(RET_ADDR13)
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
// push constant 5000
@5000
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
// add
@SP
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
// call Memory.poke 2
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
@f_Memory.poke
0; JMP
(RET_ADDR14)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 5001
@5001
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
// add
@SP
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
// call Memory.poke 2
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
@f_Memory.poke
0; JMP
(RET_ADDR15)
// pop temp 0
@0
D = A
@5
D = A + D
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
@f_Array.new
0; JMP
(RET_ADDR16)
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
@RET_ADDR17
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR17)
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
D; JLT
@NOTTRUE20
0;JMP
(YGT020)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH20 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE20 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE20
0; JMP
//D HOLDS X
(BOTH20)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE20
D; JLT
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
D; JLT
@NOTTRUE21
0;JMP
(YGT021)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH21 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE21 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE21
0; JMP
//D HOLDS X
(BOTH21)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE21
D; JLT
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
@YLE022
D; JLE
@YGT022
D; JGT
(YLE022)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH22 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE22 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE22
0;JMP
(YGT022)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH22 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE22 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE22
0; JMP
//D HOLDS X
(BOTH22)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE22
D; JGT
@NOTTRUE22
0;JMP
(NOTTRUE22)
@SP
A = M -1
M = 0
@ENDTRUE22
0; JMP
(TRUE22)
@SP
A = M - 1
M = -1
(ENDTRUE22)
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
D; JGT
@NOTTRUE23
0;JMP
(YGT023)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH23 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE23 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE23
0; JMP
//D HOLDS X
(BOTH23)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE23
D; JGT
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
// lt
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
D; JLT
@NOTTRUE24
0;JMP
(YGT024)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH24 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE24 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE24
0; JMP
//D HOLDS X
(BOTH24)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE24
D; JLT
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
(RET_ADDR24)
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
(RET_ADDR25)
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
@YLE027
D; JLE
@YGT027
D; JGT
(YLE027)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH27 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE27 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE27
0;JMP
(YGT027)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH27 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE27 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE27
0; JMP
//D HOLDS X
(BOTH27)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE27
D; JLT
@NOTTRUE27
0;JMP
(NOTTRUE27)
@SP
A = M -1
M = 0
@ENDTRUE27
0; JMP
(TRUE27)
@SP
A = M - 1
M = -1
(ENDTRUE27)
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
D; JGT
@NOTTRUE29
0;JMP
(YGT029)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH29 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE29 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE29
0; JMP
//D HOLDS X
(BOTH29)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE29
D; JGT
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
D; JEQ
@NOTTRUE30
0;JMP
(YGT030)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH30 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE30 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE30
0; JMP
//D HOLDS X
(BOTH30)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE30
D; JEQ
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
D; JLT
@NOTTRUE32
0;JMP
(YGT032)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH32 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE32 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE32
0; JMP
//D HOLDS X
(BOTH32)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE32
D; JLT
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
D; JGT
@NOTTRUE33
0;JMP
(YGT033)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH33 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE33 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE33
0; JMP
//D HOLDS X
(BOTH33)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE33
D; JGT
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
@YLE034
D; JLE
@YGT034
D; JGT
(YLE034)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH34 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE34 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE34
0;JMP
(YGT034)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH34 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE34 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE34
0; JMP
//D HOLDS X
(BOTH34)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE34
D; JGT
@NOTTRUE34
0;JMP
(NOTTRUE34)
@SP
A = M -1
M = 0
@ENDTRUE34
0; JMP
(TRUE34)
@SP
A = M - 1
M = -1
(ENDTRUE34)
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
D; JLT
@NOTTRUE35
0;JMP
(YGT035)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH35 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE35 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE35
0; JMP
//D HOLDS X
(BOTH35)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE35
D; JLT
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
(RET_ADDR36)
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
D; JLT
@NOTTRUE38
0;JMP
(YGT038)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH38 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE38 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE38
0; JMP
//D HOLDS X
(BOTH38)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE38
D; JLT
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
D; JGT
@NOTTRUE39
0;JMP
(YGT039)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH39 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE39 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE39
0; JMP
//D HOLDS X
(BOTH39)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE39
D; JGT
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
D; JGT
@NOTTRUE40
0;JMP
(YGT040)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH40 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE40 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE40
0; JMP
//D HOLDS X
(BOTH40)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE40
D; JGT
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
@YLE041
D; JLE
@YGT041
D; JGT
(YLE041)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH41 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE41 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE41
0;JMP
(YGT041)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH41 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE41 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE41
0; JMP
//D HOLDS X
(BOTH41)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE41
D; JGT
@NOTTRUE41
0;JMP
(NOTTRUE41)
@SP
A = M -1
M = 0
@ENDTRUE41
0; JMP
(TRUE41)
@SP
A = M - 1
M = -1
(ENDTRUE41)
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
@RET_ADDR42
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR42)
// pop temp 0
@0
D = A
@5
D = A + D
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
@YLE044
D; JLE
@YGT044
D; JGT
(YLE044)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH44 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE44 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE44
0;JMP
(YGT044)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH44 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE44 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE44
0; JMP
//D HOLDS X
(BOTH44)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE44
D; JGT
@NOTTRUE44
0;JMP
(NOTTRUE44)
@SP
A = M -1
M = 0
@ENDTRUE44
0; JMP
(TRUE44)
@SP
A = M - 1
M = -1
(ENDTRUE44)
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
D; JGT
@NOTTRUE46
0;JMP
(YGT046)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH46 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE46 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE46
0; JMP
//D HOLDS X
(BOTH46)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE46
D; JGT
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
D; JGT
@NOTTRUE47
0;JMP
(YGT047)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH47 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE47 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE47
0; JMP
//D HOLDS X
(BOTH47)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE47
D; JGT
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
D; JLT
@NOTTRUE48
0;JMP
(YGT048)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH48 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE48 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE48
0; JMP
//D HOLDS X
(BOTH48)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE48
D; JLT
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
@YLE049
D; JLE
@YGT049
D; JGT
(YLE049)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH49 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE49 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE49
0;JMP
(YGT049)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH49 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE49 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE49
0; JMP
//D HOLDS X
(BOTH49)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE49
D; JLT
@NOTTRUE49
0;JMP
(NOTTRUE49)
@SP
A = M -1
M = 0
@ENDTRUE49
0; JMP
(TRUE49)
@SP
A = M - 1
M = -1
(ENDTRUE49)
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
@YLE051
D; JLE
@YGT051
D; JGT
(YLE051)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH51 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE51 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE51
0;JMP
(YGT051)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH51 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE51 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE51
0; JMP
//D HOLDS X
(BOTH51)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE51
D; JLT
@NOTTRUE51
0;JMP
(NOTTRUE51)
@SP
A = M -1
M = 0
@ENDTRUE51
0; JMP
(TRUE51)
@SP
A = M - 1
M = -1
(ENDTRUE51)
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
D; JGT
@NOTTRUE52
0;JMP
(YGT052)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH52 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE52 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE52
0; JMP
//D HOLDS X
(BOTH52)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE52
D; JGT
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
D; JEQ
@NOTTRUE56
0;JMP
(YGT056)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH56 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE56 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE56
0; JMP
//D HOLDS X
(BOTH56)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE56
D; JEQ
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
D; JEQ
@NOTTRUE57
0;JMP
(YGT057)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH57 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE57 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE57
0; JMP
//D HOLDS X
(BOTH57)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE57
D; JEQ
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
// function Stata.init 0
(f_Stata.init)
// write 0 for every local var
@LCL
A = M
@0
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
// pop static 0
@Stata.0
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
// function Stata.setVal 0
(f_Stata.setVal)
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
// pop static 0
@Stata.0
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
// function Stata.getVal 0
(f_Stata.getVal)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push static 0
@Stata.0
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
// function Statb.init 0
(f_Statb.init)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop static 0
@Statb.0
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
// function Statb.setVal 0
(f_Statb.setVal)
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
// pop static 0
@Statb.0
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
// function Statb.getVal 0
(f_Statb.getVal)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push static 0
@Statb.0
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
@RET_ADDR57
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR57)
// pop temp 0
@0
D = A
@5
D = A + D
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
@RET_ADDR58
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR58)
// pop temp 0
@0
D = A
@5
D = A + D
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
@RET_ADDR59
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR59)
// pop temp 0
@0
D = A
@5
D = A + D
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
D; JLT
@NOTTRUE61
0;JMP
(YGT061)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH61 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE61 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE61
0; JMP
//D HOLDS X
(BOTH61)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE61
D; JLT
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
@RET_ADDR61
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR61)
// pop temp 0
@0
D = A
@5
D = A + D
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
D; JGT
@NOTTRUE63
0;JMP
(YGT063)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH63 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE63 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE63
0; JMP
//D HOLDS X
(BOTH63)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE63
D; JGT
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
D; JGT
@NOTTRUE64
0;JMP
(YGT064)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH64 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE64 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE64
0; JMP
//D HOLDS X
(BOTH64)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE64
D; JGT
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
