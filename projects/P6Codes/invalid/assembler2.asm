// This program is written to demonstrate interaction with the keyboard 
ADDI R1, R1, 1
INP R3 //Read keyboard value into R3
BEQ R1,   R3

//Write content of R3 into MEM[R2]
WRITE R2,, R3