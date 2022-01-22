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
// function Ball.new 0
(f_Ball.new)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 15
@15
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
// pop this 10
@10
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
// push constant 6
@6
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
// pop this 11
@11
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
// pop this 12
@12
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
// push constant 6
@6
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
// pop this 13
@13
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
// pop this 14
@14
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
// call Ball.show 1
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
@f_Ball.show
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
// function Ball.dispose 0
(f_Ball.dispose)
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
@f_Memory.deAlloc
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
// function Ball.show 0
(f_Ball.show)
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
@f_Screen.setColor
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
// call Ball.draw 1
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
@f_Ball.draw
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
// function Ball.hide 0
(f_Ball.hide)
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.setColor 1
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
@f_Screen.setColor
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
// call Ball.draw 1
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
@f_Ball.draw
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
// function Ball.draw 0
(f_Ball.draw)
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
// call Screen.drawRectangle 4
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
(RET_ADDR12)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Ball.getLeft 0
(f_Ball.getLeft)
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
// function Ball.getRight 0
(f_Ball.getRight)
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// function Ball.setDestination 3
(f_Ball.setDestination)
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
// call Math.abs 1
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
(RET_ADDR13)
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
// call Math.abs 1
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
(RET_ADDR14)
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
@YLE016
D; JLE
@YGT016
D; JGT
(YLE016)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH16 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE16 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE16
0;JMP
(YGT016)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH16 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE16 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE16
0; JMP
//D HOLDS X
(BOTH16)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE16
D; JLT
@NOTTRUE16
0;JMP
(NOTTRUE16)
@SP
A = M -1
M = 0
@ENDTRUE16
0; JMP
(TRUE16)
@SP
A = M - 1
M = -1
(ENDTRUE16)
// pop this 7
@7
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
// push this 7
@7
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Ball.setDestination$IF_TRUE0
D; JNE
@Ball.setDestination$IF_FALSE0
0; JMP
(Ball.setDestination$IF_TRUE0)
// push local 0
@0
D = A
@LCL
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE017
D; JLE
@YGT017
D; JGT
(YLE017)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH17 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE17 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE17
0;JMP
(YGT017)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH17 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE17 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE17
0; JMP
//D HOLDS X
(BOTH17)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE17
D; JLT
@NOTTRUE17
0;JMP
(NOTTRUE17)
@SP
A = M -1
M = 0
@ENDTRUE17
0; JMP
(TRUE17)
@SP
A = M - 1
M = -1
(ENDTRUE17)
// pop this 8
@8
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
// pop this 9
@9
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
@Ball.setDestination$IF_END0
0; JMP
(Ball.setDestination$IF_FALSE0)
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
// pop this 8
@8
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
// pop this 9
@9
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
(Ball.setDestination$IF_END0)
// push constant 2
@2
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
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR20)
// push local 0
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
// push constant 2
@2
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
// push constant 2
@2
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
// push local 0
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
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR22)
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
// function Ball.move 0
(f_Ball.move)
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
// call Ball.hide 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Ball.hide
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
D; JLT
@NOTTRUE25
0;JMP
(YGT025)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH25 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE25 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE25
0; JMP
//D HOLDS X
(BOTH25)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE25
D; JLT
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
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE0
D; JNE
@Ball.move$IF_FALSE0
0; JMP
(Ball.move$IF_TRUE0)
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
// add
@SP
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
@Ball.move$IF_END0
0; JMP
(Ball.move$IF_FALSE0)
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
// add
@SP
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
// push this 9
@9
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE1
D; JNE
@Ball.move$IF_FALSE1
0; JMP
(Ball.move$IF_TRUE1)
// push this 7
@7
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE2
D; JNE
@Ball.move$IF_FALSE2
0; JMP
(Ball.move$IF_TRUE2)
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
@Ball.move$IF_END2
0; JMP
(Ball.move$IF_FALSE2)
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
(Ball.move$IF_END2)
@Ball.move$IF_END1
0; JMP
(Ball.move$IF_FALSE1)
// push this 7
@7
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE3
D; JNE
@Ball.move$IF_FALSE3
0; JMP
(Ball.move$IF_TRUE3)
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
@Ball.move$IF_END3
0; JMP
(Ball.move$IF_FALSE3)
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
(Ball.move$IF_END3)
(Ball.move$IF_END1)
(Ball.move$IF_END0)
// push this 8
@8
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE4
D; JNE
@Ball.move$IF_FALSE4
0; JMP
(Ball.move$IF_TRUE4)
// push this 7
@7
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE5
D; JNE
@Ball.move$IF_FALSE5
0; JMP
(Ball.move$IF_TRUE5)
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
@Ball.move$IF_END5
0; JMP
(Ball.move$IF_FALSE5)
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
(Ball.move$IF_END5)
@Ball.move$IF_END4
0; JMP
(Ball.move$IF_FALSE4)
// push this 7
@7
D = A
@THIS
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE6
D; JNE
@Ball.move$IF_FALSE6
0; JMP
(Ball.move$IF_TRUE6)
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
@Ball.move$IF_END6
0; JMP
(Ball.move$IF_FALSE6)
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
(Ball.move$IF_END6)
(Ball.move$IF_END4)
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
// push this 10
@10
D = A
@THIS
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
D; JGT
@NOTTRUE26
0;JMP
(YGT026)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH26 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE26 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE26
0; JMP
//D HOLDS X
(BOTH26)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE26
D; JGT
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE7
D; JNE
@Ball.move$IF_FALSE7
0; JMP
(Ball.move$IF_TRUE7)
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop this 14
@14
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
// push this 10
@10
D = A
@THIS
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
(Ball.move$IF_FALSE7)
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
// push this 11
@11
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE8
D; JNE
@Ball.move$IF_FALSE8
0; JMP
(Ball.move$IF_TRUE8)
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop this 14
@14
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
// push this 11
@11
D = A
@THIS
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
(Ball.move$IF_FALSE8)
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
// push this 12
@12
D = A
@THIS
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
D; JGT
@NOTTRUE28
0;JMP
(YGT028)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH28 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE28 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE28
0; JMP
//D HOLDS X
(BOTH28)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE28
D; JGT
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
@Ball.move$IF_TRUE9
D; JNE
@Ball.move$IF_FALSE9
0; JMP
(Ball.move$IF_TRUE9)
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop this 14
@14
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
// push this 12
@12
D = A
@THIS
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
(Ball.move$IF_FALSE9)
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
// push this 13
@13
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Ball.move$IF_TRUE10
D; JNE
@Ball.move$IF_FALSE10
0; JMP
(Ball.move$IF_TRUE10)
// push constant 4
@4
D = A
@SP
M = M + 1
A = M - 1
M = D
// pop this 14
@14
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
// push this 13
@13
D = A
@THIS
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
(Ball.move$IF_FALSE10)
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
// call Ball.show 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Ball.show
0; JMP
(RET_ADDR29)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push this 14
@14
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
// function Ball.bounce 5
(f_Ball.bounce)
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
// push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.divide 2
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
(RET_ADDR30)
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
// push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.divide 2
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
@f_Math.divide
0; JMP
(RET_ADDR31)
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
D; JEQ
@NOTTRUE33
0;JMP
(YGT033)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH33 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE33 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE33
0; JMP
//D HOLDS X
(BOTH33)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE33
D; JEQ
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
@Ball.bounce$IF_TRUE0
D; JNE
@Ball.bounce$IF_FALSE0
0; JMP
(Ball.bounce$IF_TRUE0)
// push constant 10
@10
D = A
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
@Ball.bounce$IF_END0
0; JMP
(Ball.bounce$IF_FALSE0)
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
// lt
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
D; JLT
@NOTTRUE34
0;JMP
(YGT034)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH34 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE34 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE34
0; JMP
//D HOLDS X
(BOTH34)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE34
D; JLT
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
// not
@SP
A = M - 1
M = ! M
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
// eq
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
D; JEQ
@NOTTRUE35
0;JMP
(YGT035)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH35 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE35 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE35
0; JMP
//D HOLDS X
(BOTH35)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE35
D; JEQ
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE036
D; JLE
@YGT036
D; JGT
(YLE036)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH36 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE36 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE36
0;JMP
(YGT036)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH36 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE36 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE36
0; JMP
//D HOLDS X
(BOTH36)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE36
D; JLT
@NOTTRUE36
0;JMP
(NOTTRUE36)
@SP
A = M -1
M = 0
@ENDTRUE36
0; JMP
(TRUE36)
@SP
A = M - 1
M = -1
(ENDTRUE36)
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
D; JEQ
@NOTTRUE37
0;JMP
(YGT037)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH37 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE37 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE37
0; JMP
//D HOLDS X
(BOTH37)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE37
D; JEQ
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
@Ball.bounce$IF_TRUE1
D; JNE
@Ball.bounce$IF_FALSE1
0; JMP
(Ball.bounce$IF_TRUE1)
// push constant 20
@20
D = A
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
@Ball.bounce$IF_END1
0; JMP
(Ball.bounce$IF_FALSE1)
// push constant 5
@5
D = A
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
(Ball.bounce$IF_END1)
(Ball.bounce$IF_END0)
// push this 14
@14
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
D; JEQ
@NOTTRUE38
0;JMP
(YGT038)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH38 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE38 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE38
0; JMP
//D HOLDS X
(BOTH38)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE38
D; JEQ
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
@Ball.bounce$IF_TRUE2
D; JNE
@Ball.bounce$IF_FALSE2
0; JMP
(Ball.bounce$IF_TRUE2)
// push constant 506
@506
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
// push constant 50
@50
D = A
@SP
M = M + 1
A = M - 1
M = D
// neg
@SP
A = M - 1
M = - M
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR38)
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
// call Math.divide 2
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
@f_Math.divide
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
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR40)
// add
@SP
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
@Ball.bounce$IF_END2
0; JMP
(Ball.bounce$IF_FALSE2)
// push this 14
@14
D = A
@THIS
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
D; JEQ
@NOTTRUE42
0;JMP
(YGT042)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH42 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE42 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE42
0; JMP
//D HOLDS X
(BOTH42)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE42
D; JEQ
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
@Ball.bounce$IF_TRUE3
D; JNE
@Ball.bounce$IF_FALSE3
0; JMP
(Ball.bounce$IF_TRUE3)
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
// push constant 50
@50
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
(RET_ADDR42)
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
// call Math.divide 2
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
@f_Math.divide
0; JMP
(RET_ADDR43)
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
@Ball.bounce$IF_END3
0; JMP
(Ball.bounce$IF_FALSE3)
// push this 14
@14
D = A
@THIS
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
@Ball.bounce$IF_TRUE4
D; JNE
@Ball.bounce$IF_FALSE4
0; JMP
(Ball.bounce$IF_TRUE4)
// push constant 250
@250
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
// push constant 25
@25
D = A
@SP
M = M + 1
A = M - 1
M = D
// neg
@SP
A = M - 1
M = - M
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
// call Math.divide 2
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
@f_Math.divide
0; JMP
(RET_ADDR47)
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
// push local 0
@0
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
// call Math.multiply 2
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
(RET_ADDR48)
// add
@SP
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
@Ball.bounce$IF_END4
0; JMP
(Ball.bounce$IF_FALSE4)
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
// push constant 25
@25
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
(RET_ADDR49)
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
// call Math.divide 2
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
(RET_ADDR50)
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
// push local 0
@0
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
// call Math.multiply 2
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
(RET_ADDR51)
// add
@SP
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
(Ball.bounce$IF_END4)
(Ball.bounce$IF_END3)
(Ball.bounce$IF_END2)
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
// call Ball.setDestination 3
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Ball.setDestination
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
// function Bat.new 0
(f_Bat.new)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 5
@5
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Memory.alloc 1
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
(RET_ADDR53)
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
// push constant 2
@2
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
// call Bat.show 1
// get ip
@RET_ADDR54
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_Bat.show
0; JMP
(RET_ADDR54)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Bat.allign 1
(f_Bat.allign)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
@1
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
// push local 0
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
// push constant 4
@4
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
// function Bat.dispose 0
(f_Bat.dispose)
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
@RET_ADDR55
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR55)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Bat.show 0
(f_Bat.show)
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
@RET_ADDR56
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR56)
// pop temp 0
@0
D = A
@5
D = A + D
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
// call Bat.draw 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Bat.draw
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
// function Bat.hide 0
(f_Bat.hide)
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.setColor 1
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
// call Bat.draw 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Bat.draw
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
// function Bat.draw 0
(f_Bat.draw)
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
// add
@SP
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
@RET_ADDR60
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR60)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Bat.setDirection 0
(f_Bat.setDirection)
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
// function Bat.getLeft 0
(f_Bat.getLeft)
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
// function Bat.getRight 0
(f_Bat.getRight)
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
// function Bat.setWidth 0
(f_Bat.setWidth)
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
// call Bat.hide 1
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
@f_Bat.hide
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
// call Bat.show 1
// get ip
@RET_ADDR62
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_Bat.show
0; JMP
(RET_ADDR62)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Bat.move 0
(f_Bat.move)
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
@SP
AM = M - 1
D = M
@Bat.move$IF_TRUE0
D; JNE
@Bat.move$IF_FALSE0
0; JMP
(Bat.move$IF_TRUE0)
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE065
D; JLE
@YGT065
D; JGT
(YLE065)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH65 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE65 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE65
0;JMP
(YGT065)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH65 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE65 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE65
0; JMP
//D HOLDS X
(BOTH65)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE65
D; JLT
@NOTTRUE65
0;JMP
(NOTTRUE65)
@SP
A = M -1
M = 0
@ENDTRUE65
0; JMP
(TRUE65)
@SP
A = M - 1
M = -1
(ENDTRUE65)
@SP
AM = M - 1
D = M
@Bat.move$IF_TRUE1
D; JNE
@Bat.move$IF_FALSE1
0; JMP
(Bat.move$IF_TRUE1)
// push constant 0
@0
D = A
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
(Bat.move$IF_FALSE1)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.setColor 1
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
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
// add
@SP
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
@RET_ADDR66
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR66)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR67)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
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
// add
@SP
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
(RET_ADDR68)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Bat.move$IF_END0
0; JMP
(Bat.move$IF_FALSE0)
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
// push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE070
D; JLE
@YGT070
D; JGT
(YLE070)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH70 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE70 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE70
0;JMP
(YGT070)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH70 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE70 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE70
0; JMP
//D HOLDS X
(BOTH70)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE70
D; JGT
@NOTTRUE70
0;JMP
(NOTTRUE70)
@SP
A = M -1
M = 0
@ENDTRUE70
0; JMP
(TRUE70)
@SP
A = M - 1
M = -1
(ENDTRUE70)
@SP
AM = M - 1
D = M
@Bat.move$IF_TRUE2
D; JNE
@Bat.move$IF_FALSE2
0; JMP
(Bat.move$IF_TRUE2)
// push constant 511
@511
D = A
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
(Bat.move$IF_FALSE2)
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.setColor 1
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
(RET_ADDR70)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
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
// add
@SP
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
(RET_ADDR71)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR72)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
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
// push constant 3
@3
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
// add
@SP
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
(RET_ADDR73)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Bat.move$IF_END0)
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
// function Board.new 0
(f_Board.new)
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
// call Memory.alloc 1
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
(RET_ADDR74)
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
// push constant 30
@30
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
// push constant 10
@10
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
// function Board.dispose 0
(f_Board.dispose)
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
(RET_ADDR75)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Board.draw 0
(f_Board.draw)
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
(RET_ADDR76)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
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
// push static 1
@Board.1
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
// add
@SP
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
(RET_ADDR77)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Board.erase 0
(f_Board.erase)
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
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.setColor 1
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
(RET_ADDR78)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
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
// push static 1
@Board.1
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
// add
@SP
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
(RET_ADDR79)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Board.setX 0
(f_Board.setX)
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
// function Board.setY 0
(f_Board.setY)
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
// function Board.move 0
(f_Board.move)
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
// call Board.erase 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Board.erase
0; JMP
(RET_ADDR80)
// pop temp 0
@0
D = A
@5
D = A + D
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE082
D; JLE
@YGT082
D; JGT
(YLE082)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH82 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE82 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE82
0;JMP
(YGT082)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH82 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE82 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE82
0; JMP
//D HOLDS X
(BOTH82)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE82
D; JEQ
@NOTTRUE82
0;JMP
(NOTTRUE82)
@SP
A = M -1
M = 0
@ENDTRUE82
0; JMP
(TRUE82)
@SP
A = M - 1
M = -1
(ENDTRUE82)
@SP
AM = M - 1
D = M
@Board.move$IF_TRUE0
D; JNE
@Board.move$IF_FALSE0
0; JMP
(Board.move$IF_TRUE0)
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE083
D; JLE
@YGT083
D; JGT
(YLE083)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH83 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE83 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE83
0;JMP
(YGT083)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH83 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE83 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE83
0; JMP
//D HOLDS X
(BOTH83)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE83
D; JGT
@NOTTRUE83
0;JMP
(NOTTRUE83)
@SP
A = M -1
M = 0
@ENDTRUE83
0; JMP
(TRUE83)
@SP
A = M - 1
M = -1
(ENDTRUE83)
@SP
AM = M - 1
D = M
@Board.move$IF_TRUE1
D; JNE
@Board.move$IF_FALSE1
0; JMP
(Board.move$IF_TRUE1)
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
(Board.move$IF_FALSE1)
(Board.move$IF_FALSE0)
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
// eq
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
D; JEQ
@NOTTRUE84
0;JMP
(YGT084)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH84 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE84 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE84
0; JMP
//D HOLDS X
(BOTH84)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE84
D; JEQ
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
@SP
AM = M - 1
D = M
@Board.move$IF_TRUE2
D; JNE
@Board.move$IF_FALSE2
0; JMP
(Board.move$IF_TRUE2)
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
// push constant 209
@209
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE085
D; JLE
@YGT085
D; JGT
(YLE085)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH85 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE85 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE85
0;JMP
(YGT085)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH85 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE85 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE85
0; JMP
//D HOLDS X
(BOTH85)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE85
D; JLT
@NOTTRUE85
0;JMP
(NOTTRUE85)
@SP
A = M -1
M = 0
@ENDTRUE85
0; JMP
(TRUE85)
@SP
A = M - 1
M = -1
(ENDTRUE85)
@SP
AM = M - 1
D = M
@Board.move$IF_TRUE3
D; JNE
@Board.move$IF_FALSE3
0; JMP
(Board.move$IF_TRUE3)
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
(Board.move$IF_FALSE3)
(Board.move$IF_FALSE2)
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
D; JEQ
@NOTTRUE86
0;JMP
(YGT086)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH86 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE86 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE86
0; JMP
//D HOLDS X
(BOTH86)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE86
D; JEQ
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
@SP
AM = M - 1
D = M
@Board.move$IF_TRUE4
D; JNE
@Board.move$IF_FALSE4
0; JMP
(Board.move$IF_TRUE4)
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
// gt
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
D; JGT
@NOTTRUE87
0;JMP
(YGT087)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH87 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE87 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE87
0; JMP
//D HOLDS X
(BOTH87)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE87
D; JGT
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
@SP
AM = M - 1
D = M
@Board.move$IF_TRUE5
D; JNE
@Board.move$IF_FALSE5
0; JMP
(Board.move$IF_TRUE5)
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
(Board.move$IF_FALSE5)
(Board.move$IF_FALSE4)
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
@YLE088
D; JLE
@YGT088
D; JGT
(YLE088)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH88 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE88 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE88
0;JMP
(YGT088)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH88 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE88 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE88
0; JMP
//D HOLDS X
(BOTH88)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE88
D; JEQ
@NOTTRUE88
0;JMP
(NOTTRUE88)
@SP
A = M -1
M = 0
@ENDTRUE88
0; JMP
(TRUE88)
@SP
A = M - 1
M = -1
(ENDTRUE88)
@SP
AM = M - 1
D = M
@Board.move$IF_TRUE6
D; JNE
@Board.move$IF_FALSE6
0; JMP
(Board.move$IF_TRUE6)
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
// push constant 500
@500
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
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
D; JLT
@NOTTRUE89
0;JMP
(YGT089)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH89 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE89 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE89
0; JMP
//D HOLDS X
(BOTH89)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE89
D; JLT
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
@Board.move$IF_TRUE7
D; JNE
@Board.move$IF_FALSE7
0; JMP
(Board.move$IF_TRUE7)
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
(Board.move$IF_FALSE7)
(Board.move$IF_FALSE6)
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
// call Board.draw 1
// get ip
@RET_ADDR89
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_Board.draw
0; JMP
(RET_ADDR89)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Board.isHit 2
(f_Board.isHit)
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
// push static 1
@Board.1
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
// add
@SP
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
// gt
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
D; JGT
@NOTTRUE91
0;JMP
(YGT091)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH91 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE91 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE91
0; JMP
//D HOLDS X
(BOTH91)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE91
D; JGT
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
@SP
AM = M - 1
D = M
@Board.isHit$IF_TRUE0
D; JNE
@Board.isHit$IF_FALSE0
0; JMP
(Board.isHit$IF_TRUE0)
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
// push local 0
@0
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
D; JLT
@NOTTRUE92
0;JMP
(YGT092)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH92 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE92 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE92
0; JMP
//D HOLDS X
(BOTH92)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE92
D; JLT
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
@Board.isHit$IF_TRUE1
D; JNE
@Board.isHit$IF_FALSE1
0; JMP
(Board.isHit$IF_TRUE1)
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
// gt
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
D; JGT
@NOTTRUE93
0;JMP
(YGT093)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH93 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE93 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE93
0; JMP
//D HOLDS X
(BOTH93)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE93
D; JGT
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
@Board.isHit$IF_TRUE2
D; JNE
@Board.isHit$IF_FALSE2
0; JMP
(Board.isHit$IF_TRUE2)
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
// lt
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
D; JLT
@NOTTRUE94
0;JMP
(YGT094)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH94 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE94 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE94
0; JMP
//D HOLDS X
(BOTH94)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE94
D; JLT
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
@Board.isHit$IF_TRUE3
D; JNE
@Board.isHit$IF_FALSE3
0; JMP
(Board.isHit$IF_TRUE3)
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
(Board.isHit$IF_FALSE3)
(Board.isHit$IF_FALSE2)
(Board.isHit$IF_FALSE1)
(Board.isHit$IF_FALSE0)
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
@RET_ADDR94
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR94)
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
(RET_ADDR95)
// pop temp 0
@0
D = A
@5
D = A + D
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
@YLE097
D; JLE
@YGT097
D; JGT
(YLE097)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH97 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE97 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE97
0;JMP
(YGT097)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH97 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE97 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE97
0; JMP
//D HOLDS X
(BOTH97)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE97
D; JEQ
@NOTTRUE97
0;JMP
(NOTTRUE97)
@SP
A = M -1
M = 0
@ENDTRUE97
0; JMP
(TRUE97)
@SP
A = M - 1
M = -1
(ENDTRUE97)
// push local 0
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
@YLE098
D; JLE
@YGT098
D; JGT
(YLE098)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH98 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE98 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE98
0;JMP
(YGT098)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH98 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE98 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE98
0; JMP
//D HOLDS X
(BOTH98)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE98
D; JGT
@NOTTRUE98
0;JMP
(NOTTRUE98)
@SP
A = M -1
M = 0
@ENDTRUE98
0; JMP
(TRUE98)
@SP
A = M - 1
M = -1
(ENDTRUE98)
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
(RET_ADDR98)
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
@YLE0100
D; JLE
@YGT0100
D; JGT
(YLE0100)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH100 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE100 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE100
0;JMP
(YGT0100)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH100 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE100 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE100
0; JMP
//D HOLDS X
(BOTH100)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE100
D; JGT
@NOTTRUE100
0;JMP
(NOTTRUE100)
@SP
A = M -1
M = 0
@ENDTRUE100
0; JMP
(TRUE100)
@SP
A = M - 1
M = -1
(ENDTRUE100)
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
(RET_ADDR100)
// call Output.printChar 1
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
@RET_ADDR103
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR103)
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
@RET_ADDR104
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR104)
// pop temp 0
@0
D = A
@5
D = A + D
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
@RET_ADDR105
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR105)
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
@RET_ADDR106
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR106)
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
@RET_ADDR107
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR107)
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
D; JEQ
@NOTTRUE109
0;JMP
(YGT0109)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH109 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE109 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE109
0; JMP
//D HOLDS X
(BOTH109)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE109
D; JEQ
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
@RET_ADDR110
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR110)
// pop temp 0
@0
D = A
@5
D = A + D
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
@f_String.appendChar
0; JMP
(RET_ADDR111)
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
@RET_ADDR112
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR112)
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
@RET_ADDR113
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR113)
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
(RET_ADDR114)
// pop temp 0
@0
D = A
@5
D = A + D
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
// call PongGame.newInstance 0
// get ip
@RET_ADDR115
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_PongGame.newInstance
0; JMP
(RET_ADDR115)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// call PongGame.getInstance 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_PongGame.getInstance
0; JMP
(RET_ADDR116)
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
// call PongGame.run 1
// get ip
@RET_ADDR117
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_PongGame.run
0; JMP
(RET_ADDR117)
// pop temp 0
@0
D = A
@5
D = A + D
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
// call PongGame.dispose 1
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
@f_PongGame.dispose
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
@f_Array.new
0; JMP
(RET_ADDR119)
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
@f_Array.new
0; JMP
(RET_ADDR120)
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
D; JLT
@NOTTRUE122
0;JMP
(YGT0122)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH122 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE122 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE122
0; JMP
//D HOLDS X
(BOTH122)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE122
D; JLT
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
D; JLT
@NOTTRUE124
0;JMP
(YGT0124)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH124 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE124 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE124
0; JMP
//D HOLDS X
(BOTH124)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE124
D; JLT
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
D; JGT
@NOTTRUE125
0;JMP
(YGT0125)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH125 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE125 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE125
0; JMP
//D HOLDS X
(BOTH125)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE125
D; JGT
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
@YLE0126
D; JLE
@YGT0126
D; JGT
(YLE0126)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH126 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE126 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE126
0;JMP
(YGT0126)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH126 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE126 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE126
0; JMP
//D HOLDS X
(BOTH126)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE126
D; JGT
@NOTTRUE126
0;JMP
(NOTTRUE126)
@SP
A = M -1
M = 0
@ENDTRUE126
0; JMP
(TRUE126)
@SP
A = M - 1
M = -1
(ENDTRUE126)
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
@YLE0127
D; JLE
@YGT0127
D; JGT
(YLE0127)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH127 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE127 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE127
0;JMP
(YGT0127)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH127 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE127 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE127
0; JMP
//D HOLDS X
(BOTH127)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE127
D; JLT
@NOTTRUE127
0;JMP
(NOTTRUE127)
@SP
A = M -1
M = 0
@ENDTRUE127
0; JMP
(TRUE127)
@SP
A = M - 1
M = -1
(ENDTRUE127)
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
(RET_ADDR127)
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
(RET_ADDR128)
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
@YLE0130
D; JLE
@YGT0130
D; JGT
(YLE0130)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH130 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE130 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE130
0;JMP
(YGT0130)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH130 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE130 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE130
0; JMP
//D HOLDS X
(BOTH130)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE130
D; JLT
@NOTTRUE130
0;JMP
(NOTTRUE130)
@SP
A = M -1
M = 0
@ENDTRUE130
0; JMP
(TRUE130)
@SP
A = M - 1
M = -1
(ENDTRUE130)
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
@YLE0131
D; JLE
@YGT0131
D; JGT
(YLE0131)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH131 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE131 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE131
0;JMP
(YGT0131)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH131 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE131 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE131
0; JMP
//D HOLDS X
(BOTH131)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE131
D; JLT
@NOTTRUE131
0;JMP
(NOTTRUE131)
@SP
A = M -1
M = 0
@ENDTRUE131
0; JMP
(TRUE131)
@SP
A = M - 1
M = -1
(ENDTRUE131)
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
@YLE0132
D; JLE
@YGT0132
D; JGT
(YLE0132)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH132 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE132 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE132
0;JMP
(YGT0132)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH132 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE132 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE132
0; JMP
//D HOLDS X
(BOTH132)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE132
D; JGT
@NOTTRUE132
0;JMP
(NOTTRUE132)
@SP
A = M -1
M = 0
@ENDTRUE132
0; JMP
(TRUE132)
@SP
A = M - 1
M = -1
(ENDTRUE132)
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
(RET_ADDR133)
// pop temp 0
@0
D = A
@5
D = A + D
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
@YLE0135
D; JLE
@YGT0135
D; JGT
(YLE0135)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH135 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE135 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE135
0;JMP
(YGT0135)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH135 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE135 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE135
0; JMP
//D HOLDS X
(BOTH135)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE135
D; JLT
@NOTTRUE135
0;JMP
(NOTTRUE135)
@SP
A = M -1
M = 0
@ENDTRUE135
0; JMP
(TRUE135)
@SP
A = M - 1
M = -1
(ENDTRUE135)
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
@YLE0136
D; JLE
@YGT0136
D; JGT
(YLE0136)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH136 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE136 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE136
0;JMP
(YGT0136)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH136 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE136 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE136
0; JMP
//D HOLDS X
(BOTH136)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE136
D; JGT
@NOTTRUE136
0;JMP
(NOTTRUE136)
@SP
A = M -1
M = 0
@ENDTRUE136
0; JMP
(TRUE136)
@SP
A = M - 1
M = -1
(ENDTRUE136)
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
@YLE0137
D; JLE
@YGT0137
D; JGT
(YLE0137)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH137 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE137 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE137
0;JMP
(YGT0137)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH137 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE137 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE137
0; JMP
//D HOLDS X
(BOTH137)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE137
D; JGT
@NOTTRUE137
0;JMP
(NOTTRUE137)
@SP
A = M -1
M = 0
@ENDTRUE137
0; JMP
(TRUE137)
@SP
A = M - 1
M = -1
(ENDTRUE137)
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
@YLE0138
D; JLE
@YGT0138
D; JGT
(YLE0138)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH138 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE138 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE138
0;JMP
(YGT0138)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH138 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE138 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE138
0; JMP
//D HOLDS X
(BOTH138)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE138
D; JLT
@NOTTRUE138
0;JMP
(NOTTRUE138)
@SP
A = M -1
M = 0
@ENDTRUE138
0; JMP
(TRUE138)
@SP
A = M - 1
M = -1
(ENDTRUE138)
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
(RET_ADDR139)
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
@YLE0141
D; JLE
@YGT0141
D; JGT
(YLE0141)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH141 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE141 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE141
0;JMP
(YGT0141)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH141 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE141 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE141
0; JMP
//D HOLDS X
(BOTH141)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE141
D; JLT
@NOTTRUE141
0;JMP
(NOTTRUE141)
@SP
A = M -1
M = 0
@ENDTRUE141
0; JMP
(TRUE141)
@SP
A = M - 1
M = -1
(ENDTRUE141)
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
@YLE0142
D; JLE
@YGT0142
D; JGT
(YLE0142)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH142 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE142 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE142
0;JMP
(YGT0142)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH142 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE142 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE142
0; JMP
//D HOLDS X
(BOTH142)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE142
D; JGT
@NOTTRUE142
0;JMP
(NOTTRUE142)
@SP
A = M -1
M = 0
@ENDTRUE142
0; JMP
(TRUE142)
@SP
A = M - 1
M = -1
(ENDTRUE142)
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
@YLE0143
D; JLE
@YGT0143
D; JGT
(YLE0143)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH143 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE143 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE143
0;JMP
(YGT0143)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH143 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE143 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE143
0; JMP
//D HOLDS X
(BOTH143)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE143
D; JGT
@NOTTRUE143
0;JMP
(NOTTRUE143)
@SP
A = M -1
M = 0
@ENDTRUE143
0; JMP
(TRUE143)
@SP
A = M - 1
M = -1
(ENDTRUE143)
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
@YLE0144
D; JLE
@YGT0144
D; JGT
(YLE0144)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH144 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE144 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE144
0;JMP
(YGT0144)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH144 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE144 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE144
0; JMP
//D HOLDS X
(BOTH144)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE144
D; JGT
@NOTTRUE144
0;JMP
(NOTTRUE144)
@SP
A = M -1
M = 0
@ENDTRUE144
0; JMP
(TRUE144)
@SP
A = M - 1
M = -1
(ENDTRUE144)
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
@YLE0145
D; JLE
@YGT0145
D; JGT
(YLE0145)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH145 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE145 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE145
0;JMP
(YGT0145)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH145 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE145 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE145
0; JMP
//D HOLDS X
(BOTH145)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE145
D; JLT
@NOTTRUE145
0;JMP
(NOTTRUE145)
@SP
A = M -1
M = 0
@ENDTRUE145
0; JMP
(TRUE145)
@SP
A = M - 1
M = -1
(ENDTRUE145)
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
(RET_ADDR145)
// pop temp 0
@0
D = A
@5
D = A + D
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
@YLE0147
D; JLE
@YGT0147
D; JGT
(YLE0147)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH147 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE147 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE147
0;JMP
(YGT0147)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH147 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE147 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE147
0; JMP
//D HOLDS X
(BOTH147)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE147
D; JGT
@NOTTRUE147
0;JMP
(NOTTRUE147)
@SP
A = M -1
M = 0
@ENDTRUE147
0; JMP
(TRUE147)
@SP
A = M - 1
M = -1
(ENDTRUE147)
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
@f_Math.multiply
0; JMP
(RET_ADDR147)
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
@YLE0149
D; JLE
@YGT0149
D; JGT
(YLE0149)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH149 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE149 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE149
0;JMP
(YGT0149)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH149 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE149 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE149
0; JMP
//D HOLDS X
(BOTH149)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE149
D; JGT
@NOTTRUE149
0;JMP
(NOTTRUE149)
@SP
A = M -1
M = 0
@ENDTRUE149
0; JMP
(TRUE149)
@SP
A = M - 1
M = -1
(ENDTRUE149)
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
@YLE0150
D; JLE
@YGT0150
D; JGT
(YLE0150)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH150 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE150 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE150
0;JMP
(YGT0150)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH150 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE150 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE150
0; JMP
//D HOLDS X
(BOTH150)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE150
D; JLT
@NOTTRUE150
0;JMP
(NOTTRUE150)
@SP
A = M -1
M = 0
@ENDTRUE150
0; JMP
(TRUE150)
@SP
A = M - 1
M = -1
(ENDTRUE150)
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
@YLE0151
D; JLE
@YGT0151
D; JGT
(YLE0151)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH151 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE151 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE151
0;JMP
(YGT0151)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH151 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE151 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE151
0; JMP
//D HOLDS X
(BOTH151)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE151
D; JGT
@NOTTRUE151
0;JMP
(NOTTRUE151)
@SP
A = M -1
M = 0
@ENDTRUE151
0; JMP
(TRUE151)
@SP
A = M - 1
M = -1
(ENDTRUE151)
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
@YLE0152
D; JLE
@YGT0152
D; JGT
(YLE0152)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH152 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE152 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE152
0;JMP
(YGT0152)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH152 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE152 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE152
0; JMP
//D HOLDS X
(BOTH152)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE152
D; JLT
@NOTTRUE152
0;JMP
(NOTTRUE152)
@SP
A = M -1
M = 0
@ENDTRUE152
0; JMP
(TRUE152)
@SP
A = M - 1
M = -1
(ENDTRUE152)
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
@YLE0153
D; JLE
@YGT0153
D; JGT
(YLE0153)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH153 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE153 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE153
0;JMP
(YGT0153)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH153 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE153 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE153
0; JMP
//D HOLDS X
(BOTH153)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE153
D; JLT
@NOTTRUE153
0;JMP
(NOTTRUE153)
@SP
A = M -1
M = 0
@ENDTRUE153
0; JMP
(TRUE153)
@SP
A = M - 1
M = -1
(ENDTRUE153)
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
@YLE0155
D; JLE
@YGT0155
D; JGT
(YLE0155)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH155 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE155 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE155
0;JMP
(YGT0155)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH155 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE155 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE155
0; JMP
//D HOLDS X
(BOTH155)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE155
D; JLT
@NOTTRUE155
0;JMP
(NOTTRUE155)
@SP
A = M -1
M = 0
@ENDTRUE155
0; JMP
(TRUE155)
@SP
A = M - 1
M = -1
(ENDTRUE155)
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
@YLE0156
D; JLE
@YGT0156
D; JGT
(YLE0156)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH156 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE156 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE156
0;JMP
(YGT0156)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH156 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE156 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE156
0; JMP
//D HOLDS X
(BOTH156)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE156
D; JGT
@NOTTRUE156
0;JMP
(NOTTRUE156)
@SP
A = M -1
M = 0
@ENDTRUE156
0; JMP
(TRUE156)
@SP
A = M - 1
M = -1
(ENDTRUE156)
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
@YLE0158
D; JLE
@YGT0158
D; JGT
(YLE0158)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH158 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE158 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE158
0;JMP
(YGT0158)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH158 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE158 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE158
0; JMP
//D HOLDS X
(BOTH158)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE158
D; JGT
@NOTTRUE158
0;JMP
(NOTTRUE158)
@SP
A = M -1
M = 0
@ENDTRUE158
0; JMP
(TRUE158)
@SP
A = M - 1
M = -1
(ENDTRUE158)
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
@YLE0159
D; JLE
@YGT0159
D; JGT
(YLE0159)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH159 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE159 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE159
0;JMP
(YGT0159)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH159 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE159 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE159
0; JMP
//D HOLDS X
(BOTH159)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE159
D; JEQ
@NOTTRUE159
0;JMP
(NOTTRUE159)
@SP
A = M -1
M = 0
@ENDTRUE159
0; JMP
(TRUE159)
@SP
A = M - 1
M = -1
(ENDTRUE159)
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
@YLE0160
D; JLE
@YGT0160
D; JGT
(YLE0160)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH160 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE160 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE160
0;JMP
(YGT0160)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH160 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE160 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE160
0; JMP
//D HOLDS X
(BOTH160)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE160
D; JEQ
@NOTTRUE160
0;JMP
(NOTTRUE160)
@SP
A = M -1
M = 0
@ENDTRUE160
0; JMP
(TRUE160)
@SP
A = M - 1
M = -1
(ENDTRUE160)
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
@YLE0161
D; JLE
@YGT0161
D; JGT
(YLE0161)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH161 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE161 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE161
0;JMP
(YGT0161)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH161 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE161 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE161
0; JMP
//D HOLDS X
(BOTH161)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE161
D; JEQ
@NOTTRUE161
0;JMP
(NOTTRUE161)
@SP
A = M -1
M = 0
@ENDTRUE161
0; JMP
(TRUE161)
@SP
A = M - 1
M = -1
(ENDTRUE161)
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
(RET_ADDR161)
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
// call Output.createShiftedMap 0
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
(RET_ADDR163)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR164)
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
(RET_ADDR166)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR167)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR169)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR170)
// pop temp 0
@0
D = A
@5
D = A + D
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
@RET_ADDR172
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR172)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR173)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR174)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR175)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR176)
// pop temp 0
@0
D = A
@5
D = A + D
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
@RET_ADDR178
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR178)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR179)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR180)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR182)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR183)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR185)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR186)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR188)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR189)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR191)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR192)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR194)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR195)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR197)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR198)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR200)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR201)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR203)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR204)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR206)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR207)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR209)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR210)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR212)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR213)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR215)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR216)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR218)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR219)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR221)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR222)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR223)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR224)
// pop temp 0
@0
D = A
@5
D = A + D
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
@RET_ADDR226
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR226)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR227)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR228)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR229)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR230)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR232)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR233)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR234)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR235)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR237)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR238)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR239)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR240)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR242)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR243)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR244)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR245)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR247)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR248)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR249)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR250)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR252)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR253)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR254)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR255)
// pop temp 0
@0
D = A
@5
D = A + D
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
@RET_ADDR257
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR257)
// pop temp 0
@0
D = A
@5
D = A + D
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
@RET_ADDR258
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR258)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR259)
// pop temp 0
@0
D = A
@5
D = A + D
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
@RET_ADDR261
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR261)
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
@RET_ADDR262
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR262)
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
@YLE0264
D; JLE
@YGT0264
D; JGT
(YLE0264)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH264 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE264 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE264
0;JMP
(YGT0264)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH264 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE264 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE264
0; JMP
//D HOLDS X
(BOTH264)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE264
D; JLT
@NOTTRUE264
0;JMP
(NOTTRUE264)
@SP
A = M -1
M = 0
@ENDTRUE264
0; JMP
(TRUE264)
@SP
A = M - 1
M = -1
(ENDTRUE264)
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
@RET_ADDR264
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR264)
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
@YLE0266
D; JLE
@YGT0266
D; JGT
(YLE0266)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH266 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE266 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE266
0;JMP
(YGT0266)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH266 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE266 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE266
0; JMP
//D HOLDS X
(BOTH266)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE266
D; JLT
@NOTTRUE266
0;JMP
(NOTTRUE266)
@SP
A = M -1
M = 0
@ENDTRUE266
0; JMP
(TRUE266)
@SP
A = M - 1
M = -1
(ENDTRUE266)
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
@YLE0268
D; JLE
@YGT0268
D; JGT
(YLE0268)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH268 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE268 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE268
0;JMP
(YGT0268)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH268 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE268 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE268
0; JMP
//D HOLDS X
(BOTH268)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE268
D; JEQ
@NOTTRUE268
0;JMP
(NOTTRUE268)
@SP
A = M -1
M = 0
@ENDTRUE268
0; JMP
(TRUE268)
@SP
A = M - 1
M = -1
(ENDTRUE268)
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
@YLE0269
D; JLE
@YGT0269
D; JGT
(YLE0269)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH269 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE269 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE269
0;JMP
(YGT0269)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH269 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE269 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE269
0; JMP
//D HOLDS X
(BOTH269)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE269
D; JLT
@NOTTRUE269
0;JMP
(NOTTRUE269)
@SP
A = M -1
M = 0
@ENDTRUE269
0; JMP
(TRUE269)
@SP
A = M - 1
M = -1
(ENDTRUE269)
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
@YLE0270
D; JLE
@YGT0270
D; JGT
(YLE0270)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH270 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE270 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE270
0;JMP
(YGT0270)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH270 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE270 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE270
0; JMP
//D HOLDS X
(BOTH270)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE270
D; JGT
@NOTTRUE270
0;JMP
(NOTTRUE270)
@SP
A = M -1
M = 0
@ENDTRUE270
0; JMP
(TRUE270)
@SP
A = M - 1
M = -1
(ENDTRUE270)
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
(RET_ADDR270)
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
@YLE0272
D; JLE
@YGT0272
D; JGT
(YLE0272)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH272 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE272 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE272
0;JMP
(YGT0272)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH272 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE272 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE272
0; JMP
//D HOLDS X
(BOTH272)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE272
D; JLT
@NOTTRUE272
0;JMP
(NOTTRUE272)
@SP
A = M -1
M = 0
@ENDTRUE272
0; JMP
(TRUE272)
@SP
A = M - 1
M = -1
(ENDTRUE272)
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
@YLE0273
D; JLE
@YGT0273
D; JGT
(YLE0273)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH273 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE273 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE273
0;JMP
(YGT0273)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH273 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE273 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE273
0; JMP
//D HOLDS X
(BOTH273)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE273
D; JLT
@NOTTRUE273
0;JMP
(NOTTRUE273)
@SP
A = M -1
M = 0
@ENDTRUE273
0; JMP
(TRUE273)
@SP
A = M - 1
M = -1
(ENDTRUE273)
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
D; JGT
@NOTTRUE274
0;JMP
(YGT0274)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH274 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE274 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE274
0; JMP
//D HOLDS X
(BOTH274)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE274
D; JGT
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
D; JLT
@NOTTRUE275
0;JMP
(YGT0275)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH275 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE275 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE275
0; JMP
//D HOLDS X
(BOTH275)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE275
D; JLT
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
@YLE0276
D; JLE
@YGT0276
D; JGT
(YLE0276)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH276 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE276 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE276
0;JMP
(YGT0276)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH276 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE276 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE276
0; JMP
//D HOLDS X
(BOTH276)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE276
D; JGT
@NOTTRUE276
0;JMP
(NOTTRUE276)
@SP
A = M -1
M = 0
@ENDTRUE276
0; JMP
(TRUE276)
@SP
A = M - 1
M = -1
(ENDTRUE276)
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
(RET_ADDR276)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR277)
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
(RET_ADDR278)
// add
@SP
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
(RET_ADDR279)
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0281
D; JLE
@YGT0281
D; JGT
(YLE0281)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH281 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE281 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE281
0;JMP
(YGT0281)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH281 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE281 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE281
0; JMP
//D HOLDS X
(BOTH281)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE281
D; JEQ
@NOTTRUE281
0;JMP
(NOTTRUE281)
@SP
A = M -1
M = 0
@ENDTRUE281
0; JMP
(TRUE281)
@SP
A = M - 1
M = -1
(ENDTRUE281)
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
(RET_ADDR281)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR282)
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0284
D; JLE
@YGT0284
D; JGT
(YLE0284)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH284 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE284 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE284
0;JMP
(YGT0284)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH284 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE284 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE284
0; JMP
//D HOLDS X
(BOTH284)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE284
D; JEQ
@NOTTRUE284
0;JMP
(NOTTRUE284)
@SP
A = M -1
M = 0
@ENDTRUE284
0; JMP
(TRUE284)
@SP
A = M - 1
M = -1
(ENDTRUE284)
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
(RET_ADDR284)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR285)
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0287
D; JLE
@YGT0287
D; JGT
(YLE0287)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH287 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE287 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE287
0;JMP
(YGT0287)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH287 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE287 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE287
0; JMP
//D HOLDS X
(BOTH287)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE287
D; JEQ
@NOTTRUE287
0;JMP
(NOTTRUE287)
@SP
A = M -1
M = 0
@ENDTRUE287
0; JMP
(TRUE287)
@SP
A = M - 1
M = -1
(ENDTRUE287)
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
(RET_ADDR287)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR288)
// pop temp 0
@0
D = A
@5
D = A + D
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
@YLE0290
D; JLE
@YGT0290
D; JGT
(YLE0290)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH290 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE290 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE290
0;JMP
(YGT0290)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH290 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE290 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE290
0; JMP
//D HOLDS X
(BOTH290)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE290
D; JEQ
@NOTTRUE290
0;JMP
(NOTTRUE290)
@SP
A = M -1
M = 0
@ENDTRUE290
0; JMP
(TRUE290)
@SP
A = M - 1
M = -1
(ENDTRUE290)
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
(RET_ADDR290)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR291)
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
@YLE0293
D; JLE
@YGT0293
D; JGT
(YLE0293)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH293 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE293 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE293
0;JMP
(YGT0293)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH293 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE293 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE293
0; JMP
//D HOLDS X
(BOTH293)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE293
D; JLT
@NOTTRUE293
0;JMP
(NOTTRUE293)
@SP
A = M -1
M = 0
@ENDTRUE293
0; JMP
(TRUE293)
@SP
A = M - 1
M = -1
(ENDTRUE293)
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
@f_String.charAt
0; JMP
(RET_ADDR293)
// call Output.printChar 1
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
(RET_ADDR294)
// pop temp 0
@0
D = A
@5
D = A + D
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
@f_String.setInt
0; JMP
(RET_ADDR295)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR296)
// pop temp 0
@0
D = A
@5
D = A + D
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
@YLE0298
D; JLE
@YGT0298
D; JGT
(YLE0298)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH298 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE298 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE298
0;JMP
(YGT0298)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH298 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE298 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE298
0; JMP
//D HOLDS X
(BOTH298)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE298
D; JEQ
@NOTTRUE298
0;JMP
(NOTTRUE298)
@SP
A = M -1
M = 0
@ENDTRUE298
0; JMP
(TRUE298)
@SP
A = M - 1
M = -1
(ENDTRUE298)
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
@YLE0299
D; JLE
@YGT0299
D; JGT
(YLE0299)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH299 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE299 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE299
0;JMP
(YGT0299)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH299 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE299 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE299
0; JMP
//D HOLDS X
(BOTH299)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE299
D; JGT
@NOTTRUE299
0;JMP
(NOTTRUE299)
@SP
A = M -1
M = 0
@ENDTRUE299
0; JMP
(TRUE299)
@SP
A = M - 1
M = -1
(ENDTRUE299)
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
@YLE0300
D; JLE
@YGT0300
D; JGT
(YLE0300)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH300 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE300 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE300
0;JMP
(YGT0300)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH300 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE300 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE300
0; JMP
//D HOLDS X
(BOTH300)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE300
D; JEQ
@NOTTRUE300
0;JMP
(NOTTRUE300)
@SP
A = M -1
M = 0
@ENDTRUE300
0; JMP
(TRUE300)
@SP
A = M - 1
M = -1
(ENDTRUE300)
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
(RET_ADDR300)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function PongGame.new 0
(f_PongGame.new)
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
(RET_ADDR301)
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
// call Screen.clearScreen 0
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
(RET_ADDR302)
// pop temp 0
@0
D = A
@5
D = A + D
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
// push constant 230
@230
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 229
@229
D = A
@SP
M = M + 1
A = M - 1
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
// push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Bat.new 4
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Bat.new
0; JMP
(RET_ADDR303)
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
// push constant 253
@253
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 222
@222
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 229
@229
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Ball.new 6
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
@11
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Ball.new
0; JMP
(RET_ADDR304)
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
// push constant 400
@400
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Ball.setDestination 3
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Ball.setDestination
0; JMP
(RET_ADDR305)
// pop temp 0
@0
D = A
@5
D = A + D
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
// push constant 238
@238
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 240
@240
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Screen.drawRectangle 4
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
(RET_ADDR306)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// push constant 22
@22
D = A
@SP
M = M + 1
A = M - 1
M = D
// push constant 0
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Output.moveCursor 2
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
@f_Output.moveCursor
0; JMP
(RET_ADDR307)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR308)
// push constant 83
@83
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
// push constant 99
@99
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
// push constant 111
@111
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
// push constant 114
@114
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
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR313)
// push constant 58
@58
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
// push constant 32
@32
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
// push constant 48
@48
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
// call Output.printString 1
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
(RET_ADDR317)
// pop temp 0
@0
D = A
@5
D = A + D
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
// push constant 0
@0
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
// function PongGame.dispose 0
(f_PongGame.dispose)
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
// call Bat.dispose 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Bat.dispose
0; JMP
(RET_ADDR318)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR319)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function PongGame.newInstance 0
(f_PongGame.newInstance)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// call PongGame.new 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_PongGame.new
0; JMP
(RET_ADDR320)
// pop static 0
@PongGame.0
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
// function PongGame.checkClearBoard 0
(f_PongGame.checkClearBoard)
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
// push constant 5
@5
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
// function PongGame.checkBoard 2
(f_PongGame.checkBoard)
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// call PongGame.checkClearBoard 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_PongGame.checkClearBoard
0; JMP
(RET_ADDR321)
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
// function PongGame.getInstance 0
(f_PongGame.getInstance)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push static 0
@PongGame.0
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
// function PongGame.run 1
(f_PongGame.run)
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
(PongGame.run$WHILE_EXP0)
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
@PongGame.run$WHILE_END0
D; JNE
(PongGame.run$WHILE_EXP1)
// push local 0
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0323
D; JLE
@YGT0323
D; JGT
(YLE0323)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH323 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE323 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE323
0;JMP
(YGT0323)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH323 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE323 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE323
0; JMP
//D HOLDS X
(BOTH323)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE323
D; JEQ
@NOTTRUE323
0;JMP
(NOTTRUE323)
@SP
A = M -1
M = 0
@ENDTRUE323
0; JMP
(TRUE323)
@SP
A = M - 1
M = -1
(ENDTRUE323)
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@PongGame.run$WHILE_END1
D; JNE
// call Keyboard.keyPressed 0
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
(RET_ADDR323)
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
// call Bat.move 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Bat.move
0; JMP
(RET_ADDR324)
// pop temp 0
@0
D = A
@5
D = A + D
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
// call PongGame.moveBall 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_PongGame.moveBall
0; JMP
(RET_ADDR325)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@PongGame.run$WHILE_EXP1
0; JMP
(PongGame.run$WHILE_END1)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 130
@130
D = A
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0327
D; JLE
@YGT0327
D; JGT
(YLE0327)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH327 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE327 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE327
0;JMP
(YGT0327)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH327 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE327 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE327
0; JMP
//D HOLDS X
(BOTH327)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE327
D; JEQ
@NOTTRUE327
0;JMP
(NOTTRUE327)
@SP
A = M -1
M = 0
@ENDTRUE327
0; JMP
(TRUE327)
@SP
A = M - 1
M = -1
(ENDTRUE327)
@SP
AM = M - 1
D = M
@PongGame.run$IF_TRUE0
D; JNE
@PongGame.run$IF_FALSE0
0; JMP
(PongGame.run$IF_TRUE0)
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
// call Bat.setDirection 2
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
@f_Bat.setDirection
0; JMP
(RET_ADDR327)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@PongGame.run$IF_END0
0; JMP
(PongGame.run$IF_FALSE0)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 132
@132
D = A
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0329
D; JLE
@YGT0329
D; JGT
(YLE0329)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH329 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE329 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE329
0;JMP
(YGT0329)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH329 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE329 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE329
0; JMP
//D HOLDS X
(BOTH329)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE329
D; JEQ
@NOTTRUE329
0;JMP
(NOTTRUE329)
@SP
A = M -1
M = 0
@ENDTRUE329
0; JMP
(TRUE329)
@SP
A = M - 1
M = -1
(ENDTRUE329)
@SP
AM = M - 1
D = M
@PongGame.run$IF_TRUE1
D; JNE
@PongGame.run$IF_FALSE1
0; JMP
(PongGame.run$IF_TRUE1)
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
// push constant 2
@2
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Bat.setDirection 2
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
@f_Bat.setDirection
0; JMP
(RET_ADDR329)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@PongGame.run$IF_END1
0; JMP
(PongGame.run$IF_FALSE1)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 140
@140
D = A
@SP
M = M + 1
A = M - 1
M = D
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0331
D; JLE
@YGT0331
D; JGT
(YLE0331)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH331 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE331 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE331
0;JMP
(YGT0331)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH331 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE331 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE331
0; JMP
//D HOLDS X
(BOTH331)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE331
D; JEQ
@NOTTRUE331
0;JMP
(NOTTRUE331)
@SP
A = M -1
M = 0
@ENDTRUE331
0; JMP
(TRUE331)
@SP
A = M - 1
M = -1
(ENDTRUE331)
@SP
AM = M - 1
D = M
@PongGame.run$IF_TRUE2
D; JNE
@PongGame.run$IF_FALSE2
0; JMP
(PongGame.run$IF_TRUE2)
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
(PongGame.run$IF_FALSE2)
(PongGame.run$IF_END1)
(PongGame.run$IF_END0)
(PongGame.run$WHILE_EXP2)
// push local 0
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0332
D; JLE
@YGT0332
D; JGT
(YLE0332)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH332 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE332 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE332
0;JMP
(YGT0332)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH332 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE332 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE332
0; JMP
//D HOLDS X
(BOTH332)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE332
D; JEQ
@NOTTRUE332
0;JMP
(NOTTRUE332)
@SP
A = M -1
M = 0
@ENDTRUE332
0; JMP
(TRUE332)
@SP
A = M - 1
M = -1
(ENDTRUE332)
// not
@SP
A = M - 1
M = ! M
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@PongGame.run$WHILE_END2
D; JNE
// call Keyboard.keyPressed 0
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
(RET_ADDR332)
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
// call Bat.move 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Bat.move
0; JMP
(RET_ADDR333)
// pop temp 0
@0
D = A
@5
D = A + D
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
// call PongGame.moveBall 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_PongGame.moveBall
0; JMP
(RET_ADDR334)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@PongGame.run$WHILE_EXP2
0; JMP
(PongGame.run$WHILE_END2)
@PongGame.run$WHILE_EXP0
0; JMP
(PongGame.run$WHILE_END0)
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
@SP
AM = M - 1
D = M
@PongGame.run$IF_TRUE3
D; JNE
@PongGame.run$IF_FALSE3
0; JMP
(PongGame.run$IF_TRUE3)
// push constant 10
@10
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
// call Output.moveCursor 2
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
(RET_ADDR335)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR336)
// push constant 71
@71
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR337)
// push constant 97
@97
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@f_String.appendChar
0; JMP
(RET_ADDR338)
// push constant 109
@109
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
// get ip
@RET_ADDR339
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR339)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR340)
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR341)
// push constant 79
@79
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR342)
// push constant 118
@118
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR343)
// push constant 101
@101
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR344)
// push constant 114
@114
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR345)
// call Output.printString 1
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
@f_Output.printString
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
(PongGame.run$IF_FALSE3)
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
// function PongGame.moveBall 5
(f_PongGame.moveBall)
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
// call Ball.move 1
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
@f_Ball.move
0; JMP
(RET_ADDR347)
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
@YLE0349
D; JLE
@YGT0349
D; JGT
(YLE0349)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH349 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE349 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE349
0;JMP
(YGT0349)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH349 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE349 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE349
0; JMP
//D HOLDS X
(BOTH349)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE349
D; JGT
@NOTTRUE349
0;JMP
(NOTTRUE349)
@SP
A = M -1
M = 0
@ENDTRUE349
0; JMP
(TRUE349)
@SP
A = M - 1
M = -1
(ENDTRUE349)
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0350
D; JLE
@YGT0350
D; JGT
(YLE0350)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH350 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE350 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE350
0;JMP
(YGT0350)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH350 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE350 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE350
0; JMP
//D HOLDS X
(BOTH350)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE350
D; JEQ
@NOTTRUE350
0;JMP
(NOTTRUE350)
@SP
A = M -1
M = 0
@ENDTRUE350
0; JMP
(TRUE350)
@SP
A = M - 1
M = -1
(ENDTRUE350)
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
@PongGame.moveBall$IF_TRUE0
D; JNE
@PongGame.moveBall$IF_FALSE0
0; JMP
(PongGame.moveBall$IF_TRUE0)
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
// push constant 7
@7
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
// call Bat.getLeft 1
// get ip
@RET_ADDR350
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_Bat.getLeft
0; JMP
(RET_ADDR350)
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
// call Bat.getRight 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Bat.getRight
0; JMP
(RET_ADDR351)
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
// call Ball.getLeft 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Ball.getLeft
0; JMP
(RET_ADDR352)
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
// call Ball.getRight 1
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
@f_Ball.getRight
0; JMP
(RET_ADDR353)
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
@YLE0355
D; JLE
@YGT0355
D; JGT
(YLE0355)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH355 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE355 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE355
0;JMP
(YGT0355)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH355 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE355 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE355
0; JMP
//D HOLDS X
(BOTH355)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE355
D; JEQ
@NOTTRUE355
0;JMP
(NOTTRUE355)
@SP
A = M -1
M = 0
@ENDTRUE355
0; JMP
(TRUE355)
@SP
A = M - 1
M = -1
(ENDTRUE355)
@SP
AM = M - 1
D = M
@PongGame.moveBall$IF_TRUE1
D; JNE
@PongGame.moveBall$IF_FALSE1
0; JMP
(PongGame.moveBall$IF_TRUE1)
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0356
D; JLE
@YGT0356
D; JGT
(YLE0356)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH356 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE356 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE356
0;JMP
(YGT0356)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH356 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE356 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE356
0; JMP
//D HOLDS X
(BOTH356)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE356
D; JGT
@NOTTRUE356
0;JMP
(NOTTRUE356)
@SP
A = M -1
M = 0
@ENDTRUE356
0; JMP
(TRUE356)
@SP
A = M - 1
M = -1
(ENDTRUE356)
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0357
D; JLE
@YGT0357
D; JGT
(YLE0357)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH357 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE357 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE357
0;JMP
(YGT0357)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH357 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE357 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE357
0; JMP
//D HOLDS X
(BOTH357)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE357
D; JLT
@NOTTRUE357
0;JMP
(NOTTRUE357)
@SP
A = M -1
M = 0
@ENDTRUE357
0; JMP
(TRUE357)
@SP
A = M - 1
M = -1
(ENDTRUE357)
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@PongGame.moveBall$IF_TRUE2
D; JNE
@PongGame.moveBall$IF_FALSE2
0; JMP
(PongGame.moveBall$IF_TRUE2)
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
// lt
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
D; JLT
@NOTTRUE358
0;JMP
(YGT0358)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH358 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE358 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE358
0; JMP
//D HOLDS X
(BOTH358)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE358
D; JLT
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
@PongGame.moveBall$IF_TRUE3
D; JNE
@PongGame.moveBall$IF_FALSE3
0; JMP
(PongGame.moveBall$IF_TRUE3)
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
@PongGame.moveBall$IF_END3
0; JMP
(PongGame.moveBall$IF_FALSE3)
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
// push constant 10
@10
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0359
D; JLE
@YGT0359
D; JGT
(YLE0359)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH359 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE359 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE359
0;JMP
(YGT0359)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH359 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE359 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE359
0; JMP
//D HOLDS X
(BOTH359)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE359
D; JGT
@NOTTRUE359
0;JMP
(NOTTRUE359)
@SP
A = M -1
M = 0
@ENDTRUE359
0; JMP
(TRUE359)
@SP
A = M - 1
M = -1
(ENDTRUE359)
@SP
AM = M - 1
D = M
@PongGame.moveBall$IF_TRUE4
D; JNE
@PongGame.moveBall$IF_FALSE4
0; JMP
(PongGame.moveBall$IF_TRUE4)
// push constant 1
@1
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
(PongGame.moveBall$IF_FALSE4)
(PongGame.moveBall$IF_END3)
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
// call Bat.setWidth 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Bat.setWidth
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
// push constant 22
@22
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
// call Output.moveCursor 2
// get ip
@RET_ADDR360
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
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
(RET_ADDR360)
// pop temp 0
@0
D = A
@5
D = A + D
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
// call Output.printInt 1
// get ip
@RET_ADDR361
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_Output.printInt
0; JMP
(RET_ADDR361)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(PongGame.moveBall$IF_FALSE2)
(PongGame.moveBall$IF_FALSE1)
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
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// call Ball.bounce 2
// get ip
@RET_ADDR362
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
D = M
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Ball.bounce
0; JMP
(RET_ADDR362)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(PongGame.moveBall$IF_FALSE0)
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
// function Screen.init 1
(f_Screen.init)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
@1
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
// pop static 1
@Screen.1
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
@Screen.2
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
// push constant 17
@17
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Array.new 1
// get ip
@RET_ADDR363
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR363)
// pop static 0
@Screen.0
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
@Screen.0
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
(Screen.init$WHILE_EXP0)
// push local 0
@0
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
@YLE0365
D; JLE
@YGT0365
D; JGT
(YLE0365)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH365 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE365 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE365
0;JMP
(YGT0365)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH365 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE365 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE365
0; JMP
//D HOLDS X
(BOTH365)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE365
D; JLT
@NOTTRUE365
0;JMP
(NOTTRUE365)
@SP
A = M -1
M = 0
@ENDTRUE365
0; JMP
(TRUE365)
@SP
A = M - 1
M = -1
(ENDTRUE365)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Screen.init$WHILE_END0
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
@Screen.0
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
@Screen.0
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
@Screen.0
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
@Screen.init$WHILE_EXP0
0; JMP
(Screen.init$WHILE_END0)
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
// function Screen.clearScreen 1
(f_Screen.clearScreen)
// write 0 for every local var
@LCL
A = M
M = 0
A = A + 1
@1
D = A
@SP
M = M + D
(Screen.clearScreen$WHILE_EXP0)
// push local 0
@0
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 8192
@8192
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0366
D; JLE
@YGT0366
D; JGT
(YLE0366)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH366 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE366 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE366
0;JMP
(YGT0366)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH366 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE366 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE366
0; JMP
//D HOLDS X
(BOTH366)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE366
D; JLT
@NOTTRUE366
0;JMP
(NOTTRUE366)
@SP
A = M -1
M = 0
@ENDTRUE366
0; JMP
(TRUE366)
@SP
A = M - 1
M = -1
(ENDTRUE366)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Screen.clearScreen$WHILE_END0
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
@Screen.1
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
@Screen.clearScreen$WHILE_EXP0
0; JMP
(Screen.clearScreen$WHILE_END0)
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
// function Screen.updateLocation 0
(f_Screen.updateLocation)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push static 2
@Screen.2
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Screen.updateLocation$IF_TRUE0
D; JNE
@Screen.updateLocation$IF_FALSE0
0; JMP
(Screen.updateLocation$IF_TRUE0)
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
// push static 1
@Screen.1
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
// push static 1
@Screen.1
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
@Screen.updateLocation$IF_END0
0; JMP
(Screen.updateLocation$IF_FALSE0)
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
// push static 1
@Screen.1
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
// push static 1
@Screen.1
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
// pop temp 0
@0
D = A
@5
D = A + D
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
(Screen.updateLocation$IF_END0)
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
// function Screen.setColor 0
(f_Screen.setColor)
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
// pop static 2
@Screen.2
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
// function Screen.drawPixel 3
(f_Screen.drawPixel)
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
@YLE0367
D; JLE
@YGT0367
D; JGT
(YLE0367)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH367 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE367 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE367
0;JMP
(YGT0367)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH367 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE367 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE367
0; JMP
//D HOLDS X
(BOTH367)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE367
D; JLT
@NOTTRUE367
0;JMP
(NOTTRUE367)
@SP
A = M -1
M = 0
@ENDTRUE367
0; JMP
(TRUE367)
@SP
A = M - 1
M = -1
(ENDTRUE367)
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
// push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0368
D; JLE
@YGT0368
D; JGT
(YLE0368)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH368 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE368 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE368
0;JMP
(YGT0368)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH368 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE368 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE368
0; JMP
//D HOLDS X
(BOTH368)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE368
D; JGT
@NOTTRUE368
0;JMP
(NOTTRUE368)
@SP
A = M -1
M = 0
@ENDTRUE368
0; JMP
(TRUE368)
@SP
A = M - 1
M = -1
(ENDTRUE368)
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
@YLE0369
D; JLE
@YGT0369
D; JGT
(YLE0369)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH369 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE369 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE369
0;JMP
(YGT0369)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH369 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE369 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE369
0; JMP
//D HOLDS X
(BOTH369)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE369
D; JLT
@NOTTRUE369
0;JMP
(NOTTRUE369)
@SP
A = M -1
M = 0
@ENDTRUE369
0; JMP
(TRUE369)
@SP
A = M - 1
M = -1
(ENDTRUE369)
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
// push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
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
D; JGT
@NOTTRUE370
0;JMP
(YGT0370)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH370 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE370 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE370
0; JMP
//D HOLDS X
(BOTH370)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE370
D; JGT
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
@Screen.drawPixel$IF_TRUE0
D; JNE
@Screen.drawPixel$IF_FALSE0
0; JMP
(Screen.drawPixel$IF_TRUE0)
// push constant 7
@7
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR370
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR370)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Screen.drawPixel$IF_FALSE0)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.divide 2
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
@f_Math.divide
0; JMP
(RET_ADDR371)
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
// push local 0
@0
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
// call Math.multiply 2
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
(RET_ADDR372)
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
(RET_ADDR373)
// push local 0
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
@Screen.0
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
// call Screen.updateLocation 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.updateLocation
0; JMP
(RET_ADDR374)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function Screen.drawConditional 0
(f_Screen.drawConditional)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
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
@SP
AM = M - 1
D = M
@Screen.drawConditional$IF_TRUE0
D; JNE
@Screen.drawConditional$IF_FALSE0
0; JMP
(Screen.drawConditional$IF_TRUE0)
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
// call Screen.drawPixel 2
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
@f_Screen.drawPixel
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
@Screen.drawConditional$IF_END0
0; JMP
(Screen.drawConditional$IF_FALSE0)
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
// call Screen.drawPixel 2
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
(RET_ADDR376)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Screen.drawConditional$IF_END0)
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
// function Screen.drawLine 11
(f_Screen.drawLine)
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
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
@11
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
@YLE0378
D; JLE
@YGT0378
D; JGT
(YLE0378)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH378 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE378 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE378
0;JMP
(YGT0378)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH378 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE378 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE378
0; JMP
//D HOLDS X
(BOTH378)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE378
D; JLT
@NOTTRUE378
0;JMP
(NOTTRUE378)
@SP
A = M -1
M = 0
@ENDTRUE378
0; JMP
(TRUE378)
@SP
A = M - 1
M = -1
(ENDTRUE378)
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
// push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0379
D; JLE
@YGT0379
D; JGT
(YLE0379)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH379 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE379 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE379
0;JMP
(YGT0379)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH379 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE379 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE379
0; JMP
//D HOLDS X
(BOTH379)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE379
D; JGT
@NOTTRUE379
0;JMP
(NOTTRUE379)
@SP
A = M -1
M = 0
@ENDTRUE379
0; JMP
(TRUE379)
@SP
A = M - 1
M = -1
(ENDTRUE379)
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
@YLE0380
D; JLE
@YGT0380
D; JGT
(YLE0380)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH380 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE380 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE380
0;JMP
(YGT0380)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH380 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE380 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE380
0; JMP
//D HOLDS X
(BOTH380)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE380
D; JLT
@NOTTRUE380
0;JMP
(NOTTRUE380)
@SP
A = M -1
M = 0
@ENDTRUE380
0; JMP
(TRUE380)
@SP
A = M - 1
M = -1
(ENDTRUE380)
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
// push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0381
D; JLE
@YGT0381
D; JGT
(YLE0381)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH381 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE381 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE381
0;JMP
(YGT0381)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH381 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE381 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE381
0; JMP
//D HOLDS X
(BOTH381)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE381
D; JGT
@NOTTRUE381
0;JMP
(NOTTRUE381)
@SP
A = M -1
M = 0
@ENDTRUE381
0; JMP
(TRUE381)
@SP
A = M - 1
M = -1
(ENDTRUE381)
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
@Screen.drawLine$IF_TRUE0
D; JNE
@Screen.drawLine$IF_FALSE0
0; JMP
(Screen.drawLine$IF_TRUE0)
// push constant 8
@8
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
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
(RET_ADDR381)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Screen.drawLine$IF_FALSE0)
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
// call Math.abs 1
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
(RET_ADDR382)
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
// call Math.abs 1
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
(RET_ADDR383)
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
@YLE0385
D; JLE
@YGT0385
D; JGT
(YLE0385)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH385 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE385 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE385
0;JMP
(YGT0385)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH385 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE385 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE385
0; JMP
//D HOLDS X
(BOTH385)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE385
D; JLT
@NOTTRUE385
0;JMP
(NOTTRUE385)
@SP
A = M -1
M = 0
@ENDTRUE385
0; JMP
(TRUE385)
@SP
A = M - 1
M = -1
(ENDTRUE385)
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
@YLE0386
D; JLE
@YGT0386
D; JGT
(YLE0386)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH386 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE386 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE386
0;JMP
(YGT0386)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH386 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE386 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE386
0; JMP
//D HOLDS X
(BOTH386)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE386
D; JLT
@NOTTRUE386
0;JMP
(NOTTRUE386)
@SP
A = M -1
M = 0
@ENDTRUE386
0; JMP
(TRUE386)
@SP
A = M - 1
M = -1
(ENDTRUE386)
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
// not
@SP
A = M - 1
M = ! M
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
@YLE0387
D; JLE
@YGT0387
D; JGT
(YLE0387)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH387 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE387 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE387
0;JMP
(YGT0387)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH387 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE387 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE387
0; JMP
//D HOLDS X
(BOTH387)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE387
D; JLT
@NOTTRUE387
0;JMP
(NOTTRUE387)
@SP
A = M -1
M = 0
@ENDTRUE387
0; JMP
(TRUE387)
@SP
A = M - 1
M = -1
(ENDTRUE387)
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
@SP
AM = M - 1
D = M
@Screen.drawLine$IF_TRUE1
D; JNE
@Screen.drawLine$IF_FALSE1
0; JMP
(Screen.drawLine$IF_TRUE1)
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
// pop argument 2
@2
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
// pop argument 3
@3
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
(Screen.drawLine$IF_FALSE1)
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
@SP
AM = M - 1
D = M
@Screen.drawLine$IF_TRUE2
D; JNE
@Screen.drawLine$IF_FALSE2
0; JMP
(Screen.drawLine$IF_TRUE2)
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
// pop local 8
@8
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0388
D; JLE
@YGT0388
D; JGT
(YLE0388)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH388 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE388 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE388
0;JMP
(YGT0388)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH388 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE388 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE388
0; JMP
//D HOLDS X
(BOTH388)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE388
D; JGT
@NOTTRUE388
0;JMP
(NOTTRUE388)
@SP
A = M -1
M = 0
@ENDTRUE388
0; JMP
(TRUE388)
@SP
A = M - 1
M = -1
(ENDTRUE388)
// pop local 7
@7
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
@Screen.drawLine$IF_END2
0; JMP
(Screen.drawLine$IF_FALSE2)
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
// pop local 8
@8
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0389
D; JLE
@YGT0389
D; JGT
(YLE0389)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH389 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE389 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE389
0;JMP
(YGT0389)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH389 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE389 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE389
0; JMP
//D HOLDS X
(BOTH389)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE389
D; JGT
@NOTTRUE389
0;JMP
(NOTTRUE389)
@SP
A = M -1
M = 0
@ENDTRUE389
0; JMP
(TRUE389)
@SP
A = M - 1
M = -1
(ENDTRUE389)
// pop local 7
@7
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
(Screen.drawLine$IF_END2)
// push constant 2
@2
D = A
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
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR389)
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
// push constant 2
@2
D = A
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
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR390)
// pop local 9
@9
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
// push constant 2
@2
D = A
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
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR391)
// pop local 10
@10
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
// call Screen.drawConditional 3
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawConditional
0; JMP
(RET_ADDR392)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Screen.drawLine$WHILE_EXP0)
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
// push local 8
@8
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
@YLE0394
D; JLE
@YGT0394
D; JGT
(YLE0394)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH394 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE394 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE394
0;JMP
(YGT0394)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH394 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE394 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE394
0; JMP
//D HOLDS X
(BOTH394)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE394
D; JLT
@NOTTRUE394
0;JMP
(NOTTRUE394)
@SP
A = M -1
M = 0
@ENDTRUE394
0; JMP
(TRUE394)
@SP
A = M - 1
M = -1
(ENDTRUE394)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Screen.drawLine$WHILE_END0
D; JNE
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
@YLE0395
D; JLE
@YGT0395
D; JGT
(YLE0395)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH395 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE395 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE395
0;JMP
(YGT0395)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH395 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE395 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE395
0; JMP
//D HOLDS X
(BOTH395)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE395
D; JLT
@NOTTRUE395
0;JMP
(NOTTRUE395)
@SP
A = M -1
M = 0
@ENDTRUE395
0; JMP
(TRUE395)
@SP
A = M - 1
M = -1
(ENDTRUE395)
@SP
AM = M - 1
D = M
@Screen.drawLine$IF_TRUE3
D; JNE
@Screen.drawLine$IF_FALSE3
0; JMP
(Screen.drawLine$IF_TRUE3)
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
// push local 9
@9
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
@Screen.drawLine$IF_END3
0; JMP
(Screen.drawLine$IF_FALSE3)
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
// push local 10
@10
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
// push local 7
@7
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
@Screen.drawLine$IF_TRUE4
D; JNE
@Screen.drawLine$IF_FALSE4
0; JMP
(Screen.drawLine$IF_TRUE4)
// push local 0
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
@Screen.drawLine$IF_END4
0; JMP
(Screen.drawLine$IF_FALSE4)
// push local 0
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
(Screen.drawLine$IF_END4)
(Screen.drawLine$IF_END3)
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
// call Screen.drawConditional 3
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawConditional
0; JMP
(RET_ADDR395)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Screen.drawLine$WHILE_EXP0
0; JMP
(Screen.drawLine$WHILE_END0)
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
// function Screen.drawRectangle 9
(f_Screen.drawRectangle)
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
M = 0
A = A + 1
M = 0
A = A + 1
@9
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0397
D; JLE
@YGT0397
D; JGT
(YLE0397)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH397 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE397 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE397
0;JMP
(YGT0397)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH397 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE397 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE397
0; JMP
//D HOLDS X
(BOTH397)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE397
D; JGT
@NOTTRUE397
0;JMP
(NOTTRUE397)
@SP
A = M -1
M = 0
@ENDTRUE397
0; JMP
(TRUE397)
@SP
A = M - 1
M = -1
(ENDTRUE397)
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0398
D; JLE
@YGT0398
D; JGT
(YLE0398)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH398 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE398 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE398
0;JMP
(YGT0398)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH398 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE398 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE398
0; JMP
//D HOLDS X
(BOTH398)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE398
D; JGT
@NOTTRUE398
0;JMP
(NOTTRUE398)
@SP
A = M -1
M = 0
@ENDTRUE398
0; JMP
(TRUE398)
@SP
A = M - 1
M = -1
(ENDTRUE398)
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
@YLE0399
D; JLE
@YGT0399
D; JGT
(YLE0399)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH399 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE399 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE399
0;JMP
(YGT0399)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH399 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE399 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE399
0; JMP
//D HOLDS X
(BOTH399)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE399
D; JLT
@NOTTRUE399
0;JMP
(NOTTRUE399)
@SP
A = M -1
M = 0
@ENDTRUE399
0; JMP
(TRUE399)
@SP
A = M - 1
M = -1
(ENDTRUE399)
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
// push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0400
D; JLE
@YGT0400
D; JGT
(YLE0400)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH400 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE400 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE400
0;JMP
(YGT0400)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH400 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE400 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE400
0; JMP
//D HOLDS X
(BOTH400)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE400
D; JGT
@NOTTRUE400
0;JMP
(NOTTRUE400)
@SP
A = M -1
M = 0
@ENDTRUE400
0; JMP
(TRUE400)
@SP
A = M - 1
M = -1
(ENDTRUE400)
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
@YLE0401
D; JLE
@YGT0401
D; JGT
(YLE0401)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH401 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE401 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE401
0;JMP
(YGT0401)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH401 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE401 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE401
0; JMP
//D HOLDS X
(BOTH401)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE401
D; JLT
@NOTTRUE401
0;JMP
(NOTTRUE401)
@SP
A = M -1
M = 0
@ENDTRUE401
0; JMP
(TRUE401)
@SP
A = M - 1
M = -1
(ENDTRUE401)
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
// push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0402
D; JLE
@YGT0402
D; JGT
(YLE0402)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH402 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE402 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE402
0;JMP
(YGT0402)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH402 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE402 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE402
0; JMP
//D HOLDS X
(BOTH402)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE402
D; JGT
@NOTTRUE402
0;JMP
(NOTTRUE402)
@SP
A = M -1
M = 0
@ENDTRUE402
0; JMP
(TRUE402)
@SP
A = M - 1
M = -1
(ENDTRUE402)
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
@Screen.drawRectangle$IF_TRUE0
D; JNE
@Screen.drawRectangle$IF_FALSE0
0; JMP
(Screen.drawRectangle$IF_TRUE0)
// push constant 9
@9
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
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
(RET_ADDR402)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Screen.drawRectangle$IF_FALSE0)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.divide 2
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
@f_Math.divide
0; JMP
(RET_ADDR403)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR404)
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
// pop local 7
@7
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.divide 2
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
@f_Math.divide
0; JMP
(RET_ADDR405)
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR406)
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
// pop local 8
@8
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
// push local 7
@7
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Screen.0
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
// not
@SP
A = M - 1
M = ! M
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
// push local 8
@8
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
// push static 0
@Screen.0
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
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR407)
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
// add
@SP
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
(Screen.drawRectangle$WHILE_EXP0)
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0409
D; JLE
@YGT0409
D; JGT
(YLE0409)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH409 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE409 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE409
0;JMP
(YGT0409)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH409 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE409 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE409
0; JMP
//D HOLDS X
(BOTH409)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE409
D; JGT
@NOTTRUE409
0;JMP
(NOTTRUE409)
@SP
A = M -1
M = 0
@ENDTRUE409
0; JMP
(TRUE409)
@SP
A = M - 1
M = -1
(ENDTRUE409)
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
@Screen.drawRectangle$WHILE_END0
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
@YLE0410
D; JLE
@YGT0410
D; JGT
(YLE0410)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH410 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE410 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE410
0;JMP
(YGT0410)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH410 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE410 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE410
0; JMP
//D HOLDS X
(BOTH410)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE410
D; JEQ
@NOTTRUE410
0;JMP
(NOTTRUE410)
@SP
A = M -1
M = 0
@ENDTRUE410
0; JMP
(TRUE410)
@SP
A = M - 1
M = -1
(ENDTRUE410)
@SP
AM = M - 1
D = M
@Screen.drawRectangle$IF_TRUE1
D; JNE
@Screen.drawRectangle$IF_FALSE1
0; JMP
(Screen.drawRectangle$IF_TRUE1)
// push local 0
@0
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
// call Screen.updateLocation 2
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
@f_Screen.updateLocation
0; JMP
(RET_ADDR410)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Screen.drawRectangle$IF_END1
0; JMP
(Screen.drawRectangle$IF_FALSE1)
// push local 0
@0
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
// call Screen.updateLocation 2
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
@f_Screen.updateLocation
0; JMP
(RET_ADDR411)
// pop temp 0
@0
D = A
@5
D = A + D
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
(Screen.drawRectangle$WHILE_EXP1)
// push local 0
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
@YLE0413
D; JLE
@YGT0413
D; JGT
(YLE0413)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH413 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE413 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE413
0;JMP
(YGT0413)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH413 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE413 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE413
0; JMP
//D HOLDS X
(BOTH413)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE413
D; JLT
@NOTTRUE413
0;JMP
(NOTTRUE413)
@SP
A = M -1
M = 0
@ENDTRUE413
0; JMP
(TRUE413)
@SP
A = M - 1
M = -1
(ENDTRUE413)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Screen.drawRectangle$WHILE_END1
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
// neg
@SP
A = M - 1
M = - M
// call Screen.updateLocation 2
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
@f_Screen.updateLocation
0; JMP
(RET_ADDR413)
// pop temp 0
@0
D = A
@5
D = A + D
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
@Screen.drawRectangle$WHILE_EXP1
0; JMP
(Screen.drawRectangle$WHILE_END1)
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
// call Screen.updateLocation 2
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
@f_Screen.updateLocation
0; JMP
(RET_ADDR414)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Screen.drawRectangle$IF_END1)
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
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
@Screen.drawRectangle$WHILE_EXP0
0; JMP
(Screen.drawRectangle$WHILE_END0)
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
// function Screen.drawHorizontal 11
(f_Screen.drawHorizontal)
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
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
@11
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
// call Math.min 2
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
@f_Math.min
0; JMP
(RET_ADDR415)
// pop local 7
@7
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
// call Math.max 2
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
@f_Math.max
0; JMP
(RET_ADDR416)
// pop local 8
@8
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
@YLE0418
D; JLE
@YGT0418
D; JGT
(YLE0418)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH418 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE418 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE418
0;JMP
(YGT0418)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH418 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE418 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE418
0; JMP
//D HOLDS X
(BOTH418)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE418
D; JGT
@NOTTRUE418
0;JMP
(NOTTRUE418)
@SP
A = M -1
M = 0
@ENDTRUE418
0; JMP
(TRUE418)
@SP
A = M - 1
M = -1
(ENDTRUE418)
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
// push constant 256
@256
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0419
D; JLE
@YGT0419
D; JGT
(YLE0419)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH419 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE419 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE419
0;JMP
(YGT0419)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH419 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE419 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE419
0; JMP
//D HOLDS X
(BOTH419)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE419
D; JLT
@NOTTRUE419
0;JMP
(NOTTRUE419)
@SP
A = M -1
M = 0
@ENDTRUE419
0; JMP
(TRUE419)
@SP
A = M - 1
M = -1
(ENDTRUE419)
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
// push local 7
@7
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 512
@512
D = A
@SP
M = M + 1
A = M - 1
M = D
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0420
D; JLE
@YGT0420
D; JGT
(YLE0420)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH420 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE420 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE420
0;JMP
(YGT0420)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH420 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE420 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE420
0; JMP
//D HOLDS X
(BOTH420)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE420
D; JLT
@NOTTRUE420
0;JMP
(NOTTRUE420)
@SP
A = M -1
M = 0
@ENDTRUE420
0; JMP
(TRUE420)
@SP
A = M - 1
M = -1
(ENDTRUE420)
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
// push local 8
@8
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
@YLE0421
D; JLE
@YGT0421
D; JGT
(YLE0421)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH421 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE421 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE421
0;JMP
(YGT0421)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH421 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE421 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE421
0; JMP
//D HOLDS X
(BOTH421)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE421
D; JGT
@NOTTRUE421
0;JMP
(NOTTRUE421)
@SP
A = M -1
M = 0
@ENDTRUE421
0; JMP
(TRUE421)
@SP
A = M - 1
M = -1
(ENDTRUE421)
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
@Screen.drawHorizontal$IF_TRUE0
D; JNE
@Screen.drawHorizontal$IF_FALSE0
0; JMP
(Screen.drawHorizontal$IF_TRUE0)
// push local 7
@7
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
// call Math.max 2
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
@f_Math.max
0; JMP
(RET_ADDR421)
// pop local 7
@7
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
// push local 8
@8
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.min 2
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
@f_Math.min
0; JMP
(RET_ADDR422)
// pop local 8
@8
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
// push local 7
@7
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
// call Math.divide 2
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
@f_Math.divide
0; JMP
(RET_ADDR423)
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
// push local 7
@7
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR424)
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
// pop local 9
@9
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
// push local 8
@8
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
// call Math.divide 2
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
@f_Math.divide
0; JMP
(RET_ADDR425)
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
// push local 8
@8
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
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR426)
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
// pop local 10
@10
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
// push local 9
@9
D = A
@LCL
A = M + D
D = M
@SP
M = M + 1
A = M - 1
M = D
// push static 0
@Screen.0
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
// push local 10
@10
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
// push static 0
@Screen.0
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
// push constant 32
@32
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
@f_Math.multiply
0; JMP
(RET_ADDR427)
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
// push local 0
@0
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
@YLE0429
D; JLE
@YGT0429
D; JGT
(YLE0429)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH429 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE429 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE429
0;JMP
(YGT0429)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH429 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE429 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE429
0; JMP
//D HOLDS X
(BOTH429)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE429
D; JEQ
@NOTTRUE429
0;JMP
(NOTTRUE429)
@SP
A = M -1
M = 0
@ENDTRUE429
0; JMP
(TRUE429)
@SP
A = M - 1
M = -1
(ENDTRUE429)
@SP
AM = M - 1
D = M
@Screen.drawHorizontal$IF_TRUE1
D; JNE
@Screen.drawHorizontal$IF_FALSE1
0; JMP
(Screen.drawHorizontal$IF_TRUE1)
// push local 0
@0
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
// call Screen.updateLocation 2
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
@f_Screen.updateLocation
0; JMP
(RET_ADDR429)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Screen.drawHorizontal$IF_END1
0; JMP
(Screen.drawHorizontal$IF_FALSE1)
// push local 0
@0
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
// call Screen.updateLocation 2
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
@f_Screen.updateLocation
0; JMP
(RET_ADDR430)
// pop temp 0
@0
D = A
@5
D = A + D
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
(Screen.drawHorizontal$WHILE_EXP0)
// push local 0
@0
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0432
D; JLE
@YGT0432
D; JGT
(YLE0432)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH432 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE432 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE432
0;JMP
(YGT0432)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH432 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE432 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE432
0; JMP
//D HOLDS X
(BOTH432)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE432
D; JLT
@NOTTRUE432
0;JMP
(NOTTRUE432)
@SP
A = M -1
M = 0
@ENDTRUE432
0; JMP
(TRUE432)
@SP
A = M - 1
M = -1
(ENDTRUE432)
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Screen.drawHorizontal$WHILE_END0
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
// neg
@SP
A = M - 1
M = - M
// call Screen.updateLocation 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.updateLocation
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
// push local 0
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
@Screen.drawHorizontal$WHILE_EXP0
0; JMP
(Screen.drawHorizontal$WHILE_END0)
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
// call Screen.updateLocation 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.updateLocation
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
(Screen.drawHorizontal$IF_END1)
(Screen.drawHorizontal$IF_FALSE0)
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
// function Screen.drawSymetric 0
(f_Screen.drawSymetric)
// write 0 for every local var
@LCL
A = M
@0
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
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
// call Screen.drawHorizontal 3
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawHorizontal
0; JMP
(RET_ADDR434)
// pop temp 0
@0
D = A
@5
D = A + D
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
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
// call Screen.drawHorizontal 3
// get ip
@RET_ADDR435
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_Screen.drawHorizontal
0; JMP
(RET_ADDR435)
// pop temp 0
@0
D = A
@5
D = A + D
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
// call Screen.drawHorizontal 3
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawHorizontal
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
// call Screen.drawHorizontal 3
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
@8
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawHorizontal
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
// function Screen.drawCircle 3
(f_Screen.drawCircle)
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
@YLE0439
D; JLE
@YGT0439
D; JGT
(YLE0439)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH439 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE439 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE439
0;JMP
(YGT0439)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH439 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE439 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE439
0; JMP
//D HOLDS X
(BOTH439)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE439
D; JLT
@NOTTRUE439
0;JMP
(NOTTRUE439)
@SP
A = M -1
M = 0
@ENDTRUE439
0; JMP
(TRUE439)
@SP
A = M - 1
M = -1
(ENDTRUE439)
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
// push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0440
D; JLE
@YGT0440
D; JGT
(YLE0440)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH440 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE440 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE440
0;JMP
(YGT0440)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH440 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE440 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE440
0; JMP
//D HOLDS X
(BOTH440)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE440
D; JGT
@NOTTRUE440
0;JMP
(NOTTRUE440)
@SP
A = M -1
M = 0
@ENDTRUE440
0; JMP
(TRUE440)
@SP
A = M - 1
M = -1
(ENDTRUE440)
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
@YLE0441
D; JLE
@YGT0441
D; JGT
(YLE0441)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH441 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE441 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE441
0;JMP
(YGT0441)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH441 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE441 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE441
0; JMP
//D HOLDS X
(BOTH441)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE441
D; JLT
@NOTTRUE441
0;JMP
(NOTTRUE441)
@SP
A = M -1
M = 0
@ENDTRUE441
0; JMP
(TRUE441)
@SP
A = M - 1
M = -1
(ENDTRUE441)
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
// push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0442
D; JLE
@YGT0442
D; JGT
(YLE0442)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH442 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE442 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE442
0;JMP
(YGT0442)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH442 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE442 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE442
0; JMP
//D HOLDS X
(BOTH442)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE442
D; JGT
@NOTTRUE442
0;JMP
(NOTTRUE442)
@SP
A = M -1
M = 0
@ENDTRUE442
0; JMP
(TRUE442)
@SP
A = M - 1
M = -1
(ENDTRUE442)
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
@Screen.drawCircle$IF_TRUE0
D; JNE
@Screen.drawCircle$IF_FALSE0
0; JMP
(Screen.drawCircle$IF_TRUE0)
// push constant 12
@12
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
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
@f_Sys.error
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
(Screen.drawCircle$IF_FALSE0)
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0444
D; JLE
@YGT0444
D; JGT
(YLE0444)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH444 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE444 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE444
0;JMP
(YGT0444)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH444 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE444 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE444
0; JMP
//D HOLDS X
(BOTH444)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE444
D; JLT
@NOTTRUE444
0;JMP
(NOTTRUE444)
@SP
A = M -1
M = 0
@ENDTRUE444
0; JMP
(TRUE444)
@SP
A = M - 1
M = -1
(ENDTRUE444)
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
// push constant 511
@511
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0445
D; JLE
@YGT0445
D; JGT
(YLE0445)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH445 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE445 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE445
0;JMP
(YGT0445)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH445 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE445 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE445
0; JMP
//D HOLDS X
(BOTH445)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE445
D; JGT
@NOTTRUE445
0;JMP
(NOTTRUE445)
@SP
A = M -1
M = 0
@ENDTRUE445
0; JMP
(TRUE445)
@SP
A = M - 1
M = -1
(ENDTRUE445)
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
// lt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0446
D; JLE
@YGT0446
D; JGT
(YLE0446)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH446 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE446 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE446
0;JMP
(YGT0446)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH446 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE446 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE446
0; JMP
//D HOLDS X
(BOTH446)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE446
D; JLT
@NOTTRUE446
0;JMP
(NOTTRUE446)
@SP
A = M -1
M = 0
@ENDTRUE446
0; JMP
(TRUE446)
@SP
A = M - 1
M = -1
(ENDTRUE446)
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
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
// push constant 255
@255
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0447
D; JLE
@YGT0447
D; JGT
(YLE0447)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH447 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE447 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE447
0;JMP
(YGT0447)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH447 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE447 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE447
0; JMP
//D HOLDS X
(BOTH447)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE447
D; JGT
@NOTTRUE447
0;JMP
(NOTTRUE447)
@SP
A = M -1
M = 0
@ENDTRUE447
0; JMP
(TRUE447)
@SP
A = M - 1
M = -1
(ENDTRUE447)
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
@Screen.drawCircle$IF_TRUE1
D; JNE
@Screen.drawCircle$IF_FALSE1
0; JMP
(Screen.drawCircle$IF_TRUE1)
// push constant 13
@13
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR447
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR447)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Screen.drawCircle$IF_FALSE1)
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
// push constant 1
@1
D = A
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
// push local 0
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
// call Screen.drawSymetric 4
// get ip
@RET_ADDR448
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
@f_Screen.drawSymetric
0; JMP
(RET_ADDR448)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(Screen.drawCircle$WHILE_EXP0)
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
// gt
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
D; JGT
@NOTTRUE450
0;JMP
(YGT0450)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH450 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE450 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE450
0; JMP
//D HOLDS X
(BOTH450)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE450
D; JGT
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@Screen.drawCircle$WHILE_END0
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
D; JLT
@NOTTRUE451
0;JMP
(YGT0451)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH451 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE451 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE451
0; JMP
//D HOLDS X
(BOTH451)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE451
D; JLT
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
@SP
AM = M - 1
D = M
@Screen.drawCircle$IF_TRUE2
D; JNE
@Screen.drawCircle$IF_FALSE2
0; JMP
(Screen.drawCircle$IF_TRUE2)
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
// call Math.multiply 2
// get ip
@RET_ADDR451
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
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
(RET_ADDR451)
// add
@SP
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
@Screen.drawCircle$IF_END2
0; JMP
(Screen.drawCircle$IF_FALSE2)
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
// call Math.multiply 2
// get ip
@RET_ADDR452
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
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
(RET_ADDR452)
// add
@SP
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
// add
@SP
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
(Screen.drawCircle$IF_END2)
// push local 0
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
// push local 0
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
// call Screen.drawSymetric 4
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
@9
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.drawSymetric
0; JMP
(RET_ADDR453)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
@Screen.drawCircle$WHILE_EXP0
0; JMP
(Screen.drawCircle$WHILE_END0)
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
// function String.new 0
(f_String.new)
// write 0 for every local var
@LCL
A = M
@0
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
@f_Memory.alloc
0; JMP
(RET_ADDR454)
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
@String.new$IF_TRUE0
D; JNE
@String.new$IF_FALSE0
0; JMP
(String.new$IF_TRUE0)
// push constant 14
@14
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR456
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR456)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(String.new$IF_FALSE0)
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
@String.new$IF_TRUE1
D; JNE
@String.new$IF_FALSE1
0; JMP
(String.new$IF_TRUE1)
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
// call Array.new 1
// get ip
@RET_ADDR458
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR458)
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
(String.new$IF_FALSE1)
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
// function String.dispose 0
(f_String.dispose)
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
// gt
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0460
D; JLE
@YGT0460
D; JGT
(YLE0460)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH460 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE460 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE460
0;JMP
(YGT0460)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH460 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE460 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE460
0; JMP
//D HOLDS X
(BOTH460)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE460
D; JGT
@NOTTRUE460
0;JMP
(NOTTRUE460)
@SP
A = M -1
M = 0
@ENDTRUE460
0; JMP
(TRUE460)
@SP
A = M - 1
M = -1
(ENDTRUE460)
@SP
AM = M - 1
D = M
@String.dispose$IF_TRUE0
D; JNE
@String.dispose$IF_FALSE0
0; JMP
(String.dispose$IF_TRUE0)
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
// call Array.dispose 1
// get ip
@RET_ADDR460
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR460)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(String.dispose$IF_FALSE0)
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
@RET_ADDR461
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR461)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function String.length 0
(f_String.length)
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
// function String.charAt 0
(f_String.charAt)
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
D; JLT
@NOTTRUE463
0;JMP
(YGT0463)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH463 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE463 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE463
0; JMP
//D HOLDS X
(BOTH463)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE463
D; JLT
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
// gt
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
D; JGT
@NOTTRUE464
0;JMP
(YGT0464)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH464 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE464 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE464
0; JMP
//D HOLDS X
(BOTH464)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE464
D; JGT
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
// eq
@SP
AM = M - 1
D = M // D HOLDS Y
@YLE0465
D; JLE
@YGT0465
D; JGT
(YLE0465)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH465 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE465 // IF Y < 0  AND X > 0
D; JEQ
@NOTTRUE465
0;JMP
(YGT0465)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH465 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE465 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE465
0; JMP
//D HOLDS X
(BOTH465)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE465
D; JEQ
@NOTTRUE465
0;JMP
(NOTTRUE465)
@SP
A = M -1
M = 0
@ENDTRUE465
0; JMP
(TRUE465)
@SP
A = M - 1
M = -1
(ENDTRUE465)
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
@String.charAt$IF_TRUE0
D; JNE
@String.charAt$IF_FALSE0
0; JMP
(String.charAt$IF_TRUE0)
// push constant 15
@15
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
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
@f_Sys.error
0; JMP
(RET_ADDR465)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(String.charAt$IF_FALSE0)
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
// function String.setCharAt 0
(f_String.setCharAt)
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
// eq
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
D; JEQ
@NOTTRUE469
0;JMP
(YGT0469)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH469 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE469 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE469
0; JMP
//D HOLDS X
(BOTH469)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE469
D; JEQ
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
@String.setCharAt$IF_TRUE0
D; JNE
@String.setCharAt$IF_FALSE0
0; JMP
(String.setCharAt$IF_TRUE0)
// push constant 16
@16
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR469
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR469)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(String.setCharAt$IF_FALSE0)
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
// function String.appendChar 0
(f_String.appendChar)
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
// eq
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
D; JEQ
@NOTTRUE471
0;JMP
(YGT0471)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH471 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE471 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE471
0; JMP
//D HOLDS X
(BOTH471)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE471
D; JEQ
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
@String.appendChar$IF_TRUE0
D; JNE
@String.appendChar$IF_FALSE0
0; JMP
(String.appendChar$IF_TRUE0)
// push constant 17
@17
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
(String.appendChar$IF_FALSE0)
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
// function String.eraseLastChar 0
(f_String.eraseLastChar)
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
D; JEQ
@NOTTRUE473
0;JMP
(YGT0473)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH473 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE473 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE473
0; JMP
//D HOLDS X
(BOTH473)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE473
D; JEQ
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
@SP
AM = M - 1
D = M
@String.eraseLastChar$IF_TRUE0
D; JNE
@String.eraseLastChar$IF_FALSE0
0; JMP
(String.eraseLastChar$IF_TRUE0)
// push constant 18
@18
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
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
(RET_ADDR473)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(String.eraseLastChar$IF_FALSE0)
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
// function String.intValue 5
(f_String.intValue)
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
D; JEQ
@NOTTRUE475
0;JMP
(YGT0475)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH475 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE475 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE475
0; JMP
//D HOLDS X
(BOTH475)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE475
D; JEQ
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
@SP
AM = M - 1
D = M
@String.intValue$IF_TRUE0
D; JNE
@String.intValue$IF_FALSE0
0; JMP
(String.intValue$IF_TRUE0)
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
(String.intValue$IF_FALSE0)
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
// push constant 0
@0
D = A
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
// push constant 45
@45
D = A
@SP
M = M + 1
A = M - 1
M = D
// eq
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
D; JEQ
@NOTTRUE476
0;JMP
(YGT0476)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH476 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE476 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE476
0; JMP
//D HOLDS X
(BOTH476)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE476
D; JEQ
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
@SP
AM = M - 1
D = M
@String.intValue$IF_TRUE1
D; JNE
@String.intValue$IF_FALSE1
0; JMP
(String.intValue$IF_TRUE1)
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
// push constant 1
@1
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
(String.intValue$IF_FALSE1)
(String.intValue$WHILE_EXP0)
// push local 0
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
D; JLT
@NOTTRUE477
0;JMP
(YGT0477)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH477 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE477 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE477
0; JMP
//D HOLDS X
(BOTH477)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE477
D; JLT
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
@String.intValue$WHILE_END0
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
// push constant 48
@48
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
// push constant 9
@9
D = A
@SP
M = M + 1
A = M - 1
M = D
// gt
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
D; JGT
@NOTTRUE479
0;JMP
(YGT0479)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH479 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE479 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE479
0; JMP
//D HOLDS X
(BOTH479)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE479
D; JGT
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
@SP
AM = M - 1
D = M
@String.intValue$IF_TRUE2
D; JNE
@String.intValue$IF_FALSE2
0; JMP
(String.intValue$IF_TRUE2)
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
// push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
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
(RET_ADDR479)
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
(String.intValue$IF_FALSE2)
@String.intValue$WHILE_EXP0
0; JMP
(String.intValue$WHILE_END0)
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
@String.intValue$IF_TRUE3
D; JNE
@String.intValue$IF_FALSE3
0; JMP
(String.intValue$IF_TRUE3)
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
(String.intValue$IF_FALSE3)
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
// function String.setInt 4
(f_String.setInt)
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
D; JEQ
@NOTTRUE481
0;JMP
(YGT0481)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH481 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE481 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE481
0; JMP
//D HOLDS X
(BOTH481)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE481
D; JEQ
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
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE0
D; JNE
@String.setInt$IF_FALSE0
0; JMP
(String.setInt$IF_TRUE0)
// push constant 19
@19
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR481
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR481)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(String.setInt$IF_FALSE0)
// push constant 6
@6
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Array.new 1
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
@f_Array.new
0; JMP
(RET_ADDR482)
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
D; JLT
@NOTTRUE484
0;JMP
(YGT0484)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH484 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE484 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE484
0; JMP
//D HOLDS X
(BOTH484)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE484
D; JLT
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
@String.setInt$IF_TRUE1
D; JNE
@String.setInt$IF_FALSE1
0; JMP
(String.setInt$IF_TRUE1)
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
// neg
@SP
A = M - 1
M = - M
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
(String.setInt$IF_FALSE1)
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
(String.setInt$WHILE_EXP0)
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
// gt
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
D; JGT
@NOTTRUE485
0;JMP
(YGT0485)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH485 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE485 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE485
0; JMP
//D HOLDS X
(BOTH485)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE485
D; JGT
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@String.setInt$WHILE_END0
D; JNE
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
// push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.divide 2
// get ip
@RET_ADDR485
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
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
(RET_ADDR485)
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
// push constant 48
@48
D = A
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
// push constant 10
@10
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Math.multiply 2
// get ip
@RET_ADDR486
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
// set vals
@SP
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
(RET_ADDR486)
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
// add
@SP
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
@String.setInt$WHILE_EXP0
0; JMP
(String.setInt$WHILE_END0)
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
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE2
D; JNE
@String.setInt$IF_FALSE2
0; JMP
(String.setInt$IF_TRUE2)
// push local 0
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
// push constant 45
@45
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
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
(String.setInt$IF_FALSE2)
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
// push local 0
@0
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
@YLE0488
D; JLE
@YGT0488
D; JGT
(YLE0488)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH488 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE488 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE488
0;JMP
(YGT0488)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH488 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE488 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE488
0; JMP
//D HOLDS X
(BOTH488)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE488
D; JLT
@NOTTRUE488
0;JMP
(NOTTRUE488)
@SP
A = M -1
M = 0
@ENDTRUE488
0; JMP
(TRUE488)
@SP
A = M - 1
M = -1
(ENDTRUE488)
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE3
D; JNE
@String.setInt$IF_FALSE3
0; JMP
(String.setInt$IF_TRUE3)
// push constant 19
@19
D = A
@SP
M = M + 1
A = M - 1
M = D
// call Sys.error 1
// get ip
@RET_ADDR488
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR488)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
(String.setInt$IF_FALSE3)
// push local 0
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
// eq
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
D; JEQ
@NOTTRUE490
0;JMP
(YGT0490)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH490 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE490 // IF Y > 0 AND X < 0
D; JEQ
@NOTTRUE490
0; JMP
//D HOLDS X
(BOTH490)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE490
D; JEQ
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
@SP
AM = M - 1
D = M
@String.setInt$IF_TRUE4
D; JNE
@String.setInt$IF_FALSE4
0; JMP
(String.setInt$IF_TRUE4)
// push constant 0
@0
D = A
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
// push constant 48
@48
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
// push constant 1
@1
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
@String.setInt$IF_END4
0; JMP
(String.setInt$IF_FALSE4)
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
(String.setInt$WHILE_EXP1)
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
// push local 0
@0
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
// not
@SP
A = M - 1
M = ! M
@SP
AM = M - 1
D = M
@String.setInt$WHILE_END1
D; JNE
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
// push local 0
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
// push constant 1
@1
D = A
@SP
M = M + 1
A = M - 1
M = D
// add
@SP
A = M - 1
A = A - 1
D = M
A = A + 1
D = D + M
A = A - 1
M = D
@SP
M = M - 1
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
// pop temp 0
@0
D = A
@5
D = A + D
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
@String.setInt$WHILE_EXP1
0; JMP
(String.setInt$WHILE_END1)
(String.setInt$IF_END4)
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
// call Array.dispose 1
// get ip
@RET_ADDR491
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR491)
// pop temp 0
@0
D = A
@5
D = A + D
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
// function String.newLine 0
(f_String.newLine)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 128
@128
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
// function String.backSpace 0
(f_String.backSpace)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 129
@129
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
// function String.doubleQuote 0
(f_String.doubleQuote)
// write 0 for every local var
@LCL
A = M
@0
D = A
@SP
M = M + D
// push constant 34
@34
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
(RET_ADDR492)
// pop temp 0
@0
D = A
@5
D = A + D
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
(RET_ADDR493)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// call Screen.init 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Screen.init
0; JMP
(RET_ADDR494)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// call Output.init 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.init
0; JMP
(RET_ADDR495)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// call Keyboard.init 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Keyboard.init
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
// call Main.main 0
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
(RET_ADDR497)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// call Sys.halt 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Sys.halt
0; JMP
(RET_ADDR498)
// pop temp 0
@0
D = A
@5
D = A + D
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
@YLE0500
D; JLE
@YGT0500
D; JGT
(YLE0500)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH500 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE500 // IF Y < 0  AND X > 0
D; JLT
@NOTTRUE500
0;JMP
(YGT0500)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH500 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE500 // IF Y > 0 AND X < 0
D; JLT
@NOTTRUE500
0; JMP
//D HOLDS X
(BOTH500)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE500
D; JLT
@NOTTRUE500
0;JMP
(NOTTRUE500)
@SP
A = M -1
M = 0
@ENDTRUE500
0; JMP
(TRUE500)
@SP
A = M - 1
M = -1
(ENDTRUE500)
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
@RET_ADDR500
D = A
// push data in this order: RET LCL ARG THIS THAT
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
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
(RET_ADDR500)
// pop temp 0
@0
D = A
@5
D = A + D
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
@YLE0502
D; JLE
@YGT0502
D; JGT
(YLE0502)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH502 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE502 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE502
0;JMP
(YGT0502)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH502 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE502 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE502
0; JMP
//D HOLDS X
(BOTH502)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE502
D; JGT
@NOTTRUE502
0;JMP
(NOTTRUE502)
@SP
A = M -1
M = 0
@ENDTRUE502
0; JMP
(TRUE502)
@SP
A = M - 1
M = -1
(ENDTRUE502)
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
@YLE0503
D; JLE
@YGT0503
D; JGT
(YLE0503)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH503 // IF BOTH OF THEM ARE LESS OR EQUAL TO 0
D; JLE
@TRUE503 // IF Y < 0  AND X > 0
D; JGT
@NOTTRUE503
0;JMP
(YGT0503)
@SP
A = M - 1
D = M // D HOLDS X
@BOTH503 // IF BOTH OF THEM ARE BIGGER THEN 0
D; JGE
@TRUE503 // IF Y > 0 AND X < 0
D; JGT
@NOTTRUE503
0; JMP
//D HOLDS X
(BOTH503)
@SP
A = M
A = M // A HOLDS Y
D = D - A
@TRUE503
D; JGT
@NOTTRUE503
0;JMP
(NOTTRUE503)
@SP
A = M -1
M = 0
@ENDTRUE503
0; JMP
(TRUE503)
@SP
A = M - 1
M = -1
(ENDTRUE503)
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
// push constant 3
@3
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.new 1
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
(RET_ADDR503)
// push constant 69
@69
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@f_String.appendChar
0; JMP
(RET_ADDR504)
// push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@7
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_String.appendChar
0; JMP
(RET_ADDR505)
// push constant 82
@82
D = A
@SP
M = M + 1
A = M - 1
M = D
// call String.appendChar 2
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
@f_String.appendChar
0; JMP
(RET_ADDR506)
// call Output.printString 1
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
(RET_ADDR507)
// pop temp 0
@0
D = A
@5
D = A + D
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
// call Output.printInt 1
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
@6
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Output.printInt
0; JMP
(RET_ADDR508)
// pop temp 0
@0
D = A
@5
D = A + D
@R13
M = D
@SP
M = M - 1
A = M
D = M
@R13
A = M
M = D
// call Sys.halt 0
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
@5
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@f_Sys.halt
0; JMP
(RET_ADDR509)
// pop temp 0
@0
D = A
@5
D = A + D
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
