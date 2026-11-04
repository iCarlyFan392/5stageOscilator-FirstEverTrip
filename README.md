# Clock512 — Custom SKY130 Chip

**Zane Al Saadi** · a personal chip-design learning project prepared for the Tiny Tapeout custom-GDS flow.

Clock512 combines an enabled five-stage ring oscillator, nine static resettable divide-by-two stages, external-clock selection, and a buffered digital output. The full-custom layout contains **230 MOSFETs and five antenna diodes** in a **161 × 225.76 µm (1×2) tile**.

![Actual GDS layout](reports/tt_um_clock512_custom_layout.png)

## Status

**Locally verified; submitted, but chip not arriving until APROX June 2027 .** The saved verification records report zero Magic DRC violations, matching schematic/layout LVS, a passing local Tiny Tapeout precheck, and 16 passing post layout simulation cases. 

The original learning circuit was adapted to a static resettable divider and the Tiny Tapeout interface after discussing what a real world chip would look like with my professors. Layout generation and verification were developed and then veriffied 2x using AI (asking CHAT and CLAUDE if my steps are correct) during the project. The portfolio focuses on the circuit, physical-layout flow, and recorded local verification.

# Open the project

| File | Purpose |
|---|---|
| `schematic/top.sch` | Editable full Xschem schematic and local cell library |
| `layout/tt_um_clock512_custom.mag` | Editable hierarchical Magic layout |
| `gds/tt_um_clock512_custom.gds` | Submission geometry |
| `lef/tt_um_clock512_custom.lef` | Submission abstract |
| `src/project.v` | Physical interface stub |
| `info.yaml` | Tiny Tapeout metadata and public author |
| [Datasheet](docs/info.md) | Pinout, reset, clock selection and test procedure |
| [Learning guide](docs/LEARNING.md) | Circuit and physical-design flow |
| `toolchain.lock.json` | Recorded tools and PDK revision |

Keep the layout and schematic cell files together. In the prepared Docker environment, open Magic from `layout/` with `magic -rcfile .magicrc tt_um_clock512_custom.mag`; open Xschem from `schematic/` with `xschem --rcfile xschemrc top.sch`. The configurations select `/foss/tt_pdks/sky130A`.

A 50 MHz external clock produces 97,656.25 Hz after division. Hold external `clk` low when measuring the independent ring oscillator. The saved simulations and plots are evidence of modeled behavior, not physical chip measurements.

# Submission and reproducibility

The `.github/workflows/gds.yaml` workflow targets TTSKY26d. Its submission paths, GDS, LEF, interface, metadata and license are unchanged from the prepared release. Current capacity and dates must be checked at submission time.

This compact repository includes selected verification evidence. The full build scripts, raw exports and original releases are retained in the separate portfolio supporting archive under `originals/clock512_support/full_project/`. Use that complete project when regenerating or rerunning the physical design. Editing the layout or circuit requires new verification and regenerated submission files.

The existing Apache-2.0 license is preserved. PDK models are installed separately. Space had been purchased and admitted
