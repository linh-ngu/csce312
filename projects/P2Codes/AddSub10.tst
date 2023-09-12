//Starter Test stimulus file for AddSub10 

load AddSub10.hdl,
output-file AddSub10.out,
compare-to AddSub10.cmp,
output-list a%B1.10.1 b%B1.10.1 sub%B1.1.1 out%B1.10.1 carry%B3.1.3;

set a %B0000000000,
set b %B0000000000,
set sub 0,
eval,
output;

//fill in more test cases here to thoroughly check correctness of your chip

set a %B0111111110,
set b %B0000000001,
set sub 0,
eval,
output;

set a %B1000000001,
set b %B0000000001,
set sub 1,
eval,
output;

set a %B1000000000,
set b %B0100111000,
set sub 0,
eval,
output;

set a %B0100111000,
set b %B1000000000,
set sub 0,
eval,
output;

set a %B1000000001,
set b %B1111111111,
set sub 1,
eval,
output;

set a %B1111111111,
set b %B1000000001,
set sub 1,
eval,
output;

set a %B0111111111,
set b %B0111111111,
set sub 0,
eval,
output;

set a %B1000000000,
set b %B1000000000,
set sub 0,
eval,
output;

set a %B1000000000,
set b %B0011011101,
set sub 0,
eval,
output;

set a %B0000000001,
set b %B0000000001,
set sub 1,
eval,
output;

set a %B1111111111,
set b %B1111111111,
set sub 1,
eval,
output;