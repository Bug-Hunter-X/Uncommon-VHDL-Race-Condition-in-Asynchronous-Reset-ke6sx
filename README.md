# Uncommon VHDL Race Condition in Asynchronous Reset

This repository demonstrates a subtle race condition that can occur in VHDL code when an asynchronous reset is used in conjunction with an incrementing counter. The race condition involves the timing relationship between the reset signal, the enable signal, and the rising edge of the clock.

## Problem Description

The provided VHDL code implements a simple counter with an asynchronous reset.  However, if the `enable` signal transitions close to the rising edge of the clock and simultaneously, the reset signal is deasserted, there's a small window where the counter might not be reset correctly. This can lead to unpredictable behavior.

## Solution

The solution presented here addresses the race condition by ensuring that the reset signal has higher priority over the increment operation. This prevents the counter from updating when the reset is deasserted.