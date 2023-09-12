//Complete Test File for AggieCipher

load AggieCipher.hdl,
output-file AggieCipher.out,  // output file
compare-to AggieCipher.cmp,    // compare file
output-list in%B1.4.1 out%B1.4.1;

set in %B0000,
tick,
tock,
output;

set in %B1110,
tick,
tock,
output;

set in %B1101,
tick,
tock,
output;

set in %B0101,
tick,
tock,
output;


// no input, makes sure the chip is adding an increasing four bit number to the input
set in %B0000,
tick,tock,output;
tick,tock,output;
tick,tock,output;
tick,tock,output;
tick,tock,output;
tick,tock,output;
tick,tock,output;
tick,tock,output;
tick,tock,output;
tick,tock,output;
tick,tock,output;
tick,tock,output;