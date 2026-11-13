# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Group 9: Marina and Evan

## Summary
In this lab we learned how to do frequency dividers, using two types of counters. During the lab we ran into an issue with our ripple_counter because we forgot to wire the last stage and because of that led 2 wasn’t lighting up.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter divides clocks by 2 * Count because it only flips its output after every Count input clocks, and one full output cycle needs two flips (once to turn on and once to turn off).

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Assuming that ring counter should be ripple counter as that is what we covered in the lab.
For the ripple counter after the first press everything goes to 1s because the counter is designed to keep carrying until it comes across a 1. If there was a 1 in the 2nd T flip-flop then the ripple would flip it from 1 to 0 and stop there. That change is a falling edge, so it would not clock the 3rd T flip-flop and the 3rd one would keep its value.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Our board has a 100 MHz starting clock, to get to 1KHz using ripple counters (which divides a clock by 2^N where N is the number of T flipflops) we can just solve for it:

```txt
100,000,000 / 2^N = 1,000
100,000,000 / 1,000 = 2^N
100,000 = 2^N
lg(100,000) = N
approx 16.6 = N
```
However we cant have 0.6 of a T flipflop so we would either have 16 or 17 of them depending if we wanted to be over or under 1KHz. 16 would give us 1526 Hz and 17 would give 763 Hz.
