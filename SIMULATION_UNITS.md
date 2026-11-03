# Diode units at the Magic/ngspice boundary

The pinned flow uses Magic 8.3.664, ngspice 46, and open_pdks revision `0536d02d875c8f67dd7cca3902ac457e62f20005`. In this combination, Magic's raw export represents the 1.5 × 1.5 µm antenna diode as `area=2.25e12 perim=6e6`. The physical area is 2.25 µm² and perimeter is 6 µm.

Ngspice does not apply the global transistor length SCALE to explicitly specified diode AREA/PJ. The installed PDK model has an area capacitance coefficient of `0.0013459 * 1e-12` F/µm² and a perimeter coefficient of `3.6001e-11 * 1e-6` F/µm, with corner multipliers. It therefore needs numerical instance parameters `area=2.25 perim=6` for this diode in ngspice 46.

The isolated `sim/diode_units.spice` test demonstrates the consequence at 1.8 V reverse bias, TT, 27 °C:

| Instance parameters | Reverse current (includes ngspice GMIN) | Small-signal capacitance |
|---|---:|---:|
| Raw Magic annotation: 2.25e12 / 6e6 | 4.46553 mA | 1.743848 mF |
| Physical geometry in model units: 2.25 / 6 | 1.80683 pA | 1.963804 fF |

The raw scaling also creates extremely small internal diode series resistance, making the full extracted simulation numerically unstable. Ideal voltage sources concealed this problem in the earlier capacitance-only test.

`scripts/normalize_netlists.py` converts **only** diode area by 1e-12 and perimeter by 1e-6. It preserves all transistor dimensions, connections, extracted resistances, and extracted capacitances. Raw exports are retained as `*_native.spice` or `*_lvs.spice`; converted files are used for simulation and comparison to the schematic's physical geometry. The conversion records input/output SHA-256 hashes in `reports/netlist_units.json`. No installed PDK model is modified.

This is a documented tool-interface correction, not a change to fabricated geometry. The GDS diode regions, connectivity, DRC, antenna checks, and LVS are checked separately. Reassess this conversion if either the PDK or simulator changes; do not blindly apply it twice. The converter rejects already-normalized diode dimensions.

References: [Magic ext2spice options](https://opencircuitdesign.com/magic/commandref/ext2spice.html), [ngspice diode instance parameter handling](https://github.com/imr/ngspice/blob/master/src/spicelib/devices/dio/dioparam.c), and the installed `sky130_fd_pr__diode_pw2nd_05v5.model.spice`. Exact observed results are in `reports/diode_units.log`.

## Resistance-network reduction

Qualification retains the extracted RC circuit. To speed simulation, `scripts/reduce_rc.py` eliminates only internal nodes connected exclusively to resistors, with no transistor terminal, port, or nonzero capacitor attached. A conductance Schur complement preserves the circuit seen from every retained node; no positive capacitance or device is discarded.

`scripts/check_reduction.py` independently compares terminal currents from the original and reduced conductance matrices under four seeded voltage vectors. The original network remains in `sim/top_rcx.spice`; the reduced equivalent is `sim/top_rcx_reduced.spice`. A full unreduced nominal simulation is also retained for comparison.
