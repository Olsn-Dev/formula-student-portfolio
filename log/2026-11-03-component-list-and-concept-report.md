# 2026-11-03 – Component list and concept report

**Project:** [Uprights, wheels & tyres](../work/uprights-wheels/README.md) · **Time spent:** [TODO h]

## What I did

- Wrote the component list: front upright, rear upright (no steering), wheel hub, wheel bearings,
  wheel nut, hub nut, wheel studs.
- Wrote a concept report (in Swedish) with rule requirements (FS UK 2026 T2.3–T2.6, T10), a
  bearing check with numbers, risks and next steps.
- Selected OZ Racing FS Magnesium CL 7×10" rims, Hoosier 18×6.5–10 tyres (donated by Chalmers) and
  SKF 61811-2RZ / 61815-2RZ bearings (front / rear).
- Derived preliminary design loads per front wheel: static Fz 662 N, cornering Fz 1 000 / Fy 1 801 N,
  braking Fz 1 175 / Fx 1 589 N, 3 g bump Fz 1 987 N.

## Why / decisions made

- **Bearing spacing as a requirement:** in the cornering case the bearing pair needs ~63 mm spacing
  at the front and ~59 mm at the rear to reach static safety factor s₀ ≥ 1.5.
- Loads are based on assumed vehicle data (300 kg, 45/55, CoG 0.30 m, 1.8 g) until the team's real
  values exist.

## Problems & how I solved them

- **Open:** OZ states offset "22" with no unit, while the car geometry uses 50.8 mm.
- **Open:** driveshaft/CV joint outer diameter unknown, which blocks the hub's inner diameter.

## Next steps

- [x] First draft of the front upright
- [ ] Replace assumed vehicle data with real values
