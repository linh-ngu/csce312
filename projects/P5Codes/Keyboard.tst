load Computer.hdl,
output-file Keyboard.out,
compare-to Keyboard.cmp,
output-list fromM%D0.16.0 In%B0.26.0 Reset%B2.1.2 toM%D1.16.0 writeM%B3.1.3 addressM%B0.16.0 PCOut%D0.16.0 RAM32K[0]%D1.7.1;

// Load a program written in the BITBOT machine language.
// Check functionality of the keyboard
ROM32K load Keyboard.hack,

echo "Before you run this script, select the 'Screen' option from the 'View' menu";

tick, output, tock, output;
tick, output, tock, output;tick, output, tock, output;tick, output, tock, output;echo "Click the Keyboard icon and hold down the 'K' key (uppercase) till the program finishes",
// It's important to keep holding the key down since if the system is busy,
// the memory will zero itself before being outputted.
while fromM <> 75 {
    tick, tock,
}

clear-echo,
output;

tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;