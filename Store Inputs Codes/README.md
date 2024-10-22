# Store Switch Inputs

Input is a 10-bit binary number, provided via ten switches (each representing one bit). We Store this 10-bit number in a 10-bit shift register. 

The register will only update its storage after pressing reset button.

# Waveform analysis
![GitHub Logo]([Store Inputs Codes/waveform1.png](https://github.com/ChingSsuyuan/Vivado_State_Machine_Project/blob/505110bf43c295d907824a57754399cacac9f152/Store%20Inputs%20Codes/waveform1.png)）

1.Input is 0x2ed, when the reset is posedge, the sequence become the value of switch- 0x2ed;

2.Then we change reset to 0; the output remain unchanged; Change input to 0x1ac, output is still 0x2ed

3.Trigger reset and output become 0x1ac
