# State Machine 
## 101 Sequence Detector with Overlap
- Inputs: clock and reset (button0), ten switches (switch0 to switch9) for sequence input, one switch10 for pause.
- Outputs: One seven-segment output.

- On reset, the state machine moves to state 0, the initial state, with the seven-segment displaying “0”.
- At any state, if switch10 is switched to low level, the state machine remain in its current state. When switch10 is switched back to high level, the state machine can go back to work.
- When the state machine is working, the seven-segment will display the number of “101” dynamically. For example, if the sequence is “1010101010”, when it processed the third digit, the seven-segment will display “1”, then when it processed the fifth digit, the seven-segment will display “2”.

## Functions and Codes
[Top Module: Top_Module.v](https://github.com/ChingSsuyuan/Vivado_State_Machine_Project/blob/2abd67cf35d04ee5393b5ead6ede20763d1f44a4/Top%20Module/Top_Module.v)

Handle the whole State machine process

[Clock Divder: ClockDivider.v](https://github.com/ChingSsuyuan/Vivado_State_Machine_Project/blob/fa4d40ef10bdc595c624a722c244d17043bb9324/Clock%20Divider/ClockDivider.v)

Change display time to 1s

[State Machine: state_machine2.v](https://github.com/ChingSsuyuan/Vivado_State_Machine_Project/blob/c2449a055db7c6f6d072deee2c818083bd5b000e/Top%20Module/state_machine2.v)

The state machine only updates the sequence after pressing the reset button. When it is working, changing the input won’t affect the result.

[Seven Segement Display](https://github.com/ChingSsuyuan/Vivado_State_Machine_Project/blob/4177ff4c64a09f451cc75a66aa1dba726de29c99/Top%20Module/Seven_Segement_Display.v)

Display the number of “101”

## Waveform of state machine
![waveform](https://github.com/ChingSsuyuan/Vivado_State_Machine_Project/blob/1fad1ced63a63e4e3801f1469d772d1dda92bcea/Top%20Module/waveform4.png)
