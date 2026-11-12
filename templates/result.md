# {{title}}

**Date:** {{date:YYYY-MM-DD}} · **Project:** [link to ../README.md] · **Type:** FEA / CFD / Physical test / Design version
**Part & version:** [e.g. Front upright V1] · **Tool:** [e.g. software, test rig]

<!-- Main image: the plot, render or photo that best shows the result -->
![Main result](../../../media/FILENAME.png)

## Key numbers

<!-- The 3–5 numbers that matter most. Compare against the requirement. -->

| Metric | Result | Requirement | OK? |
|---|---|---|---|
| e.g. Max von Mises stress | MPa | < MPa | ✅ / ❌ |
| e.g. Safety factor (yield) | | ≥ 1.5 | |
| e.g. Max deflection | mm | < mm | |
| e.g. Mass | g | | |

**Conclusion in one sentence:** [e.g. V1 passes all load cases except braking, where the caliper mount is overloaded.]

## Purpose

What question this result answers, and why it matters.

## Setup

<!-- Delete the parts that don't apply. -->

**Simulation (FEA/CFD)**

| | |
|---|---|
| Model / geometry | [part, version, simplifications] |
| Material | [e.g. Al 7075-T6, E = 71.7 GPa, σy = 503 MPa] |
| Mesh | [element type, size, refinement, convergence check] |
| Boundary conditions | [what is fixed, where] |
| Loads | [load cases with values, link to their source] |

**Physical test**

| | |
|---|---|
| Test object | [part, version, serial no.] |
| Rig / equipment | [what, how it's measured] |
| Procedure | [steps, number of repetitions] |

<!-- ![Setup](../../../media/FILENAME-setup.png) -->

## Results

<!-- Per load case or test. One image and 1–2 sentences on what it shows. -->

### [Load case / test 1]

![](../../../media/FILENAME.png)

What it shows, and where the critical area is.

### [Load case / test 2]

## Comparison with previous version

<!-- For design iterations. Delete if this is the first version. -->

| | Previous (V?) | This (V?) | Change |
|---|---|---|---|
| Mass | g | g | % |
| Min. safety factor | | | |
| Max deflection | mm | mm | |

| Previous | This |
|---|---|
| ![](../../../media/FILENAME-old.png) | ![](../../../media/FILENAME-new.png) |

**What changed and why:**

## Validity & uncertainties

What assumptions this rests on, and how much you trust the numbers.

## Conclusions & next steps

- 
- [ ] 
