# Object
We would like to utilize the clock provided in the FPGA board to control our circuit. 

However, the frequency of this clock is too fast when used as the input clock for the seven-segment display. 
A clock divider takes an input clock of a given frequency and generates an output clock of a different frequency. 

## 100 MHZ to 1HZ
Implemented a clock divider that receives clk and rst as inputs, and outputs a clock with afrequency of 1Hz. The input clock frequency is 100MHz
