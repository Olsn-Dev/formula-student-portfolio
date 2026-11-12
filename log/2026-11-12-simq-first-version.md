# 2026-11-12 – SimQ first version

**Project:** [SimQ](../work/simq/README.md) · **Time spent:** [TODO h]

## What I did

- Built the first working version of SimQ, a queue for the team's simulation requests, and iterated
  it to v0.4.0: new icon and design, English documentation, deleting requests, in-app updates and
  file uploads.
- Set up GitHub Actions to build Windows, macOS (.dmg) and Linux versions on every release.
- Set up the team's private data repository that the app syncs through.

## Why / decisions made

- **No server.** Nobody on the team should have to host or pay for anything, and the tool has to
  outlive my time on the team. Sync goes through a private GitHub repo, or a shared folder as a fallback.
- **Append-only event files** instead of one shared database file. Two people can never overwrite
  each other's changes, and sync is just copying missing files.
- **Hybrid logical clock** to order events, so all apps pick the same winner when two people
  take a request at the same time, even if someone's system clock is off.
- **Team key instead of GitHub accounts**, so non-programmers only paste one key.

## Problems & how I solved them

- The app isn't code-signed, so Windows and macOS warn on first start. I documented the steps
  to get past it in the README. [TODO: anything else that went wrong?]

## Next steps

- [ ] Roll it out to the team and collect feedback
- [ ] [TODO]
