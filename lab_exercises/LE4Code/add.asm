//addn.asm

//NAME: Linh Nguyen
//UIN: 231007811

//This asm computes the sum of two numbers
//Assuming RAM[0] stores the number a and RAM[1] stores the number b
//so conceptually, the goal is to compute RAM[0] + RAM[1].
//The result will be stored to RAM[2].
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

@R0
D = M
@R1
D = D + M
@R2
M = D