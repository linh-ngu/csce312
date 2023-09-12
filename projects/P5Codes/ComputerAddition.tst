load Computer.hdl,
output-file ComputerAddition.out,
compare-to ComputerAddition.cmp,
output-list time%S0.4.0 fromM%D0.16.0 In%B0.26.0 Reset%B2.1.2 toM%D1.16.0 writeM%B3.1.3 addressM%D0.16.0 PCOut%D0.16.0 RAM32K[2]%D1.7.1;

// Load a program written in the BITBOT machine language.
// The program sums two numbers at RAM[0] and RAM[1] and
// outputs the result in RAM[2].
ROM32K load Add.hack,

// Perform the Addition
set RAM32K[0] 2,
set RAM32K[1] 3,
output;

repeat 7 {
    tick, output, tock, output;
}
