// Filename = palin.tst

load palin.asm,
output-file palin.out,
compare-to palin.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2 RAM[4]%D2.6.2 RAM[5]%D2.6.2 RAM[6]%D2.6.2;

set RAM[0] 12121,	// Set test arguments
set RAM[8] 10,
set RAM[1] 0;		// Test that program initialized to 0
repeat 1000000 {
  ticktock;
}
set RAM[0] 12121,   	// Restore arguments in case program used them as loop counter
set RAM[8] 10,
output;

set PC 0,
set RAM[0] 12345,	// Set test arguments
set RAM[8] 10,
set RAM[1] 0;		// Test that program initialized to 0
repeat 1000000 {
  ticktock;
}
set RAM[0] 12345,   	// Restore arguments in case program used them as loop counter
set RAM[8] 10,
output;

set PC 0,
set RAM[0] 30603,	// Set test arguments
set RAM[8] 10,
set RAM[1] 0;		// Test that program initialized to 0
repeat 1000000 {
  ticktock;
}
set RAM[0] 30603,   	// Restore arguments in case program used them as loop counter
set RAM[8] 10,
output;

set PC 0,
set RAM[0] 10211,	// Set test arguments
set RAM[8] 10,
set RAM[1] 0;		// Test that program initialized to 0
repeat 1000000 {
  ticktock;
}
set RAM[0] 10211,   	// Restore arguments in case program used them as loop counter
set RAM[8] 10,
output;

// Write your own testcases below:

set PC 0,
set RAM[0] 16361,	// Set test arguments
set RAM[8] 10,
set RAM[1] 0;		// Test that program initialized to 0
repeat 1000000 {
  ticktock;
}
set RAM[0] 16361,   	// Restore arguments in case program used them as loop counter
set RAM[8] 10,
output;

set PC 0,
set RAM[0] 11553,	// Set test arguments
set RAM[8] 10,
set RAM[1] 0;		// Test that program initialized to 0
repeat 1000000 {
  ticktock;
}
set RAM[0] 11553,   	// Restore arguments in case program used them as loop counter
set RAM[8] 10,
output;