# From your schematic to a fabricated-chip submission

This design keeps the central idea of the supplied project: a ring oscillator followed by a divide-by-512 chain. Preparing it for Tiny Tapeout required changing its physical dimensions, routing layers, interface, startup behavior, and test access. The original learning release is retained separately.

## 1. Circuit behavior

An odd loop of inversions cannot settle to a consistent binary value while enabled. Each stage takes time to switch, so the transition travels around the loop and produces oscillation. Clock512 uses one enabled NAND stage and four inverters. The oscillator transistors have a longer 1.0 µm channel to slow the ring. Routing capacitance slows it further; the transistor-only simulation is therefore not the expected silicon frequency.

Each toggle stage changes state once per incoming rising edge. Its output repeats every two input cycles. Nine stages give 2⁹ = 512. The stages form a ripple chain: a change propagates through the stages in sequence. The public output is buffered to isolate the last latch from the Tiny Tapeout routing load.

The original dynamic divider was replaced by a static master/slave toggle with feedback and reset. The master latch samples the complemented output while CLK is low. The slave samples the inverted master signal while CLK is high. The closed latch's feedback retains its state. An active-high internal reset forces each output low; it comes from inverting the external active-low `rst_n` signal.

External-clock mode separates two useful experiments: checking an exact division ratio with a known input frequency, and observing the process-sensitive oscillator. Hold the external `clk` low in internal-ring mode when measuring its free-running frequency. An actively switching unused clock can couple through real parasitic capacitances and disturb or entrain the ring.

## 2. Physical layout

`layout/tt_um_clock512_custom.mag` places the nine divider cells in three rows. The upper rows contain the ring, clock control, output buffer, and antenna diodes. Within a cell, local interconnect and metals 1–3 connect the devices. Metals 3 and 4 connect the cells. The power rails and interface pins are positioned for the Tiny Tapeout 1×2 tile.

The layout is generated from explicit device placements and route coordinates in `scripts/layout.py`, and the resulting Magic cells remain editable. It is an educational layout with a regular structure, rather than an area-minimized standard-cell implementation. Editing the generated MAG directly is possible, but rerunning the generator will replace those edits; make lasting layout changes in the generator or retain a separate manual revision.

Substrate and well contacts tie transistor bodies to the appropriate supplies. Five reverse-biased diodes protect the used external inputs from fabrication antenna charging. They do not replace the shuttle's pad ESD protection.

## 3. DRC and LVS answer different questions

Design-rule checking (DRC) checks geometric rules such as widths, spaces, overlaps, and enclosure. It does not prove that the circuit is wired as intended.

Layout-versus-schematic (LVS) extracts devices and connectivity from the geometry, then compares them with the source schematic. Matching LVS does not establish speed, oscillator startup, or correct power-up state. This project checks the reusable cells, the whole Magic hierarchy, and a fresh import of the actual GDS export.

The official Tiny Tapeout precheck adds checks for its submission interface: boundary, pin locations, power shapes, permitted layers, naming, and related integration rules. It is run locally using the official tools; the repository's GitHub Actions run remains part of the submission handoff.

## 4. Parasitics change the circuit

Metal, contacts, diffusion and polysilicon have resistance. Nearby conductors have capacitance. Extraction adds those components to the simulation netlist. The final checks include the distributed resistance network, not just added lumped capacitance.

The diode-unit mismatch found during verification is an example of why tool logs and physical magnitudes matter. An isolated diode test exposed millifarads and milliamps where the drawn junction should have femtofarads and tiny leakage. The explicit, documented unit conversion is covered in [SIMULATION_UNITS.md](SIMULATION_UNITS.md). No failed transient is treated as a pass merely because ngspice exits with status zero.

Process corners describe different modeled transistor behavior. Voltage and temperature change delay and current too. The included simulations check TT, SS, FF, SF and FS conditions. The result checker counts incoming clock edges between output edges; it also checks reset, retained state while stopped, restart, and output duty cycle. These are finite simulation tests, not a measurement of manufactured silicon or an exhaustive proof of every possible waveform.

## 5. Submission and fabrication

The GDS contains the mask geometry. LEF describes the block outline, pins, and routing obstruction for integration. The Verilog stub declares the physical interface; it contains no implementation to synthesize. Metadata and `docs/info.md` form the project description and datasheet.

After local review, the owner publishes the repository, obtains passing GitHub workflow results, and submits through Tiny Tapeout. Tiny Tapeout integrates the project with its infrastructure and other users' designs. Foundry fabrication, packaging, board assembly and delivery follow the shuttle schedule. Submission and payment have not occurred in this local preparation.

## 6. First silicon measurements

Start in external-clock mode at a modest frequency, such as 1 MHz. Reset the circuit and check that the output is 1,953.125 Hz. Increase the clock gradually within the documented test target. Check reset while running, RUN hold/resume, and output behavior after a mode change performed with RUN low.

Then hold the external clock low, select ring mode, reset, and enable RUN. Measure DIVOUT and multiply its frequency by 512. Compare that result with the simulated range rather than expecting an exact nominal number. Record board supply settings and ambient temperature with each measurement.

For a portfolio, the most useful evidence is the editable schematic, an actual layout image, passing DRC/LVS and precheck reports, measured simulation waveforms, and later real oscilloscope measurements. State clearly which results came from simulation and which came from silicon.
