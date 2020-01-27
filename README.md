### Available commands:
* `F` - move forward 1 unit
* `B` - move backward 1 unit
* `R` - turn right 90 degrees
* `L` - turn left 90 degrees


Inputs: - a string of commands in any combination with number between 0-9 eg `F1 R1,b2L1b3`

Designed to use a simple grid starting at origin(0,0), moves around with simple adition and subtraction and stores state as x,y coordinates

Known Issues:
Will only read the first digit of a command, so anything larger then 0-9 will have its second+ digit cut i.e 10 becomes 1
