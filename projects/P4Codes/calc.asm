//NAME AND UIN

// Name: Linh Nguyen
// UIN: 231007811

// File name: calc.asm

// The program develops a calculator application. 
// The operands a and b are integer numbers stored in RAM[0] (R0) and RAM[1] (R1), respectively.
// The operation choice c is stored in RAM[2] (R2), respectively
// if c == 1, do a + b
// if c == 2, do a - b
// if c == 3, do a * b
// if c == 4, do a / b
// For Addition and Subtraction operations the operands a and b can be positive or negative.
// For Multiplication operation only ONE operand can be negative.
// For Division operation BOTH operands must be positive and must be greater than 0.
// Store the final result (quotient for Division) in RAM[3] (R3). Only the Division operation 
// stores the remainder in RAM[4] (R4).

// Put your code below this line

(begin)
    @3
    M = 0
(sel) // choose add sub mult or div
    @2
    D = M
    D = D - 1
    @add
        D;JEQ
    D = D - 1
    @sub
        D;JEQ
    D = D - 1
    @mult
        D;JEQ
    D = D - 1
    @div
        D;JEQ

(add)
    @0
    D = M 
    @1
    D = D + M 
    @3
    M = D
    @end
    0;JMP

(sub)
    @0
    D = M 
    @1
    D = D - M 
    @3
    M = D
    @end
    0;JMP

(mult) 
    @0 // checks if first number is negative
    D = M
    @oneneg 
    D;JLT
    @1 // checks if second number is negative
    D = M 
    @twoneg
    D;JLT
    @multloop // if neither is negative go to loop
    0;JMP

    (oneneg) // first number is negative and check if second number if negative, if yes, then go to error
        @negpos
        M = 0
        @1
        D = M
        @error
        D;JLT
        @check
        0;JMP

    (twoneg) 
        @negpos
        M = 1

    (check) // check position of negative number and send to switch if second number is negative
        @negpos
        D = M - 1
        @switch
        D;JEQ
        @multloop
        0;JMP

    (switch) // switch position of negative number if second number is negative
        @0
        D = M
        @temp
        M = D
        @1
        D = M
        @0
        M = D
        @temp
        D = M
        @1
        M = D

    (multloop) // mult loop
        @1
        D = M
        @end
        D;JEQ
        @0
        D = M
        @3
        M = M + D
        @1
        M = M - 1
        @multloop
        0;JMP

(div)
    @0 // checks if first number is neg
    D = M
    @error
    D;JLE
    @1 // checks if second number is neg
    D = M
    @error
    D;JLE

    @0
    D = M 
    @4
    M = D 

    @divloop // send to loop if neither is neg
    0;JMP

    (remainder)
        @1
        D = M 
        @4
        M = D + M 
        @3
        M = M - 1
        @end
        0;JMP

    (divloop)
        @1
        D = M
        @4
        M = M - D 
        @3
        M = M + 1
        @4
        D = M 
        @end
        D;JEQ
        @remainder
        D;JLT
        @divloop
        0;JMP

(error)
    @1024
    M = -1
    @end
    0;JMP

(end)
    @end
    0;JMP