//NAME AND UIN

// Name: Linh Nguyen
// UIN: 231007811

// File name: palin.asm

// The program develops a Palindrome checker application. 
// The input to the program is a 5 digit integer A and is stored in RAM[0] (R0).
// A helper value of 10 is stored in RAM[8] (R8) by virtue of the tst file command.
// Number A is a positive integer.
// A has exactly 5 digits and no more no less.

// Program functions as follows: 
// Extract the individual digits from number A and store them in R2-R6 registers in that order.
// Result of 1 is stored in R1 if the number A is a Palindrome else result of 0 is stored in R1

// Put your code below this line

@place
M = 1

(div)
    @temp
    M = 0
    @counter
    M = 0
    @place
    M = M + 1
    @0
    D = M 
    @temp
    M = D
    @divloop
    0;JMP

    (remainder)
        @8
        D = M 
        @temp
        M = D + M 
        @counter
        M = M - 1
        @enddiv
        0;JMP

    (divloop)
        @8
        D = M
        @temp
        M = M - D 
        @counter
        M = M + 1
        @temp
        D = M 
        @enddiv
        D;JEQ
        @remainder
        D;JLT
        @divloop
        0;JMP

    (enddiv)
        @counter
        D = M
        @0
        M = D
        @temp
        D = M 
        @place
        A = M
        M = D
        @0
        D = M 
        @break
        D;JEQ
        @div
        0;JMP

(break)
    @2
    D = M
    @6
    D = D - M
    @notpal
    D;JNE
    @3
    D = M
    @5
    D = D - M
    @notpal
    D;JNE
    @1
    M = 1
    @end
    0;JMP

(notpal)
    @1
    M = 0
    @end
    0;JMP

(end)
    @end
    0;JMP