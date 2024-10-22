# Sequence_Detector
A kind of state machine implement written in Verilog 
The state machine operates as follows:

On reset, the state machine moves to state 0, the initial state, with the seven-segment displaying “0”. 

At any state, if switch10 is switched to low level, the state machine should remain in its current state. 

When switch10 is switched back to high level, the state machine should go back to work.

When the state machine is working, the seven-segment should display the number of “101” dynamically. For example, if the sequence is “1010101010”, 

when it processed the third digit, the seven-segment should display “1”, then when it processed the fifth digit, the seven-segment should display “2”.
