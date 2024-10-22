# Definition
We would like to utilize the clock provided in the FPGA board to control our circuit. 

However, the frequency of this clock is too fast when used as the input clock for the seven-segment display. 
A clock divider takes an input clock of a given frequency and generates an output clock of a different frequency. 

# 100 MHZ to 1HZ
## Waveform analysis
![GitHub Logo](https://github.com/ChingSsuyuan/Vivado_State_Machine_Project/blob/c7ab4a18f64dbb35080f1c79f0c4fb132e3b7371/Clock%20Divider/waveform2.png)
Implemented a clock divider that receives clk and rst as inputs, and outputs a clock with afrequency of 1Hz. The input clock frequency is 100MHz
