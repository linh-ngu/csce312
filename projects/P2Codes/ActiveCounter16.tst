//Starter Test stimulus file for ActiveCounter16

load ActiveCounter16.hdl,
output-file ActiveCounter16.out,
compare-to ActiveCounter16.cmp,
output-list in%B2.16.2 out%B2.5.3;

set in %B0000000000000000,
eval,
output;

set in %B0000000000000001,
eval,
output;

set in %B0000000000000010,
eval,
output;

set in %B0000010000000000,
eval,
output;

set in %B0000000000000011,
eval,
output;

set in %B0000010000000001,
eval,
output;

set in %B0000011110000010,
eval,
output;

set in %B0000011110110010,
eval,
output;

set in %B1000011110110010,
eval,
output;

set in %B1111111111111111,
eval,
output;

//fill in more test cases here to thoroughly check correctness of your chip