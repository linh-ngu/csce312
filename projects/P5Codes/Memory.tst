load Memory.hdl,
output-file Memory.out,
compare-to Memory.cmp,
output-list in%D1.6.1 load%B2.1.2 address%B1.16.1 out%D1.16.1;

echo "Before you run this script, select the 'Screen' option from the 'View' menu";


set in -1,				// Set RAM[0] = -1
set load 1,				// successful write	
set address 0,				// out = -1
tick,
output;
tock,
output;


set in 2,				// Set RAM[0] = 2 //should not write because load is 0
set load 0,				// write must not succeed
set address 0,				// out remains -1
tick,
output;
tock,
output;

set in 2,				// Set RAM[0] = 2
set load 1,				// successful write
set address 0,				// out changes to 2
tick,
output;
tock,
output;

set in 0,				// Set RAM[0] = 0 but output should still read 2
set load 0,				// write must not succeed
set address 0,				// out remains 2
tick,
output;
tock,
output;

set in -1,				// Set RAM[32768] = -1 //first screen location
set load 1,				// write to screen succeeds	
set address -32768,			// out = -1
tick,
output;
tock,
output;


set in -1,				// Set RAM[40960] = -1 //first keyboard location
set load 1,
set address -24576,			//write must not succeed even though load = 1
tick,
output;
tock,
output;



