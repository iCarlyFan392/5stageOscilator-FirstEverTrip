## How it works

Clock512 is a full-custom SKY130 learning project with 230 MOSFETs and five antenna diodes. It occupies a 1×2 tile and uses no analog pins. A five-stage ring oscillator drives nine static, resettable toggle stages, giving a divide-by-512 output. An external-clock mode makes the division ratio easy to test.

| Signal | Function |
|---|---|
| `ui_in[0]` | RUN: high enables the oscillator/counter |
| `ui_in[1]` | MODE: 0 selects the ring; 1 selects external `clk` |
| `clk` | External clock input in MODE=1 |
| `rst_n` | Active-low asynchronous reset |
| `ena` | Tiny Tapeout selection enable; low stops counting |
| `uo_out[0]` | DIVOUT: selected clock divided by 512 |

RUN=0 or ena=0 stops counting and retains the last output level. Reset forces the divider outputs low and stops the oscillator. Other dedicated outputs are tied low; all bidirectional output enables are low. Unused inputs do not connect to transistor gates.

The oscillator is intentionally uncalibrated. Frequency depends on manufacturing variation, supply voltage, temperature, and routing parasitics. Use the external clock when a predictable output frequency is needed. The divider is a ripple chain, so it has propagation delay and is not intended as a general synchronous clock-distribution source.

<!-- measured-simulation-results -->
Post-layout simulation at TT, 1.8 V and 27 °C predicts about **49.46 MHz** for the free-running selected clock, or **96.60 kHz** at DIVOUT. Across the five tested process/voltage/temperature points, free-ring DIVOUT ranges from **59.71 to 146.85 kHz**. These values are simulated, not silicon measurements.
<!-- /measured-simulation-results -->

## How to test

1. Select this project on the Tiny Tapeout board. Set RUN=0 and MODE=1.
2. Hold `rst_n=0` for at least 200 ns, then release reset.
3. Supply an external clock and set RUN=1 while `clk` is low.
4. Measure successive rising edges on `uo_out[0]`. At 1 MHz input, expect 1,953.125 Hz; at 50 MHz input, expect 97,656.25 Hz. Ignore the initial partial output cycle after reset.
5. Set RUN=0 while the clock is low. DIVOUT should hold its state. Re-enable RUN to resume.
6. To test the oscillator, set RUN=0, assert reset, hold external `clk` low, change MODE=0, release reset, then set RUN=1. DIVOUT should oscillate without an external clock. Its measured frequency multiplied by 512 estimates the ring frequency.

Always change MODE while RUN is low; reset during the change for a repeatable starting state. The clock selector is not a glitch-free live clock-switching circuit.

The simulation reports in the source repository describe the tested process/voltage/temperature points and loads. These are simulation results, not measurements of fabricated silicon.

## External hardware

A Tiny Tapeout demo board and an oscilloscope, logic analyzer, or frequency counter. A clock source is needed for external-clock testing. Use the demo board's specified digital IO levels; the internal core is a 1.8 V design.
