# Uprights, wheels & tyres

**Status:** 🟡 In progress (Front upright V1 drafted, FEA next) · **Period:** Oct 2026 – · **Tools:** [TODO: CAD/FEA software]

<!-- TODO: add a render of Front upright V1 -->
<!-- ![Front upright V1](../../media/front-upright-v1.png) -->

## Problem

The car is an electric Formula Student car with driveshafts at both the front and the rear. Everything
at the wheel corners beyond the suspension and steering must carry all of the car's loads into the
chassis, and it must stay light, stiff and rule-compliant. A teammate and I share the wheel-corner
package: they own the wheel hub, and I own the rest:

- rims and tyres
- front upright (with steering) and rear upright (without steering)
- all interfaces to suspension, steering and brakes

I coordinate the design with the suspension and brake groups.

## Requirements

**Rules (FS UK 2026):** T2.3, T2.4, T2.5, T2.6 and T10, among them 5 mm clearance between the rim and
non-rotating parts (T2.4.4).

**Base parameters (fixed ~2026-10-12):**

| Parameter | Value |
|---|---|
| Tyre size | 18" |
| Rim offset (car geometry) | 50.8 mm |
| Drive | Driveshafts front and rear, so hollow hubs (probably aluminium) |

**Design loads per front wheel** (N, before safety factor):

| Load case | Fz | Fy | Fx |
|---|---|---|---|
| Static | 662 | – | – |
| Cornering, outer wheel | 1 000 | 1 801 | – |
| Braking | 1 175 | – | 1 589 |
| Bump, 3 g | 1 987 | – | – |

These are based on preliminary assumptions (300 kg car, 45/55 weight distribution, CoG height 0.30 m,
1.8 g lateral, tyre friction 1.8, 1.8 g braking with 60 % on the front, 50 mm from the tyre centre
plane to the bearing pair centre plane). I'm replacing them with the team's real vehicle data as it
becomes available.

## Approach

**Component choices**

| Component | Choice | Notes |
|---|---|---|
| Rim | OZ Racing Formula Student Magnesium CL, 7×10" | ~1.66 kg each |
| Tyre | Hoosier 18×6.5–10 | Donated by Chalmers Formula Student |
| Bearings, front | SKF 61811-2RZ | Thin-section deep groove ball bearings |
| Bearings, rear | SKF 61815-2RZ | Thin-section, 75 mm bore |

**Bearing check.** I checked the bearings against the cornering load case. To reach a static safety
factor s₀ ≥ 1.5, the bearing pair needs about **63 mm spacing at the front and 59 mm at the rear**.
That spacing is now a design requirement for both the upright and the hub.

**Concept report (2026-11-03).** A component list (front/rear upright, hub, wheel bearings, wheel
nut, hub nut, wheel studs) and a concept report covering rule requirements, the bearing check, risks
and next steps.

**Learning from others.** On 2026-11-10 I visited KTH Formula Student to see how they design and
build their wheel assemblies. [TODO: 1–2 concrete takeaways]

**Front upright V1 (2026-11-11).** First draft, designed to be CNC-machined in aluminium 7075-T6.
After V1 I'll decide between CNC and 3D printing.

## Result

<!-- TODO: fill in when V1 is analysed: mass, max stress, safety factor, deflection -->

| | Front upright V1 |
|---|---|
| Material | Al 7075-T6 |
| Mass | [TODO] |
| Min. safety factor | [TODO] |
| Max. deflection | [TODO] |

## Testing & validation

- **Next step:** FEA of Front upright V1 under the load cases above.

## Open questions

- **Rim offset:** OZ states 22 (unit not given). The car geometry uses 50.8 mm. This needs to be
  confirmed with OZ.
- **Driveshaft / CV joint outer diameter** is unknown. It sets the hub's inner diameter.
- **Mounting points** with suspension, steering and brakes, plus the 5 mm rim clearance (T2.4.4).

## What I learned

<!-- TODO: write in your own words when V1 is done -->

## Related log entries

- [2026-10-08 – Assigned uprights, wheels and tyres](../../log/2026-10-08-assigned-uprights-wheels-and-tyres.md)
- [2026-10-12 – Base parameters fixed](../../log/2026-10-12-base-parameters-fixed.md)
- [2026-11-03 – Component list and concept report](../../log/2026-11-03-component-list-and-concept-report.md)
- [2026-11-10 – Visit to KTH Formula Student](../../log/2026-11-10-visit-to-kth-formula-student.md)
- [2026-11-11 – Front upright V1 first draft](../../log/2026-11-11-front-upright-v1-first-draft.md)
