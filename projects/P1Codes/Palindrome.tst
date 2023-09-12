//Test Stimulus File for Palindrome Chip

load Palindrome.hdl,
compare-to Palindrome.cmp,
output-file Palindrome.out,
output-list p%B3.1.3 q%B3.1.3 r%B3.1.3 s%B3.1.3 t%B3.1.3 out%B3.1.3;

set p %B0,
set q %B0,
set r %B0,
set s %B0,
set t %B0,
eval,
output;

set p %B1,
set q %B1,
set r %B1,
set s %B1,
set t %B1,
eval,
output;

set p %B1,
set q %B0,
set r %B1,
set s %B0,
set t %B1,
eval,
output;

set p %B0,
set q %B1,
set r %B0,
set s %B1,
set t %B0,
eval,
output;

set p %B1,
set q %B1,
set r %B0,
set s %B1,
set t %B1,
eval,
output;

set p %B0,
set q %B0,
set r %B1,
set s %B0,
set t %B0,
eval,
output;

set p %B0,
set q %B1,
set r %B1,
set s %B1,
set t %B0,
eval,
output;

set p %B1,
set q %B0,
set r %B0,
set s %B0,
set t %B1,
eval,
output;

set p %B1,
set q %B1,
set r %B1,
set s %B0,
set t %B0,
eval,
output;

set p %B0,
set q %B1,
set r %B0,
set s %B0,
set t %B0,
eval,
output;

set p %B0,
set q %B1,
set r %B1,
set s %B0,
set t %B1,
eval,
output;

// Build more testcases below to fully test the functionality