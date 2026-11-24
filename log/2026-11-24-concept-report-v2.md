# 2026-11-24 – Concept report v2

**Project:** [Uprights, wheels & tyres](../work/uprights-wheels/README.md) · **Time spent:** [TODO h]

## What I did

- Worked through **17 review comments** on the concept report and wrote a revised version (v2) that
  addresses all of them. An appendix lists what changed for each comment.
- Updated every rule reference to **FS Rules 2027 v1.0**: wheels T2.6, tyres T2.7, suspension travel
  T2.5.1, fasteners T10 (unchanged).
- **Tyres:** switched to Hoosier **18.0×6.0-10** (18×6.5-10 isn't in Hoosier's range) in compound
  **R35B**. According to Hoosier's compound chart, R35B is harder than R20, R25B and LC0 but needs
  more heat (operating window roughly 5–10 °C higher). Catalogue weight ≈ 4.08 kg per tyre, giving
  5.74 kg per wheel assembly and ≈ 23 kg per car.
- **Rims:** OZ Magnesium CL 10" (1.66 kg, offset 22 mm) is the reference. OZ Hybrid Carbon (1.35 kg)
  and Braid Sturace are alternatives. We're leaning towards Keizer to save money, but nothing is
  decided until we have quotes.
- **Load cases derived step by step** (300 kg, 45/55, 1.8 g, μ = 1.8), plus the bearing load
  P = (Fy·R − Fz·d) / L. For s₀ ≥ 1.5 this gives a minimum bearing spacing of **60.6 mm front and
  56.6 mm rear**, rounded up to **65 / 60 mm**. The fallback is a 32009X tapered roller bearing.
- Added alternatives and risks for every component:
  - **Upright:** 7075-T6 vs T73. I recommend **T73** because of its better resistance to stress
    corrosion cracking.
  - **Hub:** in-house vs go-kart hub, bought in, with outsourced CNC as backup.
  - **Nuts:** castle nut with split pin vs KM lock nut + MB washer.
  - **Safety margins.**
- Rewrote the report in plainer language.

## Why / decisions made

- **Tyres:** Hoosier R35B 18.0×6.0-10.
- **Rims:** leaning towards Keizer, final choice after quotes.
- **Upright:** CNC-machined 7075, recommending T73 over T6 because of stress corrosion.
- **Hub:** made in-house. Drawings wait until the rim is chosen, since the rim sets the interface.

## Problems & how I solved them

Open:

- **Offset:** OZ states 22 mm, our geometry says 50.8 mm. Unresolved.
- **CoG height is inconsistent between load cases.** Cornering uses h/t = 0.128 and braking
  h/L = 0.194. With an assumed track of 1.2 m and a wheelbase of 1.55 m, that means ~153 mm vs
  ~300 mm. This needs checking, and the affected load case must be recalculated.
- **Rolling radius** 0.2255 m in the bearing model was tuned to reproduce the 8.9 kN from the
  original report. I still need to confirm which model was used originally.
- The bearing model only uses radial load, so the margin is **slightly optimistic**. L10 life is not
  calculated yet.
- Not verified: number of drive pins on the OZ rim, weight and price of Keizer and Braid, and how
  long R35B lasts.
- **Driveshaft diameter** is unknown and decides whether a 32009X fits in the hub.

## Next steps

- [ ] Request quotes and data sheets from Keizer, OZ and Braid (price, weight, offset, interface, lead time)
- [ ] Get driveshaft and CV joint diameters from the drivetrain group
- [ ] Resolve the offset with the supplier and the suspension group
- [ ] Confirm tyre size and R35B availability with Hoosier or a distributor
- [ ] Check CoG height, replace assumptions with real values, recalculate the bearing selection
- [ ] Request bearing quotes from NSK and FAG
- [ ] Choose bearing spacing (65/60 mm for ball bearings, otherwise 32009X), design upright V1 and run FEA
- [ ] Design the hub and produce lathe/mill drawings once the rim is chosen
