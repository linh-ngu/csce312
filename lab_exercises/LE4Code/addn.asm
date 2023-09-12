//addn.asm

//NAME: Linh Nguyen
//UIN: 231007811

//This asm computes the sum of n numbers
//Assuming RAM[0] stores the value n (how many numbers to sum)
//and the numbers are stored in consecutive addresses starting at address 1.
//The result will be stored in RAM[0], overwriting the original value of n.
//It may be useful to use variables when solving this problem.
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

(begin)
    @R0
    D = M
    @temp
    M = 0
(loop)
    @set
    D;JEQ
    @R0
    A = M
    D = M 
    @temp
    M = D + M
    @R0
    M = M - 1
    D = M
    @loop
    0;JMP
(set)
    @temp
    D = M
    @R0
    M = D
(end)
    @end
    0;JMP