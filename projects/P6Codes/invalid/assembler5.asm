//This program constructs a rectangle on the screen
ADDI R4, R4, 8
ADDI R5, R5, 13
READ R1, R0
ADDI R1, R1, 1
ADDI R0, R0, 1
READ R2, R0
ADDI R0, R0, 1
**read MEM[R0] in R3
READ R3, R0
WRITE R1, R3
SUBI R2, R2, 1
ADDI R1, R1, 32
ADD R5, R2
JMP R4
ADDI R0, R0, 1
WRITE R0, R5