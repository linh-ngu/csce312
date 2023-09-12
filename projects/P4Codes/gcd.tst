// Filename = gcd.tst

load gcd.asm,
output-file gcd.out,
compare-to gcd.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set RAM[0] 9,
set RAM[1] 6,
set RAM[2] 0,
repeat 400 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 11,
set RAM[1] 21,
set RAM[2] 0,
repeat 1000 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 18,
set RAM[1] 66,
set RAM[2] 0,
repeat 1000 {
	ticktock;
}
output;

// Write your own testcases below:
