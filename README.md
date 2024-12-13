# Objective-C ARC Retain Cycle Bug

This repository demonstrates a common Objective-C bug related to retain cycles when using Automatic Reference Counting (ARC).  The bug involves improper use of `retain` within methods, creating circular references that prevent objects from being deallocated.

## Bug Description
A retain cycle occurs when two or more objects hold strong references to each other, preventing the system from releasing them from memory even when they are no longer needed. This leads to memory leaks, potentially causing application crashes or performance degradation.

## Bug Reproduction
To reproduce the bug, compile and run the code in `Bug.m`.  Observe the memory usage over time; the objects will not be deallocated.  The `Solution.m` file provides a corrected version.

## Solution
The solution is to break the retain cycle by using `weak` or `assign` properties where appropriate. Weak references do not increment the retain count, allowing objects to be deallocated when their retain count reaches zero.