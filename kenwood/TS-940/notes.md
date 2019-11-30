---
layout: default
title: TS-940S notes
---

# Kenwood TS-940S

Yes, I bought a TS-940 and have been trying to diagnose hilarity.

## Marker

The calibration marker circuit is .. sub-optimal, and picks up
a lot of stray, random noise throughout the radio.

There's a very nice write-up about this, applicable to at least the
TS-930 and TS-940:

 * <https://k6iokforum.com/community/need-help/ts-930s-random-noise-with-the-antenna-disconnected-this-is-a-long-journey/>
 * [k6iok - ts940 marker noise.pdf](k6iok - ts940 marker noise.pdf) - a local cache

## Power supply issues

The TS-940 power supply is not the best designed and it'll go pop, taking
your hard-to-find driver transistors with it. (k6iok)[https://k6iok.com/] has
replacement power supply bits to drop in and it works!

## My issues!

K6IOK installed his replacement PSU in my TS-940 and it runs like a charm!
The radio runs much cooler and it's much lighter.  However, I've been having
some RF issues which I bet are due to this rig.

 * I think the buck/boost board is a bit noisy and it's being picked up
   by the wiring looms, ending up on the marker connector on the RF board.
 * Adding three clip-on ferrites reduced noise on 18MHz from S9+10 down to
   about S5.  So there's something weird going on there.
 * Removing the MKR connector (J2) from the RF board fixed the rest of
   the IMD showing up on 160/80m and the noise floor on 18MHz is ~ S0.k

## PDFs

 * [508_Kenwood_TS-940S_Fixes_Reviews.pdf](508_Kenwood_TS-940S_Fixes_Reviews.pdf)
 * [ts940_brochure.pdf](ts940_brochure.pdf)
 * [KENWOOD--TS-940-Serv-Manual.pdf](KENWOOD--TS-940-Serv-Manual.pdf)
 * [ts940s_manual.pdf](ts940s_manual.pdf)
