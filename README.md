# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item            | Description                                       | Value |
| --------------- | ------------------------------------------------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25%   |
| Question 1      | Your answers to the question                      | 25%   |
| Question 2      | Your answers to the question                      | 25%   |
| Question 3      | Your answers to the question                      | 25%   |

## Summary

This lab shows us how sequential logic works. This logic allows ciruits to remmeber the information using latches. We first had to build a SR-Latch to show us how circuits can remember a state. After we had to create a D-latch to remove the invalid state problem. Afterwards we use this D-latch to make a four byte memory system using both multiplexers and demultiplexers. The lab also shows us how to use dehavioral Verilog, this includes reg types and always blocks which are cruicial to desinging circuits that can be put on actual hardware.

## Lab Questions

### Why can we not just use structural Verilog to implement latches?

Structural Verilog makes feedback loops that real hardware tools do not allow. These feedback loops can cause erros or unwated behaviour. When using behavioral Verilog it allows actual latch data to be stored.

### What is the meaning of always @(\*) in a sensitivity block?

It makes that the code that is ran is run every single time the input signal detects a change. This is used for combinational logic so that it always updates right away whenever it detects input changes.

### What importance is memory to digital circuits?

Memory is important because it allows circuits to rememember previous values and keep that information over a period of time. If you did not have memory the circuit can only act on the information it has not and cannot do things like counting, storing data or even running programs.
