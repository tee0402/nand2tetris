// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Initialize R2 to 0
@R2
M=0
// If R0 is 0, end
@R0
D=M
@END
D;JEQ
(LOOP)
// If R1 is 0, end
@R1
D=M
@END
D;JEQ
// Increment R2 by R0
@R0
D=M
@R2
M=D+M
// Decrement R1
@R1
M=M-1
@LOOP
0;JMP
(END)
@END
0;JMP