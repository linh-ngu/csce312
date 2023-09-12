//NAME AND UIN

// Name: Linh Nguyen
// UIN: 231007811

// File name: gcd.asm

// This program calculates the greatest common divisor (gcd) of two given 
// non-negative integers, which are stored in RAM[0] (R0) and RAM[1] (R1). 
// The gcd is stored in RAM[2] (R2).



// Put your code below this line

@0
D = M
@temp1
M = D
@1
D = M
@temp2
M = D

(loop)
    @temp1
    D = M
    @temp2
    D = D - M
    @same
    D;JEQ
    @switch
    D;JLT
    @temp1
    M = D
    @loop
    0;JMP   

(switch)
    @temp1
    D = M
    @temp
    M = D
    @temp2
    D = M
    @temp1
    M = D
    @temp
    D = M
    @temp2
    M = D
    @loop
    0;JMP

(same)
    @temp1
    D = M
    @2
    M = D
    @end
    0;JMP

(end)
    @end
    0;JMP