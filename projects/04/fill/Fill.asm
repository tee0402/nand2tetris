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

// Save SCREEN in R0
@SCREEN
D=A
@R0
M=D
(LOOP)
// If *KBD is 0 go to decrement
@KBD
D=M
@DECREMENT
D;JEQ
// If *R0 is KBD, don't do anything
@R0
D=M
@KBD
D=D-A
@LOOP
D;JEQ
// Otherwise increment
@R0
A=M
M=-1
@R0
M=M+1
@LOOP
0;JMP
(DECREMENT)
// If *R0 is SCREEN, don't do anything
@R0
D=M
@SCREEN
D=D-A
@LOOP
D;JEQ
// Otherwise decrement
@R0
M=M-1
A=M
M=0
@LOOP
0;JMP