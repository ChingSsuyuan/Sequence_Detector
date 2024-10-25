# State Machine 
## 101 Sequence Detector with Overlap
- Inputs: clock and reset (button0), ten switches (switch0 to switch9) for sequence input, one switch10 for pause.
- Outputs: One seven-segment output.

- On reset, the state machine moves to state 0, the initial state, with the seven-segment displaying “0”.
- At any state, if switch10 is switched to low level, the state machine remain in its current state. When switch10 is switched back to high level, the state machine can go back to work.
- When the state machine is working, the seven-segment will display the number of “101” dynamically. For example, if the sequence is “1010101010”, when it processed the third digit, the seven-segment will display “1”, then when it processed the fifth digit, the seven-segment will display “2”.
