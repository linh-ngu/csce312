load Computer.hdl,
output-file ComputerRect.out,
compare-to ComputerRect.cmp,
output-list time%S0.4.0 fromM%D0.16.0 In%B0.26.0 Reset%B2.1.2 toM%D1.16.0 writeM%B3.1.3 addressM%D0.16.0 PCOut%D0.16.0 RAM32K[3]%D1.7.1;

// Load a program written in the Hack machine language.
// The program draws a rectangle of width 16 pixels and 
// length RAM[1] at the top left of the screen.
ROM32K load Rect.hack,

echo "Before you run this script, select the 'Screen' option from the 'View' menu";

echo "A small rectangle should be drawn at the top left of the screen (the 'Screen' option of the 'View' menu should be selected.)";

// Draws a rectangle 16 pixels wide and 4 pixels long
set RAM32K[0] 32767,
set RAM32K[1] 3,
set RAM32K[2] -1,
output;

repeat 24 {
    tick, output, tock, output;
}
